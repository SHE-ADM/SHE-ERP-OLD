unit p_funcoes;

(* A Funcao rtftohtml foi desenvolvida pelo autor abaixo. 
 Revision history:
 Nb.   Date:         Author   What was done.
 003   ?             ?        ?
 002   21-aug-1997   TSE      Minor (very minor) cleanup before release
 001   20-aug-1997   TSE      Unit created - RtfToHTML function
                              designed and written.

Author list:
 TSE	Troels Skovmand Eriksen		TSEriksen@cyberdude.com
                                        TSErikse@post8.tele.dk
 ?      ?                               ?

Supported features:
 rev. 001	Indents, Bullets, Left-, Centered & Rightjustified text,
                Text styles (bold, italics and underline),
                Fonts (face, size, color).
 rev. 002	- do -
 rev.   3	?

--------------------------------------------------------------------------------

 This unit and all procedures and functions herein is released as
freeware. Any components or units created using this unit or
portions hereoff must be released as freeware (This does not
cover applications - they may be shareware/commercial as needed).

 Part of the function RtfToHTML may be covered by some obscure
Microsoft copyright since it reads the RTF format - check it out
yourself, if you do something worthwhile.

 Please let this preface stay if you publish a changed/updated 
version of this unit and write all changes the "Revision history" 
section above. Who-Dun-it information should be inserted in the 
"Author list" and the "Supported features" section should be updated.
This makes it easier to pass the blame :-)

 I'm finished with this unit for now - but please email a copy of
any changes you make to me - Troels S Eriksen.

--------------------------------------------------------------------------------

 The following should be fixed - if anybody want to do it?

   * Should be rewritten into a conversion class - could be tricky, since
     it seems like a stream only contains 4 Kb at a time ...
   * Code should be cleaned up - this below is not that fast ...
   * The indents (\li###) should be translated to <BLOCKQUOTE> or
     just a <UL> with no <LI> elements.
   * The hanging paragraphs should be translated to definitionlists ( the
     <DL COMPACT> <DT> term <DD> definition </DL> structure )
   * Tabs (\tab) should be fixed somehow ( heck, I DO want
     a <TAB> code ! )
   * Embedded objects / pictures should be converted to .gif's
     - I know it's possible
   * Some nice way to handle links ( the way .rtf-sources for
     helpfiles do ? )
   * A even more nice way of handling tables - could fix the
     indent / tab-problems as well

--------------------------------------------------------------------------------

 The idea and logic behind this weirdo function :

 Well, the idea was to write a pascal RTF-2-HTML converter which
doesn't just do some "search and replace" - but actually converts
the dammed stuff.

 Since there's a difference between HTML and RTF in the
code-sequencing, I decided to try storing all paragraph and
textformatting information in two records (PARFMT and
TXTFMT) and only write the contents of these to the output
"stream" when needed.

 This first attempt is successfull - not highly, but it'll convert
the contents of a TRichEdit control and most other .rtf documents
to HTML and keep the general layout.

Enjoy it
Troels S Eriksen, Denmark

--------------------------------------------------------------------------------

*)
{$LONGSTRINGS ON}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, Grids, DBGrids, ExtCtrls, Db, DBTables, DBClient, StdCtrls, dxEdLib,
  DBCtrls, Buttons, Menus, Mask, RXLookup, IBCustomDataSet, IBTable, dxEditor,
  IBDatabase, IBQuery,  ActnList,imglist,MaskUtils,
  ShellApi, RXDBCtrl, dxDBELib, DateUtils;//, uFrmPrincipal;
  type
    TCampo_Tab_temp = record
    Nome_campo    : String;
    Tipo_campo    : TFieldType;
    Tamanho_campo : Integer;
    Req_campo     : Boolean;
  end;

    function  Limpa_TXT(texto: string): string; stdcall;
    function  TrocaCaracterEspecial(aTexto : string) : string; stdcall;
    function  TreeGetItem(Sender: TTreeView; ItemList: TStrings): TTreeNode; stdcall;
    function  TreeFindItem(Sender: TTreeView; NodeItem: TTreeNode; Name: String): TTreeNode; stdcall;
    function  TreeAddItem(Sender: TTreeView; ItemList: TStrings; Bookmark: TBookmark; Resort: Boolean): TTreeNode; stdcall;
    Function  DataPorExtenso(data: TDate): String; stdcall;
    function  RETORNA_STRING(OLD: double;dec: word): string; stdcall;
    function  RETORNA_DECIMAL(OLD: string) : string; stdcall;
    function  RETORNA_PRODUTO(cpro: string): string; stdcall;
    function  RETORNA_REAL(OLD: string): double; stdcall;
    Function  Verifica_Parent (Sender:TWinControl):TWinControl;
    Function  Space( n:Integer):String; stdcall;
    Function  LeftStr( s:String;n:Integer ):String; stdcall;
    Function  RightStr( s:String;n:Integer): String; stdcall;
    Function  PadR( s:String;n:Integer;c:Char ):String; stdcall;
    Function  PadL( s:String;n:Integer;c:Char ):String; stdcall;
    function  AjustaStr ( str: String; tam: Integer ): String; stdcall;
    Function  Mes_Extenso (dData: TDateTime): String; stdcall;
    Function  StrZero( nInt,nTam:Integer ):String; stdcall;
    Function  StrZeroR( rInt:Real;nTam:Integer ):String; stdcall;
    Function  Parce(strString:String;chCharParce:Char;intPos:Integer):String; stdcall;
    function  RPos( sFind, sSource: String ): LongInt; stdcall;
    Function  AScanI( aVetor: array of integer; uValue: integer ): Integer; stdcall;
    Function  AScanS( aVetor: array of String; sValue: String ): Integer; stdcall;
    Function  ActionOnAllTables (FormUnit : TForm; Option : String;Tipo : String) : Boolean; stdcall;
    Function  OpenTables (aOpenFiles : array of TTable) : Boolean; stdcall;
    Function  OpenQueries (aOpenQueries : array of TQuery) : Boolean; stdcall
    Function  OpenClientDatasets (aOpenFiles : array of TClientDataset) : Boolean; stdcall;
    Procedure ASort( var aVetor: array of integer ); stdcall;
    Procedure ASortS( var aVetor: array of String ); stdcall;
    Function  GetFieldType( oField:TField ):String; stdcall;
    Function  IndexOptionsToStr( indOptions:TIndexOptions ):String; stdcall;
    Function  StrToIndexOptions( sIndOptions:String ):TIndexOptions; stdcall;
    Function  OpenFile (DataSource:TTable) : Boolean; stdcall;
    Function  Retira_Acentos(s : string): string; stdcall;
    Function  OpenQuery (DataSource:TQuery) : Boolean; stdcall;
    Function  BlockRecQuery (DataSource:TQuery;sFase:String) : Boolean; stdcall;
    function  strtran(InString: string;Search: string; new: string): string; stdcall;
    function  CGC_Valido(s: string): boolean; stdcall;
    function  CPF_Valido(s: string): boolean; stdcall;
    function  ChkDigLin( s : String ) : boolean; stdcall;
    Function  Campo_Obrigatorio (Sender : TWinControl) : Boolean; stdcall;
    Procedure Copiar(Sender: TWinControl); stdcall;
    Procedure Colar(Sender: TWinControl); stdcall;
    procedure Desabilita_campos (Objeto : TWinControl); stdcall;
    procedure Habilita_campos (Objeto : TWinControl); stdcall;
    function  Encrypt( const sStr: String; Key: Word): String; stdcall;
    function  Decrypt( const sStr: String; Key: Word): String; stdcall;
    function  IIFString( bCond: Boolean; sTrue, sFalse: String): String; stdcall;
    function  IIFReal( bCond: Boolean; rTrue, rFalse: Real): Real; stdcall;
    function  IIFLongInt( bCond: Boolean; liTrue, liFalse: LongInt): LongInt; stdcall;
    function  IIFInteger( bCond: Boolean; iTrue, iFalse: Integer): Integer; stdcall;
    function  IIFExtended( bCond: Boolean; eTrue, eFalse: Extended ): Extended; stdcall;
    function  IIFDate( bCond: Boolean; dTrue, dFalse: TDateTime): TDateTime; stdcall;
    function  IIFBoolean( bCond, bTrue, bFalse: Boolean): Boolean; stdcall;
    function  IIFChar( bCond: Boolean; cTrue, cFalse: Char): Char; stdcall;
    function  RoundFloat (X : Real) : Real; stdcall;
    function  RoundFloat2 (X : Real) : Real; stdcall;
    function  FixFloat   (X : Real) : Real; stdcall;
    function  StrReplace (FonteStr:String; OldStr:String; NewStr:String):String; stdcall;
    function  Aviso (handle : Integer; sMens:String):Integer; stdcall;
    function  YesNo (handle : Integer; sMens:String):Integer; stdcall;
    function  OkCancel (handle : Integer; sMens:String):Integer; stdcall;
    function  YesNoCancel (handle : Integer; sMens:String):Integer; stdcall;
    function  Trim_field(sCampo : String):String; stdcall;
    function  Trim_field_2(sCampo : String):String; stdcall;
    function  Justifica_easy  (Linha : String; tamanho : integer) : String; stdcall;
    function  Macro_campo (FormUnit : TForm;  Linha : string) : string; stdcall;
    function  RtfToHtml(const rtf:string):string;

    function tbIsCPF(const CPF: string): boolean;
    function tbIsCGC(const CGC: string): boolean;
    function tbIsCPForCGC(const S: string): boolean;
    function tbFmtCPF(const S: string): string;
    function tbFmtCGC(const S: string): string;
    function tbFmtCPForCGC(const S: string): string;
    function isReal(sString: string): Boolean;

    procedure ApagaPasta(pasta: string); stdcall;
    procedure ParceFile( const sFileName: String;
              var sDrive, sPath, sFile, sExt: String); stdcall;

    procedure Calc_Spin (campo : TField; Tipo_Botao : String;
                         iMinimo, iMaximo : Integer); stdcall;
    procedure Seleciona_todos (Data_Grid : TDBGrid;  Tabela : TTable); stdcall;
    procedure Desmarca_todos (Data_Grid : TDBGrid;  Tabela : TTable); stdcall;
    procedure Selec_todos_List (List_View : TListView; bValue : boolean); stdcall;
    function altera_filho (tabela : TIBTable; aCampos : array of TField ;
                            novo_valor : array of Variant; acao : String) : Integer;

	 function  Pwr (Base : Longint; Expoente : Longint) : Longint; stdcall;
	 function  GetExtenso(Valor: Real) : String; stdcall;
    function mod_float (numero1, numero2 : Real) : Real;
    function IsWindowInMemory (WndTitle : String) : Boolean;
    function Executa (Arquivo : String; Estado : Integer): Cardinal;

    procedure  MostraForm (FormUnit : TFormclass); stdcall;
    procedure Copiar_Arquivos(ArqEnt, ArqSai : String);
    procedure TreeDeleteItem(Sender: TTreeView; ItemList: TStrings; Level: Integer); stdcall;
const
    C1 = 52845;
    C2 = 22719;
    NULL_STRING = '';

// Constantes de extenso
	  aUnidades : array [1..19] of string = ('Hum',
											 'Dois',
											 'Tres',
											 'Quatro',
											 'Cinco',
											 'Seis',
											 'Sete',
											 'Oito',
											 'Nove',
											 'Dez',
											 'Onze',
											 'Doze',
											 'Treze',
											 'Quatorze',
											 'Quinze',
											 'Dezesseis',
											 'Dezessete',
											 'Dezoito',
											 'Dezenove');

	  aDezenas : array [2..9] of string =  ('Vinte',
											'Trinta',
											'Quarenta',
											'Cinquenta',
											'Sessenta',
                                           'Setenta',
                                           'Oitenta',
                                           'Noventa');

     aCentenas : array [1..9] of string = ('Cento',
                                           'Duzentos',
                                           'Trezentos',
											'Quatrocentos',
											'Quinhentos',
											'Seiscentos',
											'Setecentos',
											'Oitocentos',
											'Novecentos');

	  aMilhar   : array [0..5] of string = ('',
                                           'Mil',
											'Milhao',
											'Bilhao',
											'Trilhao',
											'Quatrilhao');
	  aMilhares : array [0..5] of string = ('',
                                           'Mil',
											'Milhoes',
											'Bilhoes',
											'Trilhoes',
											'Quatrilhoes');

var
  sExtenso_Parcial : String;
  sExtenso_Total   : String;

implementation

procedure TreeDeleteItem(Sender: TTreeView; ItemList: TStrings; Level: Integer); stdcall;
var
   Node, Parent: TTreeNode;
begin
     Node := TreeGetItem(Sender, ItemList);
     while Node.level >= Level do
     begin
          Parent := Node.parent;
          Node.delete;
          if (Parent = nil) or (Parent.hasChildren) then break;
          Node := Parent;
     end;
end;

