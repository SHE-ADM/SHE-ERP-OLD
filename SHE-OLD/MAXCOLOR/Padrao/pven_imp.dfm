inherited frmven_imp: Tfrmven_imp
  Left = 444
  Top = 127
  Caption = 'Importa'#231#227'o de Itens de Produtos'
  ClientHeight = 397
  ClientWidth = 334
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlcadastro: TPanel
    Width = 334
    Height = 264
    inherited PaintBox: TPaintBox
      Top = 193
      Width = 334
      Height = 71
    end
    object rgorig: TRadioGroup
      Left = 0
      Top = 72
      Width = 334
      Height = 121
      Align = alTop
      Caption = 'Origem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Pedido de Venda'
        'Romaneio'
        'Nota Fiscal'
        'Programa'#231#227'o'
        'Or'#231'amento')
      ParentFont = False
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 334
      Height = 72
      Align = alTop
      Caption = 'Empresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 19
        Top = 24
        Width = 79
        Height = 14
        Caption = 'Nome Fantasia'
      end
      object cbfant: TdxImageEdit
        Tag = 1
        Left = 19
        Top = 39
        Width = 310
        Hint = 'Cor'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clGray
        Style.BorderStyle = xbsFlat
        Style.ButtonStyle = btsSimple
        TabOrder = 0
        AutoSize = False
        Descriptions.Strings = (
          'ETIQUETA DE MALA DIRETA')
        ImageIndexes.Strings = (
          '0')
        Values.Strings = (
          'ETIQUETA DE MALA DIRETA')
        Height = 22
      end
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 193
      Width = 334
      Height = 71
      Align = alClient
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label2: TLabel
        Left = 19
        Top = 24
        Width = 43
        Height = 14
        Caption = 'N'#250'mero'
      end
      object ednume: TdxEdit
        Tag = 1
        Left = 19
        Top = 40
        Width = 78
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 0
        OnKeyDown = ednumeKeyDown
        AutoSize = False
        CharCase = ecUpperCase
        Height = 24
      end
    end
  end
  inherited sbMSG: TStatusBar
    Top = 378
    Width = 334
  end
  inherited SpeedBar2: TSpeedBar
    Width = 334
  end
end
