object FrmPrincipal: TFrmPrincipal
  Left = 876
  Top = 138
  Width = 835
  Height = 654
  Caption = 'FrmPrincipal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnLeak: TButton
    Left = 448
    Top = 96
    Width = 75
    Height = 25
    Caption = 'btnLeak'
    TabOrder = 0
    OnClick = btnLeakClick
  end
  object btnProcessarEmBlocos: TButton
    Left = 344
    Top = 288
    Width = 177
    Height = 25
    Caption = 'btnProcessarEmBlocos'
    TabOrder = 1
    OnClick = btnProcessarEmBlocosClick
  end
end
