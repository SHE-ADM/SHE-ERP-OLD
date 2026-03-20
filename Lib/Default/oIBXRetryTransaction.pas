unit oIBXRetryTransaction;

interface

uses
  SysUtils, Windows, Dialogs, IBDatabase, IB;

type
  // Método do Form/DataModule, sem parâmetro
  TIBXWorkProcNoParam = procedure of object;

function oIBX_ExecuteInTransactionWithRetry(ATrans: TIBTransaction;
  AWork: TIBXWorkProcNoParam;
  ATryCount: Integer = 5;
  AWaitMS: Integer = 5000): Boolean;

implementation

function oIsConcurrencyError(E: Exception): Boolean;
var
  Msg: string;
begin
  Result := False;

  Msg := LowerCase(E.Message);

  if (Pos('deadlock', Msg) > 0) or
     (Pos('lock conflict', Msg) > 0) or
     (Pos('conflicts with concurrent update', Msg) > 0) or
     (Pos('update conflict', Msg) > 0) or
     (Pos('concurrent update', Msg) > 0) then
  begin
    Result := True;
    Exit;
  end;

  if E is EIBInterBaseError then
  if EIBInterBaseError(E).SQLCode = -913 then
  Result := True;
end;

procedure oSafeRollback(ATrans: TIBTransaction);
begin
  try
    if Assigned(ATrans) and ATrans.InTransaction then
    ATrans.Rollback;
  except
  end;
end;

function oIBX_ExecuteInTransactionWithRetry(ATrans: TIBTransaction;
  AWork: TIBXWorkProcNoParam; ATryCount, AWaitMS: Integer): Boolean;
var
  TryN: Integer;
  LastErr: string;
begin
  Result  := False;
  LastErr := '';

  if not Assigned(ATrans) then
  raise Exception.Create('Transaction não informada.');

  if not Assigned(AWork) then
  raise Exception.Create('Callback AWork não informado.');

  for TryN := 1 to ATryCount do
  begin
    try
      if ATrans.InTransaction then
      ATrans.Rollback;
      ATrans.StartTransaction;

      // executa seu trabalho usando o TEdicao "único" (via Self)
      AWork;
      ATrans.Commit;

      Result := True;
      Exit;

    except
      on E: Exception do
      begin
        LastErr := 'Error code: ' + E.Message;

        // conforme pedido: cancela a transaction no erro/exception
        oSafeRollback(ATrans);

        if oIsConcurrencyError(E) and (TryN < ATryCount) then
        begin
          SleepEx(AWaitMS,False);
          Continue;
        end;

        if (Pos('deadlock', LastErr) > 0) or
           (Pos('lock conflict', LastErr) > 0) or
           (Pos('conflicts with concurrent update', LastErr) > 0) or
           (Pos('update conflict', LastErr) > 0) or
           (Pos('concurrent update', LastErr) > 0) then

        MessageDlg(
          'Falha ao tentar atualizar registro após ' + IntToStr(ATryCount) + ' tentativas !' + #13 +
          'Registro em uso por outro usuário ...'    + #13 + #13 +
          LastErr + #13 + #13 +
          'Favor entrar em contato com o administrador do sistema',
          mtError, [mbOK], 0
        ) else

        MessageDlg(
          'Falha ao tentar atualizar registro !' + #13 + #13 +
          LastErr + #13 + #13 +
          'Favor entrar em contato com o administrador do sistema',
          mtError, [mbOK], 0
        );

        Result := False;
        Exit;
      end;
    end;
  end;

  MessageDlg(
    'Não foi possível atualizar registro após ' + IntToStr(ATryCount) + ' tentativas.',
    mtError, [mbOK], 0
  );
end;

end.

