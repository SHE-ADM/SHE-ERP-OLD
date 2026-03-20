inherited frmcad_for: Tfrmcad_for
  Left = 433
  Top = 192
  AlphaBlendValue = 0
  Caption = 'Cadastro de Fornecedores'
  ClientHeight = 706
  OldCreateOrder = True
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBRodape: TdxStatusBar
    Top = 685
  end
  inherited PNLForm: TPanel
    Height = 685
    inherited PNLPrincipal: TPanel
      Height = 685
      inherited PNLPrincipalRodape: TPanel
        Top = 685
      end
      inherited PNLPrincipalME: TPanel
        Height = 685
      end
      inherited PNLPrincipalMD: TPanel
        Height = 685
      end
      inherited PNLCadastro: TPanel
        Height = 685
        inherited PNLCadastroMenu: TPanel
          inherited GBMenu: TGroupBox
            inherited SBMenu: TSpeedBar
              inherited SIMRelatorios: TSpeedItem [2]
              end
              inherited SIMPesquisa: TSpeedItem [3]
                Left = 109
                Visible = True
              end
              inherited SIMSaida: TSpeedItem
                Left = 214
              end
            end
          end
        end
        inherited PNLCustomize: TPanel
          Height = 283
          inherited PNLCustomizeEdicao: TPanel
            Height = 283
            inherited GBEdicao: TGroupBox
              Height = 283
              inherited SBEdicao: TSpeedBar
                Height = 262
              end
            end
          end
          inherited PNLCustomizeSumario: TPanel
            Top = 283
          end
          inherited PNLCustomizeConsulta: TPanel
            Height = 283
            inherited GBCadastro: TGroupBox
              Height = 283
              TabOrder = 2
              inherited PCConsulta: TdxPageControl
                Height = 262
                inherited TSConsulta: TdxTabSheet
                  inherited DBGConsulta: TdxDBGrid
                    Height = 262
                    KeyField = 'ID'
                    ShowSummaryFooter = True
                    Filter.Active = True
                    Filter.Criteria = {00000000}
                    OnCustomDrawCell = dbgConsultaCustomDrawCell
                    object DBGConsultaID: TdxDBGridMaskColumn
                      Width = 50
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'ID'
                      SummaryFooterType = cstCount
                      SummaryFooterField = 'ID'
                      SummaryFooterFormat = '0'
                      DisableFilter = True
                    end
                    object DBGConsultaFantasia: TdxDBGridMaskColumn
                      Width = 200
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Fantasia'
                    end
                    object DBGConsultaRazao: TdxDBGridMaskColumn
                      Width = 300
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Razao'
                    end
                    object DBGConsultaC_CnpjCpf: TdxDBGridColumn
                      Width = 130
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'C_CnpjCpf'
                      DisableFilter = True
                    end
                    object DBGConsultaDTCadastro: TdxDBGridDateColumn
                      Width = 95
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'DTCadastro'
                    end
                    object DBGConsultaSTCadastro: TdxDBGridMaskColumn
                      Width = 100
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'STCadastro'
                    end
                    object DBGConsultaC_Endereco: TdxDBGridColumn
                      Width = 300
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'C_Endereco'
                    end
                    object DBGConsultaXMun: TdxDBGridMaskColumn
                      Width = 200
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'XMun'
                    end
                    object DBGConsultaUF: TdxDBGridMaskColumn
                      Width = 40
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'UF'
                    end
                  end
                end
              end
            end
            inherited PNLCustomizeRodape: TPanel
              Top = 283
              TabOrder = 1
            end
          end
        end
        object GBProdutos: TGroupBox
          Left = 0
          Top = 385
          Width = 1064
          Height = 300
          Align = alBottom
          Caption = '  Produtos  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 3
          object DBGProdutos: TdxDBGrid
            Left = 2
            Top = 19
            Width = 1060
            Height = 279
            Cursor = crHandPoint
            Bands = <
              item
                Caption = 'Cadastro'
                Width = 592
              end
              item
                Caption = 'Pre'#231'o Unit'#225'rio'
              end
              item
                Caption = 'Unidade de Medida'
              end
              item
                Caption = 'Pronta Entrega'
              end
              item
                Alignment = taLeftJustify
                Caption = 'Fornecedor'
              end
              item
                Alignment = taLeftJustify
                Caption = 'Origem'
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'ID'
            ShowSummaryFooter = True
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            BorderStyle = bsNone
            Color = 16316664
            Ctl3D = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            BandColor = 13421258
            BandFont.Charset = ANSI_CHARSET
            BandFont.Color = clBlack
            BandFont.Height = -13
            BandFont.Name = 'Segoe UI Semibold'
            BandFont.Style = [fsBold, fsItalic]
            DataSource = DTSProdutos
            Filter.Active = True
            Filter.Criteria = {00000000}
            GridLineColor = clSilver
            HeaderFont.Charset = ANSI_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -13
            HeaderFont.Name = 'Segoe UI'
            HeaderFont.Style = [fsItalic]
            HideSelectionColor = 14789952
            HighlightColor = 14789952
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
            PreviewFont.Charset = ANSI_CHARSET
            PreviewFont.Color = 12092957
            PreviewFont.Height = -12
            PreviewFont.Name = 'Segoe UI Semibold'
            PreviewFont.Style = [fsBold, fsItalic]
            ShowBands = True
            ShowGrid = False
            OnCustomDrawCell = DBGProdutosCustomDrawCell
            object DBGProdutosARTIGO: TdxDBGridMaskColumn
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ARTIGO'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
            end
            object DBGProdutosSKU: TdxDBGridMaskColumn
              Width = 120
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SKU'
            end
            object DBGProdutosDESCRICAO: TdxDBGridMaskColumn
              Width = 450
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DESCRICAO'
            end
            object DBGProdutosDTCA: TdxDBGridDateColumn
              Width = 74
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DTCA'
            end
            object DBGProdutosDEST: TdxDBGridMaskColumn
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEST'
            end
            object DBGProdutosUCOM: TdxDBGridMaskColumn
              Width = 80
              BandIndex = 2
              RowIndex = 0
              FieldName = 'UCOM'
            end
            object DBGProdutosUCON: TdxDBGridMaskColumn
              Width = 170
              BandIndex = 2
              RowIndex = 0
              FieldName = 'UCON'
            end
            object DBGProdutosVPRC_PAD: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              BandIndex = 1
              RowIndex = 0
              FieldName = 'VPRC_PAD'
              DisableFilter = True
            end
            object DBGProdutosVPRC_COM_PAD: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              BandIndex = 1
              RowIndex = 0
              FieldName = 'VPRC_COM_PAD'
              DisableFilter = True
            end
            object DBGProdutosEPE_QTDE: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 80
              BandIndex = 3
              RowIndex = 0
              FieldName = 'EPE_QTDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'EPE_QTDE'
              SummaryFooterFormat = ',##,0.00;-,##,0.00'
              DisableFilter = True
            end
            object DBGProdutosEPE_QTRL: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 45
              BandIndex = 3
              RowIndex = 0
              FieldName = 'EPE_QTRL'
              SummaryFooterType = cstSum
              SummaryFooterField = 'EPE_QTRL'
              SummaryFooterFormat = '0'
              DisableFilter = True
            end
            object DBGProdutosCDCF: TdxDBGridMaskColumn
              Width = 100
              BandIndex = 4
              RowIndex = 0
              FieldName = 'CDCF'
            end
            object DBGProdutosDECF: TdxDBGridMaskColumn
              Width = 200
              BandIndex = 4
              RowIndex = 0
              FieldName = 'DECF'
            end
            object DBGProdutosFPAIS: TdxDBGridMaskColumn
              BandIndex = 5
              RowIndex = 0
              FieldName = 'FPAIS'
            end
            object DBGProdutosXPAIS: TdxDBGridMaskColumn
              Width = 200
              BandIndex = 5
              RowIndex = 0
              FieldName = 'XPAIS'
            end
            object DBGProdutosC_ID: TdxDBGridColumn
              Visible = False
              Width = 79
              BandIndex = 0
              RowIndex = 0
              FieldName = 'C_ID'
            end
          end
        end
      end
    end
    inherited PNLFormRodape: TPanel
      Top = 685
    end
  end
  inherited Cadastro: TIBQuery
    OnCalcFields = CadastroCalcFields
    SQL.Strings = (
      'SELECT   CF.ID "Id",FOR_FANT "Fantasia",FOR_RAZA "Razao",'
      
        '         FOR_DCAD "DTCadastro",FOR_DFUN "DTFundacao",FOR_DALT "D' +
        'TEdicao",FOR_DULT "DTPedido",'
      
        '         COALESCE(FOR_VULT,0) "VLPedido",COALESCE(FOR_VDSC,0) "V' +
        'LDesc",COALESCE(FAVCredito.CLI_CRED,0) "VLCredito",'
      
        '         FOR_CNPJ "Cnpj"      ,FOR_INSC "IE"       ,FOR_CPF "Cpf' +
        '",FOR_RG "RG",FOR_ISUF "ISUF",FOR_IM "IM",'
      
        '         FOR_CICM "CICMS"     ,FOR_RICM "RICMS"    ,FOR_IDESTRAN' +
        'GEIRO "IDEstrangeiro",'
      
        '         FOR_CONT "Contato"   ,FOR_DDD  "DDD"      ,FOR_TEL1 "TE' +
        'L1"  ,FOR_CEL "Celular",FOR_MAIL "Email",'
      
        '         FOR_TLOG "TLgr"      ,FOR_LOGR "XLgr"     ,FOR_NUME "NR' +
        'O"   ,FOR_COMP "XCpl"  ,FOR_CEP  "Cep",'
      
        '         FOR_BAI  "XBairro"   ,FOR_CMUN "CMun"     ,FOR_CID  "XM' +
        'un"  ,FOR_ESTA "UF"    ,FOR_REGI "Regiao",'
      
        '         FOR_TLOV "ETLgr"     ,FOR_LOGV "EXLgr"    ,FOR_NUMV "EN' +
        'RO"  ,FOR_COMV "EXCpl" ,FOR_CEP  "ECep",'
      
        '         FOR_BAIV "EXBairro"  ,FOR_CMUV "ECMun"    ,FOR_CIDV  "E' +
        'XMun",FOR_ESTV "EUF"   ,'
      
        '         FOR_TLOR "RTLgr"     ,FOR_LORE "RXLgr"    ,FOR_NUMR "RN' +
        'RO"  ,FOR_COMR "RXCpl" ,FOR_CEPR "RCep",'
      
        '         FOR_BAIR "RXBairro"  ,FOR_CMUR "RCMun"    ,FOR_CIDR  "R' +
        'XMun",FOR_ESTR "RUF"   ,'
      
        '         Vendedores.USU_CUSU  "IDVendedor",Vendedores.USU_DUSU "' +
        'DEVendedor",Representantes.ID "IDRepresentante",Representantes.R' +
        'EP_FANT "DERepresentante",'
      
        '         FOR_DPAG "Prazo"     ,FOR_CTRA "IDTransportadora",FOR_D' +
        'TRA "DETransportadora",'
      '         TRIM(CASE FOR_STAV'
      '              WHEN '#39'A'#39' THEN '#39'ATIVO'#39
      '              WHEN '#39'I'#39' THEN '#39'INATIVO'#39
      '              WHEN '#39'S'#39' THEN '#39'SUSPENSO'#39
      '              WHEN '#39'P'#39' THEN '#39'PR'#201' CADASTRO'#39
      '         END) AS "STCadastro",'
      
        '         TRIM(CAST(SUBSTRING(FOR_OBSE FROM 1 FOR 512) AS VARCHAR' +
        '(512))) "InfoA",'
      
        '         TRIM(CAST(SUBSTRING(FOR_OBSO FROM 1 FOR 512) AS VARCHAR' +
        '(512))) "InfoC"'
      'FROM     CAD_FOR AS CF'
      
        'LEFT     OUTER JOIN CAD_CLI_CRD AS FAVCredito     ON (FAVCredito' +
        '.IDCD = 0)'
      
        'LEFT     OUTER JOIN CAD_USU     AS Vendedores     ON (FOR_CVEN =' +
        ' Vendedores.USU_CUSU)'
      
        'LEFT     OUTER JOIN CAD_REP     AS Representantes ON (FOR_CREP =' +
        ' Representantes.ID)'
      ''
      'WHERE  EXISTS (SELECT PK.ID FROM ped_com_cab AS PK'
      '               WHERE  PK.IDCD = CF.ID'
      
        'AND (CAST(PK.DTCA AS DATE) BETWEEN (DATEADD(1 - EXTRACT(DAY FROM' +
        ' CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY ' +
        'FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH T' +
        'O CURRENT_DATE))) OR'
      
        '     CAST(PK.DTBX AS DATE) BETWEEN (DATEADD(1 - EXTRACT(DAY FROM' +
        ' CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY ' +
        'FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH T' +
        'O CURRENT_DATE))) OR'
      '     PK.REST = '#39'EXP'#39' OR PK.REST = '#39'PEN'#39'))'
      'ORDER BY CF.FOR_FANT'
      '')
    object CadastroId: TIntegerField
      FieldName = 'Id'
      Origin = '"CAD_FOR"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadastroFantasia: TIBStringField
      FieldName = 'Fantasia'
      Origin = '"CAD_FOR"."FOR_FANT"'
      Size = 60
    end
    object CadastroRazao: TIBStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'Razao'
      Origin = '"CAD_FOR"."FOR_RAZA"'
      Size = 60
    end
    object CadastroDTCadastro: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'DTCadastro'
      Origin = '"CAD_FOR"."FOR_DCAD"'
    end
    object CadastroDTFundacao: TDateField
      FieldName = 'DTFundacao'
      Origin = '"CAD_FOR"."FOR_DFUN"'
    end
    object CadastroDTEdicao: TDateField
      FieldName = 'DTEdicao'
      Origin = '"CAD_FOR"."FOR_DALT"'
    end
    object CadastroDTPedido: TDateField
      FieldName = 'DTPedido'
      Origin = '"CAD_FOR"."FOR_DULT"'
    end
    object CadastroVLPedido: TIBBCDField
      FieldName = 'VLPedido'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object CadastroVLDesc: TIBBCDField
      FieldName = 'VLDesc'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object CadastroVLCredito: TIBBCDField
      FieldName = 'VLCredito'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object CadastroCnpj: TIBStringField
      FieldName = 'Cnpj'
      Origin = '"CAD_FOR"."FOR_CNPJ"'
      Size = 14
    end
    object CadastroIE: TIBStringField
      FieldName = 'IE'
      Origin = '"CAD_FOR"."FOR_INSC"'
    end
    object CadastroCpf: TIBStringField
      FieldName = 'Cpf'
      Origin = '"CAD_FOR"."FOR_CPF"'
      Size = 11
    end
    object CadastroRG: TIBStringField
      FieldName = 'RG'
      Origin = '"CAD_FOR"."FOR_RG"'
      Size = 15
    end
    object CadastroISUF: TIBStringField
      FieldName = 'ISUF'
      Origin = '"CAD_FOR"."FOR_ISUF"'
      Size = 9
    end
    object CadastroIM: TIBStringField
      FieldName = 'IM'
      Origin = '"CAD_FOR"."FOR_IM"'
      Size = 15
    end
    object CadastroCICMS: TIBStringField
      FieldName = 'CICMS'
      Origin = '"CAD_FOR"."FOR_CICM"'
      FixedChar = True
      Size = 1
    end
    object CadastroRICMS: TIBStringField
      FieldName = 'RICMS'
      Origin = '"CAD_FOR"."FOR_RICM"'
      FixedChar = True
      Size = 1
    end
    object CadastroIDEstrangeiro: TIBStringField
      FieldName = 'IDEstrangeiro'
      Origin = '"CAD_FOR"."FOR_IDESTRANGEIRO"'
    end
    object CadastroContato: TIBStringField
      FieldName = 'Contato'
      Origin = '"CAD_FOR"."FOR_CONT"'
      Size = 30
    end
    object CadastroDDD: TIBStringField
      FieldName = 'DDD'
      Origin = '"CAD_FOR"."FOR_DDD"'
      Size = 2
    end
    object CadastroTEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"CAD_FOR"."FOR_TEL1"'
      Size = 9
    end
    object CadastroCelular: TIBStringField
      FieldName = 'Celular'
      Origin = '"CAD_FOR"."FOR_CEL"'
      Size = 9
    end
    object CadastroEmail: TIBStringField
      FieldName = 'Email'
      Origin = '"CAD_FOR"."FOR_MAIL"'
      Size = 60
    end
    object CadastroTLgr: TIBStringField
      FieldName = 'TLgr'
      Origin = '"CAD_FOR"."FOR_TLOG"'
      Size = 15
    end
    object CadastroXLgr: TIBStringField
      FieldName = 'XLgr'
      Origin = '"CAD_FOR"."FOR_LOGR"'
      Size = 60
    end
    object CadastroNRO: TIBStringField
      FieldName = 'NRO'
      Origin = '"CAD_FOR"."FOR_NUME"'
      Size = 10
    end
    object CadastroXCpl: TIBStringField
      FieldName = 'XCpl'
      Origin = '"CAD_FOR"."FOR_COMP"'
      Size = 40
    end
    object CadastroCep: TIBStringField
      FieldName = 'Cep'
      Origin = '"CAD_FOR"."FOR_CEP"'
      Size = 9
    end
    object CadastroXBairro: TIBStringField
      FieldName = 'XBairro'
      Origin = '"CAD_FOR"."FOR_BAI"'
      Size = 40
    end
    object CadastroCMun: TIBStringField
      FieldName = 'CMun'
      Origin = '"CAD_FOR"."FOR_CMUN"'
      Size = 10
    end
    object CadastroXMun: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'XMun'
      Origin = '"CAD_FOR"."FOR_CID"'
      Size = 40
    end
    object CadastroUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CAD_FOR"."FOR_ESTA"'
      Size = 2
    end
    object CadastroRegiao: TIBStringField
      FieldName = 'Regiao'
      Origin = '"CAD_FOR"."FOR_REGI"'
      Size = 30
    end
    object CadastroETLgr: TIBStringField
      FieldName = 'ETLgr'
      Origin = '"CAD_FOR"."FOR_TLOV"'
      Size = 15
    end
    object CadastroEXLgr: TIBStringField
      FieldName = 'EXLgr'
      Origin = '"CAD_FOR"."FOR_LOGV"'
      Size = 60
    end
    object CadastroENRO: TIBStringField
      FieldName = 'ENRO'
      Origin = '"CAD_FOR"."FOR_NUMV"'
      Size = 10
    end
    object CadastroEXCpl: TIBStringField
      FieldName = 'EXCpl'
      Origin = '"CAD_FOR"."FOR_COMV"'
      Size = 40
    end
    object CadastroECep: TIBStringField
      FieldName = 'ECep'
      Origin = '"CAD_FOR"."FOR_CEP"'
      Size = 9
    end
    object CadastroEXBairro: TIBStringField
      FieldName = 'EXBairro'
      Origin = '"CAD_FOR"."FOR_BAIV"'
      Size = 40
    end
    object CadastroECMun: TIBStringField
      FieldName = 'ECMun'
      Origin = '"CAD_FOR"."FOR_CMUV"'
      Size = 10
    end
    object CadastroEXMun: TIBStringField
      FieldName = 'EXMun'
      Origin = '"CAD_FOR"."FOR_CIDV"'
      Size = 40
    end
    object CadastroEUF: TIBStringField
      FieldName = 'EUF'
      Origin = '"CAD_FOR"."FOR_ESTV"'
      Size = 2
    end
    object CadastroRTLgr: TIBStringField
      FieldName = 'RTLgr'
      Origin = '"CAD_FOR"."FOR_TLOR"'
      Size = 15
    end
    object CadastroRXLgr: TIBStringField
      FieldName = 'RXLgr'
      Origin = '"CAD_FOR"."FOR_LORE"'
      Size = 60
    end
    object CadastroRNRO: TIBStringField
      FieldName = 'RNRO'
      Origin = '"CAD_FOR"."FOR_NUMR"'
      Size = 10
    end
    object CadastroRXCpl: TIBStringField
      FieldName = 'RXCpl'
      Origin = '"CAD_FOR"."FOR_COMR"'
      Size = 40
    end
    object CadastroRCep: TIBStringField
      FieldName = 'RCep'
      Origin = '"CAD_FOR"."FOR_CEPR"'
      Size = 9
    end
    object CadastroRXBairro: TIBStringField
      FieldName = 'RXBairro'
      Origin = '"CAD_FOR"."FOR_BAIR"'
      Size = 40
    end
    object CadastroRCMun: TIBStringField
      FieldName = 'RCMun'
      Origin = '"CAD_FOR"."FOR_CMUR"'
      Size = 10
    end
    object CadastroRXMun: TIBStringField
      FieldName = 'RXMun'
      Origin = '"CAD_FOR"."FOR_CIDR"'
      Size = 40
    end
    object CadastroRUF: TIBStringField
      FieldName = 'RUF'
      Origin = '"CAD_FOR"."FOR_ESTR"'
      Size = 2
    end
    object CadastroIDVendedor: TIntegerField
      FieldName = 'IDVendedor'
      Origin = '"CAD_USU"."USU_CUSU"'
    end
    object CadastroDEVendedor: TIBStringField
      FieldName = 'DEVendedor'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object CadastroIDRepresentante: TIntegerField
      FieldName = 'IDRepresentante'
      Origin = '"CAD_REP"."ID"'
    end
    object CadastroDERepresentante: TIBStringField
      FieldName = 'DERepresentante'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 60
    end
    object CadastroPrazo: TIBStringField
      FieldName = 'Prazo'
      Origin = '"CAD_FOR"."FOR_DPAG"'
      Size = 50
    end
    object CadastroIDTransportadora: TIntegerField
      FieldName = 'IDTransportadora'
      Origin = '"CAD_FOR"."FOR_CTRA"'
    end
    object CadastroDETransportadora: TIBStringField
      FieldName = 'DETransportadora'
      Origin = '"CAD_FOR"."FOR_DTRA"'
      Size = 60
    end
    object CadastroSTCadastro: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'STCadastro'
      ProviderFlags = []
      Size = 12
    end
    object CadastroInfoA: TIBStringField
      FieldName = 'InfoA'
      ProviderFlags = []
      Size = 512
    end
    object CadastroInfoC: TIBStringField
      FieldName = 'InfoC'
      ProviderFlags = []
      Size = 512
    end
    object CadastroC_CnpjCpf: TStringField
      DisplayLabel = 'Cnpj'
      FieldKind = fkCalculated
      FieldName = 'C_CnpjCpf'
      Calculated = True
    end
    object CadastroC_Fone: TStringField
      DisplayLabel = 'Fone'
      FieldKind = fkCalculated
      FieldName = 'C_Fone'
      Size = 30
      Calculated = True
    end
    object CadastroC_Celular: TStringField
      DisplayLabel = 'Celular'
      FieldKind = fkCalculated
      FieldName = 'C_Celular'
      Size = 300
      Calculated = True
    end
    object CadastroC_Endereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldKind = fkCalculated
      FieldName = 'C_Endereco'
      Size = 500
      Calculated = True
    end
    object CadastroC_InfoC: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_InfoC'
      Size = 600
      Calculated = True
    end
    object CadastroC_Email: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_Email'
      Size = 60
      Calculated = True
    end
  end
  object Produtos: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    OnCalcFields = ProdutosCalcFields
    DataSource = DTSCadastro
    SQL.Strings = (
      
        'SELECT ID,IDSCT,ARTIGO,SKU,CAST(DTCA AS DATE) AS DTCA,DECP||'#39' '#39'|' +
        '|COALESCE(DGCP,'#39#39') AS DESCRICAO,CDCF,DECF,UCOM,UCON,'
      '       VPRC_PAD,VPRC_COM_PAD,FPAIS,XPAIS,'
      '       EPE_QTDE,EPE_QTRL,DEST'
      'FROM   SP_CAD_PRO_PSQ('#39'9'#39',:ID,'#39'CP.IDCF'#39')')
    Left = 120
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Id'
        ParamType = ptUnknown
        Size = 4
      end>
    object ProdutosID: TIntegerField
      FieldName = 'ID'
      Origin = '"SP_CAD_PRO_PSQ"."ID"'
    end
    object ProdutosIDSCT: TSmallintField
      FieldName = 'IDSCT'
      Origin = '"SP_CAD_PRO_PSQ"."IDSCT"'
    end
    object ProdutosARTIGO: TIBStringField
      DisplayLabel = 'Artigo'
      FieldName = 'ARTIGO'
      Origin = '"SP_CAD_PRO_PSQ"."ARTIGO"'
      Size = 30
    end
    object ProdutosSKU: TIBStringField
      FieldName = 'SKU'
      Origin = '"SP_CAD_PRO_PSQ"."SKU"'
      Size = 30
    end
    object ProdutosDTCA: TDateField
      DisplayLabel = 'Cria'#231#227'o'
      FieldName = 'DTCA'
      ProviderFlags = []
    end
    object ProdutosUCOM: TIBStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'UCOM'
      Origin = '"SP_CAD_PRO_PSQ"."UCOM"'
      Size = 10
    end
    object ProdutosVPRC_PAD: TFloatField
      DisplayLabel = 'Venda'
      FieldName = 'VPRC_PAD'
      Origin = '"SP_CAD_PRO_PSQ"."VPRC_PAD"'
      DisplayFormat = ',##,0.00;-,##,0.00'
    end
    object ProdutosEPE_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'EPE_QTDE'
      Origin = '"SP_CAD_PRO_PSQ"."EPE_QTDE"'
      DisplayFormat = ',##,0.00;-,##,0.00'
      Precision = 9
      Size = 2
    end
    object ProdutosEPE_QTRL: TIntegerField
      DisplayLabel = 'Rolo'
      FieldName = 'EPE_QTRL'
      Origin = '"SP_CAD_PRO_PSQ"."EPE_QTRL"'
      DisplayFormat = '0'
    end
    object ProdutosCDCF: TIBStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'CDCF'
      Origin = '"SP_CAD_PRO_PSQ"."CDCF"'
    end
    object ProdutosDECF: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'DECF'
      Origin = '"SP_CAD_PRO_PSQ"."DECF"'
      Size = 60
    end
    object ProdutosFPAIS: TIBStringField
      DisplayLabel = 'Fabrica'#231#227'o'
      FieldName = 'FPAIS'
      Origin = '"SP_CAD_PRO_PSQ"."FPAIS"'
    end
    object ProdutosXPAIS: TIBStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'XPAIS'
      Origin = '"SP_CAD_PRO_PSQ"."XPAIS"'
      Size = 60
    end
    object ProdutosC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
    object ProdutosUCON: TIBStringField
      DisplayLabel = 'Conte'#250'do'
      FieldName = 'UCON'
      Origin = '"SP_CAD_PRO_PSQ"."UCON"'
      Size = 40
    end
    object ProdutosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 181
    end
    object ProdutosVPRC_COM_PAD: TFloatField
      DisplayLabel = 'Compra'
      FieldName = 'VPRC_COM_PAD'
      Origin = '"SP_CAD_PRO_PSQ"."VPRC_COM_PAD"'
      DisplayFormat = ',##,0.00;-,##,0.00'
    end
    object ProdutosDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'DEST'
      Origin = '"SP_CAD_PRO_PSQ"."DEST"'
      Size = 60
    end
  end
  object DTSProdutos: TDataSource
    DataSet = Produtos
    Left = 152
    Top = 280
  end
end
