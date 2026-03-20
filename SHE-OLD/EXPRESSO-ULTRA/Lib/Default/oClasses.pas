unit oClasses;

{$LONGSTRINGS ON}

interface

uses
  Windows, Messages, SysUtils, Variants, StrUtils, Math, MidasLib, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, Grids, DBGrids, ExtCtrls, Db, DBTables, DBClient, StdCtrls, dxEdLib, Registry,
  DBCtrls, Buttons, Menus, Mask, RXLookup, RxToolEdit, IBCustomDataSet, IBTable, dxEditor,
  IBDatabase, IBQuery, RxSpeedBar, ActnList,imglist,MaskUtils, StrInt, StrIntImp, xmldom, XMLIntf, msxmldom, XMLDoc, Xmlxform,
  ShellApi, RXDBCtrl, dxDBELib, DateUtils, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid,dxPageControl;

type TRECPesquisa = record
       Editado: Boolean;
       DECampo,
       IDCampo,
       Texto,
       IDData : String;
       Data1,
       Data2  : TDate;
end;

implementation

end.
 