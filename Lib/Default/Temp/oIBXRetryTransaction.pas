unit oIBXRetryTransaction;

interface

uses
  SysUtils, Windows, Dialogs, IBDatabase, IB;

type
  // Método do Form/DataModule, sem parâmetro
  TIBXWorkProcNoParam = procedure of object;

function IBX_ExecuteInTransactionWithRetry(ATrans: TIBTransaction;
  AWork: TIBXWorkProcNoParam;
  ATryCount: Integer = 5;
  AWaitMS: Integer = 5000): Boolean;

implementation

function IsConcurrencyError(E: Exception): Boolean;
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

procedure SafeRollback(ATrans: TIBTransaction);
begin
  try
    if Assigned(ATrans) and ATrans.InTransaction then
      ATrans.Rollback;
  except
  end;
end;

function IBX_ExecuteInTransactionWithRetry(ATrans: TIBTransaction;
  AWork: TIBXWorkProcNoParam; ATryCount, AWaitMS: Integer): Boolean;
var
  TryN: Integer;
  LastErr: string;
begin
  Result := False;
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
        LastErr := E.Message;

        // conforme pedido: cancela a transaction no erro/exception
        SafeRollback(ATrans);

        if IsConcurrencyError(E) and (TryN < ATryCount) then
        begin
          Sleep(AWaitMS);
          Continue;
        end;

        MessageDlg(
          'Não foi possível efetuar o COMMIT.' + sLineBreak +
          'Tentativas: ' + IntToStr(ATryCount) + sLineBreak +
          'Erro do Firebird/IBX:' + sLineBreak + LastErr,
          mtError, [mbOK], 0
        );

        Result := False;
        Exit;
      end;
    end;
  end;

  MessageDlg(
    'Não foi possível efetuar o COMMIT após ' + IntToStr(ATryCount) + ' tentativas.',
    mtError, [mbOK], 0
  );
end;

end.

