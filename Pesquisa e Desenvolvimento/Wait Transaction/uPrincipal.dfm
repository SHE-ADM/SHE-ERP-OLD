object FrmPrincipal: TFrmPrincipal
  Left = 339
  Top = 117
  Width = 1305
  Height = 675
  Caption = 'FrmPrincipal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edicao: TIBDataSet
    Database = FBird.DBERP
    Transaction = TEdicao
    Left = 192
    Top = 152
  end
  object TEdicao: TIBTransaction
    DefaultDatabase = FBird.DBERP
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 192
    Top = 120
  end
  object SPEdit: TIBStoredProc
    Database = FBird.DBERP
    Transaction = TEdicao
    Left = 192
    Top = 192
  end
  object SQLEdicao: TIBSQL
    Database = FBird.DBERP
    Transaction = TEdicao
    Left = 280
    Top = 184
  end
end
