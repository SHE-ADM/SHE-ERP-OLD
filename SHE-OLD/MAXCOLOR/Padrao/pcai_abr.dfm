inherited frmcai_abr: Tfrmcai_abr
  Left = 515
  Top = 231
  ActiveControl = edvabr
  Caption = 'Abertura de Caixa'
  ClientHeight = 265
  ClientWidth = 520
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlcadastro: TPanel
    Width = 520
    Height = 246
    inherited PaintBox: TPaintBox
      Width = 520
      Height = 181
    end
    object Label4: TLabel [1]
      Left = 11
      Top = 197
      Width = 39
      Height = 14
      Caption = 'Usu'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel [2]
      Left = 11
      Top = 101
      Width = 60
      Height = 14
      Caption = 'Valor Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel [3]
      Left = 11
      Top = 77
      Width = 77
      Height = 14
      Caption = 'Data Abertura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel [4]
      Left = 11
      Top = 125
      Width = 27
      Height = 14
      Caption = 'Caixa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel [5]
      Left = 11
      Top = 149
      Width = 137
      Height = 14
      Caption = 'Identifica'#231#227'o do Terminal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel [6]
      Left = 347
      Top = 77
      Width = 77
      Height = 14
      Caption = 'Hora Abertura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel [7]
      Left = 11
      Top = 173
      Width = 11
      Height = 14
      Caption = 'IP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    inherited SBMenuPrincipal: TSpeedBar
      Width = 520
      TabOrder = 7
    end
    object edvabr: TdxEdit
      Left = 160
      Top = 96
      Width = 99
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14065456
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsFlat
      Style.Shadow = True
      TabOrder = 1
      Text = '0,00'
      Alignment = taRightJustify
      CharCase = ecUpperCase
      MaxLength = 6
      OnValidate = edvabrValidate
      StoredValues = 3
    end
    object eddabr: TdxDateEdit
      Left = 160
      Top = 73
      Width = 100
      Color = clWhite
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
      Date = -700000.000000000000000000
      UseEditMask = True
      StoredValues = 4
    end
    object cbdecx: TdxImageEdit
      Left = 160
      Top = 120
      Width = 99
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14065456
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsFlat
      Style.Shadow = True
      TabOrder = 2
      Text = '1 - CAIXA'
      OnChange = cbdecxChange
      Descriptions.Strings = (
        '1 - CAIXA'
        '2 - CAIXA'
        '3 - CAIXA'
        '4 - CAIXA'
        '5 - CAIXA'
        '6 - CAIXA'
        '7 - CAIXA'
        '8 - CAIXA'
        '9 - CAIXA')
      ImageIndexes.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8')
      Values.Strings = (
        '1 - CAIXA'
        '2 - CAIXA'
        '3 - CAIXA'
        '4 - CAIXA'
        '5 - CAIXA'
        '6 - CAIXA'
        '7 - CAIXA'
        '8 - CAIXA'
        '9 - CAIXA')
    end
    object edterm: TdxEdit
      Left = 160
      Top = 144
      Width = 345
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14065456
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsFlat
      Style.Shadow = True
      TabOrder = 3
      CharCase = ecUpperCase
      MaxLength = 6
      StoredValues = 2
    end
    object eddusu: TdxEdit
      Left = 160
      Top = 192
      Width = 345
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14065456
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsFlat
      Style.Shadow = True
      TabOrder = 4
      CharCase = ecUpperCase
      MaxLength = 6
      StoredValues = 2
    end
    object edhabr: TdxEdit
      Left = 432
      Top = 72
      Width = 73
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14065456
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsFlat
      Style.Shadow = True
      TabOrder = 5
      Alignment = taRightJustify
      CharCase = ecUpperCase
      MaxLength = 6
      OnValidate = edvabrValidate
      StoredValues = 3
    end
    object edip: TdxEdit
      Left = 160
      Top = 168
      Width = 345
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14065456
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsFlat
      Style.Shadow = True
      TabOrder = 6
      CharCase = ecUpperCase
      MaxLength = 6
      StoredValues = 2
    end
  end
  inherited sbMSG: TStatusBar
    Top = 246
    Width = 520
  end
  object aux: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    Left = 696
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 424
    Top = 56
  end
  object IP: TIdIPWatch
    Active = False
    HistoryFilename = 'iphist.dat'
    Left = 496
    Top = 32
  end
end
