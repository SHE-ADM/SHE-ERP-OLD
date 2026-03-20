object FrmEventos: TFrmEventos
  Left = 304
  Top = 117
  Width = 1305
  Height = 675
  Caption = 'FrmEventos'
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
    Left = 248
    Top = 360
    Width = 75
    Height = 25
    Caption = 'UnRegister'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 328
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Register'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 488
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Rodar'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 488
    Top = 360
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object TEvent: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = DBERP
    DefaultAction = TARollbackRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saRollback
    Left = 280
    Top = 184
  end
  object SQLEvent: TIBSQL
    Database = DBERP
    Transaction = TEvent
    Left = 312
    Top = 184
  end
  object SPEvent: TIBStoredProc
    Database = DBERP
    Transaction = TEvent
    Left = 344
    Top = 184
  end
  object EEvent: TIBEvents
    AutoRegister = False
    Database = DBERP
    Registered = False
    OnEventAlert = EEventEventAlert
    Left = 376
    Top = 184
  end
  object DBERP: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Sheild\FBird\Otimotex.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=ri1903'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    Left = 40
    Top = 8
  end
end
