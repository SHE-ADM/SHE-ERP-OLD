inherited frmcai_sar_edi: Tfrmcai_sar_edi
  Left = 326
  Top = 76
  ClientHeight = 365
  ClientWidth = 414
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlcadastro: TPanel
    Width = 414
    Height = 251
    inherited PaintBox: TPaintBox
      Width = 414
      Height = 251
    end
    object Label3: TLabel
      Left = 4
      Top = 12
      Width = 24
      Height = 14
      Caption = 'Tipo'
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
      Left = 4
      Top = 36
      Width = 32
      Height = 14
      Caption = 'Conta'
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
    object edtipo: TdxEdit
      Left = 40
      Top = 8
      Width = 369
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
      Visible = False
      AutoSize = False
      CharCase = ecUpperCase
      Height = 24
    end
    object edid: TdxEdit
      Left = 40
      Top = 7
      Width = 60
      Hint = 'C'#243'digo'
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
      Visible = False
      AutoSize = False
      CharCase = ecUpperCase
      Height = 24
    end
    object edctsr: TdxButtonEdit
      Left = 40
      Top = 8
      Width = 73
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
      TabOrder = 0
      CharCase = ecUpperCase
      MaxLength = 0
      OnValidate = edctsrValidate
      Buttons = <
        item
          Default = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFF9F9F9
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
          Kind = bkGlyph
        end>
      OnButtonClick = edctsrButtonClick
      StoredValues = 6
      ExistButtons = True
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 80
      Width = 405
      Height = 145
      Caption = 'Identifica'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object Label1: TLabel
        Left = 10
        Top = 99
        Width = 64
        Height = 14
        Caption = 'Documento'
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
        Left = 10
        Top = 59
        Width = 25
        Height = 14
        Caption = 'Data'
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
        Left = 202
        Top = 59
        Width = 25
        Height = 14
        Caption = 'Hora'
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
        Left = 10
        Top = 19
        Width = 27
        Height = 14
        Caption = 'Valor'
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
      object edcdbx: TdxEdit
        Tag = 1
        Left = 10
        Top = 113
        Width = 95
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
        TabOrder = 5
        Alignment = taRightJustify
        AutoSize = False
        CharCase = ecUpperCase
        OnValidate = edvaloValidate
        Height = 24
        StoredValues = 1
      end
      object edcdcx: TdxEdit
        Tag = 1
        Left = 10
        Top = 113
        Width = 95
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
        TabOrder = 4
        Alignment = taRightJustify
        AutoSize = False
        CharCase = ecUpperCase
        OnValidate = edvaloValidate
        Height = 24
        StoredValues = 1
      end
      object eddoct: TdxEdit
        Tag = 1
        Left = 10
        Top = 113
        Width = 287
        Hint = 'C'#243'digo'
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
        AutoSize = False
        CharCase = ecUpperCase
        MaxLength = 20
        Height = 24
        StoredValues = 2
      end
      object eddcad: TdxDateEdit
        Left = 8
        Top = 72
        Width = 100
        Hint = 'Dt Cadastro'
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
        TabOrder = 1
        AutoSize = False
        Date = -700000.000000000000000000
        UseEditMask = True
        Height = 24
        StoredValues = 4
      end
      object edtcad: TdxTimeEdit
        Left = 197
        Top = 72
        Width = 100
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 2
        AutoSize = False
        Height = 24
        StoredValues = 4
      end
      object edvalo: TdxButtonEdit
        Tag = 1
        Left = 8
        Top = 33
        Width = 100
        Hint = 'Documento'
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
        CharCase = ecUpperCase
        MaxLength = 0
        Text = '0,00'
        OnValidate = edvaloValidate
        Buttons = <
          item
            Default = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFF9F9F9
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
            Kind = bkGlyph
          end>
        Height = 24
        StoredValues = 7
        ExistButtons = True
      end
    end
    object eddesc: TdxPickEdit
      Left = 112
      Top = 8
      Width = 297
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
      TabOrder = 1
      OnExit = eddescExit
      CharCase = ecUpperCase
    end
    object edbcon: TdxButtonEdit
      Left = 40
      Top = 32
      Width = 73
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
      CharCase = ecUpperCase
      MaxLength = 0
      OnValidate = edbconValidate
      Buttons = <
        item
          Default = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFF9F9F9
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
          Kind = bkGlyph
        end>
      StoredValues = 6
      ExistButtons = True
    end
    object eddcon: TdxPickEdit
      Left = 112
      Top = 32
      Width = 297
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
      OnExit = eddconExit
      Alignment = taLeftJustify
      CharCase = ecUpperCase
      StoredValues = 1
    end
  end
  inherited sbMSG: TStatusBar
    Top = 346
    Width = 414
  end
  inherited SpeedBar2: TSpeedBar
    Width = 414
    inherited siSAV: TSpeedItem [4]
    end
    inherited siVAL: TSpeedItem [5]
    end
    inherited siSAIR: TSpeedItem [6]
      Left = 112
    end
    inherited siCAN: TSpeedItem [7]
      Visible = False
    end
  end
  inherited imageOPC: TImageList
    Left = 420
    Top = 230
  end
  inherited imageITEM: TImageList
    Left = 292
    Top = 174
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 368
    Top = 64
  end
  object consulta_s: TIBQuery
    Database = DMDados.bSHEILD
    Transaction = tSHEILD
    Left = 552
    Top = 8
  end
  object tSHEILD: TIBTransaction
    DefaultDatabase = DMDados.bSHEILD
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 552
    Top = 40
  end
  object lan_chq: TIBDataSet
    Database = DMDados.bSHEILD
    Transaction = tSHEILD
    DeleteSQL.Strings = (
      'delete from FIN_REC_REC'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into FIN_REC_REC'
      
        '  (FIN_AGEN, FIN_ATRA, FIN_BANC, FIN_CCAB, FIN_CCLI, FIN_CCUS, F' +
        'IN_CDBA, '
      
        '   FIN_CDBX, FIN_CDCO, FIN_CDCX, FIN_CDRD, FIN_COBR, FIN_CONC, F' +
        'IN_CONT, '
      
        '   FIN_CPF, FIN_CPPL, FIN_CREP, FIN_CTNR, FIN_CVEN, FIN_DATR, FI' +
        'N_DBAI, '
      
        '   FIN_DBAN, FIN_DCAD, FIN_DCLI, FIN_DEBA, FIN_DERD, FIN_DFIN, F' +
        'IN_DMED, '
      
        '   FIN_DOCT, FIN_DPAG, FIN_DREP, FIN_DTST, FIN_DVEN, FIN_MCHQ, F' +
        'IN_NCHQ, '
      
        '   FIN_OBSE, FIN_PDES, FIN_PJUR, FIN_PMUL, FIN_PRAZ, FIN_RCLI, F' +
        'IN_RREP, '
      
        '   FIN_STA, FIN_STCO, FIN_STDO, FIN_STFI, FIN_TIPO, FIN_VALO, FI' +
        'N_VCHQ, '
      
        '   FIN_VDES, FIN_VENC, FIN_VEND, FIN_VJUR, FIN_VMUL, FIN_VPAG, F' +
        'IN_VPEN, '
      '   ID)'
      'values'
      
        '  (:FIN_AGEN, :FIN_ATRA, :FIN_BANC, :FIN_CCAB, :FIN_CCLI, :FIN_C' +
        'CUS, :FIN_CDBA, '
      
        '   :FIN_CDBX, :FIN_CDCO, :FIN_CDCX, :FIN_CDRD, :FIN_COBR, :FIN_C' +
        'ONC, :FIN_CONT, '
      
        '   :FIN_CPF, :FIN_CPPL, :FIN_CREP, :FIN_CTNR, :FIN_CVEN, :FIN_DA' +
        'TR, :FIN_DBAI, '
      
        '   :FIN_DBAN, :FIN_DCAD, :FIN_DCLI, :FIN_DEBA, :FIN_DERD, :FIN_D' +
        'FIN, :FIN_DMED, '
      
        '   :FIN_DOCT, :FIN_DPAG, :FIN_DREP, :FIN_DTST, :FIN_DVEN, :FIN_M' +
        'CHQ, :FIN_NCHQ, '
      
        '   :FIN_OBSE, :FIN_PDES, :FIN_PJUR, :FIN_PMUL, :FIN_PRAZ, :FIN_R' +
        'CLI, :FIN_RREP, '
      
        '   :FIN_STA, :FIN_STCO, :FIN_STDO, :FIN_STFI, :FIN_TIPO, :FIN_VA' +
        'LO, :FIN_VCHQ, '
      
        '   :FIN_VDES, :FIN_VENC, :FIN_VEND, :FIN_VJUR, :FIN_VMUL, :FIN_V' +
        'PAG, :FIN_VPEN, '
      '   :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  FIN_CCAB,'
      '  FIN_CDBX,'
      '  FIN_CDCX,'
      '  FIN_CDRD,'
      '  FIN_CCLI,'
      '  FIN_DFIN,'
      '  FIN_DCLI,'
      '  FIN_RCLI,'
      '  FIN_CVEN,'
      '  FIN_VEND,'
      '  FIN_CREP,'
      '  FIN_DREP,'
      '  FIN_RREP,'
      '  FIN_PRAZ,'
      '  FIN_ATRA,'
      '  FIN_CONC,'
      '  FIN_DCAD,'
      '  FIN_DVEN,'
      '  FIN_DPAG,'
      '  FIN_DMED,'
      '  FIN_DATR,'
      '  FIN_DBAI,'
      '  FIN_CPPL,'
      '  FIN_CCUS,'
      '  FIN_CDCO,'
      '  FIN_CDBA,'
      '  FIN_DEBA,'
      '  FIN_STDO,'
      '  FIN_DOCT,'
      '  FIN_BANC,'
      '  FIN_DBAN,'
      '  FIN_AGEN,'
      '  FIN_CONT,'
      '  FIN_NCHQ,'
      '  FIN_MCHQ,'
      '  FIN_TIPO,'
      '  FIN_STFI,'
      '  FIN_STCO,'
      '  FIN_VALO,'
      '  FIN_VPAG,'
      '  FIN_VPEN,'
      '  FIN_VENC,'
      '  FIN_CTNR,'
      '  FIN_VMUL,'
      '  FIN_PMUL,'
      '  FIN_VJUR,'
      '  FIN_PJUR,'
      '  FIN_VDES,'
      '  FIN_PDES,'
      '  FIN_VCHQ,'
      '  FIN_CPF,'
      '  FIN_STA,'
      '  FIN_COBR,'
      '  FIN_DERD,'
      '  FIN_OBSE,'
      '  FIN_DTST'
      'from FIN_REC_REC '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM FIN_REC_REC')
    ModifySQL.Strings = (
      'update FIN_REC_REC'
      'set'
      '  FIN_AGEN = :FIN_AGEN,'
      '  FIN_ATRA = :FIN_ATRA,'
      '  FIN_BANC = :FIN_BANC,'
      '  FIN_CCAB = :FIN_CCAB,'
      '  FIN_CCLI = :FIN_CCLI,'
      '  FIN_CCUS = :FIN_CCUS,'
      '  FIN_CDBA = :FIN_CDBA,'
      '  FIN_CDBX = :FIN_CDBX,'
      '  FIN_CDCO = :FIN_CDCO,'
      '  FIN_CDCX = :FIN_CDCX,'
      '  FIN_CDRD = :FIN_CDRD,'
      '  FIN_COBR = :FIN_COBR,'
      '  FIN_CONC = :FIN_CONC,'
      '  FIN_CONT = :FIN_CONT,'
      '  FIN_CPF = :FIN_CPF,'
      '  FIN_CPPL = :FIN_CPPL,'
      '  FIN_CREP = :FIN_CREP,'
      '  FIN_CTNR = :FIN_CTNR,'
      '  FIN_CVEN = :FIN_CVEN,'
      '  FIN_DATR = :FIN_DATR,'
      '  FIN_DBAI = :FIN_DBAI,'
      '  FIN_DBAN = :FIN_DBAN,'
      '  FIN_DCAD = :FIN_DCAD,'
      '  FIN_DCLI = :FIN_DCLI,'
      '  FIN_DEBA = :FIN_DEBA,'
      '  FIN_DERD = :FIN_DERD,'
      '  FIN_DFIN = :FIN_DFIN,'
      '  FIN_DMED = :FIN_DMED,'
      '  FIN_DOCT = :FIN_DOCT,'
      '  FIN_DPAG = :FIN_DPAG,'
      '  FIN_DREP = :FIN_DREP,'
      '  FIN_DTST = :FIN_DTST,'
      '  FIN_DVEN = :FIN_DVEN,'
      '  FIN_MCHQ = :FIN_MCHQ,'
      '  FIN_NCHQ = :FIN_NCHQ,'
      '  FIN_OBSE = :FIN_OBSE,'
      '  FIN_PDES = :FIN_PDES,'
      '  FIN_PJUR = :FIN_PJUR,'
      '  FIN_PMUL = :FIN_PMUL,'
      '  FIN_PRAZ = :FIN_PRAZ,'
      '  FIN_RCLI = :FIN_RCLI,'
      '  FIN_RREP = :FIN_RREP,'
      '  FIN_STA = :FIN_STA,'
      '  FIN_STCO = :FIN_STCO,'
      '  FIN_STDO = :FIN_STDO,'
      '  FIN_STFI = :FIN_STFI,'
      '  FIN_TIPO = :FIN_TIPO,'
      '  FIN_VALO = :FIN_VALO,'
      '  FIN_VCHQ = :FIN_VCHQ,'
      '  FIN_VDES = :FIN_VDES,'
      '  FIN_VENC = :FIN_VENC,'
      '  FIN_VEND = :FIN_VEND,'
      '  FIN_VJUR = :FIN_VJUR,'
      '  FIN_VMUL = :FIN_VMUL,'
      '  FIN_VPAG = :FIN_VPAG,'
      '  FIN_VPEN = :FIN_VPEN,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 232
    Top = 8
    object lan_chqID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_REC_BAI_001"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object lan_chqFIN_DOCT: TIBStringField
      FieldName = 'FIN_DOCT'
      Origin = '"FIN_REC_BAI"."FIN_DOCT"'
    end
    object lan_chqFIN_DVEN: TDateField
      DisplayLabel = 'Dt Vencto'
      FieldName = 'FIN_DVEN'
      Origin = '"FIN_REC_BAI_001"."FIN_DVEN"'
    end
    object lan_chqFIN_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'FIN_TIPO'
      Origin = '"FIN_REC_BAI_001"."FIN_TIPO"'
    end
    object lan_chqFIN_BANC: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'FIN_BANC'
      Origin = '"FIN_REC_BAI_001"."FIN_BANC"'
      Size = 4
    end
    object lan_chqFIN_AGEN: TIBStringField
      DisplayLabel = 'Agencia'
      FieldName = 'FIN_AGEN'
      Origin = '"FIN_REC_BAI_001"."FIN_AGEN"'
      Size = 10
    end
    object lan_chqFIN_CONT: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'FIN_CONT'
      Origin = '"FIN_REC_BAI_001"."FIN_CONT"'
      Size = 15
    end
    object lan_chqFIN_NCHQ: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'FIN_NCHQ'
      Origin = '"FIN_REC_BAI_001"."FIN_NCHQ"'
      Size = 10
    end
    object lan_chqFIN_OBSE: TMemoField
      DisplayLabel = 'Obs'
      FieldName = 'FIN_OBSE'
      Origin = '"FIN_REC_BAI_001"."FIN_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object lan_chqFIN_STA: TIBStringField
      FieldName = 'FIN_STA'
      Origin = '"FIN_REC_BAI_001"."FIN_STA"'
      FixedChar = True
      Size = 1
    end
    object lan_chqFIN_PRAZ: TSmallintField
      DisplayLabel = 'Prazo (Dias)'
      FieldName = 'FIN_PRAZ'
      Origin = '"FIN_REC_BAI_001"."FIN_PRAZ"'
    end
    object lan_chqFIN_DPAG: TDateField
      FieldName = 'FIN_DPAG'
      Origin = '"FIN_REC_BAI"."FIN_DPAG"'
    end
    object lan_chqFIN_DBAN: TIBStringField
      FieldName = 'FIN_DBAN'
      Origin = '"FIN_REC_BAI"."FIN_DBAN"'
      Size = 50
    end
    object lan_chqFIN_STFI: TIBStringField
      FieldName = 'FIN_STFI'
      Origin = '"FIN_REC_BAI"."FIN_STFI"'
    end
    object lan_chqFIN_VALO: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'FIN_VALO'
      Origin = '"FIN_REC_BAI"."FIN_VALO"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object lan_chqFIN_VPAG: TIBBCDField
      FieldName = 'FIN_VPAG'
      Origin = '"FIN_REC_BAI"."FIN_VPAG"'
      Precision = 18
      Size = 2
    end
    object lan_chqFIN_VPEN: TIBBCDField
      FieldName = 'FIN_VPEN'
      Origin = '"FIN_REC_BAI"."FIN_VPEN"'
      Precision = 18
      Size = 2
    end
    object lan_chqFIN_COBR: TIBStringField
      FieldName = 'FIN_COBR'
      Origin = '"FIN_REC_BAI"."FIN_COBR"'
      FixedChar = True
      Size = 1
    end
    object lan_chqFIN_STDO: TIBStringField
      FieldName = 'FIN_STDO'
      Origin = '"FIN_REC_BAI"."FIN_STDO"'
      Size = 3
    end
    object lan_chqFIN_CCAB: TIntegerField
      FieldName = 'FIN_CCAB'
      Origin = '"FIN_REC_BAI"."FIN_CCAB"'
    end
    object lan_chqFIN_CDBX: TIntegerField
      FieldName = 'FIN_CDBX'
      Origin = '"FIN_REC_BAI"."FIN_CDBX"'
    end
    object lan_chqFIN_CDCX: TIntegerField
      FieldName = 'FIN_CDCX'
      Origin = '"FIN_REC_BAI"."FIN_CDCX"'
    end
    object lan_chqFIN_CCLI: TIntegerField
      FieldName = 'FIN_CCLI'
      Origin = '"FIN_REC_BAI"."FIN_CCLI"'
    end
    object lan_chqFIN_DCLI: TIBStringField
      FieldName = 'FIN_DCLI'
      Origin = '"FIN_REC_BAI"."FIN_DCLI"'
      Size = 40
    end
    object lan_chqFIN_CVEN: TIntegerField
      FieldName = 'FIN_CVEN'
      Origin = '"FIN_REC_BAI"."FIN_CVEN"'
    end
    object lan_chqFIN_VEND: TIBStringField
      FieldName = 'FIN_VEND'
      Origin = '"FIN_REC_BAI"."FIN_VEND"'
      Size = 40
    end
    object lan_chqFIN_CREP: TIntegerField
      FieldName = 'FIN_CREP'
      Origin = '"FIN_REC_BAI"."FIN_CREP"'
    end
    object lan_chqFIN_DREP: TIBStringField
      FieldName = 'FIN_DREP'
      Origin = '"FIN_REC_BAI"."FIN_DREP"'
      Size = 40
    end
    object lan_chqFIN_ATRA: TSmallintField
      FieldName = 'FIN_ATRA'
      Origin = '"FIN_REC_BAI"."FIN_ATRA"'
    end
    object lan_chqFIN_CONC: TSmallintField
      FieldName = 'FIN_CONC'
      Origin = '"FIN_REC_BAI"."FIN_CONC"'
    end
    object lan_chqFIN_DCAD: TDateField
      FieldName = 'FIN_DCAD'
      Origin = '"FIN_REC_BAI"."FIN_DCAD"'
    end
    object lan_chqFIN_DMED: TDateField
      FieldName = 'FIN_DMED'
      Origin = '"FIN_REC_BAI"."FIN_DMED"'
    end
    object lan_chqFIN_DATR: TDateField
      FieldName = 'FIN_DATR'
      Origin = '"FIN_REC_BAI"."FIN_DATR"'
    end
    object lan_chqFIN_MCHQ: TSmallintField
      FieldName = 'FIN_MCHQ'
      Origin = '"FIN_REC_BAI"."FIN_MCHQ"'
    end
    object lan_chqFIN_STCO: TIBStringField
      FieldName = 'FIN_STCO'
      Origin = '"FIN_REC_BAI"."FIN_STCO"'
    end
    object lan_chqFIN_RCLI: TIBStringField
      FieldName = 'FIN_RCLI'
      Origin = '"FIN_REC_REC"."FIN_RCLI"'
      Size = 60
    end
    object lan_chqFIN_RREP: TIBStringField
      FieldName = 'FIN_RREP'
      Origin = '"FIN_REC_REC"."FIN_RREP"'
      Size = 60
    end
    object lan_chqFIN_DBAI: TDateField
      FieldName = 'FIN_DBAI'
      Origin = '"FIN_REC_REC"."FIN_DBAI"'
    end
    object lan_chqFIN_CPF: TIBStringField
      DisplayLabel = 'Cnpj ou Cpf'
      FieldName = 'FIN_CPF'
      Origin = '"FIN_REC_REC"."FIN_CPF"'
      Size = 14
    end
    object lan_chqFIN_VENC: TIBBCDField
      FieldName = 'FIN_VENC'
      Origin = '"FIN_REC_REC"."FIN_VENC"'
      Precision = 18
      Size = 2
    end
    object lan_chqFIN_CDRD: TIntegerField
      FieldName = 'FIN_CDRD'
      Origin = '"FIN_REC_REC"."FIN_CDRD"'
    end
    object lan_chqFIN_DFIN: TIBStringField
      FieldName = 'FIN_DFIN'
      Origin = '"FIN_REC_REC"."FIN_DFIN"'
      Size = 60
    end
    object lan_chqFIN_CPPL: TIntegerField
      FieldName = 'FIN_CPPL'
      Origin = '"FIN_REC_REC"."FIN_CPPL"'
    end
    object lan_chqFIN_CCUS: TIntegerField
      FieldName = 'FIN_CCUS'
      Origin = '"FIN_REC_REC"."FIN_CCUS"'
    end
    object lan_chqFIN_CDCO: TIntegerField
      FieldName = 'FIN_CDCO'
      Origin = '"FIN_REC_REC"."FIN_CDCO"'
    end
    object lan_chqFIN_CDBA: TIBStringField
      FieldName = 'FIN_CDBA'
      Origin = '"FIN_REC_REC"."FIN_CDBA"'
      Size = 4
    end
    object lan_chqFIN_DEBA: TIBStringField
      FieldName = 'FIN_DEBA'
      Origin = '"FIN_REC_REC"."FIN_DEBA"'
      Size = 50
    end
    object lan_chqFIN_CTNR: TIBStringField
      FieldName = 'FIN_CTNR'
      Origin = '"FIN_REC_REC"."FIN_CTNR"'
    end
    object lan_chqFIN_VMUL: TIBBCDField
      FieldName = 'FIN_VMUL'
      Origin = '"FIN_REC_REC"."FIN_VMUL"'
      Precision = 18
      Size = 2
    end
    object lan_chqFIN_PMUL: TIBBCDField
      FieldName = 'FIN_PMUL'
      Origin = '"FIN_REC_REC"."FIN_PMUL"'
      Precision = 9
      Size = 2
    end
    object lan_chqFIN_VJUR: TIBBCDField
      FieldName = 'FIN_VJUR'
      Origin = '"FIN_REC_REC"."FIN_VJUR"'
      Precision = 18
      Size = 2
    end
    object lan_chqFIN_PJUR: TIBBCDField
      FieldName = 'FIN_PJUR'
      Origin = '"FIN_REC_REC"."FIN_PJUR"'
      Precision = 9
      Size = 2
    end
    object lan_chqFIN_VDES: TIBBCDField
      FieldName = 'FIN_VDES'
      Origin = '"FIN_REC_REC"."FIN_VDES"'
      Precision = 18
      Size = 2
    end
    object lan_chqFIN_PDES: TIBBCDField
      FieldName = 'FIN_PDES'
      Origin = '"FIN_REC_REC"."FIN_PDES"'
      Precision = 9
      Size = 2
    end
    object lan_chqFIN_VCHQ: TIBBCDField
      FieldName = 'FIN_VCHQ'
      Origin = '"FIN_REC_REC"."FIN_VCHQ"'
      Precision = 18
      Size = 2
    end
    object lan_chqFIN_DERD: TIBStringField
      FieldName = 'FIN_DERD'
      Origin = '"FIN_REC_REC"."FIN_DERD"'
      Size = 30
    end
    object lan_chqFIN_DTST: TDateTimeField
      FieldName = 'FIN_DTST'
      Origin = '"FIN_REC_REC"."FIN_DTST"'
    end
  end
  object fin_rec: TIBQuery
    Database = DMDados.IBDB
    Transaction = IBTra
    SQL.Strings = (
      
        'SELECT FIN_REC_CAR_REC.*,CAD_CLI.CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_' +
        'CPF'
      'FROM   CAD_CLI,FIN_REC_CAR_REC'
      'WHERE  FIN_REC_CAR_REC.FIN_CCLI = CAD_CLI.ID')
    Left = 664
    Top = 32
    object fin_recID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_REC_CAR_REC"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fin_recFIN_CCAB: TIntegerField
      FieldName = 'FIN_CCAB'
      Origin = '"FIN_REC_CAR_REC"."FIN_CCAB"'
    end
    object fin_recFIN_CDBX: TIntegerField
      FieldName = 'FIN_CDBX'
      Origin = '"FIN_REC_CAR_REC"."FIN_CDBX"'
    end
    object fin_recFIN_CDCX: TIntegerField
      FieldName = 'FIN_CDCX'
      Origin = '"FIN_REC_CAR_REC"."FIN_CDCX"'
    end
    object fin_recFIN_CCLI: TIntegerField
      FieldName = 'FIN_CCLI'
      Origin = '"FIN_REC_CAR_REC"."FIN_CCLI"'
    end
    object fin_recFIN_CVEN: TIntegerField
      FieldName = 'FIN_CVEN'
      Origin = '"FIN_REC_CAR_REC"."FIN_CVEN"'
    end
    object fin_recFIN_CREP: TIntegerField
      FieldName = 'FIN_CREP'
      Origin = '"FIN_REC_CAR_REC"."FIN_CREP"'
    end
    object fin_recFIN_PRAZ: TSmallintField
      FieldName = 'FIN_PRAZ'
      Origin = '"FIN_REC_CAR_REC"."FIN_PRAZ"'
    end
    object fin_recFIN_ATRA: TSmallintField
      FieldName = 'FIN_ATRA'
      Origin = '"FIN_REC_CAR_REC"."FIN_ATRA"'
    end
    object fin_recFIN_CONC: TSmallintField
      FieldName = 'FIN_CONC'
      Origin = '"FIN_REC_CAR_REC"."FIN_CONC"'
    end
    object fin_recFIN_DCAD: TDateField
      FieldName = 'FIN_DCAD'
      Origin = '"FIN_REC_CAR_REC"."FIN_DCAD"'
    end
    object fin_recFIN_DVEN: TDateField
      FieldName = 'FIN_DVEN'
      Origin = '"FIN_REC_CAR_REC"."FIN_DVEN"'
    end
    object fin_recFIN_DPAG: TDateField
      FieldName = 'FIN_DPAG'
      Origin = '"FIN_REC_CAR_REC"."FIN_DPAG"'
    end
    object fin_recFIN_DMED: TDateField
      FieldName = 'FIN_DMED'
      Origin = '"FIN_REC_CAR_REC"."FIN_DMED"'
    end
    object fin_recFIN_DATR: TDateField
      FieldName = 'FIN_DATR'
      Origin = '"FIN_REC_CAR_REC"."FIN_DATR"'
    end
    object fin_recFIN_STDO: TIBStringField
      FieldName = 'FIN_STDO'
      Origin = '"FIN_REC_CAR_REC"."FIN_STDO"'
      Size = 3
    end
    object fin_recFIN_DOCT: TIBStringField
      FieldName = 'FIN_DOCT'
      Origin = '"FIN_REC_CAR_REC"."FIN_DOCT"'
    end
    object fin_recFIN_BANC: TIBStringField
      FieldName = 'FIN_BANC'
      Origin = '"FIN_REC_CAR_REC"."FIN_BANC"'
      Size = 4
    end
    object fin_recFIN_DBAN: TIBStringField
      FieldName = 'FIN_DBAN'
      Origin = '"FIN_REC_CAR_REC"."FIN_DBAN"'
      Size = 50
    end
    object fin_recFIN_AGEN: TIBStringField
      FieldName = 'FIN_AGEN'
      Origin = '"FIN_REC_CAR_REC"."FIN_AGEN"'
      Size = 10
    end
    object fin_recFIN_CONT: TIBStringField
      FieldName = 'FIN_CONT'
      Origin = '"FIN_REC_CAR_REC"."FIN_CONT"'
      Size = 15
    end
    object fin_recFIN_NCHQ: TIBStringField
      FieldName = 'FIN_NCHQ'
      Origin = '"FIN_REC_CAR_REC"."FIN_NCHQ"'
      Size = 10
    end
    object fin_recFIN_MCHQ: TSmallintField
      FieldName = 'FIN_MCHQ'
      Origin = '"FIN_REC_CAR_REC"."FIN_MCHQ"'
    end
    object fin_recFIN_TIPO: TIBStringField
      FieldName = 'FIN_TIPO'
      Origin = '"FIN_REC_CAR_REC"."FIN_TIPO"'
    end
    object fin_recFIN_STFI: TIBStringField
      FieldName = 'FIN_STFI'
      Origin = '"FIN_REC_CAR_REC"."FIN_STFI"'
    end
    object fin_recFIN_STCO: TIBStringField
      FieldName = 'FIN_STCO'
      Origin = '"FIN_REC_CAR_REC"."FIN_STCO"'
    end
    object fin_recFIN_VALO: TIBBCDField
      FieldName = 'FIN_VALO'
      Origin = '"FIN_REC_CAR_REC"."FIN_VALO"'
      Precision = 18
      Size = 2
    end
    object fin_recFIN_VPAG: TIBBCDField
      FieldName = 'FIN_VPAG'
      Origin = '"FIN_REC_CAR_REC"."FIN_VPAG"'
      Precision = 18
      Size = 2
    end
    object fin_recFIN_VPEN: TIBBCDField
      FieldName = 'FIN_VPEN'
      Origin = '"FIN_REC_CAR_REC"."FIN_VPEN"'
      Precision = 18
      Size = 2
    end
    object fin_recFIN_OBSE: TMemoField
      FieldName = 'FIN_OBSE'
      Origin = '"FIN_REC_CAR_REC"."FIN_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object fin_recFIN_STA: TIBStringField
      FieldName = 'FIN_STA'
      Origin = '"FIN_REC_CAR_REC"."FIN_STA"'
      FixedChar = True
      Size = 1
    end
    object fin_recFIN_DCAN: TDateField
      FieldName = 'FIN_DCAN'
      Origin = '"FIN_REC_CAR_REC"."FIN_DCAN"'
    end
    object fin_recFIN_CPPL: TIntegerField
      FieldName = 'FIN_CPPL'
      Origin = '"FIN_REC_CAR_REC"."FIN_CPPL"'
    end
    object fin_recFIN_CCUS: TIntegerField
      FieldName = 'FIN_CCUS'
      Origin = '"FIN_REC_CAR_REC"."FIN_CCUS"'
    end
    object fin_recFIN_CBCO: TIntegerField
      FieldName = 'FIN_CBCO'
      Origin = '"FIN_REC_CAR_REC"."FIN_CBCO"'
    end
    object fin_recFIN_PORT: TIBStringField
      FieldName = 'FIN_PORT'
      Origin = '"FIN_REC_CAR_REC"."FIN_PORT"'
    end
    object fin_recFIN_VMUL: TIBBCDField
      FieldName = 'FIN_VMUL'
      Origin = '"FIN_REC_CAR_REC"."FIN_VMUL"'
      Precision = 18
      Size = 2
    end
    object fin_recFIN_PMUL: TIBBCDField
      FieldName = 'FIN_PMUL'
      Origin = '"FIN_REC_CAR_REC"."FIN_PMUL"'
      Precision = 9
      Size = 2
    end
    object fin_recFIN_VJUR: TIBBCDField
      FieldName = 'FIN_VJUR'
      Origin = '"FIN_REC_CAR_REC"."FIN_VJUR"'
      Precision = 18
      Size = 2
    end
    object fin_recFIN_PJUR: TIBBCDField
      FieldName = 'FIN_PJUR'
      Origin = '"FIN_REC_CAR_REC"."FIN_PJUR"'
      Precision = 9
      Size = 2
    end
    object fin_recFIN_VDES: TIBBCDField
      FieldName = 'FIN_VDES'
      Origin = '"FIN_REC_CAR_REC"."FIN_VDES"'
      Precision = 18
      Size = 2
    end
    object fin_recFIN_PDES: TIBBCDField
      FieldName = 'FIN_PDES'
      Origin = '"FIN_REC_CAR_REC"."FIN_PDES"'
      Precision = 9
      Size = 2
    end
    object fin_recFIN_DESC: TIBStringField
      FieldName = 'FIN_DESC'
      Origin = '"FIN_REC_CAR_REC"."FIN_DESC"'
      Size = 40
    end
    object fin_recFIN_CDCO: TIntegerField
      FieldName = 'FIN_CDCO'
      Origin = '"FIN_REC_CAR_REC"."FIN_CDCO"'
    end
    object fin_recFIN_CDBA: TIBStringField
      FieldName = 'FIN_CDBA'
      Origin = '"FIN_REC_CAR_REC"."FIN_CDBA"'
      Size = 4
    end
    object fin_recFIN_DEBA: TIBStringField
      FieldName = 'FIN_DEBA'
      Origin = '"FIN_REC_CAR_REC"."FIN_DEBA"'
      Size = 50
    end
    object fin_recFIN_DBAI: TDateField
      FieldName = 'FIN_DBAI'
      Origin = '"FIN_REC_CAR_REC"."FIN_DBAI"'
    end
    object fin_recFIN_IDBX: TIBStringField
      FieldName = 'FIN_IDBX'
      Origin = '"FIN_REC_CAR_REC"."FIN_IDBX"'
      Size = 10
    end
    object fin_recFIN_VENC: TIBBCDField
      FieldName = 'FIN_VENC'
      Origin = '"FIN_REC_CAR_REC"."FIN_VENC"'
      Precision = 18
      Size = 2
    end
    object fin_recCLI_FANT: TIBStringField
      FieldName = 'CLI_FANT'
      Origin = '"CAD_CLI"."CLI_FANT"'
      Size = 40
    end
    object fin_recCLI_RAZA: TIBStringField
      FieldName = 'CLI_RAZA'
      Origin = '"CAD_CLI"."CLI_RAZA"'
      Size = 60
    end
    object fin_recCLI_CNPJ: TIBStringField
      FieldName = 'CLI_CNPJ'
      Origin = '"CAD_CLI"."CLI_CNPJ"'
      Size = 14
    end
    object fin_recCLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
      Origin = '"CAD_CLI"."CLI_CPF"'
      Size = 11
    end
  end
  object cai_mov: TIBQuery
    Database = DMDados.IBDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT * FROM CAI_MOV'
      'WHERE ID = :ID')
    Left = 696
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
      end>
    object cai_movID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAI_MOV"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cai_movCAI_CCAB: TIntegerField
      FieldName = 'CAI_CCAB'
      Origin = '"CAI_MOV"."CAI_CCAB"'
    end
    object cai_movCAI_CTSR: TIntegerField
      FieldName = 'CAI_CTSR'
      Origin = '"CAI_MOV"."CAI_CTSR"'
    end
    object cai_movCAI_DESC: TIBStringField
      FieldName = 'CAI_DESC'
      Origin = '"CAI_MOV"."CAI_DESC"'
      Size = 120
    end
    object cai_movCAI_DOCT: TIBStringField
      FieldName = 'CAI_DOCT'
      Origin = '"CAI_MOV"."CAI_DOCT"'
    end
    object cai_movCAI_DCAD: TDateField
      FieldName = 'CAI_DCAD'
      Origin = '"CAI_MOV"."CAI_DCAD"'
    end
    object cai_movCAI_HCAD: TTimeField
      FieldName = 'CAI_HCAD'
      Origin = '"CAI_MOV"."CAI_HCAD"'
    end
    object cai_movCAI_SANT: TIBBCDField
      FieldName = 'CAI_SANT'
      Origin = '"CAI_MOV"."CAI_SANT"'
      Precision = 18
      Size = 2
    end
    object cai_movCAI_CRED: TIBBCDField
      FieldName = 'CAI_CRED'
      Origin = '"CAI_MOV"."CAI_CRED"'
      Precision = 18
      Size = 2
    end
    object cai_movCAI_DEBI: TIBBCDField
      FieldName = 'CAI_DEBI'
      Origin = '"CAI_MOV"."CAI_DEBI"'
      Precision = 18
      Size = 2
    end
    object cai_movCAI_SATU: TIBBCDField
      FieldName = 'CAI_SATU'
      Origin = '"CAI_MOV"."CAI_SATU"'
      Precision = 18
      Size = 2
    end
    object cai_movCAI_CONC: TSmallintField
      FieldName = 'CAI_CONC'
      Origin = '"CAI_MOV"."CAI_CONC"'
    end
    object cai_movCAI_CDBX: TIntegerField
      FieldName = 'CAI_CDBX'
      Origin = '"CAI_MOV"."CAI_CDBX"'
    end
    object cai_movCAI_BCON: TIntegerField
      FieldName = 'CAI_BCON'
      Origin = '"CAI_MOV"."CAI_BCON"'
    end
    object cai_movCAI_DCON: TIBStringField
      FieldName = 'CAI_DCON'
      Origin = '"CAI_MOV"."CAI_DCON"'
      Size = 120
    end
  end
  object aux: TIBQuery
    Database = DMDados.IBDB
    Transaction = IBTra
    Left = 696
    Top = 32
  end
end
