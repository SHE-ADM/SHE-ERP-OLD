inherited frmtab_epo_edi: Tfrmtab_epo_edi
  ClientHeight = 448
  ClientWidth = 594
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlcadastro: TPanel
    Width = 594
    Height = 315
    inherited PaintBox: TPaintBox
      Width = 360
      Height = 201
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 201
      Width = 594
      Height = 114
      Align = alBottom
      Caption = 'Observa'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object listpri: TdxImageListBox
        Left = 351
        Top = 16
        Width = 241
        Height = 96
        Alignment = taLeftJustify
        ImageAlign = dxliLeft
        ItemHeight = 0
        MultiLines = False
        VertAlignment = tvaCenter
        TabOrder = 1
        Visible = False
        SaveStrings = ()
      end
      object edobse: TdxMemo
        Left = 2
        Top = 16
        Width = 590
        Align = alClient
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderStyle = xbsFlat
        Style.Shadow = True
        TabOrder = 0
        Height = 96
      end
    end
    object GroupBox2: TGroupBox
      Left = 360
      Top = 0
      Width = 234
      Height = 201
      Align = alRight
      Caption = 'Imagem do Local'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object imag: TImage
        Left = 2
        Top = 16
        Width = 230
        Height = 183
        Align = alClient
        Stretch = True
        OnDblClick = imagDblClick
      end
      object sbfoto: TSpeedButton
        Left = 210
        Top = 176
        Width = 19
        Height = 20
        Cursor = crHandPoint
        Hint = 'Pesquisa Foto'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000130B0000130B00000000000000000000FFFFFFF9F9F9
          E4E4E4C1C1C1A6A6A69898989DA0A19FA2A4999999B2B2B2D1D1D1F0F0F0FFFF
          FFFFFFFFFFFFFFFFFFFFF9F9F9C7C7C7A2A2A2B0B0B0CCCCCCE0E2E2E9EFF2E9
          F1F3D4D5D5B2B2B29D9D9DA2A2A2EEEEEEFFFFFFFFFFFFFFFFFFC6C6C6939393
          AEAEAEC4C4C4C5C5C5BEBFBFC2C5C6BCBFC0B5B6B8BCBCBCB1B1B18F8F8FA6A6
          A6E9E9E9FFFFFFFFFFFF8282828F8F8FA7A7A7BFC2C3D4DADBE6ECEDE6ECEEE4
          EAECDDE3E5C9CCCDADADAD989898808080B6B6B6FFFFFFFFFFFF818181B8BABA
          DBE1E1CCD3CEB3B399BBBBA2BBBBA2BBBBA2B7B8A2C2C6BED4DBD8D2D6D77A7A
          7AA6A6A6FFFFFFFFFFFF9D9E9FD4DADBD1D5B9E6E6B4FFFFCCFFFFCCFFFFCCFF
          FFD3FCFCD7EDEDC7D3D5AEC4CAC2A8ABAB949494FFFFFFFFFFFFB6B8B8D2D1CE
          CFC8A5F6F5BDFFF3CEFFF9C6FFFFBDFFFFC2FFFFC9FEFEC1F5F5AF858677D8DD
          DFA0A0A0FFFFFFFFFFFFB7B9B9D9D8D5D0BCA6E2D6B8F0DACEFFF4BEFFFFA9FF
          FFA9FEFEAAEBEBB2D8CEB39B9B96D8DDDFA0A0A0FFFFFFFFFFFFE0E1E1D8DEDF
          D3D8D9C4B7ACDAC3AED4C2B0D4C2B0D4C2B0D4C2B0D9C3ADD3C7BCE1E7E9CDCD
          CDF5F5F5FFFFFFFFFFFFFBFBFBE3E4E4D4D8D9D1D6D8D6D5D2D9D3CCD9D3CCD9
          D3CCD9D3CCD6D3D1CDD0D1B6B7B8BCB6B6FAF7F7FFFFFFFFFFFFFFFFFFFAFAFA
          EAEAEADCDEDED3D5D5CDCFCFCDCFCFCBCDCDC8C9CABBB8B8C1BEBEBEBDBD8767
          63C6A7A5FAF7F7FFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF5F5F5EFEFEFEFEFEFEF
          EFEFEDECECD1BABAA97A7A756B6BB76D2EA45737CBB1B0FDFCFCFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBAB2DD9C39FDAE
          27EE8D2DA65027C19F9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFCF9F9DFBAB3E29D30FBAA27E8882A954122FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDB4
          A0DC9736E389209B4122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6F5E1C3B6CD9785D5B1AE}
        ParentShowHint = False
        ShowHint = True
        OnClick = sbfotoClick
      end
    end
    object GroupBox3: TGroupBox
      Left = 0
      Top = 0
      Width = 360
      Height = 201
      Align = alClient
      Caption = 'Edi'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label1: TLabel
        Left = 8
        Top = 21
        Width = 80
        Height = 14
        Caption = 'Mapeamento'
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
      object Label2: TLabel
        Left = 8
        Top = 45
        Width = 32
        Height = 14
        Caption = 'Andar'
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
        Left = 8
        Top = 69
        Width = 30
        Height = 14
        Caption = 'Setor'
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
      object Label4: TLabel
        Left = 8
        Top = 93
        Width = 21
        Height = 14
        Caption = 'Sala'
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
        Left = 8
        Top = 117
        Width = 20
        Height = 14
        Caption = 'Box'
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
      object Label6: TLabel
        Left = 8
        Top = 141
        Width = 59
        Height = 14
        Caption = 'Impressora'
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
      object Label7: TLabel
        Left = 8
        Top = 165
        Width = 39
        Height = 14
        Caption = 'Usu'#225'rio'
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
      object edid: TdxEdit
        Tag = 1
        Left = 88
        Top = 16
        Width = 25
        Hint = 'C'#243'digo'
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
        TabOrder = 0
        Visible = False
        AutoSize = False
        CharCase = ecUpperCase
        MaxLength = 20
        Height = 24
        StoredValues = 2
      end
      object eddesc: TdxEdit
        Tag = 1
        Left = 96
        Top = 16
        Width = 249
        Hint = 'Mapeamento'
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
        AutoSize = False
        CharCase = ecUpperCase
        MaxLength = 20
        Height = 24
        StoredValues = 2
      end
      object cbanda: TdxPickEdit
        Left = 96
        Top = 40
        Width = 129
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clWhite
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 2
        CharCase = ecUpperCase
      end
      object cbseto: TdxPickEdit
        Left = 96
        Top = 64
        Width = 129
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clWhite
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 3
        CharCase = ecUpperCase
      end
      object cbsala: TdxPickEdit
        Left = 96
        Top = 88
        Width = 129
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clWhite
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 4
        CharCase = ecUpperCase
      end
      object cbbox: TdxPickEdit
        Left = 96
        Top = 112
        Width = 129
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clWhite
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 5
        CharCase = ecUpperCase
      end
      object eddusu: TdxEdit
        Tag = 1
        Left = 96
        Top = 160
        Width = 249
        Hint = 'C'#243'digo'
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
        TabOrder = 6
        AutoSize = False
        CharCase = ecUpperCase
        MaxLength = 20
        Height = 24
        StoredValues = 2
      end
      object cbdpri: TdxImageEdit
        Left = 96
        Top = 136
        Width = 249
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 7
        AutoSize = False
        Descriptions.Strings = (
          '')
        ImageIndexes.Strings = (
          '0')
        Values.Strings = (
          '')
        Height = 24
      end
    end
  end
  inherited sbMSG: TStatusBar
    Top = 429
    Width = 594
  end
  inherited SpeedBar2: TSpeedBar
    Width = 594
  end
  inherited imageOPC: TImageList
    Left = 660
    Top = 78
  end
  inherited imageITEM: TImageList
    Left = 628
    Top = 78
  end
  object tab_epo: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT * FROM TAB_EPO'
      'WHERE ID = 0')
    Left = 664
    Top = 32
    object tab_epoID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_EPO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tab_epoEPO_DESC: TIBStringField
      FieldName = 'EPO_DESC'
      Origin = '"TAB_EPO"."EPO_DESC"'
    end
    object tab_epoEPO_ANDA: TIBStringField
      FieldName = 'EPO_ANDA'
      Origin = '"TAB_EPO"."EPO_ANDA"'
      Size = 10
    end
    object tab_epoEPO_SETO: TIBStringField
      FieldName = 'EPO_SETO'
      Origin = '"TAB_EPO"."EPO_SETO"'
      Size = 10
    end
    object tab_epoEPO_SALA: TIBStringField
      FieldName = 'EPO_SALA'
      Origin = '"TAB_EPO"."EPO_SALA"'
      Size = 10
    end
    object tab_epoEPO_BOX: TIBStringField
      FieldName = 'EPO_BOX'
      Origin = '"TAB_EPO"."EPO_BOX"'
      Size = 10
    end
    object tab_epoEPO_DPRI: TIBStringField
      FieldName = 'EPO_DPRI'
      Origin = '"TAB_EPO"."EPO_DPRI"'
      Size = 50
    end
    object tab_epoEPO_OBSE: TMemoField
      FieldName = 'EPO_OBSE'
      Origin = '"TAB_EPO"."EPO_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object tab_epoEPO_FOTO: TBlobField
      FieldName = 'EPO_FOTO'
      Origin = '"TAB_EPO"."EPO_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
  object OpenPictureDialogEdit: TOpenPictureDialog
    InitialDir = 'C:\DEV\FOTOS'
    Left = 376
  end
end
