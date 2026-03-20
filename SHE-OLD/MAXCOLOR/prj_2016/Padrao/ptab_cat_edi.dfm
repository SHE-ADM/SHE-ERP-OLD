inherited frmtab_cat_edi: Tfrmtab_cat_edi
  Left = 353
  Top = 111
  ActiveControl = edprec
  ClientHeight = 359
  ClientWidth = 552
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlcadastro: TPanel
    Width = 552
    Height = 226
    object PaintBox1: TPaintBox [0]
      Left = 0
      Top = 0
      Width = 552
      Height = 226
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    inherited PaintBox: TPaintBox
      Width = 552
      Height = 226
    end
    object Label11: TLabel
      Left = 37
      Top = 37
      Width = 131
      Height = 14
      Caption = 'Flutua'#231#227'o Comiss'#227'o (%)'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 309
      Top = 37
      Width = 113
      Height = 14
      Caption = 'Flutua'#231#227'o Pre'#231'o (%)'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 37
      Top = 61
      Width = 125
      Height = 14
      Caption = 'N'#250'mero de Repeti'#231#245'es'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object linha1: TShape
      Left = 120
      Top = 13
      Width = 409
      Height = 3
      Brush.Color = 11106843
      Pen.Color = 14789952
    end
    object Shape4: TShape
      Left = 10
      Top = 5
      Width = 103
      Height = 18
      Brush.Color = 14789952
      Pen.Color = 11764252
      Shape = stRoundRect
    end
    object Label4: TLabel
      Left = 18
      Top = 7
      Width = 70
      Height = 14
      Caption = 'Parametros'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Shape1: TShape
      Left = 120
      Top = 101
      Width = 409
      Height = 3
      Brush.Color = 11106843
      Pen.Color = 14789952
    end
    object Shape2: TShape
      Left = 10
      Top = 93
      Width = 103
      Height = 18
      Brush.Color = 14789952
      Pen.Color = 11764252
      Shape = stRoundRect
    end
    object Label7: TLabel
      Left = 18
      Top = 95
      Width = 59
      Height = 14
      Caption = 'Categoria'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 37
      Top = 126
      Width = 51
      Height = 14
      Caption = 'Descri'#231#227'o'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 37
      Top = 150
      Width = 55
      Height = 14
      Caption = 'Pre'#231'o Net'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 37
      Top = 174
      Width = 99
      Height = 14
      Caption = 'Comiss'#227'o Net (%)'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 37
      Top = 198
      Width = 93
      Height = 14
      Caption = 'Comiss'#227'o Dif (%)'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object edfcom: TdxMaskEdit
      Left = 176
      Top = 32
      Width = 60
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
      Alignment = taRightJustify
      AutoSize = False
      IgnoreMaskBlank = False
      MaxLength = 15
      Text = '0,50'
      OnValidate = edfcomValidate
      Height = 24
      StoredValues = 7
    end
    object edfprc: TdxMaskEdit
      Left = 424
      Top = 32
      Width = 60
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
      TabOrder = 1
      Alignment = taRightJustify
      AutoSize = False
      IgnoreMaskBlank = False
      MaxLength = 15
      Text = '5,00'
      OnValidate = edfprcValidate
      Height = 24
      StoredValues = 7
    end
    object ednrep: TdxMaskEdit
      Left = 176
      Top = 56
      Width = 60
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
      TabOrder = 2
      Alignment = taRightJustify
      AutoSize = False
      IgnoreMaskBlank = False
      MaxLength = 15
      Text = '5'
      OnValidate = ednrepValidate
      Height = 24
      StoredValues = 7
    end
    object edprec: TdxMaskEdit
      Left = 152
      Top = 144
      Width = 60
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
      TabOrder = 3
      Alignment = taRightJustify
      AutoSize = False
      IgnoreMaskBlank = False
      MaxLength = 15
      Text = '0,00'
      OnValidate = edprecValidate
      Height = 24
      StoredValues = 7
    end
    object edcomi: TdxMaskEdit
      Left = 152
      Top = 168
      Width = 60
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
      TabOrder = 4
      Alignment = taRightJustify
      AutoSize = False
      IgnoreMaskBlank = False
      MaxLength = 15
      Text = '0,00'
      OnValidate = edcomiValidate
      Height = 24
      StoredValues = 7
    end
    object eddcat: TdxMaskEdit
      Left = 152
      Top = 120
      Width = 377
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsFlat
      Style.Shadow = True
      TabOrder = 5
      Alignment = taLeftJustify
      AutoSize = False
      IgnoreMaskBlank = False
      MaxLength = 15
      Height = 24
      StoredValues = 7
    end
    object edcoms: TdxMaskEdit
      Left = 152
      Top = 192
      Width = 60
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
      TabOrder = 6
      Alignment = taRightJustify
      AutoSize = False
      IgnoreMaskBlank = False
      MaxLength = 15
      Text = '5,00'
      OnValidate = edcomsValidate
      Height = 24
      StoredValues = 7
    end
  end
  inherited sbMSG: TStatusBar
    Top = 340
    Width = 552
    Panels = <
      item
        Text = 'Edi'#231#227'o'
        Width = 80
      end
      item
        Width = 50
      end>
  end
  inherited SpeedBar2: TSpeedBar
    Width = 552
    inherited siCAN: TSpeedItem [5]
    end
    inherited siVAL: TSpeedItem [6]
    end
    inherited siSAV: TSpeedItem [7]
      BtnCaption = '[F10] Validar'
      Hint = '[Ctrl+S] - Valida informa'#231#245'es'
      ImageIndex = 7
    end
  end
  inherited imageOPC: TImageList
    Left = 484
    Top = 14
  end
  inherited imageITEM: TImageList
    Left = 484
    Top = 46
  end
end
