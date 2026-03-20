inherited frmcad_cli: Tfrmcad_cli
  Left = -7
  Top = 0
  HelpType = htKeyword
  HelpKeyword = '3'
  AlphaBlendValue = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 1000
  ClientWidth = 1920
  OldCreateOrder = True
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBRodape: TdxStatusBar
    Top = 979
    Width = 1920
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 80
        Text = 'Consulta'
        Width = 80
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 0
        Width = 1680
      end
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.CapsLockKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
        MinWidth = 137
        Width = 137
      end>
  end
  inherited PNLForm: TPanel
    Width = 1920
    Height = 914
    inherited PNLPrincipal: TPanel
      Width = 1920
      Height = 914
      inherited PNLPrincipalRodape: TPanel
        Top = 914
        Width = 1920
      end
      inherited PNLPrincipalME: TPanel
        Height = 914
      end
      inherited PNLPrincipalMD: TPanel
        Left = 1920
        Height = 914
      end
      inherited PNLCadastro: TPanel
        Width = 1920
        Height = 914
        inherited PNLCadastroCabecalho: TPanel
          Width = 1920
        end
        inherited PNLCustomize: TPanel
          Width = 1920
          Height = 914
          inherited PNLCustomizeSumario: TPanel
            Top = 914
            Width = 1920
          end
          inherited PNLCustomizeConsulta: TPanel
            Width = 1920
            Height = 914
            inherited GBCadastro: TGroupBox
              Width = 1866
              Height = 914
              TabOrder = 0
              inherited PCConsulta: TdxPageControl
                Width = 1862
                Height = 893
                inherited TSConsulta: TdxTabSheet
                  inherited DBGConsulta: TdxDBGrid
                    Width = 1862
                    Height = 893
                    KeyField = 'ID'
                    ShowSummaryFooter = True
                    Font.Height = -11
                    Filter.Active = True
                    Filter.Criteria = {00000000}
                    HeaderFont.Height = -12
                    IndentDesc = 10
                    OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
                    OnCustomDrawCell = dbgConsultaCustomDrawCell
                    object DBGConsultaCD_ID: TdxDBGridMaskColumn
                      Alignment = taLeftJustify
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CD_ID'
                    end
                    object DBGConsultaCD_NO: TdxDBGridMaskColumn
                      Width = 200
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CD_NO'
                    end
                    object DBGConsultaCD_RZ_NO: TdxDBGridMaskColumn
                      Width = 300
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CD_RZ_NO'
                    end
                    object DBGConsultaCD_GP_NO: TdxDBGridMaskColumn
                      Width = 110
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CD_GP_NO'
                    end
                    object DBGConsultaCNPJ_MASK: TdxDBGridMaskColumn
                      Width = 110
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CNPJ_MASK'
                    end
                    object DBGConsultaIE: TdxDBGridMaskColumn
                      Width = 120
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'IE'
                    end
                    object DBGConsultaISUF: TdxDBGridMaskColumn
                      Width = 120
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'ISUF'
                    end
                    object DBGConsultaCPF_MASK: TdxDBGridMaskColumn
                      Width = 100
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CPF_MASK'
                    end
                    object DBGConsultaCR_NO: TdxDBGridMaskColumn
                      Width = 154
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CR_NO'
                    end
                    object DBGConsultaCV_NO: TdxDBGridMaskColumn
                      Width = 86
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CV_NO'
                    end
                    object DBGConsultaTEL_MASK: TdxDBGridMaskColumn
                      Width = 152
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TEL_MASK'
                    end
                    object DBGConsultaCEL_TEL_MASK: TdxDBGridMaskColumn
                      Width = 94
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CEL_TEL_MASK'
                    end
                    object DBGConsultaZAP_TEL_MASK: TdxDBGridMaskColumn
                      Width = 94
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'ZAP_TEL_MASK'
                    end
                    object DBGConsultaEMAIL: TdxDBGridMaskColumn
                      Width = 200
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'EMAIL'
                    end
                    object DBGConsultaLOG_NO_ABREV: TdxDBGridMaskColumn
                      Width = 250
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'LOG_NO_ABREV'
                    end
                    object DBGConsultaBAI_NO_ABREV: TdxDBGridMaskColumn
                      Width = 150
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'BAI_NO_ABREV'
                    end
                    object DBGConsultaLOC_NO_ABREV: TdxDBGridMaskColumn
                      Width = 150
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'LOC_NO_ABREV'
                    end
                    object DBGConsultaUF: TdxDBGridMaskColumn
                      Width = 40
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'UF'
                    end
                    object DBGConsultaDTCA: TdxDBGridDateColumn
                      Width = 67
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'DTCA'
                    end
                    object DBGConsultaDEST: TdxDBGridMaskColumn
                      Width = 68
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'DEST'
                    end
                  end
                end
              end
            end
            inherited PNLCustomizeCabecalho: TPanel
              Width = 1920
              TabOrder = 1
            end
            inherited PNLCustomizeRodape: TPanel
              Top = 914
              Width = 1920
            end
            inherited GBMenuEdicao: TGroupBox
              Height = 914
              inherited SBMenuEdicao: TSpeedBar
                Height = 893
              end
            end
          end
          object PNLINFADCAD: TPanel
            Left = 0
            Top = 914
            Width = 1920
            Height = 0
            Cursor = crHandPoint
            Hint = 'Informa'#231#245'es adicionais do pedido ...'
            Align = alBottom
            Alignment = taLeftJustify
            BevelInner = bvLowered
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Locked = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            object DBINFADAD: TdxDBMemo
              Left = 2
              Top = 2
              Width = 1916
              Cursor = crHandPoint
              Hint = 'Informa'#231#245'es adicionais do pedido ...'
              Align = alClient
              Color = clInfoBk
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 0
              DataField = 'INFADCAD'
              DataSource = DTSCadastro
              ReadOnly = True
              ScrollBars = ssBoth
              Height = 96
              StoredValues = 64
            end
          end
        end
      end
    end
    inherited PNLFormRodape: TPanel
      Tag = 1
      Top = 914
      Width = 1920
      Visible = False
      inherited PNLFormRodapeMD: TPanel
        Left = 1920
      end
    end
  end
  inherited SBMenuPrincipal: TSpeedBar
    Width = 1920
    inherited siREL: TSpeedItem
      Left = 245
    end
    inherited siSAIR: TSpeedItem
      Left = 325
    end
    object SICAD_CLI_CRD: TSpeedItem
      BtnCaption = 'Comercial'
      Cursor = crHandPoint
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        20000000000000100000C30E0000C30E00000000000000000000BE63AEFFB280
        96FFBB7D9BFFB39192FFB89190FFBD9594FFC59B92FFD1A196FFB17F7CFF6341
        4BFF36212FFF462324FF6E3425FF6E362CFF6E382EFF723F3AFF7A4641FF7F4C
        47FF834E47FF8B5149FFBD7E6CFFE2A98EFFE0A98FFFE4AE93FFE3AB90FFDBA2
        8DFFCF9583FFC08379FFB57875FFAE7170FFAC6F70FF9C6269FF85778BFF9573
        93FF9F7E9DFFA58A9DFFAF8F9DFFB999A0FFC9A09BFFDCB0A6FF895F55FF2B0D
        00FF62320CFFB15915FFD77120FFC86613FFB4550AFFA44D0AFF964002FF8A35
        00FF812B00FF742100FFA45A38FFE7B29AFFE5B195FFECB7A0FFE8B6A2FFE0A9
        96FFD19687FFBF7F7DFFB37575FFB37571FFA86C6EFF8A5766FF4C4271FF5C4F
        7EFF6F5F94FF846F9CFF947D9FFFB295A6FFCDA39FFFD8AEA8FFC59681FFD59B
        6FFFEDB186FFF0B68AFFE7AE81FFE9B181FFE6AB76FFDE9C5EFFE8A56BFFE7A0
        64FFE99959FFDF884DFFD89771FFE3AF97FFEBB79FFFF2C1ADFFEDBDAAFFE0AC
        99FFCB8E84FFB87875FFB7776EFFB27170FF91596AFF78485FFF4C3133FF6343
        4FFF372D5DFF3E3777FF504582FF9379A4FFD0A4A0FFE1B1A3FFE6B7ACFFE1B6
        A8FFD8B0A3FFDCB4A5FFDDB6A7FFDFB6A2FFDEB49CFFDCB198FFE4BAA2FFF0C5
        B0FFF4C8B4FFEDBEA7FFE8B49AFFE5B198FFF2C2AEFFFACDB7FFF6C7B2FFD89E
        90FFBD7D73FFBA7768FFB1716EFF875469FF6F4460FF68415EFF8B4713FFCB78
        40FF5A3930FF0E143BFF34284AFF332B5BFFCC9D99FFE4B5A1FFDFB6A4FFDEB6
        A5FFDFB7A7FFE5BEADFFE3BBA7FFE2B9A3FFE5BCA8FFE4BCA8FFE0B7A3FFE9C3
        B0FFEBC1ABFFF1C0A4FFF3C1A8FFF4C5AFFFFCD4BDFFFDD9C3FFDAA594FFB274
        69FFAB6B5DFF965F61FF6C4358FF503248FF492E40FF442A34FF445287FF5E61
        98FF4B5694FF3F55A1FF2E3568FF32488DFFC4ACB0FFE7C0A6FFDBB7A3FFD5B0
        A1FFCEA797FFD0AE9EFFD1B1A1FFCDAD9FFFD8BEB2FFDEC7BDFFE4D2CAFFE9DC
        D4FFEDE3DBFFF0E6E0FFF9F0EAFFFFF6EFFFFEF6F0FFF6F2EEFFB0806AFF8C49
        25FF8F5338FF824C39FF885036FF935B3AFF9C6743FFA06D44FF5879D1FF4A70
        DEFF5076E4FF5375DAFF3A5CBCFF5273D6FFA0A5D1FFF1E7DAFFDFD7D2FFE0D7
        D4FFE9E2DFFFEEE9E7FFF6F5F5FFF9F9FBFFFEFFFFFFFFFFFFFFFFFFFFFFF4F7
        F8FFEFF3F6FFEFF4F8FFEAEBEBFFF8FBFAFFFFFFFFFFF9FEFFFFDBCEC4FF874E
        3BFF905545FFA6634BFFC07A5AFFCE8661FFC67955FFC37752FF728BD3FF597A
        DFFF597FDFFF6B8ADBFF6587DDFF7389D5FFDFDBE2FFF0ECE6FFF0F1F1FFFEFF
        FFFFFEFDFAFFFFFFFFFFFAF5EFFFFBF3EAFFFAF1E8FFE8D5C2FFF6E1D0FFFFFF
        FFFFE3C6A9FFCA976BFFCD9768FFDAB896FFFFFFFDFFFAFBF7FFF7FAF5FFA487
        8AFF75444CFF85545AFF8F5D62FFB78077FFE7A793FFDC9379FF8CA7DFFF6890
        EBFF6C93EBFF7E9EE8FF7594DCFFC9C8D6FFF8EDDFFFEBE7E1FFF9F8F7FFFEFB
        EEFFF4DDC2FFFAF7F1FFE1CBB4FFD7B089FFE1BC99FFD0AE8CFFCF935EFFFFF9
        F1FFF4E4D0FFCB8F5AFFC6844BFFC58A55FFF1E1D0FFFFFFFFFFF9FBF5FFDAD3
        D2FF402C39FF302236FF2D1F2DFF231628FF40323EFFBD9386FF91AEE8FF7197
        ECFF7498EBFF7E99DEFF7089DFFF6471A4FFBABBB5FFFFFFFDFFFEFFFAFFFDF9
        F0FFF8ECD9FFEEE8D8FFEAE5D8FFE7DDC9FFE6D5BEFFEAE0D2FFBF9267FFE9C0
        9DFFFFFFFFFFF6F2E0FFDDC1A3FFCA8D59FFD4A67EFFFFFFFBFFF6F8F6FFFFFE
        F9FF666262FF000000FF000000FF000000FF000000FF020306FF9BB5F3FF89A9
        F4FF5E7DDCFF5473D3FF6887E4FF394C8BFF4E546CFFFAF9EFFFFFFFEFFFFAF6
        EBFFEDDFD0FFEDDFCDFFF1ECDEFFFAF9EAFFFAF8E9FFF5F5E9FFDBCBB5FFC289
        56FFFCE9D9FFFDFFF6FFF2F4E8FFE8D8C5FFCA986CFFF1DBC4FFFCFEFFFFF9FA
        F3FFD3CDC9FF3E292DFF38252DFF3B282FFF3C2830FF39262FFFA4C5FFFF81A5
        FBFF7F9AEEFF829CE1FF657AAEFF5C70ACFF4457A4FFA0A2B7FFFFFFF2FFF3EE
        DFFFECE5D7FFEDDCCBFFFAF0DEFFFDFCEBFFFDFAE9FFF1EDDDFFEDEBDEFFE2D2
        BAFFF7D2B4FFFDF7E6FFF0EEDFFFEEEEE2FFE7DBCAFFF4E5CFFFFEFAEFFFEEEC
        E0FFF7F8F0FFB08A89FF895558FF8E5B5EFF8C595BFF8D595AFF6A7A9CFFA6A7
        B9FFEAECECFFCEC4C4FF6474A6FF6A80B8FF5E78C3FF475C9DFFD9D3CAFFFAF0
        E1FFECE6DAFFEFDECEFFFBE7D1FFFDF6E3FFFCF8E7FFEFE8D8FFEAE4D6FFF4F3
        E6FFFDF5E3FFFDF7E8FFF2F0E4FFECE8DDFFEEEBE2FFFAF9F0FFFEFBF2FFF0ED
        E6FFF2F5F3FFE2D3CEFFBF8976FFD6A48EFFDCAD96FFE5B59EFF350C00FFAD8C
        68FFFFFFE6FFD2CAC7FF738ABFFF8298C8FF7D94D0FF6984D2FFA0A4CBFFF6DF
        D2FFEFE5D9FFEFE5D8FFFCEEDDFFFDF7EDFFFEFCF4FFF7F5EFFFF2F1ECFFFBFA
        F6FFFEFFFBFFFEFEFCFFF1F0EFFFEDEDEDFFEFF0F0FFFDFDFEFFFFFFFFFFF1F2
        F3FFEEEFF0FFF7F7F6FFCBA48FFFBD9177FFC59E85FFC69F84FF521900FF9A72
        55FFFFFFFEFFDCE3E8FF7DA0DCFF6381C0FF6A85C3FF859DDBFF889FE8FFBFB6
        CEFFF5D9CAFFEFE4D7FFFDF8EAFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF
        FFFFFFFFFFFFFAFAF9FFEFF1F2FFEEF1F3FFF4F7FAFFFFFFFFFFFFFFFFFFF3F5
        F6FFEEF0F1FFF9FBFEFFE9E0D9FFCBB7A7FFC4AEA0FFB39D92FF9C6852FFC092
        7BFFC0A8ACFF8E8397FF9CAECEFF90AEE0FF88A2D8FF9EB5EAFF99AEEBFF879A
        DEFFD5BCBFFFF8DDCBFFF4E9DAFFFDF8EBFFFFFFFFFFFCFAF6FFFCFAF6FFFBF7
        F3FFF8F1ECFFE9E1D8FFE3D8CDFFE5DDD3FFECE2D6FFE9D7C4FFEADED0FFE6DD
        D2FFEBDFD4FFF5EBE1FFFFFFFFFFFFFFF2FFFFFEEDFFFFFFF3FFFCD6BAFFFFDB
        BBFFBE8D74FF2D1D25FF1E1916FF848F9EFFB9D1FDFFAEC5F7FFA5BAF7FF819E
        F1FF8B97CEFFDEBEBBFFF2D7C4FFE7CDB8FFE3C4A7FFDCAA7FFFE0AF84FFCB94
        63FFC48E5BFFCA9666FFCC9768FFD29E6FFFB37339FFA75F20FF9F5F25FF9258
        1FFFA46733FFDC9969FFF6E5DAFFFEFAF4FFFDF1E5FFFBEBD9FF87663CFF7D61
        3BFF71502BFF5E3F24FF583B1DFF7D6042FFA3B4D2FFACCDFDFFA1C0FFFF96B5
        FFFF7C9BEAFF6D82D3FFBBB4D2FFDEBFA4FFC07E49FFC78A58FFD5AB84FFD4A6
        7EFFD19C6DFFDCAB81FFE8BA95FFE4AC7EFFA76224FFAF6A2EFFB27642FFB480
        51FFC49A74FFE3B896FFE5BEA1FFFDFDFDFFFFFFFEFFEFE3D8FF231100FF341C
        00FF361E00FF40280BFF312317FF190F03FF362A20FF907F76FFCFC8CCFFC0CC
        E7FFA8C1FAFFA7BDF9FFACBDEBFFE4D7C4FFC99A6DFFE0D1BDFFE6E1D1FFDDCE
        B8FFCEAF8EFFC28B58FFDEB48CFFDDB38AFFB66F31FFB97C45FFC1905FFFC89E
        75FFCD9B6FFFC58758FFCA9269FFF9F2EDFFFFFFFEFFF3E5D8FF4F3A47FF574D
        57FF4B4557FF210E00FF3A2714FF88654BFFCE9F7EFFE3B394FFF0C09FFFFCCB
        A5FFE7BA95FFA69A8CFFFFFEF4FFF4F4E7FFDAC2A2FFCAA57DFFCEA783FFD6B0
        8AFFE1BE99FFEDCBAAFFF5DDC3FFE9D4BAFFB78351FFC4996FFFBD8859FFB278
        40FFCE9D6FFFEBC7A8FFF2D8C0FFF4E2D3FFFEFEF6FFF0E1D1FF6077CCFF5E79
        D2FF4C63B6FF51486CFFCB9475FFFBC8A3FFEEC3A7FFEAC0A2FFE6B998FFEDB7
        90FFFAB987FF96714FFFDBDCD4FFFFFFF6FFF2E1C8FFF1D5B8FFF6DCC1FFF7DE
        C3FFF5DBBFFFF4D6B8FFEFD0B0FFEAA06AFFDCBA9CFFDECEB8FFE4D4BEFFECDC
        CBFFF7EDE4FFFAF3EDFFF9F1E5FFF7EFDFFFFEFAEDFFECD6C1FF87A3EEFF627B
        C9FF6782D1FF617CD6FF6E6186FFC08F78FFDDAB85FFE2B28DFFE1B28DFFE2B2
        8DFFEDB990FFC99468FFB5AB9FFFFFFFFBFFFAF0DCFFF2DBBEFFF3DCC2FFF2DC
        C1FFF1E0C7FFEFE1CBFFF4F2E5FFBE8E5FFF917965FFF6F4EEFFF4F4EAFFFFFB
        EFFFFEFFFBFFFFFFFDFFFFFFF2FFFFFAECFFFFF5E7FFFEF3E3FF9CB5F7FF6781
        D7FF627ED0FF546BC6FF2F4199FF827499FFF1BF9BFFE7B999FFE5B896FFE4B6
        91FFE3B592FFE5B28BFFB4967CFFF1F0E5FFF8F2E3FFF6F1E0FFF6F4E4FFF4F2
        E3FFF1EBDEFFEFE9DBFFEFEBDEFFD4C3AAFF532D05FFBEAE9BFFFAEEDBFFFFF7
        E9FFFFFFF1FFFFFBEDFFFFE9DCFFFFE8DCFFFFEBD8FFFFECD9FFD1E4FFFF91AA
        F5FF6B86DFFF6A82DCFF8690CDFFF2D5C8FFFECAAAFFF1C6A9FFE9C0A3FFE7BC
        9DFFE8BC9DFFEBBD9BFFCFA07BFFDBD1C1FFF0EADDFFECE7DAFFEDEBDCFFF0ED
        E0FFF6EFE2FFFCF4E5FFF1E4D1FFF5E8DAFFB39370FF66462BFFD1C6BBFFCCB9
        A6FFBB9B7EFFB48562FFA86D45FFA6693AFFC8B7B4FF777AA9FF696C6BFFC8D9
        FEFF9DADD9FF7B869CFF665456FFEBCEAFFFFFE5CEFFFAC8A8FFF6C9AAFFEEC2
        A6FFEAC0A3FFEAC2A5FFE5BA98FFE0C8ABFFFFFDF2FFFBF5E9FFF2ECE0FFE3DB
        CEFFCEC3B3FFB8A791FF9E8B76FF836D55FF664C35FF985D2DFF894612FF4225
        07FF6C5B61FF653409FF683000FF3C292EFF2C3884FF3B51A5FF080000FF998B
        71FF3E2E21FF0F0000FF180200FF5F4126FFF8E4C7FFFFE3CAFFFBC8A7FFFCCD
        AEFFF8CFB1FFF3CCB1FFF2C7A8FFDAB797FF8D867BFF8C755BFF6F5537FF573B
        1AFF482C0AFF402200FF3C1C00FF3F1E00FF311600FF82603BFFE68836FF5A47
        6BFF5069DEFF333274FF292A57FF283F9CFF4762C1FF6688D4FF1C0A00FF1505
        00FF0F0300FF2B1600FF301B00FF230C00FF6B4E35FFE2CFB6FFFFE6CEFFFBCB
        ADFFFCCDADFFFDCEADFFFFD1B1FFEFCCAAFF382512FF250D00FF462600FF4527
        00FF472900FF492A00FF4C2C00FF4E2B00FF432500FF51320EFFAB877BFF7B6C
        98FF4F6AD1FF5577D5FF6185E0FF7DA2EEFF7DA5F3FF83A9F3FF220F01FF1104
        00FF130701FF301A01FF2F1900FF372000FF250F00FF472714FFE8D2B7FFFFE7
        CFFFFBCAAAFFFCD1B3FFFCD2B5FFFFE5C5FFBDA182FF120500FF522E00FF522E
        00FF512E00FF502D01FF542E00FF4E2C00FF4D2900FF674016FF7E9AEEFFA393
        AEFFAB929BFF678CE1FF5C78CFFF5471CEFF7398EEFF86B2F5FF210E00FF1A09
        01FF1C0C00FF321B00FF2F1800FF321C00FF341E00FF2B1200FF604021FFEEE0
        C7FFFEE1C9FFFCD3B6FFFCD3B4FFFED7BAFFFCE2C0FF483824FF280C00FF3B1C
        00FF412400FF472A01FF4B2B01FF422601FF4D2A01FF472400FF7E87ADFF767B
        C4FFC17344FF3C3779FF1D34A3FF405BCFFF7093ECFF83ABEEFF371D01FF2611
        00FF251200FF331A01FF2D1700FF2C1701FF381F01FF3D2401FF260C00FF8D69
        4CFFFFF6E1FFFDDCC2FFFCCFAFFFFCD3B4FFFFDBBCFFE5C8A8FFA6896EFFA68A
        6AFF88643BFF542F04FF4F2C01FF512D02FF4F2A01FF5E340FFFD2C6B4FF9AC0
        FFFF9A8DACFF9C655EFF4C6CD5FF7FA0F9FF9EBDFAFFCFDDF7FF2F1800FF2712
        00FF2D1700FF321A00FF291300FF321A01FF3C2201FF3D2301FF2E1400FFA778
        59FFFFF2DDFFFCE8D3FFFCD7BCFFFCCFB0FFFFE7CCFFFFF6D9FFD9C2A8FF8066
        50FF3E2512FF2E1801FF2C1601FF281400FF230C00FF7A5B3AFFFFFFFBFFF8FB
        F3FFD7E6F8FFE4B392FFD3D1D8FFECF4F4FFF6F5EBFFFFFDE9FF3A1F01FF2C16
        01FF341B00FF301900FF291301FF381F01FF3B2100FF3C2300FF381A00FFC496
        80FFFBDBC5FFFBE1C9FFFDE8D1FFFFECD2FFC8A484FF523424FF280F00FF210B
        00FF281400FF2E1A00FF311A00FF2C1801FF270E00FF9A7E58FFFFFFF2FFFFF7
        DFFFFFFCE3FFFCF4E1FFFAEDD6FFFFFADCFFFFF5DAFFFFF2DBFF}
      Hint = 'Informa'#231#245'es Comerciais'
      Spacing = 1
      Left = 165
      Top = 5
      Visible = True
      OnClick = SICAD_CLI_CRDClick
      SectionName = 'Menu Principal'
    end
  end
  inherited Cadastro: TIBQuery
    AfterClose = CadastroAfterClose
    SQL.Strings = (
      'WITH RECURSIVE PK'
      'AS ('
      'SELECT PK.ID   ,PK.EP_ID,'
      
        '       PK.DTEV ,PK.DTCA ,CAST(PK.PED_DT AS DATE) AS PED_DT,CAST(' +
        'PK.NFE_DT AS DATE) AS NFE_DT,CAST(PK.NFS_DT AS DATE) AS NFS_DT,'
      '       PK.CDST ,PK.REST ,PK.DEST,CRD.CRD_DEST AS CRD_DEST,'
      '       PK.CD_ID,PK.CD_NO,PK.CD_RZ_NO,PK.CD_GP_NO ,'
      '       PK.CNPJ ,FCNPJ(PK.CNPJ) AS CNPJ_MASK,PK.IE,PK.ISUF,'
      '       PK.CPF  ,FCPF(PK.CPF)   AS CPF_MASK ,PK.IDESTRANGEIRO,'
      '       PK.CR_ID,PK.CR_NO,PK.CV_ID,PK.CV_NO,PK.CT_ID,PK.CT_NO,'
      
        '       TRIM(CAST(FTEL(PK.DDD_NU,PK.TEL_NU) || '#39' '#39' || LEFT(PK.CON' +
        'TATO_NO,10) AS VARCHAR(30))) TEL_MASK,'
      '       FTEL(PK.CEL_DDD_NU,PK.CEL_TEL_NU) AS CEL_TEL_MASK,'
      '       FTEL(PK.ZAP_DDD_NU,PK.ZAP_TEL_NU) AS ZAP_TEL_MASK,'
      
        '       TRIM(CAST(PK.EMAIL || '#39' '#39' || PK.EMAIL2 || '#39' '#39' || PK.EMAIL' +
        '3 AS VARCHAR(200))) AS EMAIL,'
      '       PK.LOG_NO_ABREV,PK.BAI_NO_ABREV,PK.LOC_NO_ABREV,PK.UF,'
      
        '       CRD.CRD_VPAD,CRD.CRD_VTAP,CRD.CRD_VTSD,CRD.CRD_VTKT,CRD.C' +
        'RD_BQST,'
      '       PK.FIS_DTFU,PK.FIS_CRT_NO,'
      '       PK.INFADCAD'
      'FROM      VW_PSQ_CAD_CLI  AS PK'
      
        'LEFT JOIN CAD_CLI_CRD_FIN AS CRD ON (CRD.EP_ID = :EP_ID AND CRD.' +
        'CD_ID = PK.CD_ID)'
      
        'WHERE     PK.DTEV >= DATEADD(DAY,-30,DATEADD(1 - EXTRACT(DAY FRO' +
        'M CURRENT_DATE) DAY TO CURRENT_DATE))'
      '),'
      'CTE_PSQ'
      'AS ('
      'SELECT PK.* FROM PK'
      ')'
      'SELECT DISTINCT PK.* FROM CTE_PSQ AS PK')
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'EP_ID'
        ParamType = ptInput
        Value = '4'
      end>
    object CadastroID: TLargeintField
      DisplayLabel = 'C'#243'digo'
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"VW_PSQ_CAD_CLI"."ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroEP_ID: TSmallintField
      FieldName = 'EP_ID'
      Origin = '"VW_PSQ_CAD_CLI"."EP_ID"'
    end
    object CadastroDTEV: TDateTimeField
      FieldName = 'DTEV'
      Origin = '"VW_PSQ_CAD_CLI"."DTEV"'
    end
    object CadastroDTCA: TDateTimeField
      DisplayLabel = 'Cadastro'
      FieldName = 'DTCA'
      Origin = '"VW_PSQ_CAD_CLI"."DTCA"'
    end
    object CadastroPED_DT: TDateField
      FieldName = 'PED_DT'
      ProviderFlags = []
    end
    object CadastroNFE_DT: TDateField
      FieldName = 'NFE_DT'
      ProviderFlags = []
    end
    object CadastroNFS_DT: TDateField
      FieldName = 'NFS_DT'
      ProviderFlags = []
    end
    object CadastroCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"VW_PSQ_CAD_CLI"."CDST"'
    end
    object CadastroREST: TIBStringField
      FieldName = 'REST'
      Origin = '"VW_PSQ_CAD_CLI"."REST"'
      Size = 10
    end
    object CadastroDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'DEST'
      Origin = '"VW_PSQ_CAD_CLI"."DEST"'
      Size = 30
    end
    object CadastroCRD_DEST: TIBStringField
      FieldName = 'CRD_DEST'
      Origin = '"CAD_CLI_CRD_FIN"."CRD_DEST"'
      Size = 60
    end
    object CadastroCD_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CD_ID'
      Origin = '"VW_PSQ_CAD_CLI"."CD_ID"'
    end
    object CadastroCD_NO: TIBStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'CD_NO'
      Origin = '"VW_PSQ_CAD_CLI"."CD_NO"'
      Size = 60
    end
    object CadastroCD_RZ_NO: TIBStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CD_RZ_NO'
      Origin = '"VW_PSQ_CAD_CLI"."CD_RZ_NO"'
      Size = 60
    end
    object CadastroCD_GP_NO: TIBStringField
      DisplayLabel = 'Grupo'
      FieldName = 'CD_GP_NO'
      Origin = '"VW_PSQ_CAD_CLI"."CD_GP_NO"'
      Size = 60
    end
    object CadastroCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"VW_PSQ_CAD_CLI"."CNPJ"'
      Size = 14
    end
    object CadastroCNPJ_MASK: TIBStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'CNPJ_MASK'
      ProviderFlags = []
      Size = 18
    end
    object CadastroIE: TIBStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'IE'
      Origin = '"VW_PSQ_CAD_CLI"."IE"'
    end
    object CadastroISUF: TIBStringField
      DisplayLabel = 'Inscri'#231#227'o Suframa'
      FieldName = 'ISUF'
      Origin = '"VW_PSQ_CAD_CLI"."ISUF"'
    end
    object CadastroCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"VW_PSQ_CAD_CLI"."CPF"'
      Size = 14
    end
    object CadastroCPF_MASK: TIBStringField
      DisplayLabel = 'CPF'
      FieldName = 'CPF_MASK'
      ProviderFlags = []
      Size = 14
    end
    object CadastroIDESTRANGEIRO: TIBStringField
      FieldName = 'IDESTRANGEIRO'
      Origin = '"VW_PSQ_CAD_CLI"."IDESTRANGEIRO"'
    end
    object CadastroCR_ID: TSmallintField
      FieldName = 'CR_ID'
      Origin = '"VW_PSQ_CAD_CLI"."CR_ID"'
    end
    object CadastroCR_NO: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'CR_NO'
      Origin = '"VW_PSQ_CAD_CLI"."CR_NO"'
      Size = 60
    end
    object CadastroCV_ID: TSmallintField
      FieldName = 'CV_ID'
      Origin = '"VW_PSQ_CAD_CLI"."CV_ID"'
    end
    object CadastroCV_NO: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'CV_NO'
      Origin = '"VW_PSQ_CAD_CLI"."CV_NO"'
      Size = 30
    end
    object CadastroCT_ID: TSmallintField
      FieldName = 'CT_ID'
      Origin = '"VW_PSQ_CAD_CLI"."CT_ID"'
    end
    object CadastroCT_NO: TIBStringField
      FieldName = 'CT_NO'
      Origin = '"VW_PSQ_CAD_CLI"."CT_NO"'
      Size = 60
    end
    object CadastroTEL_MASK: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'TEL_MASK'
      ProviderFlags = []
      Size = 30
    end
    object CadastroCEL_TEL_MASK: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CEL_TEL_MASK'
      ProviderFlags = []
      Size = 15
    end
    object CadastroZAP_TEL_MASK: TIBStringField
      DisplayLabel = 'Whatsapp'
      FieldName = 'ZAP_TEL_MASK'
      ProviderFlags = []
      Size = 15
    end
    object CadastroEMAIL: TIBStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      ProviderFlags = []
      Size = 200
    end
    object CadastroLOG_NO_ABREV: TIBStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'LOG_NO_ABREV'
      Origin = '"VW_PSQ_CAD_CLI"."LOG_NO_ABREV"'
      Size = 36
    end
    object CadastroBAI_NO_ABREV: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAI_NO_ABREV'
      Origin = '"VW_PSQ_CAD_CLI"."BAI_NO_ABREV"'
      Size = 36
    end
    object CadastroLOC_NO_ABREV: TIBStringField
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'LOC_NO_ABREV'
      Origin = '"VW_PSQ_CAD_CLI"."LOC_NO_ABREV"'
      Size = 36
    end
    object CadastroUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VW_PSQ_CAD_CLI"."UF"'
      FixedChar = True
      Size = 2
    end
    object CadastroCRD_VPAD: TIBBCDField
      FieldName = 'CRD_VPAD'
      Origin = '"CAD_CLI_CRD_FIN"."CRD_VPAD"'
      Precision = 18
      Size = 2
    end
    object CadastroCRD_VTAP: TIBBCDField
      FieldName = 'CRD_VTAP'
      Origin = '"CAD_CLI_CRD_FIN"."CRD_VTAP"'
      Precision = 18
      Size = 2
    end
    object CadastroCRD_VTSD: TIBBCDField
      FieldName = 'CRD_VTSD'
      Origin = '"CAD_CLI_CRD_FIN"."CRD_VTSD"'
      Precision = 18
      Size = 2
    end
    object CadastroCRD_VTKT: TIBBCDField
      FieldName = 'CRD_VTKT'
      Origin = '"CAD_CLI_CRD_FIN"."CRD_VTKT"'
      Precision = 18
      Size = 2
    end
    object CadastroCRD_BQST: TSmallintField
      FieldName = 'CRD_BQST'
      Origin = '"CAD_CLI_CRD_FIN"."CRD_BQST"'
    end
    object CadastroFIS_DTFU: TDateField
      FieldName = 'FIS_DTFU'
      Origin = '"VW_PSQ_CAD_CLI"."FIS_DTFU"'
    end
    object CadastroFIS_CRT_NO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FIS_CRT_NO'
      Origin = '"VW_PSQ_CAD_CLI"."FIS_CRT_NO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 52
    end
    object CadastroINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_PSQ_CAD_CLI"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 768
    end
  end
  inherited ALPrincipal: TActionList
    object ACTCAD_CLI_INF: TAction
      Category = 'Sistema'
      Caption = 'ACTCAD_CLI_INF'
      OnExecute = ACTCAD_CLI_INFExecute
    end
  end
end
