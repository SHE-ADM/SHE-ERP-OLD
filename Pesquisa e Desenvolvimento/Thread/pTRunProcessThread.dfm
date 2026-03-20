object FrmTRunProcessThread: TFrmTRunProcessThread
  Left = 1212
  Top = 117
  Width = 459
  Height = 231
  Caption = 'FrmTRunProcessThread'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 56
    Height = 13
    Caption = 'N'#186' PEDIDO'
  end
  object EDDEPK: TEdit
    Left = 104
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '202274'
  end
  object BTNINI: TButton
    Left = 16
    Top = 46
    Width = 75
    Height = 25
    Caption = 'INI'
    TabOrder = 1
    OnClick = BTNINIClick
  end
  object BTNFIM: TButton
    Left = 16
    Top = 70
    Width = 75
    Height = 25
    Caption = 'FIM'
    TabOrder = 2
  end
  object EDINI: TEdit
    Left = 104
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EDFIM: TEdit
    Left = 104
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 4
  end
end
