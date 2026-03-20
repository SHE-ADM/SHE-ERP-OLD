object Form1: TForm1
  Left = 339
  Top = 124
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 80
    Top = 424
    Width = 105
    Height = 105
  end
  object Edit1: TEdit
    Left = 120
    Top = 48
    Width = 585
    Height = 21
    TabOrder = 0
    Text = 'https://cartela.otimotex.app/c/zn.03'
  end
  object Button1: TButton
    Left = 120
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Gerar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = Button2Click
  end
end