function Limpa_TXT(texto:string) : string; stdcall;
begin
  texto  := trim(texto);
  texto  := StringReplace(texto,char(0)   ,'',[rfReplaceAll]);
  texto  := StringReplace(texto,''#$D#$A'','',[rfReplaceAll]);
  texto  := StringReplace(texto,''#$D''   ,'',[rfReplaceAll]);
  texto  := StringReplace(texto,''#$A''   ,'',[rfReplaceAll]);

  result := trim(texto);
end;

function TrocaCaracterEspecial(aTexto : string) : string; stdcall;
const
  //Lista de caracteres especiais
  xCarEsp: array[1..38] of String = ('á', 'à', 'ã', 'â', 'ä','Á', 'À', 'Ã', 'Â', 'Ä',
                                     'é', 'è','É', 'È','í', 'ì','Í', 'Ì',
                                     'ó', 'ò', 'ö','õ', 'ô','Ó', 'Ò', 'Ö', 'Õ', 'Ô',
                                     'ú', 'ù', 'ü','Ú','Ù', 'Ü','ç','Ç','ñ','Ñ');
  //Lista de caracteres para troca
  xCarTro: array[1..38] of String = ('a', 'a', 'a', 'a', 'a','A', 'A', 'A', 'A', 'A',
                                     'e', 'e','E', 'E','i', 'i','I', 'I',
                                     'o', 'o', 'o','o', 'o','O', 'O', 'O', 'O', 'O',
                                     'u', 'u', 'u','u','u', 'u','c','C','n', 'N');
  //Lista de Caracteres Extras
  xCarExt: array[1..49] of string = ('<','>','!','@','#','$','%','¨','&','*',
                                     '(',')','_','+','=','{','}','[',']','?',
                                     ';',':',',','|','*','"','~','^','´','`',
                                     '¨','æ','Æ','ø','£','Ø','ƒ','ª','º','¿',
                                     '®','½','¼','ß','µ','þ','ý','Ý','''');
var
  xTexto : string;
  i : Integer;
begin
   xTexto := aTexto;
   for i:=1 to 38 do
   xTexto := StringReplace(xTexto, xCarEsp[i], xCarTro[i], [rfreplaceall]);
   for i:=1 to 49 do
   xTexto := StringReplace(xTexto, xCarExt[i], '', [rfreplaceall]);

   Result := xTexto;
end;

function TreeGetItem(Sender: TTreeView; ItemList: TStrings): TTreeNode; stdcall;
begin
     Result := TreeAddItem(Sender, Itemlist, nil, false);
end;

function TreeAddItem(Sender: TTreeView; ItemList: TStrings; Bookmark: TBookmark; Resort: Boolean): TTreeNode; stdcall;
var
   ThisNode, Node: TTreeNode;
   I: Integer;
begin
     Node := nil;   //nil = level 0 has no parent node
                    //this is checked by TreeFindItem
     for I := 0 to Itemlist.count -1 do
     begin
          ThisNode := TreeFindItem(Sender, node, Itemlist[i]);
          if ThisNode <> nil then Node := ThisNode else
          begin
               if I < Itemlist.count -1 then
               begin
                    if I = 0 then Node := Sender.items.Add(Node, Itemlist[i])
                    else Node := Sender.items.AddChild(Node, Itemlist[i]);
               end else
               begin
                    if I = 0 then Node := Sender.items.AddObject(Node, Itemlist[i], Bookmark)
                    else Node := Sender.items.AddChildObject(Node, Itemlist[i], Bookmark);
               end;
               Node.stateIndex := Node.level + 1;
               if Resort and (Node.parent <> nil) then Node.parent.alphasort; 
          end;
     end;
     Result := Node;
end;

function TreeFindItem(Sender: TTreeView; NodeItem: TTreeNode; Name: String): TTreeNode; stdcall;
begin
     if NodeItem = nil then NodeItem := Sender.items.getfirstnode
     else NodeItem := NodeItem.getfirstchild;
//NodeItem is now the first item of the desired level
//if this level has no items, NodeItem is nil

     if (NodeItem <> nil) and (NodeItem.text <> Name) then
     repeat
           NodeItem := NodeItem.getnextsibling;
     until (NodeItem = nil) or (NodeItem.text = Name);
     Result := NodeItem;
end;

Function DataPorExtenso(Data: TDate) :String; stdcall;
const
     Semana : Array [1..7] of String = ('Domingo', 'Segunda-Feira', 'Terça-Feira','Quarta-Feira','Quinta-Feira','Sexta-Feira', 'Sábado');
var
    DiaSem : Word;
begin
  if Data < 0 then
     result := ''
  else
  begin
    DiaSem:=DayOfWeek(Data);
    Result := Semana[DiaSem];
  end;
end;

(***********************************************************)
procedure ApagaPasta(pasta: string);
(***********************************************************)
var
  Arquivo: TSearchRec;
begin
  if FindFirst(pasta+'*.*', 0, Arquivo) = 0 then
  begin
        repeat
          DeleteFile(pasta+Arquivo.Name);
        until FindNext(Arquivo) <> 0;
        FindClose(Arquivo);
  end;
end;

function AjustaStr ( str: String; tam: Integer ): String; stdcall;
begin
while Length ( str ) < tam do
str := str + ' ';
if Length ( str ) > tam then
str := Copy ( str, 1, tam );
Result := str;
end;

(***********************************************************)
Function PadL( s:String;n:Integer;c:Char ):String; stdcall;
(***********************************************************)
Var X: String;
    nI: Integer;
Begin
For nI:=1 To n Do X:=X+c;
X:=X+Trim(s);
PadL:=Copy(X,Length(X)-n+1,n)
End;

//
// Controlar numeração de requisições de Compras, Pedidos de Compra, Ordens de Compra,
// Pedidos de Venda e outros.
//




(***********************************************************)
Function PadR( s:String;n:Integer;c:Char ):String; stdcall;
(***********************************************************)
Var X: String;
    nI: Integer;
Begin
For nI:=1 To n Do X:=X+c;
X:=Trim(s)+X;
PadR:=Copy(X,1,n)
End;

Function RETIRA_ACENTOS(s : string): string;
const
Acentos = 'ÁÍÓÚÉÄÏÖÜËÀÌÒÙÈÃÕÂÎÔÛÊáíóúéäïöüëàìòùèãõâîôûêÇç|#$%^&*()!~`"';
Letras  = 'AIOUEAIOUEAIOUEAOAIOUEaioueaioueaioueaoaioueCc ';
var
i: Integer;
begin
for i := 1 to Length(Acentos) do
while Pos(acentos[i],s)>0 do
s[Pos(acentos[i],s)]:=Letras[i];
Result := S;
end;


function strTran(InString: string;Search: string; new: string): string; stdcall;
Var
  i,j: integer;
Begin
   Result:= '';
   j:= Length(Search);
   i:= Pos(Search,InString);
   While i > 0 do
   begin
      Result  := Result + Copy(InString,1,i - 1) + New;
      InString:= Copy(InString,i + j,Length(InString));
      i:= Pos(Search,InString);
   end;
   Result:= Result + InString;
end;

(*********************************************************************************************)
procedure GravaJournal(tTabela : TTable; cAlias, cUser, cAcao, cUnit : String); stdcall;
(*********************************************************************************************)
var lParametros,
    lExcluidos   : TStringList;
    cArq, sStr,
    cTableName   : String;
    cArqTxt      : TextFile;
    iLoop        : Integer;
    tbl_Espa,tbl_Journal : TTable;
    cJournal     : String[1];
begin
      exit;
      if UpperCase(tTabela.TableName) <> 'ESPA' then
      begin
         tbl_Espa := TTable.Create(Application);
         tbl_Espa.DatabaseName := tTabela.DataBaseName;
         tbl_Espa.TableName := 'ESPA';
         tbl_Espa.Open;
         cJournal := tbl_Espa.FieldByName('FLG_JOURNAL').AsString;
         tbl_Espa.Close;
         tbl_Espa.Free;
         if cJournal = 'N' then
            Exit;
      end;
      tbl_Journal := TTable.Create(Application);
      tbl_Journal.DatabaseName := tTabela.DataBaseName;
      tbl_Journal.TableName := tTabela.TableName;
      tbl_Journal.Open;

      cTableName := tTabela.TableName;
      Delete(cTableName,Length(cTableName)-2,3);  // Ex.: Banco.DB  (8-2)

      lParametros := TStringList.Create;
      lExcluidos := TStringList.Create;

      Session.GetAliasParams(cAlias, lParametros);

      // Parametro 1 : Path=
      // Parametro 2 : EnableBcd=
      // Parametro 3 : DefaultDriver=

      cArq := Copy(lParametros.Strings[0],6,Length(lParametros.Strings[0])-5) +
              '\' + cTableName + '.Jor';

      AssignFile(cArqTxt, cArq);

      if FileExists(cArq) then
         Reset(cArqTxt)
      else
         Rewrite(cArqTxt);

      Append(cArqTxt);

      sStr := FormatDateTime('DD/MM/YYYY HH:MM', Now) + ' ' + PadR(cUser,10,' ') +
              ' ' + PadR(cAcao,9,' ') + ' ;' + cUnit + ';';
      For iLoop := 0 to tbl_journal.FieldCount - 1 do
         if tbl_journal.Fields[iLoop].DataType = ftInteger then
            sStr := sStr + PadL(tbl_journal.Fields[iLoop].AsString,10,' ') + ';'
         else
            if tbl_journal.Fields[iLoop].DataType = ftFloat then
               sStr := sStr + PadL(tbl_journal.Fields[iLoop].AsString,15,' ') + ';'
            else
               if tbl_journal.Fields[iLoop].DataType = ftString then
                  sStr := sStr + PadR(tbl_journal.Fields[iLoop].AsString,tbl_journal.Fields[iLoop].DataSize,' ') + ';'
               else
                  if ( tbl_journal.Fields[iLoop].DataType = ftDate ) or
                     ( tbl_journal.Fields[iLoop].DataType = ftTime ) then
                     sStr := sStr + PadR(tbl_journal.Fields[iLoop].AsString,10,' ') + ';'
                  else
                     sStr := sStr + PadR(tbl_journal.Fields[iLoop].AsString,tbl_journal.Fields[iLoop].DataSize,' ') + ';';

      Writeln(cArqTxt, sStr);
      CloseFile(cArqTxt);

{     Try
         if cAcao = 'Exclusao' then
         begin
            cArq := Copy(lParametros.Strings[0],6,Length(lParametros.Strings[0])-5) +
                    '\' + cTableName + '.Del';

            if FileExists(cArq) then
               lExcluidos.LoadFromFile(cArq);

            tbl_journal.IndexDefs.Update;
            cCamposDaPK := tbl_journal.IndexDefs[0].Fields;

            sStr := '';

            while Pos(';',cCamposDaPK) > 0 do
            begin
               sStr := sStr +
                       tbl_journal.FieldByName(Copy(cCamposDaPK,1,Pos(';',cCamposDaPK)-1)).AsString +
                       ';';
               Delete(cCamposDaPK,1,Pos(';',cCamposDaPK));
            end;

            sStr := sStr +
                    tbl_journal.FieldByName(cCamposDaPK).AsString + ';';

            sStr := sStr + FormatDateTime('DD/MM/YYYY',Date) + ';' + PadR(cUser,20,' ');

            lExcluidos.Add(sStr);

            lExcluidos.SaveToFile(cArq);
         end;

      Except
      End;}
      lParametros.Free;
      lExcluidos.Free;
end;

(***********************************************************)
Function Space( n:Integer):String; stdcall;
(***********************************************************)
Var X: String;
    nI: Integer;
Begin
For nI:=1 To n Do X:=X + ' ';
Space:=X;
End;

(***********************************************************)
Function StrZero( nInt,nTam:Integer ):String; stdcall;
(***********************************************************)
Var X: String;
    nI: Integer;
Begin
For nI:=1 To nTam Do X:=X+'0';
X:=X+IntToStr(nInt);
Result:=Copy(X,Length(X)-nTam+1,nTam)
End;

(***********************************************************)
Function StrZeroR( rInt:Real;nTam:Integer ):String; stdcall;
(***********************************************************)
Var X: String;
    nI: Integer;
Begin
For nI:=1 To nTam Do X:=X+'0';
X:=X+FloatToStr(rInt);
Result:=Copy(X,Length(X)-nTam+1,nTam)
End;

(***********************************************************)
Function LeftStr( s:String;n:Integer ):String; stdcall;
(***********************************************************)
Begin
LeftStr:=Copy(s,1,n);
End;

(***********************************************************)
Function RightStr( s:String;n:Integer): String; stdcall;
(***********************************************************)
Begin
RightStr:=Copy(s,Length(s)-n+1,n)
End;

(***********************************************************)
Function RightPos( s:String;n:Integer): String; stdcall;
(***********************************************************)
Begin
RightPos:=Copy(s,n,Length(s)-n+1)
End;

(***********************************************************)
function RPos( sFind, sSource: String ): LongInt; stdcall;
(***********************************************************)
var
   iPos, iTemp: LongInt;
begin
   Result := 0;
   iPos := Pos( sFind, sSource );

   if iPos = 0 then exit;

   iTemp := 0;
   while iPos > 0 do begin
       iTemp := iTemp + iPos;
       sSource := RightPos( sSource, iPos + 1);
       iPos := Pos( sFind, sSource );
   end;
   Result := iTemp;
end;

(***********************************************************)
Function StrZeroA( cStr : String; nTam : Integer ) : String; stdcall;
(***********************************************************)
Var X  : String;
    nI : Integer;
Begin
   For nI := 1 To nTam Do
      X := X + '0';
   X := X + cStr;
   Result := Copy(X, Length(X)-nTam+1,nTam);
End;

(***********************************************************)
Function Parce(strString:String;chCharParce:Char;intPos:Integer):String; stdcall;
(***********************************************************)
Var intCont,intContPos: Integer;
Begin
If intPos=0 Then Begin
   Result:='';
   Exit;
End;
intContPos:=1;
Result:='';
For intCont:=1 To Length(strString) Do Begin
    If Copy( strString,intCont,1 )=chCharParce Then
       Inc( intContPos )
    Else If intContPos=intPos Then Begin
       Result:=Result+Copy( strString,intCont,1 );
    End;
End;
End;
procedure ParceFile( const sFileName: String;
          var sDrive, sPath, sFile, sExt: String); stdcall;
var
    iPos : Byte;
begin
    sPath := ExtractFilePath( sFileName );
    iPos := Pos(':', sPath);
    if (iPos > 0) then begin
        if Pos('\', sPath) = (iPos + 1) then begin
            sDrive := Copy(sPath, 1, 3);
            sPath := Copy( sPath, 4, Length(sPath)-3);
        end else begin
            sDrive := Copy(sPath, 1, 2) + '\';
            sPath  := Copy(sPath, 3, Length(sPath)-2);
        end;
    end else
        sDrive := '';
                            //Only
    sFile := ExtractFileName( sFileName );

    sExt := ExtractFileExt( sFileName );
end;

(***********************************************************)
function AScanI( aVetor: array of integer; uValue: integer ): Integer; stdcall;
(***********************************************************)
var nCont, nLenght: Integer;
begin
nLenght:=High( aVetor );
Result:=-1;
nCont:=0;
repeat
     If aVetor[nCont]=uValue then
        Begin
            Result:=nCont;
            Break;
        End;
     nCont:=nCont+1;
until nCont>nLenght;
end;

(***********************************************************)
function AScanS( aVetor: array of String; sValue: String ): Integer; stdcall;
(***********************************************************)
var nCont, nLenght: Integer;
begin
nLenght:=High( aVetor );
Result:=-1;
nCont:=0;
repeat
     If aVetor[nCont]=sValue then
        Begin
            Result:=nCont;
            Break;
        End;
     nCont:=nCont+1;
until nCont>nLenght;
end;

(***********************************************************)
Procedure ASort( var aVetor: array of integer ); stdcall;
(***********************************************************)
Var nTam,nI,nJ,nK,nTemp: Integer;
begin
     nTam:=High( aVetor );
     nI:=(nTam+1) Div 2;
     While nI>0 Do
           Begin
           For nJ:=nI To nTam Do
               Begin
                    nK:=nJ-nI;
                    While nK>=0 Do
                          If aVetor[nK]>aVetor[nK+nI] Then
                             Begin
                               nTemp:=aVetor[nK];
                               aVetor[nK]:=aVetor[nK+nI];
                               aVetor[nK+nI]:=nTemp;
                               nK:=nK-nI;
                             End
                          Else
                             nK:=-1;
               End;
           nI:=nI div 2;
           End;
End;

(***********************************************************)
Procedure ASortS( var aVetor: array of String ); stdcall;
(***********************************************************)
Var nTam,nI,nJ,nK : Integer;
    nTemp : String;
begin
     nTam:=High( aVetor );
     nI:=(nTam+1) Div 2;
     While nI>0 Do
           Begin
           For nJ:=nI To nTam Do
               Begin
                    nK:=nJ-nI;
                    While nK>=0 Do
                          If aVetor[nK]>aVetor[nK+nI] Then
                             Begin
                               nTemp:=aVetor[nK];
                               aVetor[nK]:=aVetor[nK+nI];
                               aVetor[nK+nI]:=nTemp;
                               nK:=nK-nI;
                             End
                          Else
                             nK:=-1;
               End;
           nI:=nI div 2;
           End;
End;

(***********************************************************)
Function Year( dData:TDateTime ): Integer; stdcall;
(***********************************************************)
Var d,m,a: Word;
Begin
DecodeDate( dData,a,m,d );
Year:=a;
End;

(***********************************************************)
Function Month( dData:TDateTime ): Integer; stdcall;
(***********************************************************)
Var d,m,a: Word;
Begin
DecodeDate( dData,a,m,d );
Month:=m;
End;

(***********************************************************)
Function Day( dData:TDateTime ): Integer; stdcall;
(***********************************************************)
Var d,m,a: Word;
Begin
DecodeDate( dData,a,m,d );
Day:=d;
End;

Function Mes_Extenso (dData: TDateTime): String; stdcall;
const
     aMes : array [1..12] of string = ('Janeiro',
             'Fevereiro',
             'Março',
             'Abril',
             'Maio',
             'Junho',
             'Julho',
             'Agosto',
             'Setembro',
             'Outubro',
             'Novembro',
             'Dezembro');
begin
     Result := aMes[Month(dData)];
end;

(***********************************************************)
Function Seconds: Word; stdcall;
(***********************************************************)
var h,m,s,ms: Word;
Begin
DecodeTime( Now,h,m,s,ms );
Seconds:=h*3600+m*60+s;
End;

(***********************************************************)
Function SecondsD( dTime:TDateTime ): Real; stdcall;
(***********************************************************)
var h,m,s,ms: Word;
Begin
DecodeTime( dTime,h,m,s,ms );
SecondsD:=h*3600+m*60+s+ms/1000;
End;

(***********************************************************)
procedure Delay( Secs: LongInt ); stdcall;
(***********************************************************)
var
     iStart: LongInt;
begin
     iStart := Seconds;
     while ((iStart + Secs) > Seconds) do
        Application.ProcessMessages;
end;


function Valch(ch: char): byte; stdcall;
begin
  Valch:= ord(ch)-48;
end;

(***********************************************************)
function CGC_Valido(s: string): boolean; stdcall;
(***********************************************************)
const
  peso1: array[1..12] of integer =
    (5,4,3,2,9,8,7,6,5,4,3,2);
  peso2: array[1..13] of integer =
    (6,5,4,3,2,9,8,7,6,5,4,3,2);
var
  //s: string[14];
  iLoop : Integer;
  d1,d2: byte;
  i,soma: integer;
begin
  if s = '' then begin
     CGC_Valido := False;
     Exit;
  end;

  //str(cgc:0:0,s);
  for iLoop := 0 to length(trim(s)) do
  begin
      if s[iLoop] = '.' then delete (s,iLoop,1);
      if s[iLoop] = '-' then delete (s,iLoop,1);
      if s[iLoop] = '/' then delete (s,iLoop,1);
  end;

  insert(copy('00000000000000',1,14-length(s)),s,1);
  soma:= 0;
  for i:= 1 to 12 do
    soma:= soma + peso1[i]*Valch(s[i]);
  d1:= soma mod 11;
  if (d1 = 0) or (d1 = 1) then
    d1:= 0
  else
    d1:= 11 - d1;
  if d1 <> Valch(s[13]) then
  begin
    CGC_Valido:= false;
    exit;
  end;
  soma:= 0;
  for i:= 1 to 13 do
    soma:= soma + peso2[i]*Valch(s[i]);
  d2:= soma mod 11;
  if (d2 = 0) or (d2 = 1) then
    d2:= 0
  else
    d2:= 11 - d2;
  if d2 = Valch(s[14]) then
    CGC_Valido:= true
  else
    CGC_Valido:= false;
end;

(***********************************************************)
function CPF_Valido(s: string): boolean; stdcall;
(***********************************************************)
const
  peso1: array[1..9] of integer =
    (0,9,8,7,6,5,4,3,2);
  peso2: array[1..10] of integer =
    (1,0,9,8,7,6,5,4,3,2);
var
  iLoop : Integer;
  //s: string[11];
  d1,d2: byte;
  i,soma: integer;

  function vpeso1: integer;
  begin
    if (i=1) and (peso1[i]=0) then
      vpeso1:= 10
    else
      vpeso1:= peso1[i];
  end;

  function vpeso2: integer;
  begin
    if (i=1) and (peso2[i]=1) then
      vpeso2:= 11
    else if (i=2) and (peso2[i]=0) then
      vpeso2:= 10
    else
      vpeso2:= peso2[i];
  end;

begin
  if s = '' then begin
     CPF_Valido := False;
     Exit;
  end;
  for iLoop := 0 to length(trim(s)) do
  begin
      if s[iLoop] = '.' then delete (s,iLoop,1);
      if s[iLoop] = '-' then delete (s,iLoop,1);
      if s[iLoop] = '/' then delete (s,iLoop,1);
  end;

  //str(cpf:0:0,s);
  insert(copy('00000000000',1,11-length(s)),s,1);
  soma:= 0;
  for i:= 1 to 9 do
    soma:= soma + vpeso1*Valch(s[i]);
  d1:= soma mod 11;
  if (d1 = 0) or (d1 = 1) then
    d1:= 0
  else
    d1:= 11 - d1;
  if d1 <> Valch(s[10]) then
  begin
    CPF_Valido:= false;
    exit;
  end;
  soma:= 0;
  for i:= 1 to 10 do
    soma:= soma + vpeso2*Valch(s[i]);
  d2:= soma mod 11;
  if (d2 = 0) or (d2 = 1) then
    d2:= 0
  else
    d2:= 11 - d2;
  if d2 = Valch(s[11]) then
    CPF_Valido:= true
  else
    CPF_Valido:= false;
end;

(*************************************************)
function ChkDigLin( s : String ) : boolean; stdcall;
(*************************************************)
const Peso : array[1..8] of integer = (4,3,2,9,8,7,6,5);
var iLoop,
    jLoop,
    Resto,
    DigCalculado,
    DigOrigem,
    Soma    : Integer;
    nValor  : Double;
    sTmp    : String;
begin
// Tipo = C : Próprio código de barras
// Tipo = L : Linha digitável

// CodBar : 732 9 1 00000000028349 1751036854120148100282000
// Linha  : 73291.75108 36854.120148 81002.820009 1 28349

   sTmp := Copy(s,1,4);
   for iLoop := Length(s) Downto 1 do
      if s[iLoop] = ' ' then
         Break;
   nValor := StrToFloat(Copy(s,iLoop+1,14));
   DigOrigem := StrToInt(Copy(s,iLoop-1,1));
   sTmp := sTmp + PadL(FloatToStr(nValor),14,'0');
   for iLoop := 0 to Length(Trim(s)) do
   begin
      if s[iLoop] = ' ' then
         Delete (s,iLoop,1);
      if s[iLoop] = '.' then
         Delete (s,iLoop,1);
   end;
   sTmp := sTmp + Copy(s,5,28);
   s := sTmp;

   for iLoop := 0 to Length(Trim(s)) do
   begin
      if s[iLoop] = ' ' then
         Delete (s,iLoop,1);
      if s[iLoop] = '.' then
         Delete (s,iLoop,1);
   end;

   Soma := 0;
   jLoop := 1;

   for iLoop := 1 to Length(Trim(s)) do
   begin
      Soma := Soma + Peso[jLoop] * ValCh(s[iLoop]);
      if jLoop = 8 then
         jLoop := 1
      else
         Inc(jLoop);
   end;

   Resto := Soma Mod 11;

   if (Resto = 0) or
      (Resto = 1) or
      (Resto > 9) then
      DigCalculado := 1
   else
      DigCalculado := 11 - Resto;

   if DigOrigem <> DigCalculado then
      ChkDigLin := False
   else
      ChkDigLin := True;
end;

{
//............................................................................
// Funcao     : DigLinha()
// Parametros : cBar  = Linha digitavel a ser verificada (digito)
// Proposito  : Calcular e comparar o digito verificador da linha digitavel
// Retorna    : lResult = Verdadeiro se o digito esta correto
// Autor      : Daniel Wendell
// Data       : 23/03/99
//............................................................................

Function DigLinha(cBar,nTipo)

local nCount, nDig := "", nBase, nSoma, nDigBar, cString, nBco, lResult, nMult,;
      n

lResult := .F.
nBco    := val(left(cBar,3))

nDigBar := val(substr(cBar,10,1))
cString := left(cBar,9)
nMult   := 0
nSoma   := 0
nBase   := 1

for nCount = len(cString) to 1 step -1
    if nBase = 1
       nBase := 2
    else
       nBase := 1
    endif
    nMult := ( nBase * val(substr(cString,nCount,1)) )
    if nMult >= 10
       nDig := alltrim(str(nMult))
       nMult:= 0
       for n = 1 to len(nDig)
          nMult += val(substr(nDig,n,1))
       next
    endif
    nSoma += nMult
next

nDig  := 0
n     := 1
while nDig <= nSoma
   nDig := n*10
   n++
enddo

nDig := (nDig-nSoma)

if nDig == nDigBar
   lResult := .T.
else
   PTAlerT("O 1o. D¡gito da Linha Digit vel nÆo Confere !;(Informado "+str(nDigBar,1)+" / Calculado "+str(nDig,1)+")",,M->cAdvColor)
   cBar := ""
   Return lResult
endif

nDigBar := val(substr(cBar,21,1))
cString := substr(cBar,11,10)
nMult   := 0
nSoma   := 0
nBase   := 1

for nCount = len(cString) to 1 step -1
    if nBase = 1
       nBase := 2
    else
       nBase := 1
    endif
    nMult := ( nBase * val(substr(cString,nCount,1)) )
    if nMult >= 10
       nDig := alltrim(str(nMult))
       nMult:= 0
       for n = 1 to len(nDig)
          nMult += val(substr(nDig,n,1))
       next
    endif
    nSoma += nMult
next

nDig  := 0
n     := 1
while nDig <= nSoma
   nDig := n*10
   n++
enddo

nDig := (nDig-nSoma)

if nDig == nDigBar
   lResult := .T.
else
   ErrorTone()
   PTAlerT("O 2o. D¡gito da Linha Digit vel nÆo Confere !;(Informado "+str(nDigBar,1)+" / Calculado "+str(nDig,1)+")",,M->cAdvColor)
   cBar := ""
   Return lResult
endif

nDigBar := val(substr(cBar,32,1))
cString := substr(cBar,22,10)
nMult   := 0
nSoma   := 0
nBase   := 1

for nCount = len(cString) to 1 step -1
    if nBase = 1
       nBase := 2
    else
       nBase := 1
    endif
    nMult := ( nBase * val(substr(cString,nCount,1)) )
    if nMult >= 10
       nDig := alltrim(str(nMult))
       nMult:= 0
       for n = 1 to len(nDig)
          nMult += val(substr(nDig,n,1))
       next
    endif
    nSoma += nMult
next

nDig  := 0
n     := 1
while nDig <= nSoma
   nDig := n*10
   n++
enddo

nDig := (nDig-nSoma)

if nDig == nDigBar
   lResult := .T.
else
   ErrorTone()
   PTAlerT("O 2o. D¡gito da Linha Digit vel nÆo Confere !;(Informado "+str(nDigBar,1)+" / Calculado "+str(nDig,1)+")",,M->cAdvColor)
   cBar := ""
   Return lResult
endif

Return lResult
}

Function IndexOptionsToStr( indOptions:TIndexOptions ):String; stdcall;
begin
Result:='';
if ixPrimary         in indOptions Then Result:=Result+' ixPrimary';
if ixUnique          in indOptions Then Result:=Result+' ixUnique';
if ixDescending      in indOptions Then Result:=Result+' ixDescending';
if ixExpression      in indOptions Then Result:=Result+' ixExpression';
if ixCaseInsensitive in indOptions Then Result:=Result+' ixCaseInsensitive';
end;

Function StrToIndexOptions( sIndOptions:String ):TIndexOptions; stdcall;
begin
Result:=[];
if Pos('ixPrimary',sIndOptions)<>0 Then Result:=Result+[ixPrimary];
if Pos('ixUnique',sIndOptions)<>0 Then Result:=Result+[ixUnique];
if Pos('ixDescending',sIndOptions)<>0 Then Result:=Result+[ixDescending];
if Pos('ixExpression',sIndOptions)<>0 Then Result:=Result+[ixExpression];
if Pos('ixCaseInsensitive',sIndOptions)<>0 Then Result:=Result+[ixCaseInsensitive];
end;

Function GetFieldType( oField:TField ):String; stdcall;
Begin
    case oField.DataType Of
         ftUnknown:       Result:='ftUnknown';
         ftString:        Result:='ftString';
         ftSmallint:      Result:='ftSmallint';
         ftInteger:       Result:='ftInteger';
         ftWord:          Result:='ftWord';
         ftBoolean:       Result:='ftBoolean';
         ftFloat:         Result:='ftFloat';
         ftCurrency:      Result:='ftCurrency';
         ftBCD:           Result:='ftBCD';
         ftDate:          Result:='ftDate';
         ftTime:          Result:='ftTime';
         ftDateTime:      Result:='ftDateTime';
         ftBytes:         Result:='ftBytes';
         ftVarBytes:      Result:='ftVarBytes';
         ftAutoInc:       Result:='ftAutoInc';
         ftBlob:          Result:='ftBlob';
         ftMemo:          Result:='ftMemo';
         ftGraphic:       Result:='ftGraphic';
         ftFmtMemo:       Result:='ftFmtMemo';
         ftParadoxOle:    Result:='ftParadoxOle';
         ftDBaseOle:      Result:='ftDBaseOle';
         ftTypedBinary:   Result:='ftTypedBinary';
         ftCursor:        Result:='ftCursor';
     End;

End;

(************************************************************)
function Decrypt( const sStr: String; Key: Word): String; stdcall;
(************************************************************)
var
    I: LongInt;
begin
     Result := sStr;
     for I := 1 to Length(sStr) do begin
         Result[I] := Char(Byte(sStr[I]) xor (Key shr 8));
         Key := (Byte(Result[I]) + Key) * C1 + C2;
     end;
end;

(************************************************************)
function Encrypt( const sStr: String; Key: Word): String; stdcall;
(************************************************************)
var
    I: LongInt;
begin
    Result := sStr;
    for I := 1 to Length(sStr) do begin
        Result[I] := Char(Byte(sStr[I]) xor (Key shr 8));
        Key := (Byte(sStr[I]) + Key) * C1 + C2;
    end;
end;

(*****************************************************************)
function IIFBoolean( bCond, bTrue, bFalse: Boolean): Boolean; stdcall;
(*****************************************************************)
begin
     if (bCond) then
         Result := bTrue
     else
         Result := bFalse;
end;

(*****************************************************************)
function IIFChar( bCond: Boolean; cTrue, cFalse: Char): Char; stdcall;
(*****************************************************************)
begin
     if (bCond) then
        Result := cTrue
     else
        Result := cFalse;
end;

(*****************************************************************)
function IIFDate( bCond: Boolean; dTrue, dFalse: TDateTime): TDateTime; stdcall;
(*****************************************************************)
begin
     if (bCond) then
        Result := dTrue
     else
        Result := dFalse;
end;

(*****************************************************************)
function IIFExtended( bCond: Boolean; eTrue, eFalse: Extended ): Extended; stdcall;
(*****************************************************************)
begin
     if (bCond) then
        Result := eTrue
     else
        Result := eFalse;
end;

(*****************************************************************)
function IIFInteger( bCond: Boolean; iTrue, iFalse: Integer): Integer; stdcall;
(*****************************************************************)
begin
     if (bCond) then
        Result := iTrue
     else
        Result := iFalse;
end;

(*****************************************************************)
function IIFLongInt( bCond: Boolean; liTrue, liFalse: LongInt): LongInt; stdcall;
(*****************************************************************)
begin
     if (bCond) then
        Result := liTrue
     else
        Result := liFalse;
end;

(*****************************************************************)
function IIFReal( bCond: Boolean; rTrue, rFalse: Real): Real; stdcall;
(*****************************************************************)
begin
     if (bCond) then
        Result := rTrue
     else
        Result := rFalse;
end;

(*****************************************************************)
function IIFString( bCond: Boolean; sTrue, sFalse: String): String; stdcall;
(*****************************************************************)
begin
     if (bCond) then
        Result := sTrue
     else
        Result := sFalse;
end;


(*****************************************************************)
Function BlockRec(DataSource:TTable;sFase:String) : Boolean; stdcall;
(*****************************************************************)
begin
  sFase := Uppercase (sFase);
  while true do
  begin
       result := true;
       Try
          if sFase = 'D'      Then DataSource.Delete
          else if sFase = 'I' Then DataSource.Append // Insert
          else if sFase = 'A' Then DataSource.Append
          else if sFase = 'E' Then DataSource.Edit;
       except
          on EDBEngineError do Result := False;
       end;
       if result = False then
       begin
          if MessageBox(Application.handle,'Registro em Uso por Outro Usuário !',
                        'Aviso',MB_ICONWARNING+MB_RETRYCANCEL) = IDCANCEL then
          Begin
               if sFase = 'D'      Then MessageBox(Application.handle,'O Registro Não Foi Excluído !','Aviso',MB_ICONWARNING+MB_OK)
               else if sFase = 'I' Then MessageBox(Application.handle,'O Registro Não Foi Incluído !','Aviso',MB_ICONWARNING+MB_OK)
               else if sFase = 'E' Then MessageBox(Application.handle,'O Registro Não Foi Alterado !','Aviso',MB_ICONWARNING+MB_OK);
               DataSource.Cancel;
               exit;
          end;
       end
       else exit;
  end;
end;

(*****************************************************************)
Function BlockRecQuery(DataSource:TQuery;sFase:String) : Boolean; stdcall;
(*****************************************************************)
begin
  sFase := Uppercase (sFase);
  while true do
  begin
       result := true;
       Try
          if sFase = 'D'      Then DataSource.Delete
          else if sFase = 'I' Then DataSource.Insert
          else if sFase = 'E' Then DataSource.Edit
          else begin
               MessageBox(Application.handle,'Operação inválida !',
                        'Aviso',MB_ICONWARNING+MB_OK);
               Abort;
          end;
       except
          raise;
          Result := False;
       end;
       if result = False then
       begin
          if MessageBox(Application.handle,'Registro em Uso por Outro Usuário !',
                        'Aviso',MB_ICONWARNING+MB_RETRYCANCEL) = IDCANCEL then
          Begin
               if sFase = 'D'      Then MessageBox(Application.handle,'O Registro Não Foi Excluído !','Aviso',MB_ICONWARNING+MB_OK)
               else if sFase = 'I' Then MessageBox(Application.handle,'O Registro Não Foi Incluído !','Aviso',MB_ICONWARNING+MB_OK)
               else if sFase = 'E' Then MessageBox(Application.handle,'O Registro Não Foi Alterado !','Aviso',MB_ICONWARNING+MB_OK);
               DataSource.Cancel;
               exit;
          end;
       end
       else exit;
  end;
end;

{A funcao abaixo faz o arredondamento de numeros reais}
(*****************************************************************)
function RoundFloat (X : Real) : Real; stdcall;
(*****************************************************************)
     // Result := StrToFloat(FloatToStrF(x,ffFixed,15,2));
var
	sAux : String;
	iAux : Real;

begin
//	  result := 0;
	  sAux := FloatToStrF(x,ffFixed,15,9);
	  iAux := int(StrToFloat (sAux)*1000000000.00);
	  Result := ((iAux/1000000000.00)) ;
end;

{A funcao abaixo faz o arredondamento de numeros reais}
(*****************************************************************)
function RoundFloat2 (X : Real) : Real; stdcall;
(*****************************************************************)
     // Result := StrToFloat(FloatToStrF(x,ffFixed,15,2));
var
	sAux : String;
	iAux : Real;
begin
	  sAux := FloatToStrF(x,ffFixed,15,2);
	  iAux := Trunc(StrToFloat (sAux)*100);
	  Result := ((iAux/100)) ;
end;

{A funcao abaixo elimina casas decimais de numeros reais}
(*****************************************************************)
function FixFloat (X : Real) : Real; stdcall;
(*****************************************************************)
begin
     Result  := (trunc (x*100)/100);
end;

{A função abaixo Troca uma substring por outra substring}
(*****************************************************************)
function  StrReplace (FonteStr:String; OldStr:String; NewStr:String):String; stdcall;
(*****************************************************************)
var
   iPosicao_old     : Integer;
begin
     iPosicao_old := pos (OldStr,FonteStr);
     delete (FonteStr,iPosicao_old,(length(OldStr)));
     insert (NewStr,FonteStr,iPosicao_old);
     Result := FonteStr;
end;

(*****************************************************************)
function  Aviso (handle : Integer; sMens:String):Integer; stdcall;
(*****************************************************************)
begin
     Result := MessageBox (handle,pchar(sMens),'Aviso',MB_ICONWARNING+MB_OK);
end;

(*****************************************************************)
function  YesNo (handle : Integer; sMens:String):Integer; stdcall;
(*****************************************************************)
begin
     Result := MessageBox (handle,pchar(sMens),'Atenção',MB_ICONQUESTION+MB_YESNO+
                           MB_DEFBUTTON1);
end;

(*****************************************************************)
function  OkCancel (handle : Integer; sMens:String):Integer; stdcall;
(*****************************************************************)
begin
     Result := MessageBox (handle,pchar(sMens),'Atenção',MB_ICONQUESTION+MB_OKCANCEL);
end;

(*****************************************************************)
function  YesNoCancel (handle : Integer; sMens:String):Integer; stdcall;
(*****************************************************************)
begin
     Result := MessageBox (handle,pchar(sMens),'Atenção',MB_ICONQUESTION+MB_YESNOCANCEL+MB_DEFBUTTON1);
end;



{A função abaixo calcula X elevada a Y potência}
function Pwr (Base : Longint; Expoente : Longint) : Longint; stdcall;
var
	iLoop_pwr : Longint;
	iResultado: Longint;
begin
	  Pwr            :=0;
	  iResultado     := 1;
	  for iLoop_pwr  := 1 to Expoente do
		  iResultado := (iResultado * Base);
	  if Expoente =  0 then Pwr := 1; {Xº = 1}
	  if Expoente <> 0 then Pwr := iResultado;
end;

(*****************************************************************)
 Function  OpenFile (DataSource:TTable) : Boolean; stdcall;
(*****************************************************************)
Var
   iLoop : Integer;
   sMens : String;
   sMens_aux : String;
begin
  for iLoop := 1 to 10 do
  begin
       result := True;
       Try
          DataSource.Open;
       except
          on E:EDBEngineError do
          begin
               case E.Errors[0].ErrorCode of
                    8961 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Header da Tabela/Índice corrompido.';
                    8962 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Arquivo corrompido';
                    8963 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Arquivo MEMO/BLOB corrompido.';
                    8965 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Índice corrompido.';
                    8966 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Arquivo e bloqueio corrompido.';
                    8967 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Arquivo de família corrompido.';
                    8968 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Arquivo .VAL não localizado ou corrompido';
                    8969 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Formato de indice desconhecido';
                else begin
                     sMens_aux := 'Nº ' + IntToStr(E.Errors[0].ErrorCode) + ' -> ' + e.Errors[0].Message;
                     raise
                end;
                end;
                Result := False;
          end;
          on E:Exception do
          begin
              sMens_aux := 'O arquivo '+pchar (Datasource.TableName)+' não pode ser aberto !';
              sMens_aux := sMens_aux + E.Message;
              Result := False;
          end;
       end;

       if result = False then
       begin
          sMens := 'O arquivo '+pchar (Datasource.TableName)+' não pode ser aberto !';
          sMens := sMens + #13#10 + sMens_aux;
          if MessageBox(Application.handle,pchar (sMens), 'Aviso',
                        MB_ICONWARNING+MB_RETRYCANCEL) = IDCANCEL then
               exit;
       end
       else exit;
  end;
end;

(*****************************************************************)
 Function  OpenClientDataset (DataSource:TClientDataset) : Boolean; stdcall;
(*****************************************************************)
Var
   iLoop : Integer;
   sMens : String;
   sMens_aux : String;
begin
  for iLoop := 1 to 10 do
  begin
       result := True;
       Try
          DataSource.Open;
       except
          on E:EDBEngineError do
          begin
               case E.Errors[0].ErrorCode of
                    8961 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Header da Tabela/Índice corrompido.';
                    8962 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Arquivo corrompido';
                    8963 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Arquivo MEMO/BLOB corrompido.';
                    8965 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Índice corrompido.';
                    8966 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Arquivo e bloqueio corrompido.';
                    8967 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Arquivo de família corrompido.';
                    8968 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Arquivo .VAL não localizado ou corrompido';
                    8969 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Formato de indice desconhecido';
                else begin
                     sMens_aux := 'Nº ' + IntToStr(E.Errors[0].ErrorCode) + ' -> ' + e.Errors[0].Message;
                     raise
                end;
                end;
                Result := False;
          end;
          on E:Exception do
          begin
              sMens_aux := 'O arquivo '+pchar (Datasource.Name)+' não pode ser aberto !';
              sMens_aux := sMens_aux + E.Message;
              Result := False;
          end;
       end;

       if result = False then
       begin
          sMens := 'O arquivo '+pchar (Datasource.Name)+' não pode ser aberto !';
          sMens := sMens + #13#10 + sMens_aux;
          if MessageBox(Application.handle,pchar (sMens), 'Aviso',
                        MB_ICONWARNING+MB_RETRYCANCEL) = IDCANCEL then
               exit;
       end
       else exit;
  end;
end;

(*****************************************************************)
Function  OpenQuery (DataSource:TQuery) : Boolean; stdcall;
(*****************************************************************)
Var
   iLoop : Integer;
   sMens : String;
   sMens_aux : String;
begin
  for iLoop := 1 to 10 do
  begin
       result := True;
       Try
          DataSource.Open;
       except
          on E:EDBEngineError do
          begin
               case E.Errors[0].ErrorCode of
                    8961 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Header da Tabela/Índice corrompido.';
                    8962 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Arquivo corrompido';
                    8963 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Arquivo MEMO/BLOB corrompido.';
                    8965 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Índice corrompido.';
                    8966 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Arquivo e bloqueio corrompido.';
                    8967 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Arquivo de família corrompido.';
                    8968 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Arquivo .VAL não localizado ou corrompido';
                    8969 : sMens_aux := 'Erro: ' + IntToStr(E.Errors[0].ErrorCode) + ' - ' + 'Formato de indice desconhecido';
                else begin
                     sMens_aux := 'Nº ' + IntToStr(E.Errors[0].ErrorCode) + ' -> ' + e.Errors[0].Message;
                     raise
                end;
                end;
                Result := False;
          end;
          on E:Exception do
          begin
              sMens_aux := 'O arquivo '+pchar (Datasource.Name)+' não pode ser aberto !';
              sMens_aux := sMens_aux + E.Message;
              Result := False;
          end;
       end;

       if result = False then
       begin
          sMens := 'O arquivo '+pchar (Datasource.Name)+' não pode ser aberto !';
          sMens := sMens + #13#10 + sMens_aux;
          if MessageBox(Application.handle,pchar (sMens), 'Aviso',
                        MB_ICONWARNING+MB_RETRYCANCEL) = IDCANCEL then
               exit;
       end
       else exit;
  end;
end;

Function Campo_Obrigatorio (Sender : TWinControl) : Boolean; stdcall;
var
   aEntrada : Array [0..500] of TControl;
   iLoop    : Integer;
   iIndice  : Integer;
   Objeto     : TWinControl;
   Objeto_aux : TWinControl;
   iControle_while : Integer;
begin
     Result := False;
     objeto := sender;
     // Abrir Tabelas
     iIndice := 0;
     iControle_while := 0;
     for iLoop := 0 to 500 do
         aEntrada[iLoop] := nil;

     for iLoop := 0 to (Sender.ControlCount-1) do
     begin
            if ((Sender.Controls[iLoop] is TDBEdit) or
                (Sender.Controls[iLoop] is TEdit)   or
                (Sender.Controls[iLoop] is TdxTimeEdit)   or
                (Sender.Controls[iLoop] is TdxDbTimeEdit)   or                
                (Sender.Controls[iLoop] is TdxDateEdit)   or
                (Sender.Controls[iLoop] is TdxDbEdit)   or
                (Sender.Controls[iLoop] is TdxEdit)   or
                (Sender.Controls[iLoop] is TdxMaskEdit)   or
                (Sender.Controls[iLoop] is TdxDbLookUpEdit)   or
                (Sender.Controls[iLoop] is TMemo)   or
                (Sender.Controls[iLoop] is TdxDBImageEdit)   or
                (Sender.Controls[iLoop] is TdxImageEdit)   or
                (Sender.Controls[iLoop] is TdxButtonEdit)   or
                (Sender.Controls[iLoop] is TDBLookupComboBox) or
                (Sender.Controls[iLoop] is TRxDBLookupCombo) or
                (Sender.Controls[iLoop] is TDBRadioGroup) or
                (Sender.Controls[iLoop] is TDBComboBox) or
                (Sender.Controls[iLoop] is TComboBox) or
                (Sender.Controls[iLoop] is TRxDBComboEdit) or
                (Sender.Controls[iLoop] is TdxDBButtonEdit) or
                (Sender.Controls[iLoop] is TdxDBDateEdit) or
                (Sender.Controls[iLoop].tag = 1)) then
            begin
               aEntrada[iIndice] := Sender.Controls[iLoop];
               inc (iIndice);
            end
            else if ((Sender.Controls[iLoop] is TGroupBox)    or
                     (Sender.Controls[iLoop] is TPanel)       or
                     (Sender.Controls[iLoop] is TRadioGroup)  or
                     (Sender.Controls[iLoop] is TPageControl) or
                     (Sender.Controls[iLoop] is TTabSheet))   then
            begin

                      if Sender.Controls[iLoop] is TGroupBox then
                         Objeto := Sender.Controls[iLoop] as TGroupBox;

                      if Sender.Controls[iLoop] is TPanel then
                         Objeto := Sender.Controls[iLoop] as TPanel;

                      if Sender.Controls[iLoop] is TRadioGroup then
                         Objeto := Sender.Controls[iLoop] as TRadioGroup;

                      if Sender.Controls[iLoop] is TPageControl then
                         Objeto := Sender.Controls[iLoop] as TPageControl;

                      if Sender.Controls[iLoop] is TTabSheet then
                         Objeto := Sender.Controls[iLoop] as TTabSheet;

                         Campo_Obrigatorio (Objeto);
            end;
     end;
     if iIndice <> 0 then
     for iLoop := 0 to (iIndice-1) do
     begin
         if (aEntrada[iLoop] is TDBRadioGroup) then
            if (TDBRadioGroup(aEntrada[iLoop]).Itemindex = -1) and
               (TDBRadioGroup(aEntrada[iLoop]).Enabled = True) then
               Result := True;

         if not (aEntrada[iLoop] is TDBRadioGroup) then
         begin
            if ((aEntrada[iLoop] is TDBEdit)) then
               if  ((TDBEdit(aEntrada[iLoop]).Text = ''                 ) or
                    (TDBEdit(aEntrada[iLoop]).Text = '     -   '        ) or
                    (TDBEdit(aEntrada[iLoop]).Text = '  .  .   /    -  ') or
                    (TDBEdit(aEntrada[iLoop]).Text = '   .   .   -  '   ) or
                    (TDBEdit(aEntrada[iLoop]).Text = '  /  /  '         ) or
                    (TDBEdit(aEntrada[iLoop]).Text = '  /  /    '       )) and
                   (TDBEdit(aEntrada[iLoop]).Enabled = True) then
                    Result := True;

            if ((aEntrada[iLoop] is TdxDBEdit)) then
               if  ((TdxDBEdit(aEntrada[iLoop]).Text = ''                 ) or
                    (TdxDBEdit(aEntrada[iLoop]).Text = '     -   '        ) or
                    (TdxDBEdit(aEntrada[iLoop]).Text = '  .  .   /    -  ') or
                    (TdxDBEdit(aEntrada[iLoop]).Text = '   .   .   -  '   ) or
                    (TdxDBEdit(aEntrada[iLoop]).Text = '  /  /  '         ) or
                    (TdxDBEdit(aEntrada[iLoop]).Text = '  /  /    '       )) and
                    (TdxDBEdit(aEntrada[iLoop]).Enabled = True) then
                    Result := True;

            if ((aEntrada[iLoop] is TdxEdit)) then
               if  ((TdxEdit(aEntrada[iLoop]).Text = ''                 ) or
                    (TdxEdit(aEntrada[iLoop]).Text = '     -   '        ) or
                    (TdxEdit(aEntrada[iLoop]).Text = '  .  .   /    -  ') or
                    (TdxEdit(aEntrada[iLoop]).Text = '   .   .   -  '   ) or
                    (TdxEdit(aEntrada[iLoop]).Text = '  /  /  '         ) or
                    (TdxEdit(aEntrada[iLoop]).Text = '  /  /    '       )) and
                    (TdxEdit(aEntrada[iLoop]).Enabled = True) then
                    Result := True;
            if ((aEntrada[iLoop] is TdxMaskEdit)) then
               if  ((TdxMaskEdit(aEntrada[iLoop]).Text = ''                 ) or
                    (TdxMaskEdit(aEntrada[iLoop]).Text = '     -   '        ) or
                    (TdxMaskEdit(aEntrada[iLoop]).Text = '  .  .   /    -  ') or
                    (TdxMaskEdit(aEntrada[iLoop]).Text = '   .   .   -  '   ) or
                    (TdxMaskEdit(aEntrada[iLoop]).Text = '  /  /  '         ) or
                    (TdxMaskEdit(aEntrada[iLoop]).Text = '  /  /    '       )) and
                    (TdxMaskEdit(aEntrada[iLoop]).Enabled = True) then
                    Result := True;

            if ((aEntrada[iLoop] is TEdit))    then
               if  (TEdit(aEntrada[iLoop]).Text = '') and
                   (TEdit(aEntrada[iLoop]).Enabled = True) then
                    Result := True;

            if ((aEntrada[iLoop] is TMemo))    then
               if  (TMemo(aEntrada[iLoop]).Text = '') and
                   (TMemo(aEntrada[iLoop]).Enabled = True) then
                    Result := True;

            if ((aEntrada[iLoop] is TdxImageEdit))    then
               if  (TdxImageEdit(aEntrada[iLoop]).Text = '') and
                   (TdxImageEdit(aEntrada[iLoop]).Enabled = True) then
                    Result := True;

            if ((aEntrada[iLoop] is TdxButtonEdit))    then
               if  (TdxButtonEdit(aEntrada[iLoop]).Text = '') and
                   (TdxButtonEdit(aEntrada[iLoop]).Enabled = True) then
                    Result := True;

            if ((aEntrada[iLoop] is TdxDBImageEdit))    then
               if  (TdxDBImageEdit(aEntrada[iLoop]).Text = '') and
                   (TdxDBImageEdit(aEntrada[iLoop]).Enabled = True) then
                    Result := True;

            if ((aEntrada[iLoop] is TMaskEdit))    then
               if  ((TMaskEdit(aEntrada[iLoop]).Text = '') or
                    (TMaskEdit(aEntrada[iLoop]).Text = '  /  /  ') or
                    (TMaskEdit(aEntrada[iLoop]).Text = '  /  /    ')) and
                   (TMaskEdit(aEntrada[iLoop]).Enabled = True) then
                    Result := True;

            if ((aEntrada[iLoop] is TdxTimeEdit))    then
               if  ((TdxTimeEdit(aEntrada[iLoop]).Text = '') or
                    (TdxTimeEdit(aEntrada[iLoop]).Text = '00:00:00')) and
                    (TdxTimeEdit(aEntrada[iLoop]).Enabled = True) then
                    Result := True;

            if ((aEntrada[iLoop] is TdxDbTimeEdit))    then
               if  ((TdxDbTimeEdit(aEntrada[iLoop]).Text = '') or
                    (TdxDbTimeEdit(aEntrada[iLoop]).Text = '00:00:00')) and
                    (TdxDbTimeEdit(aEntrada[iLoop]).Enabled = True) then
                    Result := True;

            if ((aEntrada[iLoop] is TdxDateEdit))    then
               if  ((TdxDateEdit(aEntrada[iLoop]).Text = '') or
                    (TdxDateEdit(aEntrada[iLoop]).Text = '  /  /  ') or
                    (TdxDateEdit(aEntrada[iLoop]).Text = '  /  /    ')) and
                    (TdxDateEdit(aEntrada[iLoop]).Enabled = True) then
                    Result := True;

            if ((aEntrada[iLoop] is TdxDBDateEdit))    then
               if  ((TdxDBDateEdit(aEntrada[iLoop]).Text = '') or
                    (TdxDBDateEdit(aEntrada[iLoop]).Text = '  /  /  ') or
                    (TdxDBDateEdit(aEntrada[iLoop]).Text = '  /  /    ')) and
                   (TdxDBDateEdit(aEntrada[iLoop]).Enabled = True) then
                    Result := True;

            if ((aEntrada[iLoop] is TDBLookupComboBox)) then
               if  (TDBLookupComboBox(aEntrada[iLoop]).Text = '') and
                   (TDBLookupComboBox(aEntrada[iLoop]).Enabled = True) then
                    Result := True;

            if ((aEntrada[iLoop] is TdxDBLookupEdit)) then
               if  (TdxDBLookupEdit(aEntrada[iLoop]).Text = '') and
                   (TdxDBLookupEdit(aEntrada[iLoop]).Enabled = True) then
                    Result := True;

            if ((aEntrada[iLoop] is TdxDBButtonEdit)) then
               if  (TdxDBButtonEdit(aEntrada[iLoop]).Text = '') and
                   (TdxDBButtonEdit(aEntrada[iLoop]).Enabled = True) then
                    Result := True;

            if ((aEntrada[iLoop] is TRxDBLookupCombo)) then
               if  (TRxDBLookupCombo(aEntrada[iLoop]).Text = '') and
                   (TRxDBLookupCombo(aEntrada[iLoop]).Enabled = True) then
                    Result := True;

            if ((aEntrada[iLoop] is TDBComboBox)) then
               if  (TDBComboBox(aEntrada[iLoop]).Text = '') and
                   (TDBComboBox(aEntrada[iLoop]).Enabled = True) then
                    Result := True;

            if ((aEntrada[iLoop] is TComboBox)) then
               if  (TComboBox(aEntrada[iLoop]).Text = '') and
                   (TComboBox(aEntrada[iLoop]).Enabled = True) then
                    Result := True;

            if ((aEntrada[iLoop] is TRxDBComboEdit)) then
               if  (TRxDBComboEdit(aEntrada[iLoop]).Text = '') and
                   (TRxDBComboEdit(aEntrada[iLoop]).Enabled = True) then
                    Result := True;
         end;

         if (Result) then
         begin
              Aviso (Application.handle, 'Campo '+ GetShortHint (TWinControl(aEntrada[iLoop]).Hint) +' Obrigatório');
              objeto_aux := Sender.parent;
//              objeto_aux := Verifica_Parent(Sender.parent);
              while (objeto_aux is TPanel) or
                    (objeto_aux is TGroupBox) or
                    (objeto_aux is TRadioGroup) do
              begin
                  inc (iControle_while);
                  objeto_aux := Verifica_Parent(Sender.parent);
                  if (objeto is TTabSheet) or
                     (iControle_while > 500) then
                     break;
              end;

              if objeto_aux is TTabSheet then
              begin
                    TPageControl(TTabSheet(objeto_aux).parent).Activepage :=
                                 TTabSheet(objeto_aux);
              end;
              TWinControl (aEntrada[iLoop]).SetFocus;
              Abort;

         end;
     end;
end;

Procedure Copiar(Sender: TWinControl); stdcall;
var iLoop  : Integer;
    Objeto : TWinControl;
begin
  objeto := sender;

     for iLoop := 0 to (Sender.ControlCount-1) do
     begin
            if ((Sender.Controls[iLoop] is TDBEdit) or
                (Sender.Controls[iLoop] is TEdit)   or
                (Sender.Controls[iLoop] is TDBMemo) or
                (Sender.Controls[iLoop] is TMemo))  then
            begin
               if (Sender.Controls[iLoop] is TDBEdit) and
                  (TDBEdit(Sender.Controls[iLoop]).Focused) then
                       TDBEdit(Sender.Controls[iLoop]).CopyToClipboard;

               if (Sender.Controls[iLoop] is TEdit) and
                  (TEdit(Sender.Controls[iLoop]).Focused) then
                       TEdit(Sender.Controls[iLoop]).CopyToClipboard;

               if (Sender.Controls[iLoop] is TDBMemo)  and
                  (TDBMemo(Sender.Controls[iLoop]).Focused) then
                       TDBMemo(Sender.Controls[iLoop]).CopyToClipboard;

               if (Sender.Controls[iLoop] is TMemo)  and
                  (TMemo(Sender.Controls[iLoop]).Focused) then
                       TMemo(Sender.Controls[iLoop]).CopyToClipboard;
            end
            else begin
                 if ((Sender.Controls[iLoop] is TGroupBox)    or
                     (Sender.Controls[iLoop] is TPanel)       or
                     (Sender.Controls[iLoop] is TRadioGroup)  or
                     (Sender.Controls[iLoop] is TPageControl) or
                     (Sender.Controls[iLoop] is TTabSheet))   then
                 begin

                      if Sender.Controls[iLoop] is TGroupBox then
                         Objeto := Sender.Controls[iLoop] as TGroupBox;

                      if Sender.Controls[iLoop] is TPanel then
                         Objeto := Sender.Controls[iLoop] as TPanel;

                      if Sender.Controls[iLoop] is TRadioGroup then
                         Objeto := Sender.Controls[iLoop] as TRadioGroup;

                      if Sender.Controls[iLoop] is TPageControl then
                         Objeto := Sender.Controls[iLoop] as TPageControl;

                      if Sender.Controls[iLoop] is TTabSheet then
                         Objeto := Sender.Controls[iLoop] as TTabSheet;

                      Copiar (objeto);
                 end

            end;
     end;
end;

Procedure Colar(Sender: TWinControl); stdcall;
var
   iLoop  : Integer;
   Objeto : TWinControl;
begin
  objeto := sender;
     for iLoop := 0 to (Sender.ControlCount-1) do
     begin
            if ((Sender.Controls[iLoop] is TDBEdit) or
                (Sender.Controls[iLoop] is TEdit)   or
                (Sender.Controls[iLoop] is TDBMemo) or
                (Sender.Controls[iLoop] is TMemo))  then
            begin
               if (Sender.Controls[iLoop] is TDBEdit) and
                  (TDBEdit(Sender.Controls[iLoop]).Focused) then
                       TDBEdit(Sender.Controls[iLoop]).PasteFromClipboard;

               if (Sender.Controls[iLoop] is TEdit) and
                  (TEdit(Sender.Controls[iLoop]).Focused) then
                       TEdit(Sender.Controls[iLoop]).PasteFromClipboard;

               if (Sender.Controls[iLoop] is TDBMemo)  and
                  (TDBMemo(Sender.Controls[iLoop]).Focused) then
                       TDBMemo(Sender.Controls[iLoop]).PasteFromClipboard;

               if (Sender.Controls[iLoop] is TMemo)  and
                  (TMemo(Sender.Controls[iLoop]).Focused) then
                       TMemo(Sender.Controls[iLoop]).PasteFromClipboard;
            end
            else begin
                 if ((Sender.Controls[iLoop] is TGroupBox)    or
                     (Sender.Controls[iLoop] is TPanel)       or
                     (Sender.Controls[iLoop] is TRadioGroup)  or
                     (Sender.Controls[iLoop] is TPageControl) or
                     (Sender.Controls[iLoop] is TTabSheet))   then
                 begin

                      if Sender.Controls[iLoop] is TGroupBox then
                         Objeto := Sender.Controls[iLoop] as TGroupBox;

                      if Sender.Controls[iLoop] is TPanel then
                         Objeto := Sender.Controls[iLoop] as TPanel;

                      if Sender.Controls[iLoop] is TRadioGroup then
                         Objeto := Sender.Controls[iLoop] as TRadioGroup;

                      if Sender.Controls[iLoop] is TPageControl then
                         Objeto := Sender.Controls[iLoop] as TPageControl;

                      if Sender.Controls[iLoop] is TTabSheet then
                         Objeto := Sender.Controls[iLoop] as TTabSheet;

                      Colar (objeto);
                 end
            end;
     end;
end;

procedure Desabilita_campos (Objeto : TWinControl); stdcall;
var
   iLoop : Integer;
   OBjeto_aux : TWinControl;
begin

  objeto_aux := nil;

     for iLoop := 0 to Objeto.ControlCount -1 do
     	if (not (Objeto.Controls[iLoop] is TGroupBox)    and
            not (Objeto.Controls[iLoop] is TPanel)       and
            not (Objeto.Controls[iLoop] is TRadioGroup)  and
            not (Objeto.Controls[iLoop] is TPageControl) and
            not (Objeto.Controls[iLoop] is TTabSheet)    and
            not (Objeto.Controls[iLoop] is TDbText)      and
            not (Objeto.Controls[iLoop] is TLabel)) then
            Objeto.Controls[iLoop].Enabled := False
        else if not (Objeto.Controls[iLoop] is TLabel) and
                not (Objeto.Controls[iLoop] is TDbText)      and
                not (Objeto.Controls[iLoop] is TToolBar) then
        begin
           Objeto.Controls[iLoop].Enabled := False;
           if Objeto.Controls[iLoop] is TGroupBox then
              Objeto_aux := Objeto.Controls[iLoop] as TGroupBox;

           if Objeto.Controls[iLoop] is TPanel then
              Objeto_aux := Objeto.Controls[iLoop] as TPanel;

           if Objeto.Controls[iLoop] is TRadioGroup then
              Objeto_aux := Objeto.Controls[iLoop] as TRadioGroup;

           if Objeto.Controls[iLoop] is TPageControl then
              Objeto_aux := Objeto.Controls[iLoop] as TPageControl;

           if Objeto.Controls[iLoop] is TTabSheet then
              Objeto_aux := Objeto.Controls[iLoop] as TTabSheet;

           Desabilita_campos (objeto_aux);

        end;
end;

procedure Habilita_campos (Objeto : TWinControl); stdcall;
var
   iLoop      : integer;
   OBjeto_aux : TWinControl;
begin
   OBjeto_aux := nil;

     for iLoop := 0 to Objeto.ControlCount -1 do
     	if (not (Objeto.Controls[iLoop] is TGroupBox)    and
            not (Objeto.Controls[iLoop] is TPanel)       and
            not (Objeto.Controls[iLoop] is TRadioGroup)  and
            not (Objeto.Controls[iLoop] is TPageControl) and
            not (Objeto.Controls[iLoop] is TTabSheet)    and
            not (Objeto.Controls[iLoop] is TLabel))       Then
             Objeto.Controls[iLoop].Enabled := True
        else if not (Objeto.Controls[iLoop] is TLabel) and
                not (Objeto.Controls[iLoop] is TToolBar) then
        begin
           Objeto.Controls[iLoop].Enabled := True;

           if Objeto.Controls[iLoop] is TGroupBox then
              Objeto_aux := Objeto.Controls[iLoop] as TGroupBox;

           if Objeto.Controls[iLoop] is TPanel then
              Objeto_aux := Objeto.Controls[iLoop] as TPanel;

           if Objeto.Controls[iLoop] is TRadioGroup then
              Objeto_aux := Objeto.Controls[iLoop] as TRadioGroup;

           if Objeto.Controls[iLoop] is TPageControl then
              Objeto_aux := Objeto.Controls[iLoop] as TPageControl;

           if Objeto.Controls[iLoop] is TTabSheet then
              Objeto_aux := Objeto.Controls[iLoop] as TTabSheet;

           Habilita_campos (objeto_aux);

        end;
end;

Function Verifica_Parent (Sender:TWinControl):TWinControl;
begin
  Result := Sender.parent;
end;

procedure Carrega_LED (LED : TObject; campo : TField; Flag_T, Flag_F : String); stdcall;
begin
end;

procedure Calc_Spin (campo : TField; Tipo_Botao : String;
                            iMinimo, iMaximo : Integer); stdcall;
begin
     if Tipo_Botao = 'U' then
     begin
          TField(campo).AsFloat  := TField(campo).AsFloat + 1;
          if TField(campo).AsFloat >= iMaximo then
              TField(campo).AsFloat := iMaximo;
     end
     else begin
          TField(campo).AsFloat  := TField(campo).AsFloat - 1;
          if TField(campo).AsFloat <= iMinimo then
              TField(campo).AsFloat := iMinimo;
     end;

end;

function Trim_Field(sCampo : String):String ; stdcall;
var
   iLoop_Trim : integer;
begin
    {Elimina caracteres não imprimíveis}
    for iLoop_Trim := 1 to (length(sCampo)) do
        while ((copy (sCampo,iLoop_Trim,1) >= #0) and (copy (sCampo,iLoop_Trim,1) <= #31)) do
           delete (sCampo,iLoop_Trim,1);

    for iLoop_Trim := 1 to (length(sCampo)) do
        while ((copy (sCampo,iLoop_Trim,1) >= #255)) do
           delete (sCampo,iLoop_Trim,1);

    Result := sCampo;
end;

function Trim_Field_2(sCampo : String):String ; stdcall;
var
   iLoop_Trim : integer;
begin
    {Elimina caracteres não imprimíveis}
    for iLoop_Trim := 1 to (length(sCampo)) do
        while ((copy (sCampo,iLoop_Trim,1) >= #0) and
               (copy (sCampo,iLoop_Trim,1) <= #31) and
               (copy (sCampo,iLoop_Trim,1) <> #13) ) do
           delete (sCampo,iLoop_Trim,1);

    for iLoop_Trim := 1 to (length(sCampo)) do
        while ((copy (sCampo,iLoop_Trim,1) >= #255)) do
           delete (sCampo,iLoop_Trim,1);

    Result := sCampo;
end;

function Justifica_easy  (Linha : String; tamanho : integer) : String; stdcall;
var
   sLinha_aux   : string;
   sLinha_aux1,
   sLinha_old   : string;
   iUltimo_espaco : Integer;
   sLinha_new : string;

   // função interna a esta funcao
function Justifica_easy2  (Linha : String; tamanho : integer) : String; stdcall;
var
   sLinha_aux   : string;
   sLinha_aux1, sLinha_aux2 : String;
   sLinha_old : string;
   iLoop_just1  : integer;
   iLoop_just2  : integer;
   iLoop_just3  : integer;
   iCtl_Espacos : integer;
   sLinha_new : string;
begin
    sLinha_new     := '';
    result         := '';
    if length(linha) >= tamanho then
    for iLoop_just1 := 1 to ((length(Linha) div tamanho)+1) do
    begin
        sLinha_aux1 := '';
        sLinha_aux2 := '';
        sLinha_aux := copy (Linha,(iLoop_just1*tamanho)-(tamanho-1),tamanho);
        sLinha_old := sLinha_aux;
        // Verifica a posição do último espaço
        for iLoop_just2 := length(sLinha_aux) downto 1 do
        begin
            if (slinha_aux[iLoop_just2] = ' ') then
            begin
                iUltimo_espaco := iLoop_just2-1;
                sLinha_aux1 := copy (sLinha_aux,1,iUltimo_espaco);
                sLinha_aux2 := copy (sLinha_aux,iUltimo_espaco+1,tamanho);
                break;
            end;
            // Verifica se a linha é completa

            if (slinha_aux[iLoop_just2] <> ' ') and
                ((sLinha_aux[iLoop_just2+1]=' ') or
                 (sLinha_aux[iLoop_just2+1]='-')) and
                ((iLoop_just2 = length(sLinha_aux)) or
                 (iLoop_just2+1 = length(sLinha_aux)))then
                break;
        end;
        iCtl_espacos := 0;
        for iLoop_just2 := 1 to length (sLinha_aux2) do
        begin
            for iLoop_just3 := 1 to length (sLinha_aux1) do // restante
            begin
                inc (iCtl_espacos);
                IntToStr (iLoop_just3);
                IntToStr (iCtl_espacos);

                if ((sLinha_aux1[iCtl_espacos] = ' ') and
                   (sLinha_aux1[iCtl_espacos+1] <> ' ')) or
                   (sLinha_aux1[iCtl_espacos] = '') then
                begin
                    insert (' ',sLinha_aux1,iCtl_espacos+1); // iCtl_espacos);
                    // iCtl_espacos := iCtl_espacos+1;
                    break;
                end;
            end;
        end;
        if (slinha_aux1 + sLinha_aux2) <> '' then
        begin
            result := result + StrReplace (sLinha_aux,sLinha_old, sLinha_aux1+sLinha_aux2);
            sLinha_aux := '';
        end;
    end
    else sLinha_aux := linha;

    result := result + sLinha_aux;
    sLinha_aux := '';
end;

var
  iLoop_just1: integer;
begin
    sLinha_new     := '';
    result := '';
    if length(linha) >= tamanho then
    for iLoop_just1 := 1 to ((length(Linha) div tamanho)+1) do
    begin
        sLinha_aux1 := copy (sLinha_aux,(iLoop_just1*tamanho)-(tamanho-1),tamanho);
        sLinha_old := sLinha_aux1;
        sLinha_aux := StrReplace (sLinha_aux, sLinha_old, justifica_easy2 (sLinha_aux1,tamanho));
    end;
    result := sLinha_aux;
    sLinha_aux := '';
end;

function macro_campo (FormUnit : TForm;  Linha : string) : string; stdcall;
var
   iLoop  : Integer;
   iLoop2 : Integer;
   sAux, sAux2 : String;
   bCampo : Boolean;
   tbl_aux : TTable;
   sTableName : String;
   sFieldname : String;
   iIndexField : integer;
   bFileFind : Boolean;
begin
    // tbl_Aux := TTable.Create(self);
    // tbl_aux.DatabaseName := 'DBEasyCorp';

    sAux    := '';
    sAux2   := '';
    tbl_aux := nil;
    bCampo  := false;

    for iLoop := 1 to length (linha) do
    begin
        if (linha[iLoop] = '<') and
           (linha[iLoop+1] <> '\') then
           bCampo := True;
        if (linha[iLoop] = '>') and
           (linha[iLoop-1] <> '\') then
        begin
            sTablename := copy (sAux2,1,(pos ('.',sAux2)-1));
            sFieldName := Copy (sAux2,(pos ('.',sAux2)+1),length(sAux2));

            // if sTablename = '' then
            //   Aviso (handle, 'Erro de sintaxe na mensagem do parâmetro. Verifique ');
            tbl_aux.TableName := sTableName + '.DB';
            bFileFind := False;
            for iLoop2 := 0 to (TForm(formunit).ComponentCount-1) do
            begin
                bFileFind := False;
                if (TForm(formunit).Components[iLoop2] is TTable) then
                   if lowercase(TTable(TForm(formunit).Components[iLoop2]).Tablename) = lowercase(sTablename + '.db') then
                   begin
                       tbl_aux.Open;
                       bFileFind := True;
                       tbl_aux.GotoCurrent (TTable(TForm(formunit).Components[iLoop2]));
                       break;
                   end;
            end;
            if not (bFileFind) then
            begin
                // Aviso (handle,'Arquivo ' + stablename + ' especificado no parâmetro' +
                //                     ' não encontrado. Verifique ');
            end;

            iIndexField := tbl_aux.FieldDefs.IndexOf(sFieldName);
            if iIndexField <= -1 then
            begin
               //  Aviso (handle,'Campo ' + sFieldname + ' especificado no parâmetro' +
               //                      ' não encontrado. Verifique ');
            end;

            case tbl_aux.Fields[iIndexField].Datatype of
                ftString        : begin
                                       if pos ('cgc',lowercase(SFieldname)) > 0 then
                                          sAux2 := FormatMaskText ('99.999.999/9999-99;0; ',
                                                                   tbl_aux.Fieldbyname (sFieldname).AsString)
                                       else sAux2 := tbl_aux.Fieldbyname (sFieldname).AsString;
                                  end;
                ftSmallint      : sAux2 := formatfloat ('000000',    tbl_aux.Fieldbyname (sFieldname).AsInteger);
                ftInteger       : sAux2 := formatfloat ('000000',    tbl_aux.Fieldbyname (sFieldname).AsInteger);
                ftFloat         : sAux2 := formatfloat ('#,##0.00',  tbl_aux.Fieldbyname (sFieldname).AsFloat);
                ftDate          : sAux2 := formatdatetime ('dd/mm/yyyy',tbl_aux.Fieldbyname (sFieldname).AsDateTime);
                ftDateTime      : sAux2 := formatdatetime ('dd/mm/yyyy',tbl_aux.Fieldbyname (sFieldname).AsDateTime);
            end;
            sAux := sAux + sAux2;
            bCampo := False;
            sAux2:= '';
            tbl_aux.Close;
        end;

        if (bCampo) and
           (linha[iLoop] <> '<') and
           (linha[iLoop] <> '>') then
           saUX2 := saUX2+linha[iLoop];

        if not (bCampo)  and
           ((linha[iLoop] <> '<') and
            (linha[iLoop] <> '>')) or

           ((linha[iLoop]   = '<') and
            (linha[iLoop+1] = '\') or
            (linha[iLoop]   = '>') and
            (linha[iLoop-1] = '\')) then
           sAux := sAux + linha[iLoop];
    end;
    tbl_aux.Free;
    result := sAux;
end;

procedure Seleciona_todos (Data_Grid : TDBGrid;  Tabela : TTable); stdcall;
begin
    Tabela.DisableControls;
    Tabela.First;
    while not (tabela.EOF) do
    begin
        Data_Grid.SelectedRows.CurrentRowSelected := True;
        Tabela.Next;
    end;
    Tabela.EnableControls;
end;

procedure Desmarca_todos (Data_Grid : TDBGrid;  Tabela : TTable); stdcall;
begin
    Tabela.DisableControls;
    Tabela.First;
    while not (tabela.EOF) do
    begin
        Data_Grid.SelectedRows.CurrentRowSelected := False;
        Tabela.Next;
    end;
    Tabela.EnableControls;
end;

function altera_filho (tabela : TIBTable; aCampos : array of TField ;
                            novo_valor : array of Variant; acao : String) : Integer;
begin
    {
     -2 => False
     -1 => True
     >= 0 => Numero de registros
    }
    Result := -1;
    if acao = 'S' then
    begin
        result := Tabela.Recordcount;
        Exit;
    end;

    if Tabela.Recordcount = 0 then
        Exit;
    try
        Tabela.DisableControls;
        Tabela.First;
        while not (tabela.EOF) do
        begin
            if Acao = 'D' then
            begin
                tabela.delete;
                Tabela.First;
            end;
            if Acao = 'E' then
            begin
                Tabela.First;
            end;
        end;
    except
        Tabela.EnableControls;
        result := -2;
    end;
end;

procedure Selec_todos_List (List_View : TListView; bValue : Boolean); stdcall;
var
   iItem : Integer;
begin
    For iItem := 0 to (List_View.Items.Count-1) do
         List_View.Items[iItem].Selected := bValue;

end;

function mod_float (numero1, numero2:real) : Real;
var
   rAux : Real;
   rAux2 : Real;
   sAux : String;
begin
   rAux := 0;
   sAux := formatfloat ('###0.00',Numero1/numero2);
   rAux := numero2 * rAux;
   rAux2 := numero1 - rAux;
   result := rAux2;
end;

Function GetExtenso (Valor : Real) : String; stdcall;

var
   iLoop,iControle  : Integer; {Controla o grupo de três números}
   iCasas           : Integer; {Controla o numero de casas de milhares}
   iNumero_aux      : Real;
   sNumero_aux      : String;
   iTamanho         : Integer; {O número de caracteres digitados}
   a_Numeros         : array [0..10] of integer;
   iPOsicao_ponto : Integer;

  /////   *********   Funcoes Referente ao Valor Por Extenso ********** ///////////    15/12/97  - Paulo

{**** Esta Funcao retorna o extenso de valores menores ou iguais a 19 ****}
function  retorna_unidade (valor_unidade : Real) : string; stdcall;
var
   iIndice : Integer;
begin
  iIndice         := trunc (valor_unidade);
  retorna_unidade := aUnidades[iIndice];
end;

{**** Esta Funcao retorna o extenso de valores maiores ou iguais a 20 ****}
function  retorna_dezena  (valor_dezena  : Real) : string; stdcall;
var
   iIndice      : Integer;
   sExtenso_Aux : String;
begin
     {Quebrar Numero em Dezena e Unidade}
     iIndice        := StrToInt(copy (IntToStr(trunc (valor_dezena)),1,1));
	  sExtenso_Aux   := aDezenas[iIndice];
	  iIndice        := StrToInt(Copy(IntToStr(trunc(valor_dezena)),2,1));

     {Verifica se 2º Dígito é maior que zero}
     if iIndice > 0 then
     begin
          sExtenso_Aux:=sExtenso_Aux + ' e ' + Retorna_unidade (iIndice);
     end;
     retorna_dezena:=sExtenso_Aux;
end;

{**** Esta Funcao retorna o extenso de valores de centenas ****}
function  retorna_centena (valor_centena : Real) : string; stdcall;
var
   iInd_Centena         : Integer;
	iInd_Dezena          : Integer;
   sExt_Parcial_Dezena  : String;
   sExt_Parcial_Centena : String;
begin
    {Quebrar Numero em Centena e Dezena}
    iInd_Centena         := StrToInt(Copy (IntToStr(trunc (valor_centena)),1,1));
    iInd_Dezena          := StrToInt(Copy (IntToStr(trunc (valor_centena)),2,2));
    sExt_Parcial_Centena := aCentenas[iInd_Centena];
    if iInd_Dezena <> 0 then
    begin
         {Irá Processar números menores ou iguais a dezenove}
         if iInd_Dezena <= 19 then sExt_Parcial_Dezena := Retorna_Unidade (iInd_Dezena);

         {Irá Processar números maiores ou iguais a vinte}
         if iInd_Dezena >= 20 then sExt_Parcial_Dezena := Retorna_Dezena  (iInd_Dezena);
		  sExt_Parcial_Centena := sExt_Parcial_Centena + ' e ' + sExt_Parcial_Dezena;
	 end;
    retorna_centena := sExt_Parcial_Centena;
end;

function Verifica_milhares (iCasas_milhar : Integer): Boolean;
var
   iLoop_milhar : Integer;

begin
    result := False;
    for iLoop_milhar := iCasas_milhar to 9 do
    begin
        if a_numeros[iLoop_milhar] = 0 then
            result := True
        else result := False;
        if not (result) then
            break;
    end;
end;

function Verifica_milharesII (iCasas_milhar : Integer): Boolean;
var
   iLoop_milhar : Integer;

begin
    result := False;
//     if (iCasas_milhar = 9) and
   if (a_numeros[9] <> 1) then
    begin
        result := True;
        exit;
    end;
    for iLoop_milhar := iCasas_milhar to 8 do
    begin
        if a_numeros[iLoop_milhar] <> 0 then
            result := True
        else result := False;
        if (result) then
            break;
    end;
end;

begin
     sextenso_total := '';
     sExtenso_Parcial:='';
	  sNumero_aux    := formatfloat ('000000000000000000000000000000.00',Valor);
     sNumero_aux    := copy (sNumero_Aux,1,pos (',',sNumero_aux));
     iCasas         := 0;
     iLoop := 1;
     fillchar (a_numeros,sizeof(a_numeros),0);
     while  iLoop <= 30 do
	  begin
         {Recebe sub-número do numero principal}
         a_numeros[iCasas] := StrToInt(Copy(sNumero_Aux,iLoop,3));
         iLoop := iLoop + 3;
         inc (iCasas);
     end;
     iCasas    := 9;
     iControle := 0;
     iLoop     := 1;
     while  iLoop <= 30 do
     begin
         if (a_numeros[iControle] <= 19) and (a_numeros[iControle] > 0) then
              sExtenso_Parcial:=Retorna_Unidade (a_numeros[iControle]);

         if (a_numeros[iControle] >= 20) and (a_numeros[iControle] <= 99) then
              sExtenso_Parcial:=Retorna_Dezena  (a_numeros[iControle]);

         if a_numeros[iControle] > 100 then
              sExtenso_Parcial:=Retorna_Centena (a_numeros[iControle]);
         if a_numeros[iControle] = 100 then
              sExtenso_Parcial:='Cem ';
		  	{if (iNumero_Aux = 0) then bTem_Virgula:=False;}
         if (a_numeros[iControle] <> 0) then
		  begin
             begin
                {Acrescenta na forma de plural}
                if a_numeros[iControle] > 1 then
                   sExtenso_Parcial:=sExtenso_Parcial  + ' ' + aMilhares[iCasas];

		  		{Acrescenta na forma de singular}
                if a_numeros[iControle] = 1 then
                   sExtenso_Parcial:=sExtenso_Parcial  + ' ' + aMilhar[iCasas];
             end;

		  end;

         iLoop := iLoop + 3;


         if (trim(lowercase(sExtenso_Parcial)) = 'hum') and
            (iControle = 9) and
            (trim(sExtenso_Total) = '') then
         begin
             sExtenso_Total := sExtenso_Total + sExtenso_Parcial;
             Break;
         end;

         if (iControle = 9) and
                 (a_numeros[iControle] =  1) then
		      Insert (' e ',sExtenso_Parcial,1);

         sExtenso_Total := sExtenso_Total + sExtenso_Parcial;

         if (Verifica_milhares (iControle+1))  then
         begin
             if (iControle <= 7)  then
                 sExtenso_Total := sExtenso_Total + ' de ';
             break;
         end
         else if (iControle <= 8) and
                 (a_numeros[iControle] <> 0) and
                 (Verifica_milharesII (iControle+1)) then
             sExtenso_Total := sExtenso_Total +  ', ';
		  sExtenso_Parcial:='';
         dec (iCasas);
		  inc (iControle);
	  end;

     if trim(lowercase(sExtenso_Total)) = 'hum' then
        sExtenso_Total := sExtenso_Total + ' Real '
     else sExtenso_Total := sExtenso_Total + ' Reais ';

     // Processa centavos

     sExtenso_Parcial:='';
	  sNumero_aux    := formatfloat ('000000000000000000000000000000.00',Valor);
     // sNumero_aux    := copy (sNumero_Aux,1,pos (',',sNumero_aux));
	  iTamanho       := (length(sNumero_Aux));
	  iPosicao_Ponto := pos('.',sNumero_aux);
	  if iPosicao_ponto  = 0 then
         iPosicao_Ponto := pos(',',sNumero_aux);
	  if iPosicao_Ponto <> 0 then
	  begin
	  	   iNumero_Aux    := StrToFloat(Copy (sNumero_aux,(iPosicao_ponto+1),iTamanho));
	  	   if iNumero_Aux <> 0 then
	  	   begin
              sExtenso_Parcial := sExtenso_Parcial + ' e ';
             if (iNumero_Aux  <= 19) and (iNumero_Aux  > 0) then
                  sExtenso_Parcial:=sExtenso_Parcial + Retorna_Unidade (iNumero_Aux );

             if (iNumero_Aux >= 20) and (iNumero_Aux <= 99) then
                  sExtenso_Parcial:=sExtenso_Parcial + Retorna_Dezena  (iNumero_Aux);

             if iNumero_Aux > 100 then
                  sExtenso_Parcial:=sExtenso_Parcial + Retorna_Centena (iNumero_Aux);
             if iNumero_Aux = 100 then
                  sExtenso_Parcial:= sExtenso_Parcial + 'Cem ';
             if iNumero_Aux >= 100 then
                  sExtenso_Parcial:= sExtenso_Parcial + 'centesimos de reais '
             else begin
	  	          if iNumero_Aux = 1 then
	  		          sExtenso_Parcial := sExtenso_Parcial + ' Centavo';
	  	          if iNumero_Aux > 1 then
                     sExtenso_Parcial := sExtenso_Parcial + ' Centavos';
             end;
          end;
          sExtenso_Total := sExtenso_total + sExtenso_Parcial;
	  end;
     result := sExtenso_Total

end;

procedure  MostraForm (FormUnit : TFormclass); stdcall;
begin
    Application.Createform (Formunit, TPersistent (FormUnit));
end;

function IsWindowInMemory (WndTitle : String) : Boolean;
var
    hSem : THandle;
    hWndMe : HWnd;
begin
    Result := False;
    hSem := CreateSemaphore (nil, 0, 1, 'NomeDoSemaforo');
    if (hSem <> 0) and (GetLastError() = ERROR_ALREADY_EXISTS) then
    begin
        CloseHandle (hSem);
        hWndMe := FindWindow (nil, PChar (WndTitle));
        if hWndMe <> 0 then
        begin
            if IsIconic (hWndMe) then
                ShowWindow (hWndMe, SW_SHOWNORMAL)
            else SetForegroundWindow (hWndMe);
           Result := True;
        end;
    end;
end;

function Executa (Arquivo : String; Estado : Integer): Cardinal;
var
    Programa : array [0..512] of char;
    CurDir : array [0..255] of char;
    WorkDir : String;
    StartupInfo : TStartupInfo;
    ProcessInfo : TProcessInformation;
begin
{
    SW_SHOWNORMAL - Janela em modo normal
    SW_MAXIMIZE - Janela maximizada
    SW_MINIMIZE - Janela minimizada
    SW_HIDE - Janela Escondida
}
    StrPCopy (Programa, Arquivo);
    GetDir (0, WorkDir);
    StrPCopy (CurDir, WorkDir);
    FillChar (StartupInfo, Sizeof (StartupInfo), #0);
    StartupInfo.cb := sizeof (StartupInfo);
    StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
    StartupInfo.wShowWindow := Estado;
    if not CreateProcess (nil, Programa, nil,nil, false, CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS,nil, nil, StartupInfo, ProcessInfo) then
        Result := 0
    else begin
        WaitForSingleObject (ProcessInfo.hProcess,Infinite);
        GetExitCodeProcess (ProcessInfo.hProcess,Result);
    end;
end;

procedure Copiar_Arquivos(ArqEnt, ArqSai : String);
var
  Dados: TSHFileOpStruct;
begin
    SetLength (ArqEnt, Length(ArqEnt)+1);
    ArqEnt[Length(ArqEnt)] := #0;
    FillChar(Dados,SizeOf(Dados), 0);
    with Dados do
    begin
//        hWnd  := Application.Handle;
        wFunc := FO_COPY;
        pFrom := PChar(ArqEnt);
        pTo   := PChar(ArqSai);
        fFlags:= FOF_ALLOWUNDO+FOF_NOCONFIRMATION;
    end;
    SHFileOperation(Dados);
end;

function RtfToHtml(const rtf:string):string;

type
  TState = record
    FntTbl : boolean;
    ColTbl : boolean;
    FntLst,
    ColLst : TStringList;
  end;

  TPARFMT = record
    Alignment : TAlignment;  { højre, venstre, centreret tekst }
    Bullets   : integer;	   { Skriv bulletliste   <UL>  = 1
                                     Skriv element       <LI>  = 2
                                     Skriv element slut  </LI> = 3
                                     Skriv liste slut    </UL> = 4 }
    Written   : boolean;	   { true hvis skrevet til streng }
  end;

  TTXTFMT = record
    ChangeF   : boolean;
    DefFont   : integer;
    Font      : integer;
    Fontsize  : integer;
    Color     : integer;
    Bold      : integer;
    Italics   : integer;
    Underline : integer;
    Written   : boolean;
  end;

var
  indx : integer;  // index i rtf-streng
  ParFmt : TParFmt;
  TxtFmt : TTxtFmt;
  State  : TState;

  Group  : integer;
  Col    : string[99];
  Fnt    : string[63];

  procedure WriteChar(c:Char);
    var
      S : string;
    begin
      s:='';
      // First - get ready to write paragraph formatting
      With PARFMT do if not Written then begin
        // TextAttr's must be off before starting a new paragraph
{
       add "uses forms" to the implementation or interface statement,
       then call application.processmessages here - this would allow
       you to work the application interface will saving a large file.
}
        With TXTFMT do begin
          if bold>1 then begin
            s:=s+'</B>';
            if bold=3 then bold:=0;
          end;
          if italics>1 then begin
            s:=s+'</I>';
            if italics=3 then Italics:=0;
          end;
          if underline>1 then begin
            s:=s+'</U>';
            if underline=3 then Underline:=0;
          end;
        end;
        { Write either bulletlist or left-, center, rightjustified paragraph
          (doing it this way makes bulletlists leftjustified no matter what) }
        case Bullets of
          0 : case Alignment of
            taLeftJustify : s:=s+#13#10'<P>';
            taRightJustify: s:=s+#13#10'<P ALIGN=RIGHT>';
            taCenter      : s:=s+#13#10'<P ALIGN=CENTER>';
          end;
          1 : s:=s+#13#10'<UL>';
          2 : s:=s+#13#10'<LI>';
          3 : s:=s+'</LI>';
          4 : begin
            s:=s+#13#10'</UL>';
            Bullets:=0;
          end;
          5 : begin
            s:=s+'<BR>'#13#10#160#32#160#32#160;
            Bullets:=0;
          end;
        end;
        // If any textattr's was on before - they are re-enabled
        With TXTFMT do begin
          If Bold=2 then s:=s+'<B>';
          If Italics=2 then s:=s+'<I>';
          If Underline=2 then s:=s+'<U>';
        end;
        Written:=TRUE;
      end; { PARFMT }
      // Second - Write any textattr's
      With TXTFMT do if not written then begin
        // If font has changed - write it
        If changeF then begin
          s:=s+'<FONT FACE="'+state.fntlst.strings[Font]+
               '" COLOR="'+state.collst.strings[Color]+
               '" SIZE="'+IntToStr(FontSize)+'">';
          ChangeF:=FALSE;
        end;
        // If any textattr's should be written - do it
        case Bold of
          1 : begin
            s:=s+'<B>';
            bold:=2;
          end;
          3 : begin
            s:=s+'</B>';
            Bold:=0;
          end;
        end;
        case Italics of
          1 : begin
            s:=s+'<I>';
            Italics:=2;
          end;
          3 : begin
            s:=s+'</I>';
            Italics:=0;
          end;
        end;
        case Underline of
          1 : begin
            s:=s+'<U>';
            Underline:=2;
          end;
          3 : begin
            s:=s+'</U>';
            Underline:=0;
          end;
        end;
        Written:=TRUE;
      end;
      // At last - write the character it self
      case c of
        #0  : result:=result+s;          // Writes pending codes only
        #9  : result:=result+s+#9;       // Writes tab char
        '>' : result:=result+s+'&gt';    // Writes "greater than"
        '<' : result:=result+s+'&lt';    // Writes "less than"
        else  result:=result+s+c;        // Writes a character
      end;
    end; { WriteChar }

  function Resolve(c:char):integer;
  { Convert char to integer value - used to decode \'## to an ansi-value }
  begin
    case byte(c) of
      48..57 : Result:=byte(c)-48;
      65..70 : Result:=byte(c)-55;
      else     Result:=0;
    end;
  end; { resolve }

  function CollectCode(i:integer):integer;
  var
    Value,
    Keyword : string;
    a       : integer;
  begin
    KeyWord:='';
    // First - check if keyword is any "special" keyword or is a normal one ...
    case rtf[i+1] of
      '*' : begin    // Ignorre to end of group
        a:=group;
        repeat
          case rtf[i] of
            '{' : inc(group);
            '}' : dec(group);
          end;
          inc(i);
        until (group+1)=a;
        result:=i-1;
      end;
      #39 : begin  // Decode hex value 
        WriteChar(char(resolve(upcase(rtf[i+2]))*16+resolve(upcase(rtf[i+3]))));
        Inc(i,3);
        result:=i;
      end;
      '\','{','}' : begin  // Return special character
        WriteChar(rtf[i+1]);
        inc(i);
        result:=i;
      end;
      else begin
        // First - get keyword ...
        repeat
          keyword:=keyword+rtf[i];
          inc(i);
        until (rtf[i] in ['{','\','}',' ',';','0'..'9']);
        // Second - get any value following ...
        Value  :='';
        While (rtf[i] in ['a'..'z','0'..'9']) do begin
          value:=value+rtf[i];
          inc(i);
        end;
        if rtf[i]=' ' then inc(i);
        while (rtf[i] in ['{','}',';']) do inc(i);
        result:=i-1;
        { Check which keyword and what to do - NB: Test shows that using
          IF THEN ELSE .. is approx. 10% more efficient than calling EXIT }
        if keyword='\par' then with PARFMT do begin
          // New paragraph or bullet item
          if Bullets=2 then Bullets:=3;
          Written:=FALSE;
        end else if keyword='\f' then case state.fnttbl of
          true : begin                        // Make fontlist
            fnt:='';
            While rtf[i]<>' ' do inc(i);      // Ignore fontfamily info etc
            inc(i);
            While rtf[i]<>';' do begin        // Read font name
//              frmPrincipal.sbPrincipal.panels[0].Text := formatfloat ('0000',i);
              Fnt:=Fnt+rtf[i];
              inc(i);
            end;
            dec(group);                       // Stop group
            result:=i+1;                      // Move one beyond group end
            State.FntLst.Add(Fnt);	      // Add fontname to fontlist
          end; { true }
          false: With TXTFMT do begin         // Use fontlist
            a:=StrToIntDef(value,0);
            if font<>a then begin	      // Change Textattr's to new font
              ChangeF:=TRUE;
              Written:=FALSE;
              FONT   :=a;
            end;
          end; { false }
        end else if keyword='\plain' then
         with TXTFMT do begin                 // Zero textattr's
          If bold=2 then Bold:=3;
          If Italics=2 then Italics:=3;
          If Underline=2 then Underline:=3;
          if (bold=3) or (italics=3) or (underline=3) or (Color<>0) then begin
            color:=0;
            Written:=FALSE;
            WriteChar(#0);
          end;
        end else if keyword='\fs' then with TXTFMT do begin  // Change fontsize
          case StrToIntDef(value,11) div 2 of
             1.. 5 : a:=1;
             6.. 9 : a:=2;
            10..11 : a:=3;
            12..13 : a:=4;
            14..15 : a:=5;
            else     a:=6;
          end;
          if a<>Fontsize then begin
            Written:=False;
            Fontsize:=a;
            ChangeF:=TRUE;
          end;
        end else if keyword='\tab' then begin
          WriteChar(#9);
        end else if keyword='\ul' then with TXTFMT do begin  // Set underline
          Written:=FALSE;
          if underline=0 then Underline:=1;
        end else if keyword='\b' then with TXTFMT do begin   // Set bold
          Written:=FALSE;
          if bold=0 then Bold:=1;
        end else if keyword='\i' then with TXTFMT do begin   // Set italics
          Written:=FALSE;
          if italics=0 then Italics:=1;
        end else if keyword='\cf' then with TXTFMT do begin  // Change fontcolor
          a:=StrToIntDef(value,0);
          If Color<>a then begin
            Written:=FALSE;
            ChangeF:=TRUE;
            Color:=a;
          end;
        end else if keyword='\qc' then begin     // Set paragraphformat (center)
          PARFMT.Alignment:=taCenter;
          PARFMT.Written:=FALSE;
        end else if keyword='\qr' then begin     // Set paragraphformat (right)
          PARFMT.Alignment:=taRightJustify;
          PARFMT.Written:=FALSE;
        end else if keyword='\pntext' then
         with PARFMT do begin                    // Start bullet list item
          Written   :=FALSE;
          Bullets   :=2;
          a:=group;
          repeat
            case rtf[i] of
              '{' : inc(group);
              '}' : dec(group);
            end;
            inc(i);
          until (group+1)=a;
          result:=i-1;
        end else if keyword='\fi' then with PARFMT do begin // Start bullet list
          Written   :=FALSE;
          Bullets   :=1;
          WriteChar(#0);
        end else if keyword='\pard' then
         with PARFMT do begin                // Stop paragraph / Bulletlist
          Alignment:=taLeftJustify;
          If Bullets>0 then
            Bullets:=4;
          Written:=FALSE;
        end else if keyword='\red' then begin
          col:='#'+IntToHex(StrToIntDef(value,255),2);   // Get Red color
        end else if keyword='\green' then begin
          col:=col+IntToHex(StrToIntDef(value,255),2);   // Get Green color
        end else if keyword='\blue' then begin
          col:=col+IntToHex(StrToIntDef(value,255),2);  // Get blue color
          State.ColLst.Add(col);                        // Add RGB in colorlist
        end else if keyword='\deff' then with TXTFMT do begin
          DefFont:=StrToIntDef(value,0);              // Default font
        end else if keyword='\fonttbl' then begin
          state.fnttbl:=true;                        // Create font-list
        end else if keyword='\colortbl' then begin
          state.coltbl:=true;                        // Create color-list
        end else if keyword='\deflang' then begin
          state.fnttbl:=False;                       // Update is finished
          With PARFMT do begin                       // Setup paragraphformat
            Alignment:=taLeftJustify;
            Written:=false;
            Bullets:=0;
          end;
          With TXTFMT do begin                       // Setup font-format
            Font      :=DefFont;
            Fontsize  :=3;
            Color     :=0;
            Bold      :=0;
            Italics   :=0;
            Underline :=0;
            Written   :=false;
          end;
          state.coltbl:=True;                        // Update is finished
        end; { last if then   }
      end;  { case else }
    end;
  end;  { collectcode }

  function CleanUp(s:string):string;
  // This could be done without, but - hey - it's nice
  var
    a : integer;
  begin
    // Nice up any empty <P>aragraph statements
    While pos(#13#10'<P>'#13#10'<P',s)>0 do begin
      a:=pos(#13#10'<P>'#13#10'<P',s);
      system.delete(s,a,6);
      system.insert('</P>',s,a);
    end;
    result:=s;
  end; { cleanup }


begin
  try
    State.FntLst:=TstringList.Create;    // Create fontlist
    State.ColLst:=TstringList.Create;    // Create colorlist
    State.ColLst.add ('#FFFF');
    indx:=0;
    result:='';
    repeat
      if (trim(rtf)= '') then
          break;
      inc(indx);
//       frmPrincipal.sbPrincipal.panels[0].Text := formatfloat ('0000',indx);
      case rtf[indx] of
        #0..#31 : ;                      // Ascii ctrl-char - ignorre
        '{' : Inc(group);
        '}' : Dec(group);
        '\' : indx:=collectcode(indx);   // Code found - the fun starts ...
        else begin
          WriteChar(rtf[indx]);         // Write char and any pending html-codes ...
          Inc(indx);                    // Speedwrite normal chars till next special one
          while (indx<length(rtf)) and
                not (rtf[indx] in ['{','}','\','<','>',#00..#31]) do begin
            result:=result+rtf[indx];
            inc(indx);
          end;
          dec(indx);
        end;

      end;
    until indx>=length(rtf);
  finally
    result:=cleanup(result);		  // Return the HTML document
    State.FntLst.free;
    State.ColLst.free;
  end;
end;

function ActionOnAllTables (FormUnit : TForm; Option : String;Tipo : String) : Boolean; stdcall;
var
   aTables : Array [0..100] of TTable;
   aQuery  : Array [0..100] of TQuery;
   aClient  : Array [0..100] of TClientDataset;
   iLoop   : Integer;
   iIndice : Integer;

begin
     result := true;
     Option := Uppercase (Option);
     Tipo   := Uppercase (Tipo);

     // Abrir Tabelas
     iIndice := 0;
     for iLoop := 0 to 100 do
         aTables[iLoop] := nil;
     for iLoop := 0 to 100 do
         aQuery[iLoop] := nil;

     for iLoop := 0 to (TForm(FormUnit).ComponentCount-1) do
     begin
            if Tipo = 'T' then
            begin
                if (TForm(FormUnit).Components[iLoop] is TTable) then
                if TTable(TForm(FormUnit).Components[iLoop]).tag = 0 then
                begin
                   aTables[iIndice] := TTable(TForm(FormUnit).Components[iLoop]);
                   inc (iIndice);
                end;
            end;

            if Tipo = 'Q' then
            begin
                if (TForm(FormUnit).Components[iLoop] is TQuery) then
                if TQuery(TForm(FormUnit).Components[iLoop]).tag = 0 then
                begin
                   aQuery[iIndice] := TQuery(TForm(FormUnit).Components[iLoop]);
                   inc (iIndice);
                end;
            end;

            if Tipo = 'C' then
            begin
                if TForm(FormUnit).Components[iLoop] is TClientDataset then
                if TClientDataset(TForm(FormUnit).Components[iLoop]).tag = 0 then
                begin
                   aClient[iIndice] := TClientDataset(TForm(FormUnit).Components[iLoop]);
                   inc (iIndice);
                end;
            end;
     end;

     if Option = 'O' then
     begin
        if Tipo = 'T' then
            if not (OpenTables (aTables)) then
                 result := False;
        if Tipo = 'Q' then
            if not (OpenQueries (aQuery)) then
                result := False;
        if Tipo = 'C' then
            if not (OpenClientDatasets (aClient)) then
                result := False;
     end;


     if Option = 'C' then
        for iLoop := 0 to (iIndice-1) do
        begin
            aTables[iLoop].Close;
        end;

     if result = false then
        FormUnit.OnActivate := nil;

end;

(*****************************************************************)
Function  OpenTables (aOpenFiles : array of TTable) : Boolean; stdcall;
(*****************************************************************)
var
   bResult : Boolean;
   iLoop : Integer;
   iFinal : Integer;
begin
     result := false;
     iFinal := High (aOpenFiles); // Pega o indice do maior argumento
     for iLoop := 0 to iFinal do
     begin
       if aOpenFiles [iLoop] = nil then
           break;
       bResult := (OpenFile (aOpenFiles [iLoop]));
       Result := bResult;
       if not (bResult) then
          break;
     end;
end;

(*****************************************************************)
Function  OpenQueries (aOpenQueries : array of TQuery) : Boolean; stdcall;
(*****************************************************************)
var
   bResult : Boolean;
   iLoop : Integer;
   iFinal : Integer;
begin
     result := false;
     iFinal := High (aOpenQueries); // Pega o indice do maior argumento
     for iLoop := 0 to iFinal do
     begin
          if aOpenQueries [iLoop] = nil then
             break;
          bResult := (OpenQuery (aOpenQueries [iLoop]));
          Result := bResult;
          if not (bResult) then
             break;
     end;
end;

(*****************************************************************)
Function  OpenClientDatasets (aOpenFiles : array of TClientDataset) : Boolean; stdcall;
(*****************************************************************)
var
   bResult : Boolean;
   iLoop : Integer;
   iFinal : Integer;
begin
     result := false;
     iFinal := High (aOpenFiles); // Pega o indice do maior argumento
     for iLoop := 0 to iFinal do
     begin
          if (aOpenFiles [iLoop] = nil) or
             (aOpenFiles [iLoop].name = '') then
             break;
          bResult := (OpenClientDataset (aOpenFiles [iLoop]));
          Result := bResult;
          if not (bResult) then
             break;
     end;
end;

{ Pega somente os dígitos numéricos da string }
function tbDigits(const S: string): string;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Length(S) do
    if Pos(S[I], '0123456789') > 0 then
      Result := Result + S[I];
end;

{ Retorna true se a string for um CPF válido }
function tbIsCPF(const CPF: string): boolean;
var
  I, Soma, Digito: integer;
  CalcCPF, S1, S2: string;
  B: boolean;
  C: Char;
begin
  Result := false;
  S1 := ''; { CPF somente com dígitos }
  for I := 1 to Length(CPF) do begin
    S2 := Copy(CPF, I, 1);
    if Pos(S2, '0123456789') > 0 then
      S1 := S1 + S2;
  end;
  if Length(S1) <> 11 then
    Exit; { Não é CPF, pois não são 11 dígitos }

  { Teste se os 11 díg. são iguais }
  B := true;
  C := S1[1];
  for I := 2 to 11 do begin
    B := B and (S1[I] = C);
    C := S1[I];
  end;
  if B then { Todos díg. iguais }
    Exit;

  CalcCPF := Copy(S1, 1, 9);

  { Cálculo do 1º dígito }
  Soma := 0;
  for I := 1 to 9 do
    Soma := Soma + StrToInt(Copy(CalcCPF, I, 1)) * (11 - I);
  Digito := 11 - (Soma mod 11);
  if Digito in [ 10, 11 ] then
    CalcCPF := CalcCPF + '0'
  else
    CalcCPF := CalcCPF + IntToStr(Digito);

  { Cálculo do 2º dígito }
  Soma := 0;
  for I := 1 to 10 do
    Soma := Soma + StrToInt(Copy(CalcCPF, I, 1)) * (12 - I);
  Digito := 11 - (Soma mod 11);
  if Digito in [ 10, 11 ] then
    CalcCPF := CalcCPF + '0'
  else
    CalcCPF := CalcCPF + IntToStr(Digito);

  if CalcCPF = S1 then
    Result := true;
end;

{ Retorna true se a string for um CGC válido }
function tbIsCGC(const CGC: string): boolean;
var
  CalcCGC, S1, S2: string;
  I, Soma, Digito: integer;
begin
  Result := false;

  S1 := ''; { CGC somente com dígitos }
  for I := 1 to Length(CGC) do begin
    S2 := Copy(CGC, I, 1);
    if Pos(S2, '0123456789') > 0 then
      S1 := S1 + S2;
  end;
  if Length(S1) <> 14 then
    Exit; { Não é CGC, pois não são 14 dígitos }
  if S1 = '00000000000000' then
    Exit;
  CalcCGC := Copy(S1, 1, 12);

  { Cálculo do 1º dígito }
  Soma := 0;
  for I := 1 to 4 do
    Soma := Soma + StrToInt(Copy(CalcCGC, I, 1)) * (6 - I);
  for I := 1 to 8 do
    Soma := Soma + StrToInt(Copy(CalcCGC, I + 4, 1)) * (10 - I);
  Digito := 11 - (Soma mod 11);
  if Digito in [ 10, 11 ] then
    CalcCGC := CalcCGC + '0'
  else
    CalcCGC := CalcCGC + IntToStr(Digito);

  { Cálculo do 2º dígito }
  Soma := 0;
  for I := 1 to 5 do
    Soma := Soma + StrToInt(Copy(CalcCGC, I, 1)) * (7 - I);
  for I := 1 to 8 do
    Soma := Soma + StrToInt(Copy(CalcCGC, I + 5, 1)) * (10 - I);
  Digito := 11 - (Soma mod 11);
  if Digito in [ 10, 11 ] then
    CalcCGC := CalcCGC + '0'
  else
    CalcCGC := CalcCGC + IntToStr(Digito);

  if CalcCGC = S1 then
    Result := true;
end;

{ Retorna true se a string for CPF ou CGC válido }
function tbIsCPForCGC(const S: string): boolean;
begin
  if s = '' then result := true else
  Result := tbIsCPF(S) or tbIsCGC(S);
end;

{ Retorna a string formatada como CPF }
function tbFmtCPF(const S: string): string;
var
  Temp: string;
begin
  Result := S;
  Temp := tbDigits(S);
  if Length(Temp) = 11 then
    Result := Copy(Temp,  1, 3) + '.' +
              Copy(Temp,  4, 3) + '.' +
              Copy(Temp,  7, 3) + '-' +
              Copy(Temp, 10, 2);
end;

{ Retorna a string formatada como CGC }
function tbFmtCGC(const S: string): string;
var
  Temp: string;
begin
  Result := S;
  Temp := tbDigits(S);
  if Length(Temp) = 14 then
    Result := Copy(Temp,  1, 2) + '.' +
              Copy(Temp,  3, 3) + '.' +
              Copy(Temp,  6, 3) + '/' +
              Copy(Temp,  9, 4) + '-' +
              Copy(Temp, 13, 2);
end;

{ Retorna a string formatada como CPF se tiver 11 dígitos, ou
  como CGC se tiver 14 dígitos }
function tbFmtCPForCGC(const S: string): string;
var
  Temp: string;
begin
  Result := S;
  Temp := tbDigits(S);
  case Length(Temp) of
    11: Result := tbFmtCPF(S);
    14: Result := tbFmtCGC(S);
  end;
end;

function isReal(sString: string): Boolean;
var
  bRet: boolean;
begin
  try
    sString := floattostr(strtofloat(sString));
    bRet := true;
  except
    bRet := false;
  end;
  result := bRet
end;

function RETORNA_REAL(old: string): double;
var
  i: word;
  new: string;
begin
  new := '';
  for i := 1 to length(old) do
  begin
    if (copy(old,i,1) <> 'R') and (copy(old,i,1) <> '$') and
       (copy(old,i,1) <> '.') and (copy(old,i,1) <> ' ') then
       new := new + copy(old,i,1);
  end;

  if new = '' then
     new := '0';

  result := strtofloat(new);
end;

function  RETORNA_DECIMAL(OLD: string) : string; stdcall;
var
  nPos,i,x: word;
  valor: string;
begin
  nPos := Pos('.',old);
  if nPos = 0 then
  nPos := Pos(',',old);

  valor := copy(old,1,nPos);
  inc(nPos);
  x := 0;

  for i := nPos to length(old) do
  begin
    inc(x);
    valor := valor + copy(old,i,1);

    if x = 10 then
    break;
  end;

  result := valor;
end;

function RETORNA_STRING(OLD: double;dec: word): string;
var
  sStr: string;
begin
  sStr := '';
  if (old <> 0) then
  begin
    if dec = 0 then
       sStr := strtran(floatToStr(old),',','.')
    else if dec = 2 then
       sStr := strtran(formatfloat('0.00',old),',','.')
    else if dec = 3 then
       sStr := strtran(formatfloat('0.000',old),',','.')
    else if dec = 4 then
       sStr := strtran(formatfloat('0.0000',old),',','.')
    else if dec = 5 then
       sStr := strtran(formatfloat('0.00000',old),',','.')
    else if dec = 6 then
       sStr := strtran(formatfloat('0.000000',old),',','.')
    else if dec = 10 then
       sStr := strtran(formatfloat('0.0000000000',old),',','.');
  end;
  result := sStr;
end;

function RETORNA_PRODUTO(cpro: string): string;
var
  ccor: string;
  cart: string;
  i,j: word;
begin
  j := 0;
  for i := 0 to length(cpro) do
  begin
    if copy(cpro,i,1) = '.' then
       inc(j);
  end;

  if j <= 2 then
  begin
    j     := 0;
    cart  := '';
    for i := 1 to length(cpro) do
    begin
      cart := cart+copy(cpro,i,1);
      if copy(cpro,i,1) = '.' then
         inc(j);

      if j = 2 then
         break;
    end;

    if j <> 2 then
    cart := cpro
    else
    begin
      inc(i);
      try
        ccor := strzero(strtoint(trim(copy(cpro,i,4))),4);
      except
        raise exception.Create('Cor informada incorretamente');
      end;
      cart := cart+ccor;
    end;
  end else cart := cpro;
  result := cart;
end;


end.


