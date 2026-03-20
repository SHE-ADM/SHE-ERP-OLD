inherited frmctr_nfe: Tfrmctr_nfe
  Left = 252
  Top = 56
  HelpType = htKeyword
  HelpKeyword = '3'
  Caption = 'Controle de Notas Fiscais'
  ClientHeight = 668
  ClientWidth = 1100
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnldir: TPanel [0]
    Left = 1100
    Height = 574
  end
  inherited SBMenu: TSpeedBar
    Width = 1100
    inherited siSAIR: TSpeedItem [6]
      Left = 675
    end
    inherited siREL: TSpeedItem [7]
      Left = 507
    end
    object SICON: TSpeedItem
      BtnCaption = 'Consultar'
      Cursor = crHandPoint
      Hint = 'Consulta no Sefaz'
      ImageIndex = 4
      Spacing = 1
      Left = 171
      Top = 3
      Visible = True
      OnClick = siCONClick
      SectionName = 'Movimento'
    end
    object SICCE: TSpeedItem
      BtnCaption = 'CCe'
      Cursor = crHandPoint
      Hint = 'Carta de Corre'#231#227'o'
      ImageIndex = 5
      Spacing = 1
      Left = 255
      Top = 3
      Visible = True
      OnClick = siCCEClick
      SectionName = 'Movimento'
    end
    object SICNF: TSpeedItem
      BtnCaption = 'Cancelar'
      Cursor = crHandPoint
      Hint = 'Cancelar Nota Fiscal'
      ImageIndex = 6
      Spacing = 1
      Left = 339
      Top = 3
      Visible = True
      OnClick = siCNFClick
      SectionName = 'Movimento'
    end
    object SIVIS: TSpeedItem
      BtnCaption = 'Visualizar'
      Cursor = crHandPoint
      Hint = 'Visualizar Danfe'
      ImageIndex = 7
      Spacing = 1
      Left = 423
      Top = 3
      Visible = True
      OnClick = siVISClick
      SectionName = 'Movimento'
    end
    object SICLO: TSpeedItem
      BtnCaption = 'Clone'
      Cursor = crHandPoint
      Hint = 'Cria uma c'#243'pia exata da nota fiscal'
      ImageIndex = 8
      Spacing = 1
      Left = 591
      Top = 3
      Visible = True
      OnClick = siTRIClick
      SectionName = 'Movimento'
    end
  end
  inherited sbMSG: TStatusBar [2]
    Top = 649
    Width = 1100
  end
  inherited pnldbg: TPanel
    Width = 1100
    Height = 574
    inherited gbDET: TGroupBox [0]
      Width = 1100
      Height = 331
      inherited SBEdicao: TSpeedBar
        Width = 0
        Height = 313
        Visible = False
      end
      inherited DBGConsulta: TdxDBGrid
        Left = 2
        Width = 1096
        Height = 313
        HeaderMinRowCount = 2
        KeyField = 'ID'
        ShowSummaryFooter = True
        SummaryGroups = <
          item
            DefaultGroup = True
            SummaryItems = <
              item
                ColumnName = 'dbgConsultaNFE_CDNF'
                SummaryField = 'ID'
                SummaryFormat = '0'
                SummaryType = cstCount
              end
              item
                ColumnName = 'dbgConsultaNFE_VPROD'
                SummaryField = 'NFE_VPROD'
                SummaryFormat = '#,0.00'
                SummaryType = cstSum
              end
              item
                ColumnName = 'dbgConsultaNFE_VICMS'
                SummaryField = 'NFE_VICMS'
                SummaryFormat = '#,0.00'
                SummaryType = cstSum
              end
              item
                ColumnName = 'dbgConsultaNFE_VIPI'
                SummaryField = 'NFE_VIPI'
                SummaryFormat = '#,0.00'
                SummaryType = cstSum
              end
              item
                ColumnName = 'dbgConsultaNFE_VPIS'
                SummaryField = 'NFE_VPIS'
                SummaryFormat = '#,0.00'
                SummaryType = cstSum
              end
              item
                ColumnName = 'dbgConsultaNFE_VCOFINS'
                SummaryField = 'NFE_VCOFINS'
                SummaryFormat = '#,0.00'
                SummaryType = cstSum
              end
              item
                ColumnName = 'dbgConsultaNFE_VNF'
                SummaryField = 'NFE_VNF'
                SummaryFormat = '#,0.00'
                SummaryType = cstSum
              end>
            Name = 'dbgConsultaSummaryGroup1'
          end>
        Filter.Active = True
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
        OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
        ShowRowFooter = True
        OnCustomDrawCell = dbgConsultaCustomDrawCell
        object dbgConsultaNFE_CDNF: TdxDBGridMaskColumn
          DisableEditor = True
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_CDNF'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object dbgConsultaNFE_DEMI: TdxDBGridDateColumn
          DisableEditor = True
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_DEMI'
          SummaryGroupName = 'dbgConsultaSummaryGroup1'
        end
        object dbgConsultaNFE_DFAV: TdxDBGridMaskColumn
          DisableEditor = True
          Width = 391
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_DFAV'
          SummaryGroupName = 'dbgConsultaSummaryGroup1'
        end
        object dbgConsultaNFE_CNAT: TdxDBGridMaskColumn
          DisableEditor = True
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_CNAT'
          SummaryGroupName = 'dbgConsultaSummaryGroup1'
        end
        object dbgConsultaNFE_VPROD: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_VPROD'
          SummaryFooterType = cstSum
          SummaryFooterField = 'NFE_VPROD'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaNFE_VICMS: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_VICMS'
          SummaryFooterType = cstSum
          SummaryFooterField = 'NFE_VICMS'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaNFE_VIPI: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taRightJustify
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_VIPI'
          SummaryFooterType = cstSum
          SummaryFooterField = 'NFE_VIPI'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaNFE_VPIS: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taRightJustify
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_VPIS'
          SummaryFooterType = cstSum
          SummaryFooterField = 'NFE_VPIS'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaNFE_VCOFINS: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taRightJustify
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_VCOFINS'
          SummaryFooterType = cstSum
          SummaryFooterField = 'NFE_VCOFINS'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaNFE_VNF: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_VNF'
          SummaryFooterType = cstSum
          SummaryFooterField = 'NFE_VNF'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaNFE_STA: TdxDBGridMaskColumn
          DisableEditor = True
          Visible = False
          Width = 47
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_STA'
        end
        object dbgConsultaNFE_DVEN: TdxDBGridMaskColumn
          DisableEditor = True
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_DVEN'
        end
        object dbgConsultaNFE_DREP: TdxDBGridMaskColumn
          DisableEditor = True
          Width = 150
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_DREP'
        end
        object DBGConsultaIDEP: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'IDEP'
        end
        object DBGConsultaDEEP: TdxDBGridMaskColumn
          Width = 150
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DEEP'
        end
      end
    end
    inherited pnlbot: TPanel [1]
      Top = 331
      Width = 1100
      Height = 243
      Visible = True
      object pcmain: TdxPageControl
        Left = 0
        Top = 0
        Width = 1100
        Height = 243
        ActivePage = tspro
        Align = alClient
        HideButtons = False
        HotTrack = False
        MultiLine = False
        OwnerDraw = False
        RaggedRight = False
        ScrollOpposite = False
        TabHeight = 0
        TabOrder = 0
        TabPosition = dxtpTop
        TabWidth = 0
        object tspro: TdxTabSheet
          Caption = 'Produtos'
          object dbgite: TdxDBGrid
            Left = 0
            Top = 0
            Width = 1100
            Height = 219
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderMinRowCount = 2
            HeaderPanelRowCount = 1
            KeyField = 'ID'
            ShowSummaryFooter = True
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            Color = 14789952
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            OnDblClick = DBGConsultaDblClick
            OnKeyDown = DBGConsultaKeyDown
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            DataSource = dtsnfe_ite
            Filter.Criteria = {00000000}
            GridLineColor = clSilver
            HideSelectionColor = 16382457
            HideSelectionTextColor = 14789952
            HighlightColor = 16382457
            HighlightTextColor = 14789952
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoRowSelect, edgoUseBitmap]
            OnBackgroundDrawEvent = DBGConsultaBackgroundDrawEvent
            object dbgiteNFE_ITEMPED: TdxDBGridMaskColumn
              Width = 40
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_ITEMPED'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
            end
            object dbgiteNFE_CPROD: TdxDBGridMaskColumn
              Width = 110
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_CPROD'
            end
            object dbgiteNFE_XPROD: TdxDBGridMaskColumn
              Width = 377
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_XPROD'
            end
            object dbgiteNFE_UCOM: TdxDBGridMaskColumn
              Width = 24
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_UCOM'
            end
            object dbgiteNFE_QCOM: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 70
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_QCOM'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_QCOM'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteNFE_VUNCOM: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VUNCOM'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'NFE_VUNCOM'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteNFE_VPROD: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 75
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VPROD'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VPROD'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteNFE_VDESC: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VDESC'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VDESC'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteNFE_PIPI: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 40
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_PIPI'
            end
            object dbgiteNFE_VIPI: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VIPI'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VIPI'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteNFE_VPIS: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VPIS'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VPIS'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteNFE_VCOFINS: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VCOFINS'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VCOFINS'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteNFE_VNF: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 75
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VNF'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VNF'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteNFE_CFOP: TdxDBGridMaskColumn
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_CFOP'
            end
            object dbgiteNFE_NCM: TdxDBGridMaskColumn
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_NCM'
            end
          end
        end
        object tsobs: TdxTabSheet
          Caption = 'Informa'#231#245'es Adicionais'
          object dxDBMemo1: TdxDBMemo
            Left = 0
            Top = 0
            Width = 1016
            Align = alClient
            Color = 14789952
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsFlat
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 0
            DataField = 'NFE_OBSE'
            DataSource = DTSCadastro
            ReadOnly = True
            Height = 217
            StoredValues = 64
          end
        end
      end
    end
  end
  inherited Consulta: TIBQuery
    BufferChunks = 2500
    Left = 880
    Top = 48
  end
  inherited Cadastro: TIBDataSet
    AfterOpen = CadastroAfterOpen
    BufferChunks = 2500
    DeleteSQL.Strings = (
      'delete from NFE_CAB'
      'where'
      '  ID = :OLD_ID')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  IDEP,'
      '  NFE_CDNF,'
      '  NFE_AAMM,'
      '  NFE_DEMI,'
      '  NFE_DSAI,'
      '  NFE_HRSE,'
      '  NFE_DCAN,'
      '  NFE_HCAN,'
      '  NFE_CVEN,'
      '  NFE_DVEN,'
      '  NFE_CREP,'
      '  NFE_DREP,'
      '  NFE_CFAV,'
      '  NFE_DFAV,'
      '  NFE_CTRA,'
      '  NFE_DTRA,'
      '  NFE_CNAT,'
      '  NFE_INDPAG,'
      '  NFE_TPNF,'
      '  NFE_NFREF,'
      '  NFE_REFNFE,'
      '  NFE_CUFREF,'
      '  NFE_AAMMREF,'
      '  NFE_CNPJREF,'
      '  NFE_MODREF,'
      '  NFE_SERIEREF,'
      '  NFE_NNFREF,'
      '  NFE_TPEMIS,'
      '  NFE_FINNFE,'
      '  NFE_PROCEMI,'
      '  NFE_VERPROC,'
      '  NFE_DHCONT,'
      '  NFE_XJUST,'
      '  NFE_OBSE,'
      '  NFE_ISUF,'
      '  NFE_QCOM,'
      '  NFE_VBC,'
      '  NFE_VICMS,'
      '  NFE_VBCST,'
      '  NFE_VST,'
      '  NFE_VPROD,'
      '  NFE_VFRETE,'
      '  NFE_VSEG,'
      '  NFE_VDESC,'
      '  NFE_VII,'
      '  NFE_VIPI,'
      '  NFE_VPIS,'
      '  NFE_VCOFINS,'
      '  NFE_VOUTRO,'
      '  NFE_VNF,'
      '  NFE_VSERVISSQN,'
      '  NFE_VBCISSQN,'
      '  NFE_VISS,'
      '  NFE_VPISISSQN,'
      '  NFE_VCOFINSISSQN,'
      '  NFE_VRETPIS,'
      '  NFE_VRETCOFINS,'
      '  NFE_VRETCSLL,'
      '  NFE_VBCIRRF,'
      '  NFE_VIRRF,'
      '  NFE_VBCRETPREV,'
      '  NFE_VRETPREV,'
      '  NFE_CHAV,'
      '  NFE_PROT,'
      '  NFE_PROC,'
      '  NFE_STA,'
      '  NFE_CONC,'
      '  NFE_CLFO,'
      '  NFE_ESTO'
      'from NFE_CAB '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT EP.FANTASIA AS DEEP,PK.*'
      'FROM   NFE_CAB     AS PK'
      'JOIN   TAB_PAR_SIS AS EP ON (EP.ID = PK.IDEP)')
    ModifySQL.Strings = (
      'update NFE_CAB'
      'set'
      '  ID = :ID,'
      'IDEP = :IDEP,'
      '  NFE_AAMM = :NFE_AAMM,'
      '  NFE_AAMMREF = :NFE_AAMMREF,'
      '  NFE_CDNF = :NFE_CDNF,'
      '  NFE_CFAV = :NFE_CFAV,'
      '  NFE_CHAV = :NFE_CHAV,'
      '  NFE_CLFO = :NFE_CLFO,'
      '  NFE_CNAT = :NFE_CNAT,'
      '  NFE_CNPJREF = :NFE_CNPJREF,'
      '  NFE_CONC = :NFE_CONC,'
      '  NFE_CREP = :NFE_CREP,'
      '  NFE_CTRA = :NFE_CTRA,'
      '  NFE_CUFREF = :NFE_CUFREF,'
      '  NFE_CVEN = :NFE_CVEN,'
      '  NFE_DCAN = :NFE_DCAN,'
      '  NFE_DEMI = :NFE_DEMI,'
      '  NFE_DFAV = :NFE_DFAV,'
      '  NFE_DHCONT = :NFE_DHCONT,'
      '  NFE_DREP = :NFE_DREP,'
      '  NFE_DSAI = :NFE_DSAI,'
      '  NFE_DTRA = :NFE_DTRA,'
      '  NFE_DVEN = :NFE_DVEN,'
      '  NFE_ESTO = :NFE_ESTO,'
      '  NFE_FINNFE = :NFE_FINNFE,'
      '  NFE_HCAN = :NFE_HCAN,'
      '  NFE_HRSE = :NFE_HRSE,'
      '  NFE_INDPAG = :NFE_INDPAG,'
      '  NFE_ISUF = :NFE_ISUF,'
      '  NFE_MODREF = :NFE_MODREF,'
      '  NFE_NFREF = :NFE_NFREF,'
      '  NFE_NNFREF = :NFE_NNFREF,'
      '  NFE_OBSE = :NFE_OBSE,'
      '  NFE_PROC = :NFE_PROC,'
      '  NFE_PROCEMI = :NFE_PROCEMI,'
      '  NFE_PROT = :NFE_PROT,'
      '  NFE_QCOM = :NFE_QCOM,'
      '  NFE_REFNFE = :NFE_REFNFE,'
      '  NFE_SERIEREF = :NFE_SERIEREF,'
      '  NFE_STA = :NFE_STA,'
      '  NFE_TPEMIS = :NFE_TPEMIS,'
      '  NFE_TPNF = :NFE_TPNF,'
      '  NFE_VBC = :NFE_VBC,'
      '  NFE_VBCIRRF = :NFE_VBCIRRF,'
      '  NFE_VBCISSQN = :NFE_VBCISSQN,'
      '  NFE_VBCRETPREV = :NFE_VBCRETPREV,'
      '  NFE_VBCST = :NFE_VBCST,'
      '  NFE_VCOFINS = :NFE_VCOFINS,'
      '  NFE_VCOFINSISSQN = :NFE_VCOFINSISSQN,'
      '  NFE_VDESC = :NFE_VDESC,'
      '  NFE_VERPROC = :NFE_VERPROC,'
      '  NFE_VFRETE = :NFE_VFRETE,'
      '  NFE_VICMS = :NFE_VICMS,'
      '  NFE_VII = :NFE_VII,'
      '  NFE_VIPI = :NFE_VIPI,'
      '  NFE_VIRRF = :NFE_VIRRF,'
      '  NFE_VISS = :NFE_VISS,'
      '  NFE_VNF = :NFE_VNF,'
      '  NFE_VOUTRO = :NFE_VOUTRO,'
      '  NFE_VPIS = :NFE_VPIS,'
      '  NFE_VPISISSQN = :NFE_VPISISSQN,'
      '  NFE_VPROD = :NFE_VPROD,'
      '  NFE_VRETCOFINS = :NFE_VRETCOFINS,'
      '  NFE_VRETCSLL = :NFE_VRETCSLL,'
      '  NFE_VRETPIS = :NFE_VRETPIS,'
      '  NFE_VRETPREV = :NFE_VRETPREV,'
      '  NFE_VSEG = :NFE_VSEG,'
      '  NFE_VSERVISSQN = :NFE_VSERVISSQN,'
      '  NFE_VST = :NFE_VST,'
      '  NFE_XJUST = :NFE_XJUST'
      'where'
      '  ID = :OLD_ID')
    Left = 816
    Top = 48
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_CAB"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadastroIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"NFE_CAB"."IDEP"'
    end
    object CadastroDEEP: TIBStringField
      DisplayLabel = 'Emitente'
      FieldName = 'DEEP'
      Origin = '"TAB_PAR_SIS"."FANTASIA"'
      Size = 60
    end
    object cadastroNFE_CDNF: TIntegerField
      DisplayLabel = 'NF'
      FieldName = 'NFE_CDNF'
      Origin = '"NFE_CAB"."NFE_CDNF"'
    end
    object cadastroNFE_AAMM: TIBStringField
      FieldName = 'NFE_AAMM'
      Origin = '"NFE_CAB"."NFE_AAMM"'
      Size = 4
    end
    object cadastroNFE_DEMI: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'NFE_DEMI'
      Origin = '"NFE_CAB"."NFE_DEMI"'
    end
    object cadastroNFE_DSAI: TDateField
      FieldName = 'NFE_DSAI'
      Origin = '"NFE_CAB"."NFE_DSAI"'
    end
    object cadastroNFE_HRSE: TTimeField
      FieldName = 'NFE_HRSE'
      Origin = '"NFE_CAB"."NFE_HRSE"'
    end
    object cadastroNFE_CFAV: TIntegerField
      FieldName = 'NFE_CFAV'
      Origin = '"NFE_CAB"."NFE_CFAV"'
    end
    object cadastroNFE_CNAT: TIBStringField
      DisplayLabel = 'C.F.O.P.'
      FieldName = 'NFE_CNAT'
      Origin = '"NFE_CAB"."NFE_CNAT"'
      Size = 10
    end
    object cadastroNFE_INDPAG: TSmallintField
      FieldName = 'NFE_INDPAG'
      Origin = '"NFE_CAB"."NFE_INDPAG"'
    end
    object cadastroNFE_TPNF: TSmallintField
      FieldName = 'NFE_TPNF'
      Origin = '"NFE_CAB"."NFE_TPNF"'
    end
    object cadastroNFE_NFREF: TSmallintField
      FieldName = 'NFE_NFREF'
      Origin = '"NFE_CAB"."NFE_NFREF"'
    end
    object cadastroNFE_REFNFE: TIBStringField
      FieldName = 'NFE_REFNFE'
      Origin = '"NFE_CAB"."NFE_REFNFE"'
      Size = 44
    end
    object cadastroNFE_CUFREF: TIBStringField
      FieldName = 'NFE_CUFREF'
      Origin = '"NFE_CAB"."NFE_CUFREF"'
      Size = 2
    end
    object cadastroNFE_AAMMREF: TIBStringField
      FieldName = 'NFE_AAMMREF'
      Origin = '"NFE_CAB"."NFE_AAMMREF"'
      Size = 4
    end
    object cadastroNFE_CNPJREF: TIBStringField
      FieldName = 'NFE_CNPJREF'
      Origin = '"NFE_CAB"."NFE_CNPJREF"'
      Size = 14
    end
    object cadastroNFE_MODREF: TIBStringField
      FieldName = 'NFE_MODREF'
      Origin = '"NFE_CAB"."NFE_MODREF"'
      Size = 2
    end
    object cadastroNFE_SERIEREF: TIBStringField
      FieldName = 'NFE_SERIEREF'
      Origin = '"NFE_CAB"."NFE_SERIEREF"'
      Size = 3
    end
    object cadastroNFE_NNFREF: TIntegerField
      FieldName = 'NFE_NNFREF'
      Origin = '"NFE_CAB"."NFE_NNFREF"'
    end
    object cadastroNFE_TPEMIS: TSmallintField
      FieldName = 'NFE_TPEMIS'
      Origin = '"NFE_CAB"."NFE_TPEMIS"'
    end
    object cadastroNFE_FINNFE: TSmallintField
      FieldName = 'NFE_FINNFE'
      Origin = '"NFE_CAB"."NFE_FINNFE"'
    end
    object cadastroNFE_PROCEMI: TIBStringField
      FieldName = 'NFE_PROCEMI'
      Origin = '"NFE_CAB"."NFE_PROCEMI"'
      FixedChar = True
      Size = 1
    end
    object cadastroNFE_VERPROC: TIBStringField
      FieldName = 'NFE_VERPROC'
      Origin = '"NFE_CAB"."NFE_VERPROC"'
    end
    object cadastroNFE_DHCONT: TDateTimeField
      FieldName = 'NFE_DHCONT'
      Origin = '"NFE_CAB"."NFE_DHCONT"'
    end
    object cadastroNFE_XJUST: TMemoField
      FieldName = 'NFE_XJUST'
      Origin = '"NFE_CAB"."NFE_XJUST"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroNFE_ISUF: TIBStringField
      FieldName = 'NFE_ISUF'
      Origin = '"NFE_CAB"."NFE_ISUF"'
      Size = 10
    end
    object cadastroNFE_VBC: TIBBCDField
      FieldName = 'NFE_VBC'
      Origin = '"NFE_CAB"."NFE_VBC"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VICMS: TIBBCDField
      DisplayLabel = 'Valor I.C.M.S.'
      FieldName = 'NFE_VICMS'
      Origin = '"NFE_CAB"."NFE_VICMS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VBCST: TIBBCDField
      FieldName = 'NFE_VBCST'
      Origin = '"NFE_CAB"."NFE_VBCST"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VST: TIBBCDField
      FieldName = 'NFE_VST'
      Origin = '"NFE_CAB"."NFE_VST"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VPROD: TIBBCDField
      DisplayLabel = 'Total Produtos'
      FieldName = 'NFE_VPROD'
      Origin = '"NFE_CAB"."NFE_VPROD"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VFRETE: TIBBCDField
      FieldName = 'NFE_VFRETE'
      Origin = '"NFE_CAB"."NFE_VFRETE"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VSEG: TIBBCDField
      FieldName = 'NFE_VSEG'
      Origin = '"NFE_CAB"."NFE_VSEG"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VDESC: TIBBCDField
      FieldName = 'NFE_VDESC'
      Origin = '"NFE_CAB"."NFE_VDESC"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VII: TIBBCDField
      FieldName = 'NFE_VII'
      Origin = '"NFE_CAB"."NFE_VII"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VIPI: TIBBCDField
      DisplayLabel = 'Valor Ipi'
      FieldName = 'NFE_VIPI'
      Origin = '"NFE_CAB"."NFE_VIPI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VPIS: TIBBCDField
      DisplayLabel = 'Valor Pis'
      FieldName = 'NFE_VPIS'
      Origin = '"NFE_CAB"."NFE_VPIS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VCOFINS: TIBBCDField
      DisplayLabel = 'Valor Cofins'
      FieldName = 'NFE_VCOFINS'
      Origin = '"NFE_CAB"."NFE_VCOFINS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VOUTRO: TIBBCDField
      FieldName = 'NFE_VOUTRO'
      Origin = '"NFE_CAB"."NFE_VOUTRO"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VNF: TIBBCDField
      DisplayLabel = 'Total NF'
      FieldName = 'NFE_VNF'
      Origin = '"NFE_CAB"."NFE_VNF"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VSERVISSQN: TIBBCDField
      FieldName = 'NFE_VSERVISSQN'
      Origin = '"NFE_CAB"."NFE_VSERVISSQN"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VBCISSQN: TIBBCDField
      FieldName = 'NFE_VBCISSQN'
      Origin = '"NFE_CAB"."NFE_VBCISSQN"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VISS: TIBBCDField
      FieldName = 'NFE_VISS'
      Origin = '"NFE_CAB"."NFE_VISS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VPISISSQN: TIBBCDField
      FieldName = 'NFE_VPISISSQN'
      Origin = '"NFE_CAB"."NFE_VPISISSQN"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VCOFINSISSQN: TIBBCDField
      FieldName = 'NFE_VCOFINSISSQN'
      Origin = '"NFE_CAB"."NFE_VCOFINSISSQN"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VRETPIS: TIBBCDField
      FieldName = 'NFE_VRETPIS'
      Origin = '"NFE_CAB"."NFE_VRETPIS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VRETCOFINS: TIBBCDField
      FieldName = 'NFE_VRETCOFINS'
      Origin = '"NFE_CAB"."NFE_VRETCOFINS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VRETCSLL: TIBBCDField
      FieldName = 'NFE_VRETCSLL'
      Origin = '"NFE_CAB"."NFE_VRETCSLL"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VBCIRRF: TIBBCDField
      FieldName = 'NFE_VBCIRRF'
      Origin = '"NFE_CAB"."NFE_VBCIRRF"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VIRRF: TIBBCDField
      FieldName = 'NFE_VIRRF'
      Origin = '"NFE_CAB"."NFE_VIRRF"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VBCRETPREV: TIBBCDField
      FieldName = 'NFE_VBCRETPREV'
      Origin = '"NFE_CAB"."NFE_VBCRETPREV"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VRETPREV: TIBBCDField
      FieldName = 'NFE_VRETPREV'
      Origin = '"NFE_CAB"."NFE_VRETPREV"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_CHAV: TIBStringField
      DisplayLabel = 'Chave de Acesso'
      FieldName = 'NFE_CHAV'
      Origin = '"NFE_CAB"."NFE_CHAV"'
      Size = 44
    end
    object cadastroNFE_PROT: TIBStringField
      DisplayLabel = 'Protocolo de Autoriza'#231#227'o'
      FieldName = 'NFE_PROT'
      Origin = '"NFE_CAB"."NFE_PROT"'
      Size = 30
    end
    object cadastroNFE_PROC: TIBStringField
      DisplayLabel = 'Protocolo de Cancelamento'
      FieldName = 'NFE_PROC'
      Origin = '"NFE_CAB"."NFE_PROC"'
      Size = 30
    end
    object cadastroNFE_STA: TIBStringField
      FieldName = 'NFE_STA'
      Origin = '"NFE_CAB"."NFE_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroNFE_DFAV: TIBStringField
      DisplayLabel = 'Favorecido'
      FieldName = 'NFE_DFAV'
      Origin = '"NFE_CAB"."NFE_DFAV"'
      Size = 60
    end
    object cadastroNFE_OBSE: TMemoField
      FieldName = 'NFE_OBSE'
      Origin = '"NFE_CAB"."NFE_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroNFE_DCAN: TDateField
      FieldName = 'NFE_DCAN'
      Origin = '"NFE_CAB"."NFE_DCAN"'
    end
    object cadastroNFE_HCAN: TTimeField
      FieldName = 'NFE_HCAN'
      Origin = '"NFE_CAB"."NFE_HCAN"'
    end
    object cadastroNFE_CVEN: TIntegerField
      FieldName = 'NFE_CVEN'
      Origin = '"NFE_CAB"."NFE_CVEN"'
    end
    object cadastroNFE_DVEN: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NFE_DVEN'
      Origin = '"NFE_CAB"."NFE_DVEN"'
      Size = 30
    end
    object cadastroNFE_CREP: TIntegerField
      FieldName = 'NFE_CREP'
      Origin = '"NFE_CAB"."NFE_CREP"'
    end
    object cadastroNFE_DREP: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'NFE_DREP'
      Origin = '"NFE_CAB"."NFE_DREP"'
      Size = 40
    end
    object cadastroNFE_CTRA: TIntegerField
      FieldName = 'NFE_CTRA'
      Origin = '"NFE_CAB"."NFE_CTRA"'
    end
    object cadastroNFE_DTRA: TIBStringField
      FieldName = 'NFE_DTRA'
      Origin = '"NFE_CAB"."NFE_DTRA"'
      Size = 40
    end
    object cadastroNFE_QCOM: TIBBCDField
      FieldName = 'NFE_QCOM'
      Origin = '"NFE_CAB"."NFE_QCOM"'
      Precision = 18
      Size = 4
    end
    object cadastroNFE_CONC: TSmallintField
      FieldName = 'NFE_CONC'
      Origin = '"NFE_CAB"."NFE_CONC"'
    end
    object cadastroNFE_CLFO: TIBStringField
      FieldName = 'NFE_CLFO'
      Origin = '"NFE_CAB"."NFE_CLFO"'
      FixedChar = True
      Size = 1
    end
    object cadastroNFE_ESTO: TIBStringField
      FieldName = 'NFE_ESTO'
      Origin = '"NFE_CAB"."NFE_ESTO"'
      FixedChar = True
      Size = 1
    end
    object CadastroNFE_INDFINAL: TSmallintField
      FieldName = 'NFE_INDFINAL'
      Origin = '"NFE_CAB"."NFE_INDFINAL"'
    end
    object CadastroNFE_VTOTTRIB: TIBBCDField
      FieldName = 'NFE_VTOTTRIB'
      Origin = '"NFE_CAB"."NFE_VTOTTRIB"'
      Precision = 18
      Size = 2
    end
  end
  inherited DTSCadastro: TDataSource
    Left = 848
    Top = 48
  end
  inherited ILMenu: TImageList
    Bitmap = {
      494C010109000E00040030003000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C0000000C000000001002000000000000040
      0200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFFFF00FEFFFE00FEFFFE00FEFFFE00FEFEFF00FEFEFF00FEFF
      FF00FFFFFE00000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00000000000000000000000000FAFAFA00F6F6F600F8F8
      F800F9F9F9000000000000000000FEFEFE00FDFDFD00FDFDFD00FEFEFE00FEFE
      FE00000000000000000000000000FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FDFCFD00FBFBFD00FCFCFD00FCFBFB00FDFDFA00FCFEFB00F9FC
      FE00FEFEFC00FEFEFE00FEFEFE00FDFDFD00F9F9F900F9F9F900F8F8F800F5F5
      F500F4F4F400F5F5F500E5E5E500D6D6D600C9C9C900BFBFBF00BFBFBF00C1C1
      C100C1C1C100D6D6D600E4E4E400F8F8F800F3F3F300F6F6F600F8F8F800F9F9
      F900FAFAFA00FBFBFB0000000000FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFF00FEFE
      FE0000000000FEFFFD00FEFEFE0000000000FEFEFE00FFFFFD00FEFEFE000000
      0000FDFEFF00E8F2FA008EC1EE0077B4EA0068A8E6007BBCE800C7E4F600EEF8
      FA00F4F1E800C1C1C100B7B8B600B2B3B400ACACAD00ABABAB00AAAAAA00A5A5
      A500A3A3A300A7A7A700AFAFAF00B2B2B200B2B2B200B0B0B000B0B0B000B2B2
      B200B4B4B400AEAEAE00AFAFAF00B8B8B800A2A2A200A7A7A700AAAAAA00ABAB
      AB00AEAEAE00B2B2B200B8B8B800C9C9C9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFEFE00FFFF
      FD00D8E9F600FFFFFA00FBFBFA0000000000FAFCFB00FAFBFB00FFFFFE009ED0
      ED0055AAE4000E86D8000079D800007AD900007CDA000078DB000077D5001C8F
      E30065A8DC00D5C2B800B7B1B000A8A9AA00A6A5A400A6A6A600A4A4A400A3A3
      A300A6A6A600A5A5A500A4A4A400A4A4A400A5A5A500A4A4A4009F9F9F009F9F
      9F00A0A0A000A4A4A400A3A3A300A3A3A300A2A2A200A4A4A400A7A7A700A5A5
      A500A8A8A800ABABAB00B1B1B100BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFEFD00FFFF
      FB0047A8E200BFE2EE00FFFFFD0000000000F6FBFF00FFFFF400C8E5F200007C
      E100007DD8000084DE000187DC000087DD000087DC000087DC000083DF00007F
      E000007CD50057A1D500E8E6D800DBCFD000BFC1C200BFBEBE00C4C4C4009191
      9100979797009696960099999900979797009292920095959500A7A7A700A5A5
      A500A2A2A2009292920096969600979797009999990095959500B5B5B500C3C3
      C300C7C7C700CBCBCB00D7D7D700E0E0E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFC00FFFF
      FE002A89DE00007FD800248CDE00FFFFFC003D9AD7000078D3000286E2000086
      DD000087DB000086DD000087DC000087DD000186DC000385DE003A96E300A1D2
      EF00FFFFF60000000000E1F4FE0095C9ED00FFFFFC0000000000F2F2F2007C7C
      7C007C7C7C007C7C7C008383830099999900A3A3A300ADADAD00C0C0C000C4C4
      C400C4C4C400BFBFBF0099999900787878007C7C7C0077777700828282000000
      000000000000FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFE00E1F6
      F6001987E5000686DE000078DA0054A4E000007BDF000585DF000186DD000087
      DD000087DD000086DB000087DD000087DB00007CDB00007BD600F8FBFA00FFFF
      FE00FDFEF800FBFCFC00FFFFFD00FFFFFE00FCFFFF0000000000E9E9E9006E6E
      6E006D6D6D006C6C6C007171710098989800A0A0A000ABABAB00C0C0C000C4C4
      C400C4C4C400BABABA0083838300696969006E6E6E006A6A6A006C6C6C000000
      0000FDFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C8E3
      F0000E85DC000086DF000186DA000083DC000088DB000086DA000386DD000085
      DB000084DC000087DF000083DC000078DD0040A1DA00F0F5F800FFFFFE00FFFE
      FE00FCFFFE00FFFEFF00F9FAF900FAFBFB00FBFBFB00FDFDFD00F2F2F2005C5C
      5C005F5F5F005F5F5F006161610092929200A2A2A200ADADAD00C1C1C100C4C4
      C400C4C4C400B7B7B700656565005D5D5D005E5E5E005858580075757500FCFC
      FC00FBFBFB00FBFBFB00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B1D6
      F3000487DE000089DF00008AE000008ADF000089DF00008ADF00008AE0000089
      DF00028BDE00088AE3000787DE0072BBE7000000000000000000FDFCFC000000
      000000000000DDDDDD00C4C3C400C7C7C700C6C6C600C6C6C600CBCBCB00C7C7
      C700C9CAC900C9C9C900CACACA00C9C9C900C9C9C900C9C9C900C7C7C700C7C7
      C700C7C7C700C9C9C900C7C7C600C9C9C900CACACA00CACACA00CCCCCC00C7C7
      C700C5C5C500C6C6C600D5D5D500FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFE0086C9
      F6000090E0000199E5000199E6000199E6000199E6000199E6000398E5000097
      E600008CE5000096DF00FFFFFE0000000000FEFEFE00FFFEFE00000000000000
      000000000000C6C7C600CDCDCD00C9C7C900D6D7D400DADBD800D9D9D800DADA
      DA00DAD9DB00DAD9DB00DAD9DB00DADADA00DAD9DB00DAD9DB00DADADB00DAD9
      DB00DAD9DB00DAD9DB00DAD9DB00DAD9DB00DAD9DB00DAD9DB00DADADB00D4D3
      D500D3D2D300CDCDCD00C6C6C600E0E0E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFE0072C2
      F3000096E700009FEC00009FEC00009FEC00009FEC00009EEC0000A0EB000099
      F00015A5E600E2F1FD00F9FDFD00000000000000000000000000000000000000
      000000000000CACACA00CFD0CF00D2D1D100919291008E908C008F9390009194
      9000919490009194900091949000919490009194900091949000919490009194
      9000919490009194900091949000919490009194900091949000919491008A8D
      8C00BEBFC000D7D7D600CBCBCB00E2E2E2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFC005DBE
      F200009DE90000A4EE0000A3EF0000A3EF0000A3EF0000A3EF0000A6ED0009A2
      E700C3E6F700FFFFFD00FCFDFE00000000000000000000000000000000000000
      000000000000CCCCCC00D2D2D000D6D6D7000000020000000800000008000000
      0700000007000000070000000700000007000000070000000700000007000000
      0700000007000000070000000700000007000000070000000700000008000000
      060030313B00CCCDCD00CCCCCC00E4E4E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ECF8FB002DB9
      F80000AFF40000AFF60000AFF70000AEF70000AEF70000AEF70002AEF70003AB
      ED009CDFF10000000000FAFDFD00000000000000000000000000000000000000
      000000000000CECECE00DCDCDB00C2C1C5001317220015182400151824001518
      2400151824001518240015182400151824001518240015182400151824001518
      2400151824001518240015182400151824001518240015182400151824001419
      240004061300B3B9B900CECECF00E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7F8FB001FB9
      F50000B3FA0003B6FA000AB5F90007B6F90003B7F90001B6F80001B6F70000B3
      FA0006B5F600D8EDFC00FCFCFE00000000000000000000000000000000000000
      000000000000D1D1D100D8D8D800C7C7C8001A1C25001D1E28001D1E28001D1E
      28001D1E28001D1E28001D1E28001D1E28001D1E28001D1E28001D1E28001D1E
      28001D1E28001D1E28001D1E28001D1E28001D1E28001D1E28001D1E28001D1E
      28000A0A1700B2B7B700D2D2D300E8E8E8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EEFBFD0055CE
      FC0006B2F50000B9FB0000B7FA0000B8FB0000BAFB0000B8FC0000B7FC0000BE
      FE0000B7FE0000B8FC00FFFEFF00000000000000000000000000000000000000
      000000000000D3D3D300D9D9D800C8C8C90020222C0022242E0022242E002224
      2E0022242E0022242E0022242E0022242E0022242E0022242E0022242E002224
      2E0022242E0022242E0022242E0022242E0022242E0022242E0022242E002224
      2E0011131E00B7BDBC00D4D4D500E8E8E8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFFFE00FFFF
      FE0000000000EDFBFC00E3F8F900E3F7F700D3F0FB00CEECFB00CBEDFB00A2E3
      F90093E2F8008CD3F900F5FCFE00000000000000000000000000000000000000
      000000000000D7D7D700DEDEDD00CDCECE002D2E380030313B0030303A003030
      3A0030303A0030303A0030303A0030303A0030303A0030303A0030303A003030
      3A0030303A0030303A0030303A0030303A0030303A0030303A0030303A002F30
      3A0020222D00B8BEBC00D7D6D800EBEBEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFEFE00FFFEFF00FFFEFD00FFFFFE00FFFFFC00FFFFFC00FFFE
      FD00FFFEFA00FFFEFB00FFFFFC00000000000000000000000000000000000000
      000000000000D8D8D800DFDFDE00D0CFD1003536410037394300373943003739
      4300373943003739430037394300373943003739430037394300373943003739
      4300373943003739430037394300373943003739430037394300373943003737
      4300282A3600BDC3C100D8D8D800ECECEC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FCFCFC00FEFEFE00FEFE
      FE0000000000FFFEFF00FEFEFE00FAFEFD00FBFEFE00FAFEFF00FAFDFE00FFFD
      FB00FDFCFD00F8FEFF00F9FFFF00FFFFFE00FDFDFD0000000000FDFDFD000000
      000000000000DADADA00E2E1E100D1D0D3003C3D46003E3F49003E3F49003E3F
      49003E3F49003E3F49003E3F49003E3F49003E3F49003E3F49003E3F49003E3F
      49003E3F49003E3F49003E3F49003E3F49003E3F49003E3F49003E3F49003E3F
      490030323B00C1C5C600DADBDA00ECECEC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FEFDFD00FFFEFE00FEFEFE000000000000000000000000000000
      000000000000DCDCDC00E4E4E400D2D0D50040434C0043454D0042454D004245
      4D0043464D0043464E0043464E0043464E0043464E0042454D0042454D004245
      4D0042454D0042454D0042454D0042454D0042454D0042454D0043464D004346
      4E0034383E00C2C4C800DDDDDD00EDEDED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D1D1D100C6C6C600BFBFBF00BEBE
      BE00B6B6B600B4B4B400B5B5B500B3B3B300B3B3B300B3B3B300B5B5B500B4B4
      B400B4B4B400B4B4B400B5B5B500BABABA00C1C1C100C2C2C200CFCFCF00DFDF
      DF00F8F8F800DFDFDF00E7E6E700D6D6D7005050560052535800525359005251
      5B00525259005252580052525800525258005252590052515B00525359005253
      580052535800525358005252590052515B005253590052535800525359005251
      5A0047454D00C8C7CC00E0E1E100EEEEEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CFCFCF00C8C8C800B4B4B400B4B4
      B400B1B1B100B1B1B100B1B1B100AFAFAF00AEAEAE00AFAFAF00B1B1B100B1B1
      B100B1B1B100B1B1B100B0B0B000B3B3B300B4B4B400C1C1C100CDCDCD00DEDE
      DE00F5F5F500E1E1E100E6E6E600D8D9D80056565B0057585D0057585E005756
      600057575F0057585D0057585D0057585D0057595D005756600057585E005758
      5D0057585D0057585D0057575F005756600057585D0057585D0057585E005756
      60004C4B5300CCCACF00E1E1E100F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F5F500E1E1E100B2B2B200B4B4
      B400B6B6B600B4B4B400B4B4B400B3B3B300B2B2B200B4B4B400B5B5B500B4B4
      B400B4B4B400B4B4B400B4B4B400B3B3B300B0B0B000B1B1B100F6F6F600F5F5
      F50000000000E2E2E200E7E7E700D9D9D9005C5C61005E5D64005D5E63005D5C
      65005D5C65005D5D63005D5D63005D5D63005D5E63005D5C66005D5E63005D5D
      63005D5D63005D5E63005D5C64005D5C65005D5E63005D5D63005D5D63005C5B
      650053515900CFCED200E2E2E200F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8E8E800AEAEAE00B8B8B800B6B6
      B600B6B6B600B6B6B600B6B6B600B6B6B600B6B6B600B6B6B600B6B6B600B6B6
      B600B6B6B600B6B6B600B6B6B600B6B6B600B7B7B700B7B7B700D4D4D4000000
      0000FDFDFD00E4E4E400EAEAEA00DCDDDC006A696F006B6C71006B6C71006B6B
      71006B6B71006B6C71006B6C71006B6C71006B6C71006B6B71006B6C71006B6C
      71006B6C71006B6C71006B6B71006B6B71006B6C71006B6C71006B6B71006B6B
      710061606600D3D1D600E3E3E300F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DADADA00B1B1B100BABABA00B8B8
      B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8
      B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B9B9B900CCCCCC000000
      000000000000E5E5E500EBEBEB00DCDBDB007171750072737600727376007273
      7600727376007273760072737600727376007273760072737600727376007273
      7600727376007273760072737600727376007273760072737600727376007173
      760068686B00D2D2D300E6E6E600F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBDBDB00B5B5B500BBBBBA00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBA00BBBBBA00BBBBBB00BCBCBC00CECECE000000
      000000000000E6E6E600EAEAEA00DFDFE00076787A00787A7A00787A7A00787A
      7A00787A7A00787A7A00787A7A00787A7A00787A7A00787A7A00787A7A00787A
      7A00787A7A00787A7A00787A7A00787A7A00787A7A00787A7A00787A7A007679
      7A0071727200D4D4D400E6E6E600F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBDBDB00B5B5B500BBBBBC00B8BA
      BE00B7B9BE00B8BABD00B8BABE00B9BBBD00B9BBBE00B9BBBE00B9BBBF00B9BB
      BF00BABBBF00BABCBE00BABBC100BABBC000BBBCBB00BEBEBD00CFCFCF000000
      000000000000E7E7E700EEEEEE00E0DEDF00797B7C007E8081007D8081007E80
      81007E8081007E8081007E8081007E8081007E8081007E8081007E8081007E80
      81007E8081007E8081007E8081007E8081007E8081007D8081007E8082007B7D
      7E0077777800DBDBDB00E6E6E600F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDDD00B8B8B800C3C1B500DBAE
      5D00D7A13F00CE9F3F00CC9C3C00C6973700BE912F00B98E2A00B68B2800AD82
      1E00A97F1B00A07A16009E70070094690700C4C7C200BFBFC200D1D1D1000000
      000000000000EAEAEA00ECECEC00E9E9E900F4F4F400F1F1F100F3F3F200F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F9F9
      F900F2F1F100EFEFEF00ECECEC00F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE00BABAB900C0BDB900D9AC
      6100D2A45400CC9E5100CA9D5000C3964900BB924100B6903C00B48D3A00AA84
      3100A9812F00A77E2A009D742C00976D0C00BEBFBD00C1C2C600D3D3D3000000
      000000000000E9E9E900EFEFEF00F0F0F000EFEFEF00F0F0F000F0F0F000EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F0F0F000F0F0
      F000EEEEEE00EEEEEE00EBEBEB00F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E1E1E100BBBBBB00C1BDB400E6BC
      6800E9C16F00E3BE6500E1BC6300DEB96100D8B26000D7AF5F00D6AE5E00D0A8
      5900CDA75700C8A25100CAA64E00A17F1900C5C2C000C3C4C700D4D4D4000000
      0000FEFEFE00E9E9E900EAEAEA00EEEEEE00F0F0F000EFEFEF00F0F0F000EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EEEEEE00EAEAEA00F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E1E1E100C0C0C000C2C7C700C1C6
      CA00BEC4C400BFC6CA00BEC6C900C3C9CD00C2C8CD00C1C7CD00C1C6CC00C0C6
      CC00C1C6CC00C1C8CE00C1C6CE00C8CBD100C3C7C200C5C5C500D6D6D6000000
      0000FCFCFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2E2E200C2C2C200C7C6C600C7C6
      C600C7C7C700C7C6C600C7C7C600C7C6C600C7C6C600C7C6C600C7C6C600C7C6
      C600C7C7C600C7C6C600C7C7C600C6C6C500C7C6C700C5C5C500D9D9D9000000
      0000FCFCFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2E2E200C3C3C300C9C8C800C7C8
      C700C8C7C800C7C7C800C7C7C700C7C8C700C7C8C700C7C8C700C8C7C700C8C8
      C700C8C7C800C7C7C700C8C7C800C7C8C700C9C8C800C7C7C600D9D9D9000000
      0000FCFCFC000000000000000000000000000000000000000000000000000000
      0000FFFEFF00FEFEFE0000000000FFFEFE00FEFEFE00FEFFFE00FEFEFE00FEFE
      FE00FDFEFE00FEFEFE00FFFEFF00FDFFFE00FFFFFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3E3E300C5C5C500C6C9CA00CACA
      D400C8D4D300CFD1D800D0D1D900D2D3DA00CBCFD600CCD2D900CFD4DA00CED1
      DC00CFD3DD00CFD4DB00D0D5DA00D3D2DD00C3C8C900C8C8C800DADADA000000
      0000FCFCFC000000000000000000000000000000000000000000000000000000
      0000FFFEFC00FFFFFD0000000000000000000000000000000000FFFFFC00FFFF
      FC00FFFFF700FBFCFC00F8FBFC00F6FBF900FDFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E400C6C6C600CDC8C400D9AD
      5500DAA34D00D0A25000CA9D4B00CA9A4800C0954100B98D3B00B58A3700AF85
      2E00AC822A00AA7F2700A87E22008E630300CDCECA00CCCED000DBDBDB000000
      0000FCFCFC000000000000000000000000000000000000000000000000000000
      0000FFFFFA00DAEFF6000081D700007FDA00007ADA000081DD000079D600007B
      D800007ADB000075D3000077D1000288D900FCFEFF00FFFFFD00FEFEFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600C8C8C800CFCAC300D7AD
      6200D0A75100D0A14E00CD9F4C00C6994600BE934000BA923E00B78F3C00AE86
      3300AC843100A87F2D00A17D26009E721600D1CCC900CDCED100DCDCDC000000
      0000FDFDFD000000000000000000000000000000000000000000000000000000
      0000FBFDFF00FFFFFD00007DD9000083DB000285DE000087DB000087DD000087
      DD000087DB000087DD000086DD000080D8009ACBEA00FFFFFB00F9FBFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5E5E500C8C8C800D0CDC500DDB7
      7700DCC17A00DCBD7700D9BB7300D3BA7100D0B46D00D0B36B00CEB06800C5AA
      6200C5AA6200C4A96100C6AB5F009B813400D1D4CC00CDCFD100DDDDDD000000
      0000FDFDFD000000000000000000000000000000000000000000000000000000
      0000FAFEFE00FEFDF9006EB5E1000079D9000088DA000087DD000087DD000087
      DD000087DD000087DD000085DB000088DD0074C0EE00FFFFFE00F9FBFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600CACACA00CFCFCF00CDCF
      D000CFCFD100CDCFD100CECFD100CDCFD000CDCFD000CECFD000CECFD100CDCF
      D100CED0D200CECFD000CFD0D200CECFD100CFCFCD00CFCFCF00DDDDDD000000
      0000FDFDFD000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFA00FFFFFE000070D6000088DD000086DC000086
      DC000086DC000087DE000087DD000089DF00C3E1F400FFFFFC00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600CBCBCB00CFD0D000CFD0
      D000D0D0D000CFD0D000D0D0D000D0D0D000D0D0D000CFD0D000D0D0D000D0D0
      D000D0D0D000CFCFCF00CFCFCF00D0D0D100CECFCF00D0D0D000DEDEDE000000
      0000FDFDFD000000000000000000000000000000000000000000000000000000
      000000000000FEFFFF00FFFFFC005FACE700007CDA000188DE000089DF000088
      DF000087DE00008AE000008BDF00008DDD00CFEBFB00FFFFFC00FCFBFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8E8E800CECECE00D2D2D100D1D0
      D100D0D0D200D1D2D300CFD1D200D1D2D300D1D1D200D2D3D400CFD1D100D0D2
      D100D0D1D100D0D2D300D3D3D100CDD6D600D4D1CF00D2D2D100DFDFDF000000
      0000FDFDFD000000000000000000000000000000000000000000000000000000
      0000F9FDFD00FFFFFC0077BDE500007CE000048FDE00008CDF00008EE200008F
      E000008FE0000090E2000094E400008BE500DBEFFA0000000000FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600CDCDCD00D1D2CD00D6BF
      8700E3B97400D6B26F00D5B16E00D2AF6B00CBA96500C8A66200C6A56100C09E
      5900BD9B5600B8975100B2944C00AA8C4A00DEDCE100D0D2D400DFDFDF000000
      0000FDFDFD00000000000000000000000000FBFFFE00FFFBFE00FEFDFF00FFFF
      FE00F0FCFE005FB7E8000494EA000094E8000295E1000097E7000098EB000096
      E6000097E5000197E8000299E4000097EC00F1FAFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600CFCFCF00D5D1CB00D2AD
      5900DBA44F00CEA04C00C99C4800C5994400BF923F00B98F3A00B68C3700AE83
      2D00AB812B00AA802A009F7A1F008F620100D5D2D400D3D5D700E0E0E0000000
      0000FDFDFD00000000000000000000000000FFFDFE00F2FCFA00F9FFFD00E1F2
      F500289DE300008FE200029CE700009CE800019BE800009BE800009DEB00009E
      ED00009DF100009FEB00029DEC00009BEA00FDFFFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600D0D0D000D6CEC900DDB3
      6200DBAE5700D2AA5900CFA65600CCA45500C59D4E00C19B4B00BD964700B692
      3E00B48F3B00B38E3A00AA8B380098711000DBD5D300D4D7D900E1E1E1000000
      0000FFFEFD00FFFFFE00FFFFFE00FFFEFF00F9FCFF00FFFFFB00FAFCF9000088
      E9000099ED00009EE900019FED00019FEC00019FEC0000A1EC0002A4E900009C
      EE000CA6ED0000A6EE0008A2F40000A3EB00FFFFFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700CFCFCF00D8D7D700DCC8
      9E00E5C79500DCC89B00DAC69900D9C59800D6C29500D3BF9300D3BF9200CFBD
      8D00CEBC8C00CCBB8B00D1BF8900B8A27400DFDBE000D3D5D500E4E0E300FDFF
      FF00F4FAFD00FAFDFE00FAFBFC00FBFEFE00FFFFFD00B2E0F4003EB3ED0000A0
      ED0000A0EB0000A3EA0000A3EF0000A4ED0000A4EE0004A4F00000A2EF0010A8
      F4009CE2F70000A1ED0003A8F50000A5EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8E8E800D7D7D700D5D0D400D5D1
      DA00D9D2DB00D3DAD600D3D9D700D1D6D400D1D6D400D0D5D300D0D6D400D1D7
      D400D1D6D500D0D6D300D7D6CF00D9D4CF00DED5DB00D5D5D500E3E0E2000000
      00000000000006A1EF0041ADED001BAFEB00009FF00000AAF80007ABEE0004AA
      F30002ACF40000ABF30000ACF50000ABF40000AAF30012B5F300F0F9FF00FFFF
      FC00F7FDFD00C7ECF80019AFF40000B7FC00FFFFFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAEAEA00D8D8D800D5D7D500D4D9
      D400D5D7D000D5D3D400D6D3D400D7D4D500D7D5D600D7D4D600D7D5D600D5D4
      D400D7D4D600D7D5D600D5D2D800D5D5D700D4D7D300D2D2D200DCDCDD000000
      0000FFFEFE00CEEBF80048BEF00000A9F20000AAF00000A8F00000ACF30002AB
      F60000ADF70000ABF60000AEF70018B3F40041C6F900ACE4FC00FFFFFB00FFFD
      FE00FFFCFF00FFFFFC00A5E2FA001ABCFA00FFFFFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDEDED00D6D6D600CECECE00D3D2
      D300CFCFD000D4D5D500D4D5D400D4D4D400D4D4D400D4D4D400D4D4D400D4D5
      D500D4D5D500D4D4D400D5D5D500D3D3D300D0CFD000E5E5E500E5E5E5000000
      0000FEFFFE00FFFFFB00FEFFFD00D0E8F70026B8F8001DB5FA0010B3F40005B6
      F70013B4F80022B8F9004FCAF400A3E4F900F4FAFA00FFFFFA00F9FEFD000000
      000000000000FAFDF700FFFFF900D1F4FC00FFFEFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F800D5D5D500DADA
      DA00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDC
      DC00DCDCDC00DCDCDC00DDDDDD00D9D9D900D3D3D300D9D9D900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6F6F600F4F4
      F400F5F5F500F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F2F2F200F3F3F300F6F6F600FDFDFD00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E5
      E400C4C2C000B5B2B000B1AEAC00B1AEAD00B1AEAD00B1AEAD00B1AEAD00B1AE
      AD00B1AEAD00B1AEAD00B1AEAD00B1AEAD00B1AEAD00B1AEAD00B1AEAD00B1AE
      AD00B1AEAD00B1AEAD00B1AEAD00B1AEAD00B1AEAD00B1AEAD00B1AEAD00B1AE
      AD00B1AEAD00B1AEAD00B1AEAD00B1AEAD00B1AEAD00B1AEAD00B1AEAD00B1AE
      AD00B1AEAD00B1AEAD00B1AEAD00B1AEAD00B1AEAD00B1AEAC00B2B0AE00BEBB
      BA00D8D7D6000000000000000000000000000000000000000000FFFBF30048AE
      F60033A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0032A8
      FA004FB1F500FFFCF4000000000000000000B5B0AF00ACA8A900FCFCFC000000
      0000FDFDFD00FCFCFC00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFDFD00FFFFFD00FEFEFD00FDFDFD00FCFCFC00FCFCFC00FAFA
      FA00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FDFDFD00FCFCFC00FBFA
      FB00FAFAFA00FBFBFB00FBFBFB00F6F6F700F1F1EF00EAE8E900E6E6E500E4E4
      E200E2E1E100DDDDDD00DBD9D900D6D4D300D2CECD00CBC8C700C7C3C200C6C2
      C200C7C4C300CBC8C600D0CDCB00D2D0CF000000000000000000000000000000
      000000000000000000000000000000000000EAEAEA0096969600A1A1A100A0A0
      A000A1A1A1009F9F9F009F9F9F009E9E9E009F9F9F009E9E9E009D9D9D009C9C
      9C009D9D9D009C9C9C009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B
      9B009D9D9D009C9C9C009D9D9D009F9F9F009F9F9F00A0A0A000A0A0A000A1A1
      A100A1A1A100A1A1A100A3A3A300A5A5A500A3A3A3009E9E9E00F7F7F7000000
      0000000000000000000000000000000000000000000000000000BFBDBA00A9A6
      A400A2A19F009E9D9B009E9D9B009E9D9B009E9D9B009E9D9B009E9D9B009E9D
      9B009E9D9B009E9D9B009E9D9B009E9D9B009E9D9B009E9D9B009E9D9B009E9D
      9B009E9D9B009E9D9B009E9D9B009E9D9B009E9D9B009E9D9B009E9D9B009E9D
      9B009E9D9B009E9D9B009E9D9B009E9D9B009E9D9B009E9D9B009E9D9B009E9D
      9B009E9D9B009E9D9B009E9D9B009E9D9B009E9D9B009E9D9B009D9D9A00A09F
      9D00A7A5A300AFADAA00F1F0F000000000000000000000000000FFFBF30046AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004DB0F500FFFCF4000000000000000000A8A3A100C4C2C200FDFEFE000000
      0000FCFCFC00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFD00F0EEF900C8C7F100FDFDFC00FFFFFE00FBFCFA00FBFBFA00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FAFAFA00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00FAFBFB00FBFBFB00FCFC
      FC00FCFDFD00FCFCFC00FCFDFD00FCFCFB00FAFAF900F8F8F800F8F7F700F7F7
      F700F4F4F300EDEDEC00E5E5E400E0DFDE000000000000000000000000000000
      000000000000000000000000000000000000ECECEC009F9F9F009D9D9D009B9B
      9B009C9C9C009B9B9B009C9C9C009C9C9C009B9B9B009A9A9A00999999009A9A
      9A009A9A9A009999990098989800989898009898980099999900989898009797
      9700989898009898980097979700989898009797970097979700989898009898
      98009898980099999900A3A3A300AEAEAE00858585004B4B4B00B5B5B500E1E1
      E100F9F9F90000000000000000000000000000000000BBB8B600A8A6A500A4A2
      A100A6A4A300A7A5A400A7A5A400A7A5A400A7A5A400A7A5A400A7A5A400A7A5
      A400A7A5A400A7A5A400A7A5A400A7A5A400A7A5A400A7A5A400A7A5A400A7A5
      A400A7A5A400A7A5A400A7A5A400A7A5A400A7A5A400A7A5A400A7A5A400A7A5
      A400A7A5A400A7A5A400A7A5A400A7A5A400A7A5A400A7A5A400A7A5A400A7A5
      A400A7A5A400A7A5A400A7A5A400A7A5A400A7A5A400A7A5A400A7A5A400A6A4
      A300A5A3A200A6A4A300AEAAA800F4F4F4000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF40000000000000000009D999700DAD8D90000000000FDFD
      FD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FDFD
      FD00FEFEFB00EBEAF9007E7ADF00ACA5EB00E3E1F800FDFDFC00FCFDFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FAFAFA00FAFAFA00FBFB
      FB00FBFBFB00FAFAFA00F9F9F900F9F9F900FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAF9F900FAFAFA00F9F9F900F8F8F800F9F9F900F9F9F900F9F9F900F8F8
      F800F8F9F900F9F9F900FAF9F900FAFAFA000000000000000000000000000000
      000000000000000000000000000000000000EAEAEA008F8F8F00B4B4B400C8C8
      C800C1C1C100BFBFBF00BDBDBD00BBBBBB00BABABA00B8B8B800B4B4B400B2B2
      B200B1B1B100AFAFAF00AEAEAE00ADADAD00ADADAD00ACACAC00ABABAB00A9A9
      A900AAAAAA00A9A9A900ABABAB00ABABAB00ACACAC00AEAEAE00AFAFAF00AEAE
      AE00B0B0B000B9B9B90067676700313131003737370046464600414141003D3D
      3D0051515100C4C4C4000000000000000000D8D7D600A9A8A500AAA9A700ABAA
      A800ABAAA800AAA9A700AAA9A800ABA9A800ABA9A800ABA9A800ABA9A800ABA9
      A800ABA9A800ABA9A800ABA9A800ABA9A800ABA9A800ABA9A800ABA9A800ABA9
      A800ABA9A800ABA9A800ABA9A800ABA9A800ABA9A800ABA9A800ABA9A800ABA9
      A800ABA9A800ABA9A800ABA9A800ABA9A800ABA9A800ABA9A800ABA9A800ABA9
      A800ABA9A800ABA9A800ABA9A800ABA9A800ABA9A800ABA9A800AAA9A700ABAA
      A800ABAAA800ABAAA800A9A7A500B9B7B5000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF400000000000000000099939300ECEBEB0000000000FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FAFA
      FA00FDFDFD00EDEBF9009992E600645ED8007872DC00C5BFF100FCFDFC00FBFB
      FB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FBFBFB00FAFAFA00FBFBFB00FBFB
      FB00FBFBFB00F9F9F900F9F9F900FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00F9F9F900F7F7F700F8F8F800F9F9F900F9F9F900F8F8F800F7F7
      F700F8F7F700F8F8F800F8F8F800F8F8F8000000000000000000000000000000
      000000000000000000000000000000000000E9E9E9008A8A8A00B7B7B700D2D2
      D200CACACA00C6C6C600C4C4C400C2C2C200C0C0C000BDBDBD00BABABA00B7B7
      B700B6B6B600B4B4B400AFAFAF00AEAEAE00AEAEAE00AEAEAE00ACACAC00AAAA
      AA00A9A9A900AAAAAA00ABABAB00ACACAC00ADADAD00AFAFAF00B2B2B200B2B2
      B200B8B8B800C6C6C6003F3F3F002F2F2F004242420044444400444444004545
      4500454545005F5F5F000000000000000000B2B0AE00AEADAC00B0AFAE00B0AF
      AE00B6B4B200BAB8B600BBB9B700BBB9B700BBB9B700BBB9B700BBB9B700BBB9
      B700BBB9B700BBB9B700BBB9B700BBB9B700BBB9B700BBB9B700BBB9B700BBB9
      B700BBB9B700BBB9B700BBB9B700BBB9B700BBB9B700BBB9B700BBB9B700BBB9
      B700BBB9B700BBB9B700BBB9B700BBB9B700BBB9B700BBB9B700BBB9B700BBB9
      B700BBB9B700BBB9B700BBB9B700BBB9B700BBB9B700BBB9B700BAB8B600B7B5
      B400B2B1AF00AFAEAD00AFAFAE00ABA9A8000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF40000000000000000009F9A9A00F0F0F10000000000FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FBFBFB00FBFBFB00FDFD
      FD00FEFEFD00FCFBFC00AFAAEA008881E200A49EE9009790E700E6E5F800FDFD
      FC00FBFBFC00FCFCFC00FBFBFB00FAFAFA00FBFBFB00FBFBFB00FBFBFB00F9F9
      F900F8F8F800FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00F7F7F700F8F8F800F8F8F800F9F9F900F8F8F800F7F7F700F7F7F700F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F8000000000000000000000000000000
      000000000000000000000000000000000000E9E9E90089898900B0B0B000CFCF
      CF00C7C7C700C3C3C300C0C0C000BEBEBE00BCBCBC00B9B9B900B7B7B700B4B4
      B400B2B2B200B0B0B000AAAAAA00A9A9A900A9A9A900A9A9A900A6A6A600A3A3
      A300A2A2A200A4A4A400A5A5A500A6A6A600A8A8A800AAAAAA00ADADAD00AFAF
      AF00B8B8B800B4B4B4002E2E2E00373737004545450041414100424242004848
      480048484800363636000000000000000000ADABAA00B4B3B200B8B6B500BEBC
      BA00BEBBB900BDBBB900BDBAB900BDBAB900BDBAB900BDBAB900BDBAB900BDBA
      B900BDBAB900BDBAB900BDBAB900BDBAB900BDBAB900BDBAB900BDBAB900BDBA
      B900BDBAB900BDBAB900BDBAB900BDBAB900BDBAB900BDBAB900BDBAB900BDBA
      B900BDBAB900BDBAB900BDBAB900BDBAB900BDBAB900BDBAB900BDBAB900BDBA
      B900BDBAB900BDBAB900BDBAB900BDBAB900BDBAB900BDBAB900BDBBB900BDBB
      B900BEBCBA00BBB9B700B4B3B200B0AFAD000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9
      FA0032A7F90032A7F90032A7F90032A7F90032A7F90032A7F90032A7F90032A7
      F90032A7F90032A7F90032A7F90032A7F90032A7F90032A7F90037A9FA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000ABA9A800F2F2F200FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FAFAFA00FCFCFC00FCFCFC00FDFD
      FD00FDFDFD00FFFFFD00D1CFF2005750D700ACA7EB006F62DE00C0BAEF00FDFE
      FE00FCFCFC00FBFBFB00FAFAFA00FAFAFA00FBFBFB00FBFBFB00FAFAFA00F9F9
      F900FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00F8F8
      F800F8F8F800F9F9F900F9F9F900F9F9F900F7F7F700F7F7F700F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800FDFDFD00EEEEEE00D2D2D200D3D3
      D300D4D4D400D4D4D400D2D2D200D4D4D400C6C6C600949494009F9F9F00C6C6
      C600C5C5C500C1C1C100C0C0C000BEBEBE00BCBCBC00B9B9B900B7B7B700B4B4
      B400B3B3B300B2B2B200AFAFAF00AFAFAF00AFAFAF00AEAEAE00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00AEAEAE00AFAFAF00AFAFAF00B7B7B700B7B7
      B7008080800039393900404040004242420042424200424242003F3F3F003838
      3800323232005F5F5F00F1F1F100FCFCFC00B3B2B100BCBAB900BFBDBB00BEBC
      BB00BEBCBB00BEBCBB00BEBCBB00BEBCBB00BEBCBB00BEBCBB00BEBCBB00BEBC
      BB00BEBCBB00BEBCBB00BEBCBB00BEBCBB00BEBCBB00BEBCBB00BEBCBB00BEBC
      BB00BEBCBB00BEBCBB00BEBCBB00BEBCBB00BEBCBB00BEBCBB00BEBCBB00BEBC
      BB00BEBCBB00BEBCBB00BEBCBB00BEBCBB00BEBCBB00BEBCBB00C1BFBD00C5C3
      C100BFBDBB00BEBCBB00BEBCBB00BEBCBB00BEBCBB00BEBCBB00BEBCBB00BEBC
      BB00BEBCBB00BFBDBB00BEBCBA00B6B5B4000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9FA0033A8
      F90056B7FA0052B5FA0052B5FA0052B5FA0052B5FA0052B5FA0052B5FA0052B5
      FA0052B5FA0052B5FA0052B5FA0052B5FA0052B5FA0056B7FA0034A8F90037A9
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000B9B5B800F5F4F500FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FBFBFB00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FFFEFC00B3B1EC003833CF00817CE2006157DB00C9C5F2000000
      0000FCFDFC00FAFAFA00F9F9F900FBFBFB00FBFBFB00FBFBFB00F9F9F900FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00F7F7
      F700F9F9F900F9F9F900F9F9F900F9F9F900F6F6F600F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800EAEAEA00C8C8C800D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DADADA00D2D2D2009F9F9F0094949400BBBB
      BB00C0C0C000BBBBBB00BBBBBB00BABABA00B7B7B700B5B5B500B4B4B400B2B2
      B200B1B1B100B0B0B000AEAEAE00ADADAD00ADADAD00AEAEAE00ACACAC00ADAD
      AD00ADADAD00ADADAD00ADADAD00AEAEAE00AEAEAE00B1B1B100BBBBBB007E7E
      7E003B3B3B003232320045454500434343004545450047474700313131003939
      390065656500AAAAAA00B9B9B900E5E5E500B9B7B600C1BEBD00C0BEBC00C0BE
      BC00C0BEBC00C0BEBC00C0BEBC00C0BEBC00C0BEBC00C0BEBC00C0BEBC00C0BE
      BC00C0BEBC00C0BEBC00C0BEBC00C0BEBC00C0BEBC00C0BEBC00C0BEBC00C0BE
      BC00C0BEBC00C0BEBC00C0BEBC00C0BEBC00C0BEBC00C0BEBC00C0BEBC00C0BE
      BC00C0BEBC00C0BEBC00C0BEBC00C0BEBC00C0BEBC00C4C2C100B8B6B5008B87
      8600C8C7C500C1BFBD00C0BEBC00C0BEBC00C0BEBC00C0BEBC00C0BEBC00C0BE
      BC00C0BEBC00C0BEBC00C0BEBD00BCBBB9000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9FA0027A2
      F900FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFF
      FE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE002AA3F90037A9
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000D3D1D200F9F8F900FDFDFD00FEFE
      FE00FEFEFE00FEFEFE00FDFDFD00FCFCFC00FDFDFD00FDFDFD00FDFDFD00FCFC
      FC00FAFAFB00FDFEFC00D3D0F3006057DA002C1ECF002F22CF00A3A1E800E7E5
      FA00FCFCFC00FAFAFA00FBFBFB00FBFBFB00FBFBFB00F9F9F900F9F9F900FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00F9F9F900F7F7F700F8F8
      F800F9F9F900F9F9F900F9F9F900F7F7F700F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F7F7F700F7F7F700C3C3C300D8D8D800EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00F0F0F000F0F0F000E8E8E800A9A9A90088888800A9A9
      A900B2B2B200B0B0B000B0B0B000AFAFAF00AEAEAE00AEAEAE00AEAEAE00ACAC
      AC00ABABAB00ABABAB00AAAAAA00AAAAAA00AAAAAA00AAAAAA00A9A9A900A9A9
      A900A9A9A900A9A9A900A9A9A900AAAAAA00B2B2B200BBBBBB00838383003939
      3900383838004848480047474700474747004848480042424200575757007B7B
      7B00B3B3B300CBCBCB00BABABA00B4B4B400BDBBBA00C2BFBE00C2BFBE00C2BF
      BE00C2BFBE00C2BFBE00C2BFBE00C2BFBE00C2BFBE00C2BFBE00C2BFBE00C2BF
      BE00C2BFBE00C2BFBE00C2BFBE00C2BFBE00C2BFBE00C2BFBE00C2BFBE00C2BF
      BE00C2BFBE00C2BFBE00C2BFBE00C2BFBE00C2BFBE00C2BFBE00C2BFBE00C2BF
      BE00C2BFBE00C2BFBE00C2BFBE00C2BFBE00C3C1C000C1BFBD00443E3D00150D
      0D0069656400CCCBC900C2BFBE00C2BFBE00C2BFBE00C2BFBE00C2BFBE00C2BF
      BE00C2BFBE00C2BFBE00C2BFBE00BFBDBB000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9FA0027A2
      F900FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFF
      FE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE002AA3F90037A9
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000EDECEC00FEFDFD00FCFDFD00FEFE
      FE00FEFEFE00FCFCFC00FAFAFA00FCFCFC00FDFDFD00FDFDFD00FDFDFD00FAFA
      FA00FBFBFB00FEFEFB00F4F4FB006961D9002819CE00200ACE004E40D700958D
      E800FBFBFD00FCFCFB00FBFBFB00FBFBFB00F9F9F900F9F9F900FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00F7F7F700F7F7F700F8F8
      F800F9F9F900F7F7F700F7F7F700F7F7F700F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F6F6F600F4F4F400C4C4C400E8E8E800EFEFEF00F0F0
      F000EFEFEF00EFEFEF00F1F1F100E0E0E000D9D9D900B1B1B1008A8A8A00ACAC
      AC00B8B8B800B7B7B700B6B6B600B6B6B600B6B6B600B6B6B600B6B6B600B6B6
      B600B6B6B600B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B3B3B300B9B9B900C3C3C3009E9E9E003B3B3B003D3D
      3D00494949004949490047474700494949004646460034343400AEAEAE00CBCB
      CB00CDCDCD00C7C7C700C4C4C400B3B3B300BEBCBA00C3C1C000C3C1C000C3C1
      C000C3C1C000C3C1C000C3C1C000C3C1C000C3C1C000C3C1C000C3C1C000C3C1
      C000C3C1C000C3C1C000C3C1C000C3C1C000C3C1C000C3C1C000C3C1C000C3C1
      C000C3C1C000C3C1C000C3C1C000C3C1C000C3C1C000C3C1C000C3C1C000C3C1
      C000C5C4C200C6C4C300C3C1C000C3C1C000C8C6C500B1AEAD001C1414002C25
      2500312A2A00D3D2D000C3C1C000C3C1C000C3C1C000C3C1C000C3C1C000C3C1
      C000C3C1C000C3C1C000C3C1C000C1BEBD000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9FA0034A8
      F90049B1FA0046B0FA0046B0FA0046B0FA0046B0FA0046B0FA0046B0FA0046B0
      FA0046B0FA0046B0FA0046B0FA0046B0FA0046B0FA0049B1FA0035A8F90037A9
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000FAF9F900FEFEFE00FEFEFE00FEFE
      FE00FCFCFC00FAFAFA00FDFDFD00FDFDFD00FDFDFD00FAFAFA00F9F9F900FCFC
      FC00FEFEFE00FEFEFD00FBFBFE009F98E8003725D2001602CD002511D1003928
      D600DFDCF600FFFFFC00FBFBFB00F9F9F900F9F9F900F9F9F900FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00F7F7F700F6F6F600F9F9F900F9F9
      F900F7F7F700F8F8F800F8F8F800F8F9F800F9F9F700F8F8F800F8F8F800F8F8
      F800F8F8F800F5F5F500F4F4F400F7F7F700D5D5D500ECECEC00F0F0F000F0F0
      F000EFEFEF00EFEFEF00DDDDDD004E4E4E00252525003F3F3F0084848400D8D8
      D800F4F4F400F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F1F1F100F2F2
      F200F1F1F100F1F1F100F2F2F200F2F2F200F1F1F100F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000E3E3E300979797003D3D3D0031313100454545004545
      45004545450045454500474747003A3A3A002626260043434300D1D1D100CBCB
      CB00C5C5C500C6C6C600C4C4C400BBBBBB00C0BEBC00C5C3C100C5C3C100C5C3
      C100C5C3C100C5C3C100C5C3C100C5C3C100C5C3C100C5C3C100C5C3C100C5C3
      C100C5C3C100C5C3C100C5C3C100C5C3C100C5C3C100C5C3C100C5C3C100C5C3
      C100C5C3C100C5C3C100C5C3C100C5C3C100C5C3C100C5C3C100C5C3C100C7C5
      C400B4B2B100B2B0AF00CAC8C700C4C2C100E2E1E000261E1E002E272700150D
      0D00C7C5C400C8C6C400C5C3C100C5C3C100C5C3C100C5C3C100C5C3C100C5C3
      C100C5C3C100C5C3C100C5C3C100C2C0BF000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9
      FA0034A8F90034A8F90034A8F90034A8F90034A8F90034A8F90034A8F90034A8
      F90034A8F90034A8F90034A8F90034A8F90034A8F90034A8F90037A9FA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000FBFAFA00FDFDFD00FEFEFE00FDFD
      FD00FAFAFA00FCFCFC00FDFDFD00FDFDFD00FBFBFB00FAFAFA00FCFCFC00F7F7
      F600CFCDCC00D7D4D300E5E3DC00B6B2DC00281DCD001701CC00230DD0001F0D
      D000A49BEA00FDFDFC00FDFDFC00FBFBFB00FCFCFC00FBFBFB00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00F8F8F800F7F7F700F9F9F900F9F9F900F7F7
      F700F6F6F600FAFAF700FCFDF800FAFAF800EAE7F600F4F4F700F8F8F800F8F8
      F800F6F6F600F5F5F500F7F7F700F7F7F700D7D7D700EBEBEB00F0F0F000F0F0
      F000EFEFEF00F0F0F000D7D7D7002F2F2F0005050500090909003F3F3F00BFBF
      BF00E5E5E500E5E5E500E4E4E400E5E5E500E6E6E600E5E5E500E8E8E800E9E9
      E900E8E8E800E8E8E800EAEAEA00E9E9E900E8E8E800E5E5E500E7E7E700E5E5
      E500E5E5E500E9E9E900999999003C3C3C003030300041414100444444004343
      43004444440044444400373737001F1F1F000A0A0A0027272700D2D2D200CDCD
      CD00C4C4C400C5C5C500C4C4C400BDBDBD00C1BFBE00C6C4C300C6C4C300C6C4
      C300C6C4C300C6C4C300C6C4C300C6C4C300C6C4C300C6C4C300C6C4C300C6C4
      C300C6C4C300C6C4C300C6C4C300C6C4C300C6C4C300C6C4C300C6C4C300C6C4
      C300C6C4C300C6C4C300C6C4C300C6C4C300C6C4C300C6C4C300C6C4C300CDCB
      C900918D8C002C252500CCCAC900D1D0CF00908C8B002A232300282121005C57
      5600CAC8C600C7C5C400C6C4C300C6C4C300C6C4C300C6C4C300C6C4C300C6C4
      C300C6C4C300C6C4C300C6C4C300C4C1C0000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9
      FA0022A0F90022A0F90022A0F90022A0F90022A0F90022A0F90022A0F90022A0
      F90022A0F90022A0F90022A0F90022A0F90022A0F90022A0F90022A0F90022A0
      F90022A0F90022A0F90022A0F90022A0F90022A0F90022A0F90022A0F90022A1
      F90037A9FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000FBFCFC00FDFDFD00FDFDFD00FBFB
      FB00FCFCFC00FDFDFD00FDFDFD00FCFCFC00FBFBFB00FAFAFA00FDFDFD00E8E6
      E600AFABA900C4C0C100C4C0BA00B8B4B8003B35C5001100CE001C02CE001802
      D0004A44D300C6C5D400E6E6DB00E8E7E800F0EFEF00F7F6F600F8F7F700FAF9
      F900FBFBFB00FCFDFD00FBFCFC00FAFAFA00FBFBFB00FAFAFA00FAFAFA00F7F7
      F700FDFDF700F3F1F700D9D5F3009D96F0008277ED00DAD8F400FBFBF700F6F6
      F600F5F5F500F7F7F700F7F7F700F7F7F700D7D7D700EBEBEB00F0F0F000F0F0
      F000EFEFEF00F0F0F000DADADA003B3B3B000B0B0B000B0B0B001C1C1C005C5C
      5C007979790078787800797979007C7C7C007C7C7C007B7B7B00939393009E9E
      9E00A6A6A600ACACAC00A2A2A2009C9C9C0093939300838383007B7B7B007B7B
      7B007D7D7D00878787003E3E3E00323232004141410044444400414141004242
      4200434343003D3D3D00181818000F0F0F000A0A0A0030303000D3D3D300CCCC
      CC00C4C4C400C5C5C500C4C4C400BDBDBD00C3C1C000C8C6C400C8C6C400C8C6
      C400C8C6C400C8C6C400C8C6C400C8C6C400C8C6C400C8C6C400C8C6C400C8C6
      C400C8C6C400C8C6C400C8C6C400C8C6C400C8C6C400C8C6C400C8C6C400C8C6
      C400C8C6C400C8C6C400C8C6C400C8C6C400C8C6C400C8C6C400C8C6C400CECD
      CB009A9696001B131300352E2E00E1E0DF005E59580028212100211A1A009490
      8F00D0CECD00C8C6C400C8C6C400C8C6C400C8C6C400C8C6C400C8C6C400C8C6
      C400C8C6C400C8C6C400C8C6C400C5C3C2000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9FA0029A3
      F900FFFFFE00F5FAFD00F5FAFD00F5FAFD00F5FAFD00F5FAFD00F5FAFD00F5FA
      FD00F5FAFD00F5FAFD00F5FAFD00F5FAFD00F5FAFD00F5FAFD00F5FAFD00F5FA
      FD00F5FAFD00F5FAFD00F5FAFD00F5FAFD00F5FAFD00F5FAFD00F6FAFD00FFFF
      FE0027A3F90037A9FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000FDFDFD00FEFEFE00FAFAFA00FCFC
      FC00FDFDFD00FCFCFC00FBFBFB00FAFAFA00FCFCFC00FBFBFB00FCFCFC00D5D3
      D100C5C0C200FBFBFA00FCFCFA00FBFBF900837BE1000E00CB001A00CE001A00
      D1000F00CE005E59CA00CECCCB00D0CDCA00CBC7C700CBC7C600CDC8C800CFCC
      CB00D5D1D000D7D5D300DDDBDA00E4E3E200EAEAEA00EEEDED00F0F1EF00FAFA
      F300D3CFF5008E89EE003A31E7003125E500B0A7F000FBFAF700F7F7F600F5F5
      F500F7F7F700F7F7F700F6F6F600F5F5F500D9D9D900EBEBEB00F0F0F000F0F0
      F000EFEFEF00EFEFEF00EFEFEF00B5B5B5007474740076767600737373006A6A
      6A0065656500656565006B6B6B00575757004040400050505000909090009B9B
      9B00A2A2A200A9A9A900A3A3A300A4A4A4009D9D9D0084848400444444005656
      56005A5A5A002323230039393900444444004242420042424200414141004141
      4100373737003C3C3C006C6C6C00676767006565650094949400CECECE00C6C6
      C600C4C4C400C4C4C400C4C4C400BDBDBD00C5C3C100C9C7C600C9C7C600C9C7
      C600C9C7C600C9C7C600C9C7C600C9C7C600C9C7C600C9C7C600C9C7C600C9C7
      C600C9C7C600C9C7C600C9C7C600C9C7C600C9C7C600C9C7C600C9C7C600C9C7
      C600C9C7C600C9C7C600C9C7C600C9C7C600C9C7C600C9C7C600C9C7C600D0CE
      CD009A979600221A1A002C2525001E16160029212100292222006A656400E8E7
      E600D5D4D300D1CFCE00C9C7C600C9C7C600C9C7C600C9C7C600C9C7C600C9C7
      C600C9C7C600C9C7C600C9C7C600C7C5C4000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9FA0027A2
      F900FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFF
      FE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFF
      FE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFF
      FE0025A2F90037A9FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000FDFEFE00FBFBFB00FCFCFC00FDFD
      FD00FDFDFD00FAFAFA00FBFBFB00FCFCFC00FCFCFC00FBFBFB00FBFBFB00C8C6
      C400CFCCCB00FDFCFC00FAFAFB00FFFFFC00D9D6F4002A1FCF001300CC001D00
      D1001801D0002413D500CBC7F300FFFFFC00F6F6F600F2F2F200EDECEC00E7E5
      E500E5E2E200E3E1E000E1DFDF00DCDBDA00D9D8D700D8D6D500E1DFD500CAC7
      D9006A5CE1003B2DDF003325E100968EEB00EAEAF600F9FAF500F6F6F600F7F7
      F700F7F7F700F6F6F600F4F4F400F5F5F500D9D9D900EBEBEB00F0F0F000F0F0
      F000F0F0F000EFEFEF00F0F0F000EBEBEB00DEDEDE00E0E0E000E0E0E000DDDD
      DD00D8D8D800CBCBCB00ACACAC00979797009F9F9F00A6A6A600B0B0B000B9B9
      B900BCBCBC00BCBCBC00B4B4B400B4B4B400B2B2B200ADADAD00B4B4B400A2A2
      A200707070003131310041414100424242004141410041414100414141003A3A
      3A00333333007A7A7A00CDCDCD00C7C7C700C3C3C300CCCCCC00CBCBCB00C7C7
      C700C5C5C500C4C4C400C4C4C400BCBCBC00C7C4C300CBC9C700CBC9C700CBC9
      C700CBC9C700CBC9C700CBC9C700CBC9C700CBC9C700CBC9C700CBC9C700CBC9
      C700CBC9C700CBC9C700CBC9C700CBC9C700CBC9C700CBC9C700CBC9C700CBC9
      C700CBC9C700CBC9C700CBC9C700CBC9C700CBC9C700CBC9C700CBC9C700D1D0
      CE009C989700211A1A003029290030292900302929002D2626003D3737006963
      63005B5454007F7A7A00D2D1CF00CBC9C700CBC9C700CBC9C700CBC9C700CBC9
      C700CBC9C700CBC9C700CBC9C700C8C6C5000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9FA002FA6
      F900A5D8FC0099D3FC0099D3FC0099D3FC0099D3FC0099D3FC0099D3FC0099D3
      FC0099D3FC0099D3FC0099D3FC0099D3FC0099D3FC0099D3FC0099D3FC0099D3
      FC0099D3FC0099D3FC0099D3FC0099D3FC0099D3FC0099D3FC009AD3FC00A3D7
      FC002EA6F90037A9FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF400000000000000000000000000FCFCFC00FDFDFD00FDFD
      FD00FCFCFC00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FBFBFB00FCFCFC00C1BD
      BC00D8D4D400FBFBFB00FBFBFB00FBFCFB00FFFFFC009C97E6001001CD001A00
      D0001A00CF001803D1008C81E800FFFFFD00FBFBFA00FBFCFC00FBFBFB00FAFA
      F900FBFAFB00FBFBFB00FBFBFB00F9F9F800F7F7F600FAF9F600CFCDEE005450
      E0006C61E4006252DE006958DE00ADA7EE00E7E6F500F9F9F600F7F7F600F7F7
      F700F7F7F700F4F4F400F6F6F600F6F6F600D9D9D900EBEBEB00F0F0F000F0F0
      F000F0F0F000F0F0F000EEEEEE00F0F0F000F4F4F400F3F3F300F5F5F500F5F5
      F500DEDEDE00ACACAC00A9A9A900B8B8B800B4B4B400BEBEBE00DEDEDE00E1E1
      E100E4E4E400E4E4E400E0E0E000E4E4E400DCDCDC00C4C4C400B6B6B600CDCD
      CD008E8E8E003434340041414100414141003F3F3F00404040003B3B3B003232
      320070707000CFCFCF00DCDCDC00D8D8D800D5D5D500D2D2D200CACACA00C9C9
      C900C7C7C700C4C4C400C3C3C300BDBDBD00C8C6C400CCCAC900CCCAC900CCCA
      C900CCCAC900CCCAC900CCCAC900CCCAC900CCCAC900CCCAC900CCCAC900CCCA
      C900CCCAC900CCCAC900CCCAC900CCCAC900CCCAC900CCCAC900CCCAC900CCCA
      C900CCCAC900CCCAC900CCCAC900CCCAC900CCCAC900CCCAC900CCCAC900D3D1
      D0009D999800211A1A00302929003029290030292900302929002D2626002019
      19002F292900CDCCCA00CECCCB00CCCAC900CCCAC900CCCAC900CCCAC900CCCA
      C900CCCAC900CCCAC900CCCAC900CAC8C6000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9
      FA002BA4F9002BA4F9002BA4F9002BA4F9002BA4F9002BA4F9002BA4F9002BA4
      F9002BA4F9002BA4F9002BA4F9002BA4F9002BA4F9002BA4F9002BA4F9002BA4
      F9002BA4F9002BA4F9002BA4F9002BA4F9002BA4F9002BA4F9002BA4F9002BA4
      F90037A9FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF400000000000000000000000000FCFCFC00FDFDFD00FCFC
      FC00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FBFBFB00FDFDFD00FCFCFC00BEBA
      BB00DFDDDC00FCFCFC00FBFBFB00FBFBFA00FFFFFE00BEBEEE001003CB001B00
      CF001A00CE001200D0004B41DA00F8F9FB00FDFDF900F9F8F900F7F7F700F7F7
      F700F8F8F800F8F8F800F9F9F900F9F9F900FFFFFC00F0EFFE007C77EF00180E
      E3005045E8005444E0005C4DDE00CBC9F300F3F3F600F7F8F700F7F7F700F7F7
      F700F5F5F500F5F5F500F6F6F600F6F6F600D9D9D900EBEBEB00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000EFEFEF00EFEFEF00E1E1E100AFAF
      AF00A8A8A800BDBDBD00D4D4D400DFDFDF00E9E8E800EEEEEE00F8F8F800F9F9
      F900FCFCFC00FDFDFD00FAFAFA00F9F9F900F7F7F700F2F2F200E7E8E800DCDB
      DB00CECFCF00B3B3B300343434003535350031313100303030007F7F7F00D6D6
      D600DFDFDF00DBDBDB00D9D9D900D5D5D500D2D2D200D2D2D200CECECE00CCCC
      CC00CACACA00C9C9C900C3C3C300BEBEBE00C9C7C600CDCCCA00CDCCCA00CDCC
      CA00CDCCCA00CDCCCA00CDCCCA00CDCCCA00CDCCCA00CDCCCA00CDCCCA00CDCC
      CA00CDCCCA00CDCCCA00CDCCCA00CDCCCA00CDCCCA00CDCCCA00CDCCCA00CDCC
      CA00CDCCCA00CDCCCA00CDCCCA00CDCCCA00CDCCCA00CDCCCA00CDCCCA00D4D3
      D1009E9A9900211A1A0030292900302929003029290030292900272020003C35
      3500DFDDDC00D0CFCD00CDCCCA00CDCCCA00CDCCCA00CDCCCA00CDCCCA00CDCC
      CA00CDCCCA00CDCCCA00CDCCCA00CBC9C8000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9
      FA002AA4F9002AA4F9002AA4F9002AA4F9002AA4F9002AA4F9002AA4F9002AA4
      F9002AA4F9002AA4F9002AA4F9002AA4F9002AA4F9002AA4F9002AA4F9002AA4
      F9002AA4F9002AA4F9002AA4F9002AA4F9002AA4F9002AA4F9002AA4F9002BA4
      F90037A9FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000FEFEFE00FCFCFC00FDFDFD00FAFA
      FA00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FBFBFB00FEFFFF00F9F9F900BAB7
      B600EAE8E800FDFDFD00FBFBFB00FAFAFB00FFFFFB00C8C6F100261ACF000E00
      CD001B00CF001500D0001A09D100A7A1ED00FEFFFB00F9F9F800F7F7F700F8F8
      F800F9F9F900F8F8F800F7F7F700FFFEF800F8F8F9006B64E9001A0CDF000D00
      E0003B2BE400584BDC00837ADF00F6F5F700F9F9F700F7F7F700F7F7F700F6F6
      F600F4F4F400F6F6F600F6F6F600F6F6F600D9D9D900EBEBEB00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000EFEFEF00F1F1F100BABABA00AAAA
      AA00BDBEBE00D3D3D300E6E6E600E8E8E800EDEEEE00F3F4F400F9F9F900F9F9
      F900FAFAFA00F9F9F900F7F7F700F9F9F900F8F8F800F6F6F600EEEFEF00E8E9
      E900E0E1E100D3D3D300696969003D3D3D004040400076767600D8D8D800E5E5
      E500DFDFDF00DDDDDD00DADADA00D7D7D700D4D4D400D3D3D300D0D0D000CECE
      CE00CBCBCB00CACACA00C3C3C300BDBDBD00CAC9C700CECDCB00CECDCB00CECD
      CB00CECDCB00CECDCB00CECDCB00CECDCB00CECDCB00CECDCB00CECDCB00CECD
      CB00CECDCB00CECDCB00CECDCB00CECDCB00CECDCB00CECDCB00CECDCB00CECD
      CB00CECDCB00CECDCB00CECDCB00CECDCB00CECDCB00CECDCB00CECDCB00D5D4
      D2009E9B9A00211A1A00302929003029290030292900282121003D363700CCCB
      C900D3D1D000CECDCB00CECDCB00CECDCB00CECDCB00CECDCB00CECDCB00CECD
      CB00CECDCB00CECDCB00CECDCB00CCCAC9000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9FA002EA5
      F900AEDCFC00A1D6FC00A1D6FC00A1D6FC00A1D6FC00A1D6FC00A1D6FC00A1D6
      FC00A1D6FC00A1D6FC00A1D6FC00A1D6FC00A1D6FC00A1D6FC00A1D6FC00A1D6
      FC00A1D6FC00A1D6FC00A1D6FC00A1D6FC00A1D6FC00A1D6FC00A1D6FC00ABDA
      FC002DA5F90037A9FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000FCFCFC00FDFDFD00FBFBFB00FBFB
      FB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FBFBFB00FFFEFE00F1F1F100B6B2
      B100F4F3F400FCFCFC00FBFBFB00F8F8F900FBFBF900F0F0F900716DDF00130A
      CB001700CF001900D2001600D300423BD900DBDAF500FDFDF900F9F9F900F9F9
      F900F8F7F900F8F8F600FBFCF800D2D1F4005951E5000900DE001300DF00250F
      E1007269E8009C95DA00CFCDE000F8F9F900F7F7F700F7F7F700F7F7F700F4F4
      F400F6F6F600F6F6F600F5F5F500F4F4F400D9D9D900EBEBEB00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000A9AAAA00BDBE
      BE00D3D3D300DFDFDF00E6E6E600EEEFEF00F6F6F600F7F7F700F9F9F900F9F9
      F900FBFBFB00FBFBFB00F9F9F900F7F7F700F6F6F600F5F5F500F5F5F500EEEE
      EF00E5E6E600E1E1E100ADADAD008787870090909000CFCFCF00EDEDED00E4E4
      E400E1E1E100DFDFDF00DBDBDB00D7D7D700D6D6D600D5D5D500D1D1D100CFCF
      CF00CCCCCC00CBCBCB00C5C5C500BEBEBE00CCCAC900D0CECD00D0CECD00D0CE
      CD00D0CECD00D0CECD00D0CECD00D0CECD00D3D2D000D5D4D300D5D4D300D5D4
      D300D5D4D300D5D4D300D5D4D300D5D4D300D5D4D300D5D4D300D5D4D300D5D4
      D300D5D4D300D5D4D300D5D4D300D5D4D300D5D4D300D5D4D300D5D4D300DAD9
      D8009F9C9C00211A1A00302929003029290027202000362F2F00DEDDDC00DAD9
      D700D5D4D300D5D4D300D5D4D300D5D3D200D1CFCE00D0CECD00D0CECD00D0CE
      CD00D0CECD00D0CECD00D0CECD00CECCCB000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9FA0027A2
      F900FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFF
      FE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFF
      FE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFF
      FE0025A2F90037A9FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000FCFCFC00FBFBFB00FBFBFB00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FBFBFB00FFFEFE00E8E7E600B3B0
      AF00F8F7F800FBFBFB00F9F9F900F9F9F900FAFAFA00FCFCFA00C5BFF1006559
      DD000F02CC001800D0001900D3001100D2008C8CE800FFFFFA00F9F9F900F7F7
      F700FBFBF800FAFAF900C0BDF200413AE2000F00DB001F05DF00250FE1004A3B
      E800B4AEE900E7E6D900EEEEE500F8F8F900F7F7F700F6F6F600F5F5F500F6F6
      F600F6F6F600F5F5F500F3F3F200F3F2F300D9D9D900ECECEC00F0F0F000F0F0
      EF00F0EFEF00F0EFEF00F0EFEF00EEEEEE00F2F2F200E4E4E400B5B5B500D0D0
      D000DDDCDC00D9D9D800F0F1F100F6F6F600F8F7F700F9F9F900FBFBFB00FCFC
      FC00FDFDFD00FDFDFD00FCFCFC00FAFAFA00F9F9F900F7F7F700F4F4F400F4F4
      F400EBECEC00E1E2E200C7C7C700B8B8B800B6B6B600D6D6D600ECECEB00E5E5
      E500E1E1E100DFDFDF00DBDBDB00D8D8D800D6D6D600D5D5D500D0D0D000CFCF
      CF00CDCDCD00CBCBCB00C5C5C500BEBEBE00CDCBCA00D1CFCE00D1CFCE00D1CF
      CE00D1CFCE00D1CFCE00D1CFCE00E1E0DF00C2C0BE00ADAAA900AFACAB00AFAC
      AB00AFACAB00AFACAB00AFACAB00AFACAB00AFACAB00AFACAB00AFACAB00AFAC
      AB00AFACAB00AFACAB00AFACAB00AFACAB00AFACAB00AFACAB00ADAAA900C1BF
      BD00A4A1A000211A1A0030292900272020003D363600EAE9E700C0BEBD00ADAA
      A900AFACAB00AFACAB00AEABAA00B3B0AE00E1DFDE00D4D2D100D1CFCE00D1CF
      CE00D1CFCE00D1CFCE00D1CFCE00CFCDCC000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9FA002AA3
      F900FFFFFE00EDF7FD00EDF7FD00EDF7FD00EDF7FD00EDF7FD00EDF7FD00EDF7
      FD00EDF7FD00EDF7FD00EDF7FD00EDF7FD00EDF7FD00EDF7FD00EDF7FD00EDF7
      FD00EDF7FD00EDF7FD00EDF7FD00EDF7FD00EDF7FD00EDF7FD00EEF7FD00FDFD
      FE0028A3F90037A9FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000FBFBFB00FBFBFB00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00F9F9F900FEFEFE00E1DFDE00B4B0
      B000F9F8F800FAFAFA00F9F9F900FAFAFA00FAFAFA00FBFBF900F5F4FA00D3CF
      F5003A32D6001000CF001B00D4001400D1003329DA00E3E2F900FFFFFA00FFFF
      F800F0F1F900A19CEE003128DD001400DC001900DC001900DF004433E400B0A8
      F100F3F4EE00DFDDDA00EDEDED00F8F8F800F6F6F600F4F4F400F5F5F500F6F6
      F600F5F5F400F2F2F300F4F4F300F2F2F300D6D6D600EAEAEA00F0EEEE00F0F0
      F200F1F5F700F2F6F900F3F8FA00F3F8FA00ECEDED00ABABAB00D5D5D500D9D9
      D900CDCFD200ECEDEE00FAFCFD00F8FAFB00F9FAFB00FBFDFD00FCFDFD00FDFC
      FD00FEFEFE00FEFEFE00FDFDFE00FCFDFD00FBFCFC00FAFAFB00F9FAFC00F6F7
      F900F5F7F900F0F2F200DBD9DA00CBCACA00AFAFAF00A9A8A900E9ECEE00EFF3
      F600E9EEF300E6ECEF00E2E8EB00DFE5E800DDE2E500DCE0E300D7DADE00D5D8
      DC00D2D5D800D1D1D100C9C9C900C1C1C100CECDCB00D2D1CF00D2D1CF00D2D1
      CF00D2D1CF00D2D1D000E2E2E00066606000160E0F001F1717001F1717001F17
      17001F1717001F1717001F1717001F1717001F1717001F1717001F1717001F17
      17001F1717001B131300170F0F00170F0F00170F0F00170F0F000F0708005D58
      5700AFACAB0021191A00282121003A333300DAD9D700A3A19F000D040500160F
      0F00170F0F00170F0F00170F0F00160E0F002D272600D8D7D600D4D3D100D2D1
      CF00D2D1CF00D2D1CF00D2D1CF00D0CFCD000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9
      FA0023A1F90023A1F90023A1F90023A1F90023A1F90023A1F90023A1F90023A1
      F90023A1F90023A1F90023A1F90023A1F90023A1F90023A1F90023A1F90023A1
      F90023A1F90023A1F90023A1F90023A1F90023A1F90023A1F90023A1F90023A1
      F90037A9FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000FBFBFB00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FBFBFB00FAFAFA00FBFBFB00FEFFFF00D8D6D600BBB5
      B500F9FAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FCFDFA00FFFF
      FD00A39FE8001202CE001900D2001B00D4000600D200625BE200F6F8FA00BBBB
      F000221BD8000700D6001300D9001C00DE001400DD002515E0008B81EA00EEED
      F900EDECE700E0DEDC00F4F3F300F6F6F600F3F3F300F6F6F600F6F6F600F4F5
      F500F4F3F200F5F4F500F3F2F300F5F5F500D5D5D500EAEAEA00F0EEF000F0F2
      F400F0F3F500F0F3F400EFF1F200F1F2F200E4E0DE009A999900D8D8D800D3D3
      D400CFD0D200F3F1F100F6F7F800F7F7F700F7F8F800F9FAFA00FBFBFB00FCFC
      FC00FEFDFD00FEFEFE00FCFCFC00FBFBFB00FBFAFA00F9F9F900F9FAFA00F6F6
      F700F3F3F400F3F2F100DBDADA00CFCFCF00B9B9BA00A4A4A700E1E1E000EDEE
      EE00E8E9EB00E4E6E800E0E2E300DEE0E000DCDDDE00D9DBDB00D5D6D700D4D5
      D700D2D4D500D1D3D400CACACA00C2C2C200D0CECD00D4D2D100D4D2D100D4D2
      D100D4D2D100D9D7D600B2AFAF00170F0F003029290030292900302929003029
      2900302929003029290030292900302929003029290030292900302929003029
      29002C2424004E4848006E6868006A6464006A6464006A646400656060009490
      9000ABA8A70019111200302A2A00EBEBE900CDCBCA00554E4E00696464006A64
      64006A6464006A6464006D6868004D4747001F18180066616000E0DFDE00D3D2
      D100D4D2D100D4D2D100D4D2D100D2D0CF000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9
      FA0033A8F90033A8F90033A8F90033A8F90033A8F90033A8F90033A8F90033A8
      F90033A8F90033A8F90033A8F90033A8F90033A8F90033A8F90033A8F90033A8
      F90033A8F90033A8F90033A8F90033A8F90033A8F90033A8F90033A8F90033A8
      F90037A9FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000FBFBFB00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FBFBFB00FAFAFA00FAFAFA00FBFBFB00FEFEFE00D2D0CF00BFBC
      BB00FBFAFB00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FFFF
      FB00D8D5F4004136D5001400D1001B00D3001700D4002619D8006667E3002A20
      DA001300D7001900DA001B00DA001500DD000E00DC007A72E900E1E0F500FBFB
      F900E5E4E300E2DFDF00F6F6F600F6F6F600F6F6F600F6F6F600F5F5F500F5F3
      F300F3F4F500F3F3F500F3F3F400F4F4F400D4D4D400EAEAEA00F0F0F100EAE6
      E400E2D9D200DED2C800DAC9BD00DECBBD00CAB8AC0093919100D9DADB00C8CB
      CC00D5D0CB00EBE1D900EDE5DF00EFE6E000F0E9E400F3EDE900F7F3F100F9F7
      F600FCFBFA00FDFCFC00F9F7F500F7F4F400F6F2F100F4F0EC00F1EBE500EEE6
      E200EAE0DB00E8DED600D6D7D700D4D5D500CCCDCD00A3A5A800C3B4A800D9C5
      B700D6C3B700D4C2B500D0BEB100CFBDB100CDBBAF00CBB8AB00CABAAD00CABB
      B000CBBFB700CECAC700CACBCB00C0C0C000D1CFCE00D5D3D200D5D3D200D5D3
      D200D5D3D200DDDBDA00918E8D00241C1C003029290030292900302929003029
      2900302929003029290030292900302929003029290030292900302929003029
      2900251D1D008D8A8A00ECEBE900E2E0DF00E2E0DF00E2E0DF00E2E1DF00E4E3
      E100999594002E282700DCDBDA00D8D6D500D7D5D400E2E0DF00E2E0DF00E2E0
      DF00E2E0DF00E2E0DF00E5E3E200DBDAD800170F0F0047414100E7E6E400D4D3
      D100D5D3D200D5D3D200D5D3D200D3D1CF000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9FA0034A8
      F90052B5FA004DB3FA004DB3FA004DB3FA004DB3FA004DB3FA004DB3FA004DB3
      FA004DB3FA004DB3FA004DB3FA004DB3FA004DB3FA004DB3FA004DB3FA004DB3
      FA004DB3FA004DB3FA004DB3FA004DB3FA004DB3FA004DB3FA004DB3FA0051B4
      FA0034A8F90037A9FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000FAFAFA00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00F9F9F900FAFAFA00FBFBFB00FBFBFB00FEFEFE00CDCACA00C7C4
      C300FDFDFD00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00F9F9F900F8F8
      F800FCFBFA00948AE7001405D2001800D3001C01D5001900D7001200D5001800
      D8001E00D9001D00DB001300D900170ADD008680E900EEEEF600FAFAF700F9F9
      F800E2DFDF00E5E2E300F7F9F900F6F7F700F6F5F600F6F6F500F4F3F200F5F2
      F300F2F4F400F2F5F500F4F3F500F5F5F400D1D1D100EBEBEB00E7DDD500A96D
      4300A96D4200B0785100AF774E00B2774A0089675000B5BBBF00CFD1D200C2BC
      B800CDB19D00D2B49D00DAC2B000DDC5B500E2CEBE00E5D6CA00F0E5DE00F4ED
      E800F9F6F400FCFCFA00F3EDE900F1E8E400EEE4DE00EADED200E1CEBF00DEC6
      B600D8BFAC00D0B29E00D1CCC800D2D4D700D3D5D600CCD4D9008B6E5800AF75
      4C00B1795100B0785100AF795100B0785100B0795100B0785100B0785000B078
      5100AF744B00AD6F4400D0D3D700C0BFC100D2D1CF00D5D4D300D5D4D300D5D4
      D300D5D4D300DEDDDC00928F8E00231C1C003029290030292900302929003029
      2900302929003029290030292900302929003029290030292900302929003029
      2900251D1D008E8B8A00ECECEB00E3E2E000E3E2E000E3E2E000E3E2E000E5E4
      E300D2D1D000D0CFCE00E8E7E600E3E2E000E3E2E000E3E2E000E3E2E000E3E2
      E000E3E2E000E3E2E000E5E5E300DDDCDB001710100047414100E8E7E600D5D4
      D300D5D4D300D5D4D300D5D4D300D3D2D1000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9FA0027A2
      F900FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFF
      FE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFF
      FE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFF
      FE0025A2F90037A9FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000FAFAFA00FCFCFC00FCFCFC00FCFC
      FC00FAFAFA00FBFBFB00FBFBFB00FBFAFA00FBFBFB00FDFDFE00C9C7C600CDCB
      CB00FEFEFE00FAFAFA00FAFAFA00FAFAFA00FAFAFA00F8F8F800F6F6F600F7F7
      F800FDFCFA00E0DFF6003932D7001200D3001C01D5001D00D8001D00D9001C00
      DB001F00D9001200D8000C03DB009E96ED00FDFDF700FBFCF700F7F7F700F9FA
      FA00DDDBDB00E8E6E500FAF9F900F5F5F500F4F6F400F3F2F400F5F3F400F4F3
      F400F2F3F300F5F5F500F5F5F500F5F5F500CCCCCC00EAEAE900DDCDC200A96D
      4200B37E5900BA8C6B00B5825D00B87F56008C715F00C0C3C700CDCFD000C4B9
      B100D0B09C00D3B6A100DBC2B100DDC6B700E2CEC000E5D6CA00F0E6DF00F4ED
      EA00FAF6F400FCFCFA00F3EDE900F1E8E400EFE5DE00EADFD400E2CDC000DEC7
      B800D9C1AE00D5B7A200CCC1B900CDD1D300D5D7D700CFD9DF008B746500B279
      5000B27C5500B07B5600B07B5600B07B5600B07B5600B07B5600B07A5500B17C
      5700B0795300AC6E4100D0D6D900BFBFC000D3D2D000D7D5D400D7D5D400D7D5
      D400D7D5D400DCDAD900B6B4B300160E0F003029290030292900302929003029
      2900302929003029290030292900302929003029290030292900302929003029
      29002C2525004D4747006C676600686362006863620068636200686362006863
      62006A6565006B66660068636200686362006863620068636200686362006863
      620068636200686362006C666600494342001F1818006B666600E3E2E100D7D5
      D400D7D5D400D7D5D400D7D5D400D5D3D2000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9FA0027A2
      F900FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFF
      FE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFF
      FE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFF
      FE0025A2F90037A9FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000FAFAFA00FCFCFC00FCFCFC00FBFB
      FB00F9F9F900FBFBFB00FBFBFB00FBFBFB00FBFCFC00FBFCFC00C7C3C300D1CE
      CD0000000000F9F9F900FAFAFA00FAFAFA00FAFAFA00F7F7F700F7F7F700F9F9
      F900FDFEF900FAF9FA005347DD000E00D2001C01D6001D00D8001D00D8001D00
      DB001B00DA000E01D6003532E100F4F2F900FDFDF700F6F6F700F7F7F700F8FA
      F900DCD9D800EAE7E900FAFAFB00F5F6F600F4F4F300F5F3F300F5F5F500F5F5
      F500F3F3F300F5F5F500F5F5F500F5F5F500C8C8C800E9E8E800D6C1B200B17B
      5400C0947600C7A18700C0957600C4926F0087776C00C9CDCF00CCCDCE00C8BD
      B300D3B7A200D7BCA900DDC6B600DFCABB00E4D2C300E7D7CD00F1E6DE00F4EE
      EA00FAF7F400FCFAFA00F4EEEA00F2EBE400EFE7DF00EAE0D700E2D0C500DFCB
      BD00DBC4B300D7BBA800CCBFB500CDD0D000D5D6D600D5DBE00092807300B681
      5800B5835E00B3825E00B3825E00B3825E00B3825E00B3815E00B3815D00B483
      6000B3805A00AD6F4200D1D5D800BDBEBE00D4D3D100D8D6D500D8D6D500D8D6
      D500D8D6D500D8D6D500E8E7E6006D686800140D0D001E1717001E1717001E17
      17001E1717001E1717001E1717001E1717001E1717001E1717001E1717001E17
      17001E1717001A131300170F0F00170F0F00170F0F00170F0F00170F0F00170F
      0F00170F0F00170F0F00170F0F00170F0F00170F0F00170F0F00170F0F00170F
      0F00170F0F00170F0F00170F0F00160E0E0030292800DEDCDC00D9D8D700D8D6
      D500D8D6D500D8D6D500D8D6D500D6D4D3000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9FA0034A8
      F9004EB3FA004AB1FA004AB1FA004AB1FA004AB1FA004AB1FA004AB1FA004AB1
      FA004AB1FA004AB1FA004AB1FA004AB1FA004AB1FA004AB1FA004AB1FA004AB1
      FA004AB1FA004AB1FA004AB1FA004AB1FA004AB1FA004AB1FA004AB1FA004EB3
      FA0034A8F90037A9FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000FBFBFB00FCFCFC00FCFCFC00F9F9
      F900FBFBFB00FBFBFB00FBFBFB00F9F9F900FCFCFC00F6F6F600C2C0BF00D7D3
      D30000000000F9F9F900FAFAFA00FAFAFA00F8F8F800F7F7F600F9F9F800FFFF
      FA00F6F6F900B0ADEC003021D7001400D3001C01D6001D00D8001D00D8001B00
      DA000901D6005C57E200D5D4F500FCFEF700F7F7F700F7F7F700F7F6F700F8F8
      F800DAD9D800ECEBEA00F9FAFA00F4F4F400F3F4F400F5F5F400F4F5F500F4F5
      F500F5F4F400F5F5F500F5F5F500F5F5F500C6C7C700E7E7E700D8C5B700BB8B
      6900D1B19B00DAC1B100D2B39C00D7B59C0094897F00CBCDCE00C8C9CB00CDC5
      BF00DECABC00E2CFC000E6D5C900E8D7CD00E9DCD300ECE1D900F3ECE600F5F2
      EE00FAF9F700FCFBFB00F6F0EE00F4ECE900F2E9E400EFE4DA00E7D7CB00E3D1
      C500E1CABC00DCC4B300CEC3BC00C8CCCC00D4D5D600D2D9DE0096867900C392
      6F00C2947400BF947400BF947400C0947400C0957400BF937300BD937300BE94
      7500BC8D6D00B37D5700D3D6D800B8B8B800D5D4D200D8D7D600D8D7D600D8D7
      D600D8D7D600D8D7D600D8D7D600E9E8E700CDCBCA00B5B3B200B8B5B400B8B5
      B400B8B5B400B8B5B400B8B5B400B8B5B400B8B5B400B8B5B400B8B5B400B8B5
      B400B8B5B400B8B5B400B8B5B400B8B5B400B8B5B400B8B5B400B8B5B400B8B5
      B400B8B5B400B8B5B400B8B5B400B8B5B400B8B5B400B8B5B400B8B5B400B8B5
      B400B8B5B400B8B5B400B7B4B300BDBAB900EBEAE800DBD9D800D8D7D600D8D7
      D600D8D7D600D8D7D600D8D7D600D7D5D4000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9
      F90026A2F9002CA4F9002BA4F90025A2F90030A6F90026A2F90028A3F90033A8
      F90033A8F90033A8F90033A8F90033A8F90033A8F90032A7F9002BA4F9002DA5
      F9002EA6F9002FA6F90032A7F90033A8F90033A8F90033A8F90033A8F90033A8
      F90037A9FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000FCFCFC00FBFBFB00FAFAFA00FBFB
      FB00FBFBFB00FAFAFA00FAFAFA00F7F7F700FBFCFC00EEEDEC00BDBAB800DCDA
      D900FEFEFE00FAFAF900FAFAFA00F8F8F700F8F8F600FEFEFA00FBFBFA00EBEC
      F700716EDF001D10CF001600D2001B00D3001C01D6001D00D8001D00D9001B00
      DA000A01D7006861E300F1EFF700FBFBF700F7F7F700F6F6F600F5F6F600F7F7
      F700D8D6D600EFEDEE00F9F9F900F4F4F400F3F5F500F4F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F4F4F400F4F4F400C3C3C300DBDBDB00E5DDD600C195
      7500E1CEC000F2EAE400D3C3B600AD9E9300817A7200B8BBBB00CECFCF00C9C8
      C600C9C1BB00CBC4BC00D4CDC800D8D0CB00DCD7D100E2DED900ECEAE700F2F1
      EE00F8F8F600FCFBFB00F1EFEF00EEEBE800EBE7E400E5E0DD00DAD2CD00D5CB
      C400CEC5BC00C8BCB400D2D0CE00CFD0D200D8D9DA00CDD1D3007F716900997D
      6C00987F6D00967D6B00977E6C009A816F0090766400A5887200D1B09700CDAA
      9100C59A7D00C09B8000D0D2D200AEAEAE00D6D5D300D9D8D700D9D8D700D9D8
      D700D9D8D700D9D8D700D9D8D700D9D8D600DDDBDA00DFDEDC00DFDEDC00DFDE
      DC00DFDEDC00DFDEDC00DFDEDC00DFDEDC00DFDEDC00DFDEDC00DFDEDC00DFDE
      DC00DFDEDC00DFDEDC00DFDEDC00DFDEDC00DFDEDC00DFDEDC00DFDEDC00DFDE
      DC00DFDEDC00DFDEDC00DFDEDC00DFDEDC00DFDEDC00DFDEDC00DFDEDC00DFDE
      DC00DFDEDC00DFDEDC00DFDEDC00DEDDDB00DAD8D700D9D8D700D9D8D700D9D8
      D700D9D8D700D9D8D700D9D8D700D8D6D5000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9F90033A7
      F900BFE3FC0067BEFA0073C3FA00B9E0FC003BABFA00B9E0FC0097D2FC002AA4
      F90038AAFA0038AAFA0038AAFA0038AAFA0036A9F90027A2F9008BCDFB0061BB
      FA005EBAFA005CB9FA003FADFA0036A9F90038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB0F500FFFCF4000000000000000000FBFBFB00F9F9F900FAFAFA00FBFB
      FB00FBFBFB00FAFAFA00F9F9F900F9F9F900FBFCFC00E6E4E400BBB7B700DEDC
      DC00FEFEFE00F9F9FA00FAFAF800FEFFF800FFFFFC00E6E6F6008C86E4005246
      DA001100CC001400D0001C00D3001B00D3001800D4001C00D8001D00D8001C00
      DB001900D9001C0ADA00A09BEB00FFFFF900F7F7F600F4F4F400F6F6F600F5F4
      F500D9D6D500F0EFEE00F7F7F700F4F4F400F3F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F3F3F300F1F1F100C7C7C700D1D2D200EAE5DF00C39A
      7B00E6D6CA00FAF8F7009A938E00403B38003A383600AEB0B000D2D1D200C3C4
      C400BDBBBB00BEBDBC00C7C5C400CDCCCB00D4D2D200DCDBDB00E8E8E800F0F0
      F000F7F7F700FBFBFB00F0F0F000EBECEB00E8E8E700E2E0E000D5D4D400D0CE
      CD00C9C7C600C3C0BF00CECECE00D2D2D200DBDBDB00BDBDBE0085827F00908A
      86008C88840087827F008E8985008A8480003A332F00493D3400DFC2AB00D8B9
      A200C8A18400C4A48E00D0D1D200A9A9A900D7D6D500DAD9D800DAD9D800DEDD
      DB00DEDDDB00DAD9D800DCDAD900E0DFDD00DAD9D800DDDCDA00DEDDDC00DAD9
      D800DAD9D800DAD9D800E0DFDE00E0DFDE00DCDBDA00DAD9D800DFDEDD00DCDB
      DA00DAD9D800DDDCDB00DEDDDC00DCDBDA00E0DFDE00E0DFDE00E0DFDE00DBDA
      D800E0DFDE00DBDAD800DDDCDA00DFDEDD00DFDEDD00DEDDDC00DAD9D800E0DF
      DE00DBDAD800DAD9D800DEDDDC00DDDCDA00DEDCDB00DEDDDB00DAD9D800DCDA
      D900DFDFDD00DAD9D800DAD9D800D8D7D6000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0037A9FA0024A1
      F900ECF6FD00ECF6FD008CCDFB00FFFFFE007AC6FB00E7F4FD00FFFFFE0034A8
      F90035A8F90033A8F90032A7F90034A8F90026A2F900E9F5FD006FC1FB00F1F8
      FD0094D1FC0087CCFB0052B5FA0038AAFA0037A9F90038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A8
      FA004EB1F600FFFCF4000000000000000000F9F9F900FBFBFB00FBFBFB00FBFB
      FB00F9F9F900F7F7F700FAFAFA00FAFAFA00FAFBFB00DBD9D900B7B3B200E1DF
      DF00FDFDFD00F9F9F800F8F9F700D8D7F4008380E2001C14CA000A00CA001000
      CE001900CF001A00D2001800D3001100D100281ED6001B06D7001C00D8001D00
      DB001E00D9001400D9002016DB00CACAF300FAFAF600F6F6F600F6F6F600F2F2
      F100D9D7D600F2F2F100F7F6F600F3F4F400F3F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F2F2F200F1F1F100F1F1F100D1D1D100C4C4C400EDE9E300C5A0
      8200E1CFC200F5F1EE00979594002F2F2F002F3031009FA1A100D4D3D300C1C2
      C300C4C4C700CACBCD00D0D0D000D6D6D700DCDBDD00E1E1E200ECECEC00F3F3
      F400F8F8F900FBFBFB00F2F4F400EEF0F000ECECED00E7E7E800DEDEE000D9D9
      DB00D4D4D500CFD0D100C9CACA00D4D4D400DADADA00B1B1B1009B9C9C00A7A9
      AA00A4A7A900A2A4A600AAACAD009C9D9F00282829003C373200E6CEBB00DCC0
      AA00C7A08300C6AC9800C0C1C100B3B3B300D8D7D500DBDAD800DFDDDC00C2C0
      BF00C3C0BF00E0DFDD00D5D4D300B0ADAC00E3E2E100CAC8C700BDBBBA00DFDE
      DD00DCDAD900E2E1DF00B0AEAD00B1AEAD00D5D3D200E3E2E100B4B1B000D1D0
      CE00E0DFDD00C6C4C300C0BEBD00D4D2D100B3B0B000B5B2B200B0AEAD00E2E1
      E000ADAAAA00DFDEDD00CBC9C800B6B4B300C0BEBD00BEBCBB00E2E1E000ADAB
      AA00DCDBDA00E0DEDD00BDBBBA00CECCCB00C5C3C200C2BFBF00E1E0DF00D7D5
      D400AFABAA00DFDEDD00DBDAD900D9D8D7000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA002EA5
      F9007DC7FB00FFFFFE009FD6FC00FFFFFE00E2F2FD006FC1FB00FFFFFE0090CF
      FB001B9DF90057B7FA0057B7FA003AAAF90077C5FB00A9DAFC009ED5FC00ECF6
      FE002EA6F90026A2F90077C5FB0039AAFA0037A9F90038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0033A9
      FB004DADEF00FFFDF5000000000000000000FBFBFB00FBFBFB00FBFBFB00FAFA
      FA00F7F7F700F9F9F900FAFAFA00FAFAFA00FAFAFA00D1CFCE00B5B2B100E3E1
      E100FCFCFC00FCFBF900D5D4F1005E56D9001103C9001500CC001900CE001D00
      D1001B00CE001100D0001304D000554EDF00B5B2EF002E21DA001200D7001D00
      DA001E00D9001C00DB000D00D9005C59E400F2F3F600F8F8F600F5F5F700EEEE
      ED00DAD9D700F3F3F200F6F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F4
      F500F3F3F300F2F2F200F3F3F300F2F2F200FCFCFC00DEDEDE00D3D2D100E5DD
      D800DAC5B700D5BAA800E8D5C800E4D6CA00D5CCC00097928B00DFE0E000C7C7
      C700C8C8C800EEEFF000F0F0F000F1F1F000F2F2F200F3F3F300F7F7F700F8F8
      F800FCFCFC00FCFCFC00F9F9F900F7F7F700F6F6F600F5F5F500F1F1F100EDED
      ED00EDEDED00EDEEEF00CECDCD00DADADA00BEBEBE00A7A7A700D0D0D000D9D8
      D800E2E2E100F4F4F400F6F7F800D2D2D400A6948800D9BCA800CDAC9300CDAE
      9700D3C0B200CBC6C200DBDCDB00F9F9F900D9D8D600DCDBD900E9E8E7005E5A
      59005E595900EFEEED00BAB7B60004000000F9F8F700847F7F00453E3E00EBEA
      E900DEDDDC00DAD9D8001008080010080800A29F9F00F1F1EF001A131100A5A1
      A200EFEEED00716C6B00524C4C00ACA9A9000F0707001F1717000D050500EFEE
      ED0000000000E7E5E4008A8585001A1312001C1414001B131400F5F5F3000000
      0000DBDAD900EEEDEC00453E3F00918E8C006A6464005D585700EBEBEA00AEAB
      AB000D050600EBEAE900DCDBDA00DAD9D8000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0036A9
      F90028A3F900FFFFFE00F0F8FD00FFFFFE00FFFFFE003EADFA00FFFFFE00F1F8
      FD0094D1FB00CDE9FD0000000000ECF6FD0084CAFC0095D1FC0041ADFA00C7E6
      FD0071C2FB0085CAFB001E9FF90062BBFB0034A8F90038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038ABFC0031A0
      ED004DA9EB00FFFDF6000000000000000000FBFBFB00FBFBFB00FAFAFA00F7F7
      F700FAFAFA00FAFAFA00FAFAFA00FAFAFA00F9FAFA00C8C5C500B5B0B000E6E5
      E600FCFCFC00FEFEFB00B5B1EA001307C8001500CB001C00CF001900CD001800
      D0001100CC001E18D1009E9DE900EAE9F800FFFFFA00A6A1EC001608D5001A00
      D8001E00DA001D00DB001700DA002112DD00A09FEC00FFFFF600F7F8F600EBEA
      EA00DCDADA00F6F5F600F5F5F500F3F3F500F5F5F500F5F5F500F5F5F500F3F2
      F200F3F3F300F4F4F400F4F3F300F2F0F00000000000FBFBFB0091919200C0C0
      C200DEDCD900E4E0DC00E3E2E100E6E5E500DEDCDA0099999800DBDBDB00DEDE
      DE00B6B6B700D3D5D700F8F8F800F1F1F100ECECEC00EDEDED00F6F6F600F8F8
      F800FBFBFB00FDFDFD00F9F9F900F5F5F500F4F4F400F5F5F500FBFBFB00FAFB
      FB00F4F5F500DBDBDD00DBDBDB00D3D3D300B5B5B500C3C3C300EFEFEF00F2F1
      F100F1F1F100EFEFEF00F4F4F400CDCDCD00AFADAC00DEDAD700DBDBD700D7D7
      D300C0C1C20097979800FBFBFB0000000000DAD8D700DCDBDA00E9E9E7006965
      64006E6A6900FBFBF900C7C5C400160E0F00F9F9F7008B888700514C4B00EDED
      EB00DBD9D80000000000F7F7F6000000000036303000A7A3A200312A2A00B3B0
      B000FBFBF900817C7B005F5A5900B0ADAC00342D2D0000000000EFEFED00E8E7
      E60009000100E9E8E600837F7E00413B3B0000000000EFEEEC00E7E7E5000C04
      0400E8E7E600FAFAF800554F4F009A96950074706F0074706E00ACA9A8003029
      290000000000DEDDDB00DDDBDA00DBDAD8000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0026A2F900C1E4FC00FFFFFE00FAFCFE00FFFFFE0096D2FC00BDE2FC00FFFF
      FE00FFFFFE006BBFFA0026A2F9002DA5F90061BBFA00D7EDFD00169BF90084CA
      FB004EB3FA0093D1FB007CC6FB005AB8FB0034A8F90037AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038ABFC0036A2ED00319D
      E8004DAAEC00FFFDF6000000000000000000FAFAFA00FAFAFA00F8F8F800FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00F9F9F900BFBCBC00B4B2B100E9E9
      E800FCFCFC00FFFFFB00E9E9F7003F39D0001500CA001800CE000E00CB001307
      CB007A6EE100D9D7F500FFFFFA00FAFAF700FAFAF700F4F3F7007971E4001A08
      D8001B00D9001B00DB001A00DA001600DD001104DC00A2A0EE00FBFBF800E8E8
      E600DFDCDB00F7F6F700F3F3F300F5F5F500F5F5F500F4F4F400F2F3F300F3F4
      F400F4F4F400F4F3F300F4F2F200F2F1F1000000000000000000E0E1E000C8C9
      C800B9B9B800B3B3B300B4B5B500B5B6B600B3B4B4009B9B9D00C9C9C900E1E1
      E100D1D1D100B7B8B800EEEFEF00F5F5F500F1F0F000EDECEC00F2F2F200F7F8
      F800FBFBFB00FBFBFB00FAFAFA00F7F7F700F6F6F600F5F5F500FAFAFA00F7F8
      F800E1E2E200C3C3C400DCDCDC00C5C5C500BEBEBE00E2E2E200F2F2F200EFEF
      EF00EFEFEF00EEEEEE00F3F3F300CAC9C900A4A6A600B3B4B400B2B2B200B6B5
      B500C4C4C400E1E1E1000000000000000000DAD9D800DDDCDB00EAE9E800726D
      6D00191111000F060700150D0D0028212100FAFAF8008C888700514C4B00EEEE
      EC00DDDCDA000B030300E7E7E500F0F0EE003F3A3900AFACAA003E383800160E
      0E000F0607001811110069646300B0AEAC00302A2900F1F0EF00DEDDDC00E8E7
      E50008000000E1DFDD00EAE9E800A5A2A1001C151500FFFFFE00E8E7E6001E16
      1700120A0A000F06070019111100A09D9C007C7877001A111200150D0D001E16
      16001D161600EEEDEB00DEDCDB00DCDAD9000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0030A7F90063BCFA00FFFFFE00FEFEFE00B2DEFC00FFFFFE0054B6FA00FFFF
      FE0098D3FC000F98F90031A7F90036A9F90022A0F900F3F9FE0056B6FA001C9E
      F90061BBFA00C1E4FC0075C4FB0066BDFB0032A7F90037AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038ABFD0036A1EC00359FE700319D
      E9004DAAEC00FFFDF6000000000000000000F9F9F900F7F7F700F9F9F900FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00F8F8F800B3AFAE00A4A19F00C2BD
      BD00D4D2D200DEDCDB00F1EFE900B0AEE4001E12CE000A00D0004E4BDC009191
      E700EDEBFB00FFFFFE00FCFCFC00F7F7F700F6F6F700FAFAF700D9D6F4003530
      DD001100D7001C00DB001A00DA001C00DE000F00DD00302AE200DCD9F600E8E7
      E500DFDEDD00F6F7F700F3F3F300F5F5F500F4F4F400F3F3F300F2F3F300F3F4
      F400F4F4F400F3F2F200F3F1F100F2F1F1000000000000000000FDFDFD00F5F5
      F500F0F0F000EEEEEE00EEEFEF00EEEEEE00EEEEEE00E0E0E100B9B9B900CDCD
      CD00E1E1E100D0D0D000C6C6C600DFDFDF00F3F4F400F7F6F600F4F3F300F6F6
      F600F7F7F700F7F7F700F8F8F800F6F6F600F5F6F600F6F7F700F4F4F400E2E3
      E300CBCBCB00D0D0D100D1D1D100B8B8B800D3D3D300EFEFEF00EFEFEF00ECEC
      EC00EDEDED00EDEDED00EFEFEF00C3C4C400E2E2E200EEEEEE00EEEDED00EFEF
      EE00F4F4F300FDFDFD000000000000000000DBDAD900DEDCDC00EBEAE900615B
      5B0065606000F9F8F700C3C0BF0006000000000000009793930057515200FFFE
      FD00DEDCDB000B030300E8E7E600F1F0EF00403A3A00AEACAB00231C1C00ADAB
      AA00F9F9F70078737300544E4F00B2AEAD00302A2900F1F0EF00DFDDDD00E8E8
      E70008000000E1DFDE00EAE9E800F5F4F300C1BFBD001D151600F7F7F6000000
      0000E5E3E200F8F7F6004A44440093908E006B666700635D5D00F9F9F800C2C0
      BF0009010200F0EDEC00DEDDDC00DCDBDA000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0037A9FA001F9FF900FFFFFE00FFFFFE0059B8FA00FFFFFE0053B5FA00FFFF
      FE00FFFFFE00EEF7FD005BB9FA0032A7F90036A9F90028A3F900DBEFFD008CCD
      FB002CA5F90022A0F9005AB8FA0064BCFA0033A8F90038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038ACFD00359EE600359CE50036A0E900319D
      E9004DAAEC00FFFDF6000000000000000000F7F7F700F9F9F900FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00F8F9F900C2BFBD00AFABAA00ADA7
      A700B1ADAB00B9B3B200C8C4BE00C3BECA00413CC6003E3BC600AFAADC00EFEE
      EB00F2F1EE00F3F3F100F6F5F600F6F8F700F9F9F900FBFCF900FDFFFC007F7F
      EA001000D9001400DB001900DA001D00DE001A00DD001C0FDE009D99EF00E8E6
      E400E3E2DF00F7F8F700F3F3F300F5F5F500F3F3F300F2F2F200F3F4F400F4F4
      F400F4F2F200F2F1F100F2F2F200F2F1F1000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400E4E4E400C3C3
      C300B5B5B500D2D3D300DEDFDF00D7D8D700D1D3D200D5D7D600ECEEEF00F1F3
      F500F6F7F800F8F9F900F1F3F400EFF2F300ECEEEF00E2E3E400D5D4D500D7D7
      D700DADADA00D6D6D600B5B5B500D0D0D000D9D9D900D6D6D600D5D5D500D5D5
      D500E0E0E000F1F1F100EEEEEE00C2C2C200F1F1F10000000000000000000000
      000000000000000000000000000000000000DCDBD900DEDDDC00E2E1E000CECD
      CC007D797900342D2D0049434300CFCECC00837E7F0027201F00221B1B00504A
      4900ECECEB0000000000E8E8E600F2F1F000362F2F009C9A9800CECCCC00544F
      4F00342D2D00736F6E00D3D2D100A19D9C00251F1F00F2F1F000DFDEDD00E8E8
      E70000000000E8E7E60096939200322A2A003B34340017101000F3F3F200BEBC
      BB0039333300342D2D008B878700D8D7D600D1CFCE007E7A7900342D2D004A44
      4300C4C2C100E3E2E100DFDDDC00DDDCDB000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA002DA5F9008CCEFB00DEF0FD0024A1F900D5ECFD008ECEFB0089CC
      FB00D0EAFD00D6EDFD0090CFFB002EA6F90038AAFA0036A9F90025A2F90055B6
      FA0091CFFB008CCDFB004DB3FA0030A6F90038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038ADFE00359BE2003498DE00369EE70036A0E900319D
      E9004CAAEC00FFFDF6000000000000000000F9F9F900FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00F9F8F800F9F9F900F3F3F200EFEFEE00E8E7
      E700DDDCDB00D5D2D100CFCCCA00D2D0C900B4AFCC00CBC8C500D2D0C200C8C5
      C100C5C2C100CAC6C400CFCCCB00D6D4D200DCDAD900E1DFDE00E8E7E300E7E6
      E9006B68D9002A20D8001600DB001C00DE001B00DD001800DE00372CE300ABA6
      DE00F3F2E200F7F8F700F3F3F300F4F4F400F3F3F300F4F4F400F4F4F400F4F3
      F300F4F1F100F3F3F300F3F2F200F1EFEF000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F3F300F1F1F100EEEE
      EE00C6C6C6008E8E8E00DBDBDB00DFDFDF00E1E2E100DADBDA00E2E2E200EDED
      ED00F6F6F700F9FAFB00ECEDED00E7E9E900E2E3E300D9D8D900DFDFDF00DEDE
      DE00D2D2D2009D9D9D00C5C5C500C9C9C900C6C6C600C3C3C300C3C3C300C3C3
      C300D0D0D000E9E9E900EBEBEB00C3C3C300F1F1F10000000000000000000000
      000000000000000000000000000000000000DDDBDA00E0DEDD00E0DEDD00E7E5
      E400C3C1C000938E8E00A19D9D00F3F1F000B5B2B200979392009B979600A09D
      9C00E8E6E5008E8A8900E4E2E100E7E6E500A39F9F00C6C4C300EFEEED00A9A5
      A400938E8E00BCBAB900EBEAE900C8C6C5009D999900E7E6E500E0DEDD00E4E3
      E2008E898900E5E3E200C1BEBD0094908F009B9796009B979600E7E5E400ECEA
      E90097939200938F8E00CCCAC900E5E4E300E7E5E400C4C1C000938E8E00A29E
      9E00ECEBEA00E0DEDD00E0DEDD00DEDCDB000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA002DA5F90027A2F90036A9F90027A3F9002DA5F9002DA5
      F90027A2F90027A2F9002EA6F90038AAFA0038AAFA0038AAFA0037AAFA0034A8
      F9002FA6F9002FA6F90035A8F90038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038ADFF003497DD003394D600359AE100369EE70036A0E900319E
      E9004BA9EB00FFFDF6000000000000000000FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00F9F9F900F7F7F700F9F9F900FAFAFA00FBFBFB00FAFA
      FA00F9F9F900F8F8F800F9F9F900FAF9F900FBFBF700F6F6F300F0F0EF00ECEB
      EC00EAE8E800E7E5E400E1E0E000DCD9D900D6D5D300D2CFCE00D0CCCB00D7D5
      CC00DFDDC900918BCD001D10D7001600DD001B00DD001C00DF001800E0003126
      DE00E9E9E700FFFFF700F6F6F400F3F3F300F4F4F400F4F4F400F4F4F400F3F1
      F100F3F2F200F3F3F300F2F2F200F0EFEF000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F3F300F1F1F100F2F2
      F200EEEEEE00CECECE0082828200B7B7B700D5D5D500E2E1E100E1E1E100E3E3
      E300E7E7E700EEEEEE00E1E1E000DFDFDE00DFDFDE00E1E0E000DCDCDC00C7C7
      C7009C9C9C00C8C8C800E0E0E000DEDEDE00DDDDDD00DCDCDC00DBDBDB00DADA
      DA00DADADA00E1E1E100DFDFDF00B9B9B900F0F0F00000000000000000000000
      000000000000000000000000000000000000DDDCDB00DFDEDE00DFDEDE00DFDE
      DE00E3E3E200E8E8E700E7E6E500DFDEDD00E4E4E300E8E8E700E8E8E700E7E6
      E500E0DFDE00E8E7E600E0DFDE00DFDEDD00E6E5E400E3E2E100DFDEDD00E6E5
      E400E8E8E700E4E3E200DFDEDE00E3E2E100E7E6E500DFDEDD00DFDEDE00E0DF
      DE00E8E8E600E0DFDE00E3E3E200E8E8E700E8E7E600E8E7E600E0DFDE00E0DF
      DE00E8E7E600E8E8E700E3E2E100DFDEDE00DFDEDE00E3E3E200E8E8E700E7E6
      E500DFDEDD00DFDEDE00DFDEDE00DEDDDC000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AEFF003493D700328FCF003496DA00359AE100369EE70036A0E900319E
      E9004AA9EB00FFFDF5000000000000000000FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00F8F8F800F7F7F700F9F9F900F9F9F900F7F7F700F6F6F600F5F5
      F500F8F8F800F8F8F800F8F8F800F8F8F800F7F8F800F8F8F900F9F9F900F7F7
      F700F8F8F800F8FAFA00F9F9F900F9FAFA00F8F8F800F9F8F900F8F8F800F6F6
      F600FAFBF600FBFAF3009994EB001203DB001700DD001E00DF001D00E0001100
      E000423AE500C1BEEF00F1EFF500F6F6F300F5F5F400F3F3F300F2F2F200F2F3
      F300F1F3F300F1F3F300F2F1F200F1EFEF000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400F1F1F100F2F2
      F200EAEAEA00F0F0F000EBEBEB00C0C0C000AAAAAA00B4B4B400D0D0D000D6D6
      D600D6D6D600D5D5D500D9D9D900DDDDDD00D5D5D500C3C3C300B4B4B400A9A9
      A900CBCBCB00CBCBCB00C0C0C000C0C0C000BFBFBF00BDBDBD00BEBEBE00BCBC
      BC00C8C8C800E2E2E200DEDEDE00B6B6B600EFEFEF0000000000000000000000
      000000000000000000000000000000000000DEDDDB00E1DFDE00E1DFDE00E1DF
      DE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DF
      DE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DF
      DE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DF
      DE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DF
      DE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DF
      DE00E1DFDE00E1DFDE00E1DFDE00DFDEDD000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AF
      FF003390D1003188C6003392D3003496DA00359AE100369EE70036A0E900319E
      E90049A8EB00FFFEF6000000000000000000FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00F9F9F900F8F8F800F9F9F900F9F9F900F8F8F800F6F6F600F6F6F600F7F7
      F700F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700F6F6F600F6F6
      F600F7F7F700F7F7F700F6F6F600F4F4F400F6F6F600F6F6F600F5F5F500F5F3
      F500F5F5F600FBFCF500F3F2F500685CE7001100DC001600DD001C00E0001C00
      E1001000E0003025E300645EE800B7B3F000F6F6F300F3F2F200F1F2F200F1F3
      F300F2F3F300F1F3F200F2F0F100F2EFEF000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F3F300F1F1F100F1F1
      F100EBEBEB00EDEDED00F3F3F300EBEBEB00D2D2D200B4B4B400B8B8B800B7B7
      B700B7B7B700BBBBBB00BBBBBB00C4C4C400C1C1C100B3B3B300C2C2C200D9D9
      D900DDDDDD00D8D8D800D2D2D200D3D3D300D1D1D100D0D0D000CFCFCF00CECE
      CE00D3D3D300DFDFDF00DEDEDE00B6B6B600EFEFEF0000000000000000000000
      000000000000000000000000000000000000DEDDDC00E1DFDE00E1DFDE00E1DF
      DE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DF
      DE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DF
      DE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DF
      DE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DF
      DE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DFDE00E1DF
      DE00E1DFDE00E1DFDE00E1DFDE00DFDEDD000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0039B0FF00318C
      CB003082BC00328CCB003392D3003496DA00359AE100369EE70036A0E900319D
      E9004AAAED00FFFFFB000000000000000000FAFAFA00FAFAFA00FAFAFA00F9F9
      F900F7F7F700F9F9F900F9F9F900F8F8F800F6F6F600F7F7F700F7F7F700F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700F5F5F500F6F6F600F7F7
      F700F7F7F700F6F6F600F4F4F400F5F5F500F6F6F600F6F5F500F3F2F200F5F3
      F400F3F4F500F5F4F500FAFAF500E5E2F5007F78E9001D10DE001200DF000F00
      E0002112E3002412E4003123E4008277EB00D8D3F100F6F6F200F2F3F300F3F3
      F300F3F3F300F2F3F200F2F0F000F4F0F1000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F3F300F1F1F100F1F1
      F100ECECEC00ECECEC00F1F1F100F1F1F100E5E5E500D6D6D600C8C8C800C3C3
      C300C2C2C200C5C5C500C1C1C100C4C4C400C7C7C700CDCDCD00D4D4D400D2D2
      D200CECECE00CDCDCD00D8D8D800D6D6D600D5D5D500D4D4D400D3D3D300D1D1
      D100D5D5D500DDDDDD00DEDEDE00B6B6B600EFEFEF0000000000000000000000
      000000000000000000000000000000000000DFDEDC00E2E1DF00E2E1DF00E2E1
      DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1
      DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1
      DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1
      DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1
      DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1DF00E2E1
      DF00E2E1DF00E2E1DF00E2E1DF00E0DFDD000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0037AAFA0037ACFF002D80BD002974
      AC002D7FBC002E85C6002F8CCF003090D6003195DE003299E500329BE7002D99
      E70043A6ED00000000000000000000000000FAFAFA00FAFAFA00F9F9F900F7F7
      F700F9F9F900F9F9F900F8F8F800F7F7F700F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F7F7F500F5F5F600F7F7F700F7F7F700F7F7
      F600F6F6F600F4F4F400F6F6F600F6F6F600F5F6F500F3F2F200F3F3F400F4F5
      F500F3F5F500F3F5F500F4F5F500F9F9F500FCFCF600BBBCEE005A59E5006860
      E600E3E3F300F6F6F300EFECF200E3E1F100F1F1F300F3F3F300F3F3F300F3F3
      F300F2F3F300F3F3F300F2F0F000F4F2F2000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400F1F1F100F1F1
      F100ECECEC00EFEFEF00F2F2F200F1F1F100EDEDED00EAEAEA00EBEBEB00EAEA
      EA00EAEAEA00E8E8E800E7E7E700E6E6E600E5E5E500E5E5E500E2E2E200E1E1
      E100E1E1E100DFDFDF00E3E3E300E1E1E100DFDFDF00DEDEDE00DCDCDC00DDDD
      DD00DBDBDB00DADADA00DADADA00B3B3B300EEEEEE0000000000000000000000
      000000000000000000000000000000000000DEDDDB00E2E1E000E1E0DF00E1E0
      DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0
      DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0
      DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0
      DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0
      DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0
      DF00E1E0DF00E1E0DF00E2E1E000DFDEDD000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0037A9FA0033A6FB0041A3DC0050B5E10052BD
      ED0053BEEF0053C0F10053C2F30053C3F50053C4F70054C5F80054C5F90045C1
      F90089D4FA00000000000000000000000000FAFAFA00F9F9F900F7F7F700F9F9
      F900F9F9F900F7F7F700F5F5F500F7F7F700F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F7F7F700F5F5F500F7F7F700F7F7F700F6F7F600F4F6
      F400F5F4F400F6F6F600F6F6F600F4F4F500F4F4F200F4F3F400F3F3F500F2F5
      F500F3F5F500F4F5F500F5F5F500F5F5F500F5F5F400F8F8F400F5F7F400ECEB
      F100F8F8F400F8F8F200F8F7F200F6F5F100F4F3F300F4F3F300F4F3F300F2F3
      F300F2F3F300F4F2F200F2F0F000F5F4F4000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400F1F1F100F0F0
      F000EDEDED00F0F0F000F1F1F100F0F0F000F0F0F000F1F1F100F0F0F000EEEE
      EE00EEEEEE00EDEDED00EBEBEB00EAEAEA00EAEAEA00EAEAEA00E8E8E800E6E6
      E600E6E6E600E4E4E400E2E2E200E1E1E100DDDDDD00DCDCDC00DADADA00DADA
      DA00D8D8D800D8D8D800DADADA00B0B0B000EEEEEE0000000000000000000000
      000000000000000000000000000000000000DFDEDC00E2E1E000E2E1E000E2E1
      E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1
      E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1
      E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1
      E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1
      E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1
      E000E2E1E000E2E1E000E3E1E000DFDEDD000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0037A9FA0033A5F90053C5FA0064DAFF0061D6FF0060D6
      FF0060D5FF0060D5FF0060D5FF0060D5FF0060D5FF0060D5FF0052D1FF008CDF
      FE0000000000000000000000000000000000F9F9F900F7F7F700F9F9F900F9F9
      F900F9F9F900F6F6F600F7F7F700F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F7F7F700F5F5F500F7F7F700F7F7F700F7F7F700F6F6F600F4F4
      F400F6F5F600F6F6F600F6F6F600F4F3F300F3F5F400F5F3F500F3F5F500F3F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F3F2F200F3F3F300F5F5F400F7F7
      F400F4F3F300F3F2F200F3F2F200F2F3F200F4F3F300F4F3F300F2F3F300F2F3
      F300F4F3F300F3F0F000F1F0F000F5F5F5000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400F1F1F100F1F1
      F100EDEDED00F0F0F000F2F2F200EEEEEE00E2E2E200D8D8D800D7D7D700D5D5
      D500D6D6D600D5D5D500D3D3D300D1D1D100D1D1D100D2D2D200D1D1D100CFCF
      CF00CFCFCF00CECECE00CCCCCC00CDCDCD00DDDDDD00EAEAEA00E9E9E900E7E7
      E700E6E6E600E4E4E400DDDDDD00C6C6C600F3F3F30000000000000000000000
      000000000000000000000000000000000000E1E0DF00E3E2E200E2E1E000E2E2
      E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2
      E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2
      E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2
      E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2
      E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2
      E100E2E2E100E2E1E100E2E1E000E3E2E1000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0036A8F9003FB1FB0064D8FF005FD3FF005FD3FF005FD3
      FF005FD3FF005FD3FF005FD3FF005FD3FF005FD3FF0051CFFF0089DCFD000000
      000000000000000000000000000000000000F8F8F800F8F8F800F9F9F900F9F9
      F900F7F7F700F7F7F700F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F6F6F600F6F6F600F7F7F700F7F7F700F6F6F600F5F5F500F5F5
      F500F6F6F600F6F6F600F4F4F400F4F2F300F3F4F500F4F3F500F3F4F500F4F5
      F500F5F5F500F5F5F500F5F5F500F4F4F400F2F3F300F4F4F400F2F3F400F1F2
      F300F3F2F200F4F3F300F4F3F300F4F3F300F4F3F300F3F3F300F2F3F300F3F3
      F300F2F2F200F2F0F000F2F0F000F7F7F7000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400EEEEEE00EFEF
      EF00EDEDED00F0F0F000F2F2F200EDEDED00DDDDDD00CFCFCF00CFCFCF00CDCD
      CD00CDCDCD00CDCDCD00CBCBCB00CACACA00C9C9C900CACACA00C9C9C900C7C7
      C700C7C7C700C6C6C600C4C4C400C5C5C500D9D9D900EEEEEE00F1F1F100F1F1
      F100F0F0F000EDEDED00D2D2D200EDEDED00FDFDFD0000000000000000000000
      000000000000000000000000000000000000E1E0DF00E9E8E900E2E1DF00E3E2
      E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2
      E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2
      E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2
      E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2
      E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2E000E3E2
      E000E3E2E000E2E1DF00E7E6E600E6E5E5000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0035A7F9004ABEFB0061D5FF005FD3FF005FD3FF005FD3
      FF005FD3FF005FD3FF005FD3FF005FD3FF0051CFFF0087DCFD00000000000000
      000000000000000000000000000000000000F8F8F800F9F9F900F9F9F900F8F8
      F800F6F6F600F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F7F7F700F6F6F600F7F7F700F7F7F700F6F6F600F4F4F400F5F5F500F6F6
      F600F6F6F600F5F4F400F3F2F200F4F3F400F4F4F500F4F3F500F3F4F500F5F5
      F500F5F5F500F5F5F500F5F4F400F1F2F200F2F4F400F4F4F400F2F4F400F3F1
      F100F2F2F200F4F3F300F4F3F300F4F3F300F3F3F300F1F3F300F3F3F300F3F2
      F200F1F0F000F0F1F100F1F1F100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400DFDFDF00DFDF
      DF00ECECEC00EEEEEE00EFEFEF00EDEDED00E2E2E200D9D9D900D8D8D800D7D7
      D700D6D6D600D6D6D600D4D4D400D3D3D300D2D2D200D3D3D300D1D1D100D3D3
      D300D7D7D700D7D7D700D5D5D500D2D2D200DDDDDD00EDEDED00F0F0F000EBEB
      EB00E5E5E500D3D3D300FCFCFC00000000000000000000000000000000000000
      000000000000000000000000000000000000E0DFDE00EFEEEE00ECEBEB00E2E1
      E000E3E2E100E3E2E100E4E3E200E4E3E200E4E3E200E4E3E200E4E3E200E4E3
      E200E4E3E200E4E3E200E4E3E200E4E3E200E4E3E200E4E3E200E4E3E200E4E3
      E200E4E3E200E4E3E200E4E3E200E4E3E200E4E3E200E4E3E200E4E3E200E4E3
      E200E4E3E200E4E3E200E4E3E200E4E3E200E4E3E200E4E3E200E4E3E200E4E3
      E200E4E3E200E4E3E200E4E3E200E4E3E200E4E3E200E4E3E200E3E3E200E3E2
      E100E2E1E000E8E7E600EFEEEF00E5E4E4000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0035A7F9004ABDFB0061D5FF005FD3FF005FD3FF005FD3
      FF005FD3FF005FD3FF005FD3FF0052CFFF0084DBFD0000000000000000000000
      000000000000000000000000000000000000F9F9F900F8F8F800F7F7F700F6F6
      F600F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F7F800F8F7F600F6F6
      F600F5F5F500F7F7F700F7F7F700F5F5F500F4F4F400F6F6F600F7F6F700F7F6
      F600F7F7F700F4F4F400F4F5F500F4F3F500F4F5F500F3F5F500F5F5F500F5F5
      F500F5F5F500F3F3F300F3F2F200F2F4F400F4F4F400F2F4F400F3F2F200F3F3
      F300F2F3F300F3F3F300F4F3F300F1F3F300F3F2F200F2F3F300F2F3F300F2F0
      F000F2F2F200F0F0F000F0F0F000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400E4E4E400E5E5
      E500EDEDED00EEEEEE00EFEFEF00ECECEC00DFDFDF00D4D4D400D3D3D300D2D2
      D200D2D2D200D1D1D100CFCFCF00CECECE00CECECE00CECECE00CCCCCC00D2D2
      D200DBDBDB00DCDCDC00D9D9D900D7D7D700E0E0E000EDEDED00EFEFEF00EAEA
      EA00E0E0E000D9D9D90000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBEAEA00ECECEC00F3F2F300F1F1
      F100E8E7E700E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1
      E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1
      E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1
      E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1
      E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E2E1E000E6E4
      E400EEEEEE00F3F2F200F2F2F200E2E0DF000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0035A7F9004ABDFB0061D5FF005FD3FF005FD3FF005FD3
      FF005FD3FF005FD3FF0053D0FF0081DAFD00FFFFFE0000000000000000000000
      000000000000000000000000000000000000F8F8F800F8F8F800F5F5F500F7F7
      F700F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F6F6F600F6F5F600F5F6
      F600F7F7F700F7F7F700F6F6F600F4F4F400F5F5F500F0F0EE00EBE9E900E8E6
      E700EAE9E800F3F2F300F7F7F600F4F5F400F4F5F500F5F5F500F5F5F500F4F4
      F400F3F3F300F3F3F300F3F4F400F4F4F400F3F3F300F2F2F200F2F2F200F3F3
      F300F3F3F300F2F3F300F2F3F300F2F3F200F3F1F100F4F2F200F2F1F100F1F2
      F200F3F2F200F1F0F000F1F0F000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400EFEFEF00F0F0
      F000EDEDED00EEEEEE00EEEEEE00ECECEC00DEDEDE00D1D1D100D1D1D100CFCF
      CF00D0D0D000CECECE00CDCDCD00CCCCCC00CBCBCB00CCCCCC00CACACA00D2D2
      D200DCDCDC00DEDEDE00DCDCDC00DADADA00E1E1E100EDEDED00EDEDED00E7E7
      E700DCDCDC00F1F1F10000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2E1E000F7F8F700F6F6
      F600F7F7F700F7F7F700F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F6F6F600F7F7
      F700F6F6F600F8F8F900E7E7E600F6F6F5000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0035A7F9004ABDFB0061D5FF005FD3FF005FD3FF005FD3
      FF005FD3FF0053D0FF007ED9FD00FFFFFE000000000000000000000000000000
      000000000000000000000000000000000000F6F6F600F7F7F700F6F6F600F6F6
      F600F6F6F600F5F5F500F5F5F500F5F8F500F7F6F700F5F5F500F5F4F500F7F7
      F600F6F6F600F5F5F500F4F4F400F5F5F500EFEFEE00DCDAD900D1CECA00CFCB
      C200C7C3B700CDC8C000EDECEA00F7F7F700F4F4F400F5F5F500F5F5F500F2F2
      F200F3F3F300F4F4F400F4F4F400F4F4F400F4F1F100F3F2F200F2F3F300F2F3
      F300F2F3F300F2F3F300F2F3F300F4F3F100F3F2F200F2F0F000F1F1F100F2F2
      F200F2F2F200F1F0F000F1F0F000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F3F300F0F0F000EDED
      ED00EAEAEA00ECECEC00EBEBEB00E9E9E900EAEAEA00E9E9E900E6E6E600E6E6
      E600E5E5E500E4E4E400E1E1E100E1E1E100E1E1E100E0E0E000DEDEDE00DBDB
      DB00DBDBDB00DADADA00D8D8D800D7D7D700DFDFDF00E8E8E800E7E7E700F4F4
      F400FEFEFE000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00E8E6E600FAFA
      FA00FBFBFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FCFCFC00EDECEB00F2F2F100000000000000000000000000FFFBF30047AE
      F60034A8FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AAFA0038AA
      FA0038AAFA0038AAFA0035A7F9004ABDFB0061D5FF005FD3FF005FD3FF005FD3
      FF0054D0FF007AD8FC00FFFFFE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00FAFAFA00F9F9F900F8F8F800F9F8F900F8F8F800F8F8F800F8F8F800F8F8
      F800F7F7F700F7F7F700F7F7F700F8F8F800F0EFEE00E2E0DB00C0BBBC009795
      AE007F7DA40083809700D1CEC300FAFAF900F5F5F500F4F4F400F3F3F300F4F4
      F400F4F4F400F3F4F400F3F3F300F4F2F200F2F3F300F3F3F300F2F3F300F4F3
      F300F2F3F300F4F3F300F4F3F300F4F2F300F1F0F000F1F2F200F1F2F200F0F2
      F200F3F2F200F1F0F000F3F1F100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400F1F1F100F0F0
      F000ECECEC00EEEEEE00EFEFEF00ECECEC00EBEBEB00EAEAEA00E7E7E700E7E7
      E700E7E7E700E6E6E600E2E2E200E2E2E200E2E2E200E2E2E200E0E0E000DEDE
      DE00DDDDDD00DDDDDD00DBDBDB00DCDCDC00E0E0E000DBDBDB00F5F5F500FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE00FCFC
      FC00F9F9F900F6F6F600F6F6F600F1F1F100ECECEC00E7E7E700E7E7E700E3E3
      E300DFDFDF00DBDBDB00DBDBDB00D7D7D700D4D4D400D0D0D000D0D0D000CDCD
      CD00CBCBCB00CACACA00CACACA00CFCDCE00D1CFD100CECECE00CECECE00D1D1
      D100D4D4D400DBDBDB00DBDBDB00E5E5E500EFEFEF00F7F7F700F7F7F700FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009F9F9F009F9F9F009A9A
      9A00959595009696960096969600969696009696960096969600969696009696
      9600969696009696960096969600969696009696960096969600969696009696
      9600969696009696960096969600969696009696960096969600969696009595
      95009B9B9B00A1A1A100A1A1A100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6B6B600B6B6B600B0B0
      B000AEAEAE00AAAAAA00AAAAAA00A9A9A900A9A9A900A6A6A600A6A6A600A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A4A4A400A4A4A400A3A3
      A300A3A3A300A3A3A300A3A3A300A3A3A300A3A3A300A4A4A400A4A4A400A4A4
      A400A4A4A400A4A4A400A4A4A400A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A6A6A600A6A6A600A9A9A900A9A9A900AAAAAA00AAAAAA00AEAE
      AE00B0B0B000B6B6B600B6B6B600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE00FCFC
      FC00F9F9F900F5F5F500F5F5F500F0F0F000EBEBEB00E6E6E600E6E6E600E1E1
      E100DEDEDE00D9D9D900D9D9D900D5D5D500D2D2D200CECECE00CECECE00CBCB
      CB00C8C8C800CBC9CB00CBC9CB00A7B8AC0061886E00D6D2D500D6D2D500CFCF
      CF00D2D2D200DADADA00DADADA00E4E4E400EEEEEE00F6F6F600F6F6F600FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6EEE90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000081818100A7A7A700A7A7A7007171
      7100717171007171710071717100707070006F6F6F006E6E6E006E6E6E006E6E
      6E006D6D6D006C6C6C006C6C6C006B6B6B006B6B6B006A6A6A006A6A6A006969
      6900686868006767670067676700676767006666660065656500656565006464
      6400616161009E9E9E009E9E9E00838383000000000000000000000000000000
      000000000000000000000000000000000000E4E4E400DADADA00DADADA00D5D5
      D500CDCDCD00CACACA00CACACA00C8C8C8000000000000000000000000000000
      0000BEBEBE00B7B7B700B7B7B700B6B6B600B9B9B800C0BFBC00C0BFBC00C1C0
      BC00C1C0BC00C1C0BC00C1C0BC00C1C0BC00C1BFBC00C5C1BC00C5C1BC00C0BD
      BA00C5C1BC00C8C3BD00C8C3BD00C4C0BC00C1BEBB00BFBDBB00BFBDBB00C5C4
      C200C9C7C500C8C7C500C8C7C500C9C8C600D2D1CE00D3D2D000D3D2D000D7D6
      D300DEDDDA00DDDDDC00DDDDDC00E4E4E4000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE00FCFC
      FC00F9F9F900F5F5F500F5F5F500F0F0F000EBEBEB00E6E6E600E6E6E600E1E1
      E100DEDEDE00D9D9D900D9D9D900D5D5D500D2D2D200CECECE00CECECE00CBCB
      CB00C8C8C800CBC9CB00CBC9CB00A7B8AC0061886E00D6D2D500D6D2D500CFCF
      CF00D2D2D200DADADA00DADADA00E4E4E400EEEEEE00F6F6F600F6F6F600FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6EEE90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000081818100A7A7A700A7A7A7007171
      7100717171007171710071717100707070006F6F6F006E6E6E006E6E6E006E6E
      6E006D6D6D006C6C6C006C6C6C006B6B6B006B6B6B006A6A6A006A6A6A006969
      6900686868006767670067676700676767006666660065656500656565006464
      6400616161009E9E9E009E9E9E00838383000000000000000000000000000000
      000000000000000000000000000000000000E4E4E400DADADA00DADADA00D5D5
      D500CDCDCD00CACACA00CACACA00C8C8C8000000000000000000000000000000
      0000BEBEBE00B7B7B700B7B7B700B6B6B600B9B9B800C0BFBC00C0BFBC00C1C0
      BC00C1C0BC00C1C0BC00C1C0BC00C1C0BC00C1BFBC00C5C1BC00C5C1BC00C0BD
      BA00C5C1BC00C8C3BD00C8C3BD00C4C0BC00C1BEBB00BFBDBB00BFBDBB00C5C4
      C200C9C7C500C8C7C500C8C7C500C9C8C600D2D1CE00D3D2D000D3D2D000D7D6
      D300DEDDDA00DDDDDC00DDDDDC00E4E4E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000083B59000789D860000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6EF
      E900E7D2C200E8D4C500E8D4C500E8D4C500E8D4C500E8D4C500E8D4C500E8D4
      C500E8D4C500E8D4C500E8D4C500E8D4C500E8D4C500E8D4C500E8D4C500E8D4
      C500E8D4C500E8D4C500E8D4C500E8D4C500E8D4C500E8D4C600E8D4C600E8D4
      C600E9D5C600F3E9E100F3E9E100B87B4E00881F0000A14E1300A14E13000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D2D2D2009C9C9C007C7E80007C7E80008385
      880082858700818486008184860081838600808385007F8284007F8284007E81
      83007E8083007D7F82007D7F82007C7F81007B7E80007B7D80007B7D80007A7C
      7F00797C7E00787B7E00787B7E00787A7D00777A7C0076797B0076797B007578
      7B00747779006A6C6E006A6C6E0097979700D4D4D40000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000ADB5CC00ADB5CC00A7AF
      C900A5AEC800A5ADC800A5ADC800A4ADC800ACB3CA006A94BF006A94BF003A70
      AC004679B1005E89B8005E89B80081A1C3009BB3D000C0CEDD00C0CEDD00CDD4
      E000C3CBDB00BFC5D700BFC5D700BCC0D300BFC3D600BFC4D700BFC4D700C0C5
      D800C4CADC00F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00FDFDFD00FEFEFE00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FCFCFC00FCFCFC00FBFBFB00FBFBFB00FCFCFC00FCFCFC00FBFB
      FB0000000000A8CAB200A8CAB20084B990006F8F7B000000000000000000FCFC
      FC00FBFBFB00FCFCFC00FCFCFC00FDFDFD00FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5B09600D5B09600A458
      2400C08F6E00BE8C6900BE8C6900BE8C6900BE8C6900BE8C6900BE8C6900BE8C
      6900BE8C6900BE8C6900BE8C6900BE8C6900BE8C6900BE8C6900BE8C6900BE8C
      6900BE8C6900BE8C6900BE8C6900BE8C6900BF8C6900BF8C6900BF8C6900BF8D
      6B00C9A1850091300000913000009437000099400000973B0000973B00009B44
      0500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6B6B600A6AFB80094857600948576009684
      7300968473009583720095837200948271009482710093817000938170009281
      700092806F00917F6E00917F6E00917F6E00907E6D008F7D6D008F7D6D008F7D
      6C008E7C6B008E7C6B008E7C6B008D7B6A008C7B6A008C7A69008C7A69008B79
      68008B79670084786C0084786C0099A1A900B8B8B80000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000008600000045E0000045E000000
      5900001567000017680000176800001364000C3783002E6BAB002E6BAB00326B
      AA003069A8002D66A7002D66A7002964A5002661A300235FA200235FA200215D
      A0001F5A9E001B549A001B549A00164D95000E418B0007358200073582000029
      78000012680000035C0000035C00D4D9E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FCFCFC00FCFCFC00FFFE
      FF00F6F7F60062A7740062A7740083BE920066776B0000000000000000000000
      000000000000000000000000000000000000FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A14F1600A14F16000000
      0000F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FE
      FF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FE
      FF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F9FFFF00F9FFFF000000
      0000B474490095380000953800009A4101009A410100983E0000983E0000A552
      1600A04D11000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BBC3CA00BC732B00E28F3E00E28F3E00E59E
      5600E59D5400E59D5400E59D5400E59D5400E59D5400E59D5500E59D5500E59D
      5500E59D5500E59D5500E59D5500E59D5500E69D5500E69D5500E69D5500E69D
      5500E69E5500E69E5500E69E5500E69E5500E69E5500E69E5500E69E5500E69E
      5500E7A05800E1893200E1893200B77B4100BBC1C80000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00010297500001165000013680000136800AFB3
      BF00DAD7D000CECCC600CECCC600CDC7BC00678AAF005081BC005081BC00326B
      AA00346CAA00346BA900346BA900336BA900336BA900326AA800326AA800326A
      A8003269A700326AA700326AA700336AA800336BA900346DAA00346DAA00356E
      AB003772AD0017448B0017448B00112873000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FCFCFC00FCFCFC00FFFE
      FF00F6F7F60062A7740062A7740083BE920066776B0000000000000000000000
      000000000000000000000000000000000000FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A14F1600A14F16000000
      0000F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FE
      FF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FE
      FF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F8FEFF00F9FFFF00F9FFFF000000
      0000B474490095380000953800009A4101009A410100983E0000983E0000A552
      1600A04D11000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BBC3CA00BC732B00E28F3E00E28F3E00E59E
      5600E59D5400E59D5400E59D5400E59D5400E59D5400E59D5500E59D5500E59D
      5500E59D5500E59D5500E59D5500E59D5500E69D5500E69D5500E69D5500E69D
      5500E69E5500E69E5500E69E5500E69E5500E69E5500E69E5500E69E5500E69E
      5500E7A05800E1893200E1893200B77B4100BBC1C80000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00010297500001165000013680000136800AFB3
      BF00DAD7D000CECCC600CECCC600CDC7BC00678AAF005081BC005081BC00326B
      AA00346CAA00346BA900346BA900336BA900336BA900326AA800326AA800326A
      A8003269A700326AA700326AA700336AA800336BA900346DAA00346DAA00356E
      AB003772AD0017448B0017448B00112873000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9E3DC0082A78A0082A78A006794700051825C00447A5000447A50003771
      43002F6B3D00266334002663340012512000FFFEFF0000000000000000000000
      000080B790006EB580006EB580007ABE8C0079B5890076AE850076AE850097BD
      A10065967200B2C1B600B2C1B600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5572000A5572000FBFF
      FF00F4F4F300F5F7F900F5F7F900F6FAFC00F6FAFC00F6FAFC00F6FAFC00F6FA
      FC00F6FAFC00F6FAFC00F6FAFC00F6FAFC00F6FAFC00F6FAFC00F6FAFC00F6FA
      FC00F6FAFC00F6FAFC00F6FAFC00F6F9FC00F6FAFD000000000000000000AF6A
      3B00923200009A4101009A4101009A4101009A410100963B0000963B0000B267
      3200912E0000F4EBE500F4EBE5000000000000000000DADADA00DADADA008282
      8200898989007F7F7F007F7F7F0072798200D8761500FFF6E800FFF6E800F3D5
      BC00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7
      BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7
      BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7BE00F4D7
      BE00F3D4BC00FFFCEF00FFFCEF00C4610100828C960078787800787878008A8A
      8A0083838300D0D0D000D0D0D00000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000000B6200000E65007380A4007380A400E2DF
      D700CACAC900C1C1C100C1C1C100C0BCB7006C8CB200608EC400608EC400316A
      A900356DAB00346DAB00346DAB00346CAA00336BA900336BA900336BA900326A
      A800326AA8003168A6003168A6003268A6003269A7003269A7003269A7003269
      A7003269A7003873AE003873AE00012070000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002F6E
      3D0000240000002B0600002B0600003B0B00004C0F00005A1200005A12000061
      1300005D13000058120000581200003D0000FFFEFF000000000000000000D5E3
      D80057BB74006FBF86006FBF860073BF88007AC78F007BC68F007BC68F0097CE
      A500107F2E00003D0700003D0700003A0E00E3EAE60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5572000A5572000FCFF
      FF00F5F7F900E8D3C500E8D3C500DEBBA200DFBDA600DFBDA600DFBDA600DFBD
      A600DFBEA600DFBEA600DFBEA600DFBEA700DFBEA700DFBFA700DFBFA700E0BF
      A800E0BFA800E0BFA800E0BFA800E0C0AA00EAD2C100AD663400AD6634009333
      00009A4101009A4101009A4101009A410100983E0000A24E1200A24E1200A856
      1B00B26E3E00000000000000000000000000E5E5E5008484840084848400B0B0
      B00094949400B8B9B900B8B9B900616A7300D1721400FDE8D400FDE8D400E7BB
      9A00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE
      9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE
      9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE
      9E00E7BB9900FFF1DE00FFF1DE00B95D0300717A8300B3B3B300B3B3B3009494
      9400ADADAD008B8B8B008B8B8B00D9D9D900F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000106600000C6500969FB600969FB600D8D7
      D300C9C9C900C1C1C100C1C1C100BFBBB7006E8EB300608FC500608FC500326B
      AA00356DAB00356DAB00356DAB00346CAA00356CAA00336BA900336BA900346B
      A900326AA800326AA800326AA8003168A6003168A6003269A7003269A7003269
      A7003269A700356FAB00356FAB000F3480000000000000000000000000000000
      00000000000000000000000000000000000000000000397F4800397F48000014
      00000426130005311700053117000544190004551C0004611D0004611D00046A
      1D0004691D0004631B0004631B000048000000000000000000000000000061C0
      82006FD896006ECA8B006ECA8B006EC4860073CA8B0077CB8F0077CB8F007CC6
      900051AB6B0012752F0012752F0007491A000046180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5572000A5572000FCFF
      FF00F6F9FB00E4C9B600E4C9B600D7A88600D8AB8B00D8AB8B00D8AB8B00D8AC
      8B00D8AC8C00D8AC8C00D8AC8C00D8AC8D00D9AD8D00D9AD8E00D9AD8E00D9AE
      8E00D9AE8F00DAAF9100DAAF9100E4C3AC00A6531A0094360000943600009A41
      01009A4101009A4101009A410100993F00009C450700A8571D00A8571D00AC65
      32000000000000000000000000000000000094949400B4B4B400B4B4B4009393
      930096969600AAAAAA00AAAAAA00767F8800BC5D0100FFF9E400FFF9E400F3C8
      A700F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CB
      AB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CB
      AB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CB
      AB00F4C9A900FFEDCD00FFEDCD00BC6818006B737B00B0B0B000B0B0B0009696
      960094949400AFAFAF00AFAFAF0091919100F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000126800000E6800929CB500929CB500D8D6
      D300C9C9C900C1C1C100C1C1C100BFBBB7006E8FB300608EC400608EC400326C
      AB00366EAC00356EAC00356EAC00366DAB00346CAA00356CAA00356CAA00336C
      AA00336AA800336AA800336AA800326AA8003169A7003168A6003168A6003269
      A7003269A700356EAB00356EAB000F3580000000000000000000000000000000
      00000000000000000000000000000000000000000000397F4800397F48000014
      00000426130005311700053117000544190004551C0004611D0004611D00046A
      1D0004691D0004631B0004631B000048000000000000000000000000000061C0
      82006FD896006ECA8B006ECA8B006EC4860073CA8B0077CB8F0077CB8F007CC6
      900051AB6B0012752F0012752F0007491A000046180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5572000A5572000FCFF
      FF00F6F9FB00E4C9B600E4C9B600D7A88600D8AB8B00D8AB8B00D8AB8B00D8AC
      8B00D8AC8C00D8AC8C00D8AC8C00D8AC8D00D9AD8D00D9AD8E00D9AD8E00D9AE
      8E00D9AE8F00DAAF9100DAAF9100E4C3AC00A6531A0094360000943600009A41
      01009A4101009A4101009A410100993F00009C450700A8571D00A8571D00AC65
      32000000000000000000000000000000000094949400B4B4B400B4B4B4009393
      930096969600AAAAAA00AAAAAA00767F8800BC5D0100FFF9E400FFF9E400F3C8
      A700F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CB
      AB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CB
      AB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CBAB00F5CB
      AB00F4C9A900FFEDCD00FFEDCD00BC6818006B737B00B0B0B000B0B0B0009696
      960094949400AFAFAF00AFAFAF0091919100F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000126800000E6800929CB500929CB500D8D6
      D300C9C9C900C1C1C100C1C1C100BFBBB7006E8FB300608EC400608EC400326C
      AB00366EAC00356EAC00356EAC00366DAB00346CAA00356CAA00356CAA00336C
      AA00336AA800336AA800336AA800326AA8003169A7003168A6003168A6003269
      A7003269A700356EAB00356EAB000F3580000000000000000000000000000000
      00000000000000000000000000000000000097C8A500356F4400356F44000016
      0B00052C1500053618000536180006441D0005551E000563200005632000066C
      2200056F210004681E0004681E00004C030000000000ABD1B800ABD1B80073EF
      B30075DFA6006DD292006DD292006AC987006DCB890071CF8C0071CF8C0075CB
      8E0064BA7D00188C3D00188C3D0012662E00004615007C9F89007C9F89000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4572000A4572000FDFF
      FF00F5F5F500F7FAFC00F7FAFC00F8FDFF00F8FDFF00F8FDFF00F8FDFF00F8FD
      FF00F8FDFF00F8FDFF00F8FDFF00F8FDFF00F8FDFF00F8FDFF00F8FDFF00F8FD
      FF00F9FEFF000000000000000000B2724600933500009A4101009A4101009A41
      01009A41010099400000994000009A410100A8571E00AD653300AD6533000000
      0000000000000000000000000000000000009A9A9A00A0A0A000A0A0A0009F9F
      9F009F9F9F009C9C9C009C9C9C00BCBCBD008B8D900090898200908982008A7E
      74008B7F76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F
      76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F
      76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F76008B7F
      76008A7E75008F857A008F857A0088878600BEBFC0009B9B9B009B9B9B009F9F
      9F009F9F9F009F9F9F009F9F9F0096969600F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000146B0000106A00939DB500939DB500D8D6
      D300C9C9C900C1C1C100C1C1C100BFBBB7006E8FB4005F8EC5005F8EC500336C
      AB00376FAD00376FAD00376FAD00356EAC00366DAB00346DAB00346DAB00356C
      AA00346BA900346AA800346AA800336AA8003369A7003169A7003169A7003168
      A6003269A700356EAB00356EAB000F3682000000000000000000000000000000
      0000000000000000000000000000FFFEFF00188F390073A07E0073A07E000013
      0700062E170006391B0006391B0006431E00075522000662230006622300066C
      240005712400066D2200066D220000500600FFFEFF0061D8AC0061D8AC0087F6
      D30079E3B1006DD599006DD5990065CC870067CC85006CD18A006CD18A006ECE
      8B006EC689001E9746001E9746001A843F000F602C000041100000411000FDFB
      FC00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4572000A4572000FEFF
      FF00F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F7
      F70000000000AF6A3B00AF6A3B00923200009A4101009A4101009A4101009A41
      010099400000983E0000983E0000A5541A00A3531A0000000000000000000000
      00000000000000000000000000000000000099999900AAAAAA00AAAAAA00A7A7
      A700A8A8A800A8A8A800A8A8A800A5A5A500ADAEAE00BFC0C100BFC0C100C0C2
      C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1
      C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1
      C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1C300C0C1
      C300C0C2C300C0C1C300C0C1C300AFB0B000A4A4A400A7A7A700A7A7A700A7A7
      A700A8A8A800A9A9A900A9A9A90096969600F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000166D0000126C00939DB600939DB600D8D6
      D300C9C9C900C1C1C100C1C1C100BFBBB7006E8FB500618FC500618FC500346D
      AC003770AE00376FAD00376FAD00376EAC00366EAC00366EAC00366EAC00356D
      AB00356CAA00346BA900346BA900346BA900336AA8003369A7003369A7003269
      A7003168A600356EAA00356EAA00103783000000000000000000000000000000
      00000000000000000000000000005EA974003CA95C0081C8930081C893000018
      0800072E1A00073B1D00073B1D0007462000065223000762260007622600066B
      2600067026000670250006702500005208000000000082D0AC0082D0AC0085F6
      D80076E1B10068D3960068D3960060C9850062CC840067D1890067D1890069D1
      8B0070CE8E0024A24F0024A24F0021934B0016773C000559260005592600477B
      5C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4572000A45720000000
      0000F7F7F700F8FBFD00F8FBFD00FAFFFF00FAFFFF00FAFFFF00FAFFFF00FAFF
      FF00FAFEFF00FAFEFF00FAFEFF00FAFEFF00FAFEFF00FAFFFF00FAFFFF000000
      0000AF6B3B0092320000923200009A4101009A4101009A4101009A4101009940
      0000983E0000A14D1000A14D1000B2704300B16C3D0000000000000000000000
      00000000000000000000000000000000000098989800B3B3B300B3B3B300AFAF
      AF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ACABAC00BBB3BE00BBB4BE00BBB4BE00AFAD
      AF00AFAFAF00B2B2B200B2B2B20096969600F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000186F0000146F00939DB700939DB700D8D6
      D300C9C9C900C1C1C100C1C1C100BFBBB7006E8FB5006190C6006190C600346E
      AD003871AF003770AE003770AE00376FAD00366FAD00366EAC00366EAC00366E
      AC00356CAA00356CAA00356CAA00346CAA00346BA900336BA900336BA9003369
      A7003269A700356EAA00356EAA00103885000000000000000000000000000000
      00000000000000000000000000005EA974003CA95C0081C8930081C893000018
      0800072E1A00073B1D00073B1D0007462000065223000762260007622600066B
      2600067026000670250006702500005208000000000082D0AC0082D0AC0085F6
      D80076E1B10068D3960068D3960060C9850062CC840067D1890067D1890069D1
      8B0070CE8E0024A24F0024A24F0021934B0016773C000559260005592600477B
      5C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4572000A45720000000
      0000F7F7F700F8FBFD00F8FBFD00FAFFFF00FAFFFF00FAFFFF00FAFFFF00FAFF
      FF00FAFEFF00FAFEFF00FAFEFF00FAFEFF00FAFEFF00FAFFFF00FAFFFF000000
      0000AF6B3B0092320000923200009A4101009A4101009A4101009A4101009940
      0000983E0000A14D1000A14D1000B2704300B16C3D0000000000000000000000
      00000000000000000000000000000000000098989800B3B3B300B3B3B300AFAF
      AF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ACABAC00BBB3BE00BBB4BE00BBB4BE00AFAD
      AF00AFAFAF00B2B2B200B2B2B20096969600F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000186F0000146F00939DB700939DB700D8D6
      D300C9C9C900C1C1C100C1C1C100BFBBB7006E8FB5006190C6006190C600346E
      AD003871AF003770AE003770AE00376FAD00366FAD00366EAC00366EAC00366E
      AC00356CAA00356CAA00356CAA00346CAA00346BA900336BA900336BA9003369
      A7003269A700356EAA00356EAA00103885000000000000000000000000000000
      000000000000D9E7DE00D9E7DE0029984B0055B8740057C87A0057C87A000745
      1B00062A1800073B1C00073B1C000747220007522500085F2700085F27000869
      2900076E2800067028000670280000530A0000000000F1F1ED00F1F1ED0058D1
      9C006BDAA50060CA8D0060CA8D005AC27F005CC9810061CF860061CF860063D1
      88006CD08E002BAD5A002BAD5A00279C53001D894800136F3A00136F3A000049
      1600D6DED9000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5572000A55720000000
      0000F9FCFE00E5CBB800E5CBB800D8A98800D9AD8E00D9AE8E00D9AE8E00D9AD
      8F00D9AE8F00D9AE9000D9AE9000D9AF9100D9AF9100E0BBA100E0BBA100AA5E
      2900933400009A4101009A4101009A4101009A4101009940000099400000983E
      00009E470800AD653400AD65340000000000A95D270000000000000000000000
      00000000000000000000000000000000000097979700BCBCBC00BCBCBC00B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B5B4B500B5B4B500DCDCDB0084CF660085C7660085C76600D4DE
      CE00B6B4B600BBBBBB00BBBBBB0095959500F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000A481
      3100AC8D4600F0F0F000F0F0F0000019790000167100939EB700939EB700D8D6
      D300C9C9C900C1C1C100C1C1C100BFBBB7006F90B5006191C7006191C700356F
      AE003871AF003971AF003971AF003770AE003870AE00366FAD00366FAD00366E
      AC00366DAB00356DAB00356DAB00356DAB00346BA900336BA900336BA900336B
      A9003369A700356EAB00356EAB00113986000000000000000000000000000000
      0000000000003A9858003A98580067BC830046B66B0030BB5D0030BB5D00359D
      5300041F1300093C2100093C21000746210008512500075C2700075C27000865
      2900066A2A00066B2800066B280000510B000000000000000000000000008CC5
      A20053C6880053BA7D0053BA7D0051B9770056C37D005ACC82005ACC82005DCF
      860060CF880031B4630031B4630027A458001D904C00137C4100137C41000665
      30001D623B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5561F00A5561F000000
      0000F9FCFD00EDDBCE00EDDBCE00E4C4AE00E5C8B200E4C5B000E4C5B000E2C3
      AC00E2C2AC00E2C3AC00E2C3AC00E2C3AD00E4C7B200D9B39900D9B399008F2E
      00009A4101009A4101009A4101009A4101009A410100983E0000983E00009A41
      0100AD663500000000000000000000000000A95C260000000000000000000000
      00000000000000000000000000000000000096969600C5C5C500C5C5C500BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BEBBBE00BEBBBE00CFE3D50051BB2800279F0000279F0000BED8
      B200C0BCC100C3C3C300C3C3C30095959500F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000B596
      5000A0782100B0862700B086270035436500000F7C00929EB900929EB900D8D6
      D300C9C9C900C1C1C100C1C1C100BFBBB6007091B6006291C7006291C700356F
      AE003A72B0003871AF003871AF003970AE003770AE00386FAD00386FAD00366F
      AD00366EAC00356DAB00356DAB00356DAB00346DAB00346BA900346BA900336B
      A900336BA900366EAB00366EAB00113B88000000000000000000000000000000
      0000A5CCB2004FAB6F004FAB6F006DC28A0032B25E003BBE69003BBE69004ACF
      7600023E180000230A0000230A0000310C00003E100000491300004913000050
      130000561400005A1600005A1600004700000000000000000000000000000000
      0000349B5E0046A96D0046A96D004BB2720063C0870059C3810059C3810063CD
      8A006CD391006FDA97006FDA97006AD0920060C2880055AD7B0055AD7B00388F
      610000521C00A2BAAB00A2BAAB00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6582200A65822000000
      000000000000F5F1F000F5F1F000E8DAD000E7D8CE00F3EEEC00F3EEEC000000
      000000000000FEFFFF00FEFFFF00FBFFFF0000000000DBBFAD00DBBFAD009233
      00009A4101009A4101009A41010099400000993F0000973C0000973C0000AF68
      360000000000F9FAFB00F9FAFB0000000000A95C260000000000000000000000
      00000000000000000000000000000000000095959500CCCCCC00CCCCCC00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C3C500C6C3C500C5E7D500BBF1B10078D15E0078D15E00CDE4
      C700C6C3C700CCCCCC00CCCCCC0095959500C1A56900B4944B00B4944B00B595
      4E00B5954E00B5954E00B5954E00B5954E00B5954E00B7975100B7975100AC87
      3700AA853200AA843200AA843200BE902A00665B440091A0C00091A0C000D7D7
      D800C9C9C900C1C1C100C1C1C100BFBBB6007091B6006191C8006191C8003670
      AF003972B0003A72B0003A72B0003872B0003970AE003870AE003870AE00386F
      AD00366FAD00366EAC00366EAC00356DAB00356DAB00346DAB00346DAB00346C
      AA00336BA9003770AC003770AC00123D8A000000000000000000000000000000
      0000A5CCB2004FAB6F004FAB6F006DC28A0032B25E003BBE69003BBE69004ACF
      7600023E180000230A0000230A0000310C00003E100000491300004913000050
      130000561400005A1600005A1600004700000000000000000000000000000000
      0000349B5E0046A96D0046A96D004BB2720063C0870059C3810059C3810063CD
      8A006CD391006FDA97006FDA97006AD0920060C2880055AD7B0055AD7B00388F
      610000521C00A2BAAB00A2BAAB00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6582200A65822000000
      000000000000F5F1F000F5F1F000E8DAD000E7D8CE00F3EEEC00F3EEEC000000
      000000000000FEFFFF00FEFFFF00FBFFFF0000000000DBBFAD00DBBFAD009233
      00009A4101009A4101009A41010099400000993F0000973C0000973C0000AF68
      360000000000F9FAFB00F9FAFB0000000000A95C260000000000000000000000
      00000000000000000000000000000000000095959500CCCCCC00CCCCCC00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C3C500C6C3C500C5E7D500BBF1B10078D15E0078D15E00CDE4
      C700C6C3C700CCCCCC00CCCCCC0095959500C1A56900B4944B00B4944B00B595
      4E00B5954E00B5954E00B5954E00B5954E00B5954E00B7975100B7975100AC87
      3700AA853200AA843200AA843200BE902A00665B440091A0C00091A0C000D7D7
      D800C9C9C900C1C1C100C1C1C100BFBBB6007091B6006191C8006191C8003670
      AF003972B0003A72B0003A72B0003872B0003970AE003870AE003870AE00386F
      AD00366FAD00366EAC00366EAC00356DAB00356DAB00346DAB00346DAB00346C
      AA00336BA9003770AC003770AC00123D8A000000000000000000000000000000
      00003293560086C89E0086C89E0048B671003CBA6A0040C1700040C1700046CE
      790012943D00C6D1CB00C6D1CB00EAF6EE00FBFFFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A9CEB6002E9357002E9357004BB074006F8B7B00E1EFE500E1EFE500E5EF
      E800D4E6D90000391300003913001149290021563900386D4D00386D4D006C96
      7D00B3D4C00055906F0055906F00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AC643000AC643000C08A
      6500933500008D2900008D2900008E2B00008E2B00008E2A00008E2A0000902F
      0000B2704200E8D8CE00E8D8CE0000000000D9BAA5008C2700008C2700009940
      00009A41010099400000994000009940000095370000AF683700AF6837000000
      0000F9FAFA00F9F9F900F9F9F90000000000A95C260000000000000000000000
      00000000000000000000000000000000000094949400D3D3D300D3D3D300CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00D0CCCF00C8DAD400D8DDE100D8DDE100D0D0
      D200CDCDCD00D4D4D400D4D4D40094949400AC843200AD863300AD863300AD86
      3300AD863300AD863300AD863300AD863300AD863300AD863300AD863300AF88
      3700AF893800AF893800AF893800AF893800B68C3200B78F3D00B78F3D00C9C2
      B500CACDD500C1C1C200C1C1C200BFBBB6007091B6006292C8006292C8003671
      B0003B73B1003973B1003973B1003A72B0003972B0003971AF003971AF003870
      AE00386FAD00376FAD00376FAD00366EAC00366EAC00356DAB00356DAB00356C
      AA00346CAA003770AC003770AC00123F8B0000000000000000000000000080B7
      950077BB920076C4940076C4940038B2680043BF740043C5760043C576003CC7
      72005FD28B0063A3770063A3770000000000000000000000000000000000CFDA
      D200E3EBE6000000000000000000000000000000000000000000000000000000
      00000000000039925D0039925D003FA068008EA4970000000000000000000000
      00006DA48300005822000058220009592C00074F260004442100044421000034
      160000210A003D7152003D715200C5D6CC000000000000000000000000000000
      000000000000000000000000000000000000BC8359009233000092330000902E
      00008E2A0000963B0000963B0000A85B2600A95D28009A4103009A4103008D29
      0000902E00008D2900008D290000AD663500912F000099400000994000009940
      000099400000963900009639000091300000B37245000000000000000000FEFF
      FF00FCFEFF00FAFAFA00FAFAFA0000000000A95C260000000000000000000000
      00000000000000000000000000000000000093939300DBDBDB00DBDBDB00D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D8D8
      D800D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9
      D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9
      D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9
      D900D8D8D800D4D4D400D4D4D400D4D4D400D5D3D400D4D2D300D4D2D300D4D4
      D400D4D4D400DBDBDB00DBDBDB0094949400B48D3D00B48D3C00B48D3C00B48D
      3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D
      3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B38C3900B38C3900B287
      2E00BEA97E00C1C5CD00C1C5CD00BFBCBA007091B7006292C8006292C8003771
      B1003B74B2003B74B2003B74B2003A73B1003972B0003971AF003971AF003971
      AF003870AE00386FAD00386FAD00376FAD00376FAD00366EAC00366EAC00366D
      AB00346CAA003871AD003871AD0013408E0000000000000000000000000063AA
      7F0099CFAF0044B0710044B0710043B9740042C077005BCF8A005BCF8A008FDF
      B00096E2B50062BD850062BD8500D7E1DA00D5DFD7005C9A71005C9A710078B2
      8E00C9DDD1000000000000000000000000000000000000000000000000000000
      000000000000CBE2D300CBE2D30022854E009EB3A50000000000000000000000
      0000006920000A7736000A7736000C7237000B6A34000B612F000B612F000A56
      2A0006482200003114000031140098B8A3000000000000000000000000000000
      00000000000000000000000000009F4A0E00902F00008D2900008D290000BD85
      5F00F1E9E500000000000000000000000000000000000000000000000000F7F5
      F400C7977700902E0000902E0000943600009940000099400000994000009A41
      0100902E0000C1855B00C1855B00CC9A7700DBB59900D3A58500D3A58500D0A1
      7F00E6CFBD00FCFEFF00FCFEFF0000000000A95C260000000000000000000000
      00000000000000000000000000000000000092929200E3E3E300E3E3E300DBDB
      DB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DDDDDD00E6E7E800E6E7E800B9BB
      BC00B1B3B400B2B4B600B2B4B600B2B4B600B2B4B600B2B4B600B2B4B600B2B4
      B600B2B5B700B2B5B700B2B5B700B2B5B700B2B5B700B2B5B800B2B5B800B2B5
      B800B2B6B800B2B6B800B2B6B800B2B6B800B2B6B900B2B6B900B2B6B900B2B5
      B800B8BBBE00E5E6E700E5E6E700DEDEDE00DBDBDB00DBDBDB00DBDBDB00DBDB
      DB00DBDBDB00E3E3E300E3E3E30094949400B9924000B9924000B9924000B992
      4000B9924000B9924000B9924000B9924000B9924000B9924000B9924000B992
      4000B9924000B9924000B9924000B9924000B9924000B9924000B9924000B991
      4000B78D3500B9964E00B9964E00BEB7AF007092BA006392C9006392C9003872
      B1003C75B3003C75B3003C75B3003B74B2003A73B1003972B0003972B0003972
      B0003971AF003870AE003870AE003870AE003770AE00376EAC00376EAC00366E
      AC00356DAB003871AD003871AD0013418F0000000000000000000000000063AA
      7F0099CFAF0044B0710044B0710043B9740042C077005BCF8A005BCF8A008FDF
      B00096E2B50062BD850062BD8500D7E1DA00D5DFD7005C9A71005C9A710078B2
      8E00C9DDD1000000000000000000000000000000000000000000000000000000
      000000000000CBE2D300CBE2D30022854E009EB3A50000000000000000000000
      0000006920000A7736000A7736000C7237000B6A34000B612F000B612F000A56
      2A0006482200003114000031140098B8A3000000000000000000000000000000
      00000000000000000000000000009F4A0E00902F00008D2900008D290000BD85
      5F00F1E9E500000000000000000000000000000000000000000000000000F7F5
      F400C7977700902E0000902E0000943600009940000099400000994000009A41
      0100902E0000C1855B00C1855B00CC9A7700DBB59900D3A58500D3A58500D0A1
      7F00E6CFBD00FCFEFF00FCFEFF0000000000A95C260000000000000000000000
      00000000000000000000000000000000000092929200E3E3E300E3E3E300DBDB
      DB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DDDDDD00E6E7E800E6E7E800B9BB
      BC00B1B3B400B2B4B600B2B4B600B2B4B600B2B4B600B2B4B600B2B4B600B2B4
      B600B2B5B700B2B5B700B2B5B700B2B5B700B2B5B700B2B5B800B2B5B800B2B5
      B800B2B6B800B2B6B800B2B6B800B2B6B800B2B6B900B2B6B900B2B6B900B2B5
      B800B8BBBE00E5E6E700E5E6E700DEDEDE00DBDBDB00DBDBDB00DBDBDB00DBDB
      DB00DBDBDB00E3E3E300E3E3E30094949400B9924000B9924000B9924000B992
      4000B9924000B9924000B9924000B9924000B9924000B9924000B9924000B992
      4000B9924000B9924000B9924000B9924000B9924000B9924000B9924000B991
      4000B78D3500B9964E00B9964E00BEB7AF007092BA006392C9006392C9003872
      B1003C75B3003C75B3003C75B3003B74B2003A73B1003972B0003972B0003972
      B0003971AF003870AE003870AE003870AE003770AE00376EAC00376EAC00366E
      AC00356DAB003871AD003871AD0013418F0000000000000000000000000090C4
      A50071BD93003BAC6D003BAC6D0047BB7B0075D29E0088DBAC0088DBAC0084DB
      AA0089DAAC00A1E3BE00A1E3BE0056A5760066B28200B0DAC300B0DAC3009BC6
      AC00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004E976C00A0BCAB00000000000000000061AA
      7D00007F33000B873E000B873E000C843E000C7F3B000B7738000B7738000B6C
      3300095E2D00004418000044180091B29C000000000000000000000000000000
      000000000000A14E1200A14E120092320000973C0000F3EDE900F3EDE9000000
      0000FBFDFE00F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900FAFC
      FD0000000000FCFEFF00FCFEFF00A14E1500953800009A4101009A4101009231
      0000D4AF9500F2E6DD00F2E6DD00EDDDD200EBDACE00EBDBCE00EBDBCE00EAD8
      CB00F3EAE400FBFDFE00FBFDFE0000000000A95C260000000000000000000000
      00000000000000000000000000000000000092929200EAEAEA00EAEAEA00E1E1
      E100E1E1E100E1E1E100E1E1E100E3E3E300DDDFE0007576750075767500C0B0
      A300C9B7A800C8B5A700C8B5A700C8B4A600C7B3A400C7B2A200C7B2A200C6B1
      A000C6AF9E00C5AE9C00C5AE9C00C5AD9A00C5AB9800C4AA9600C4AA9600C4A8
      9400C3A79200C3A69000C3A69000C2A58E00C2A38C00C1A28A00C1A28A00C2A1
      8800BCA088007778760077787600D6D7D900E4E4E400E1E1E100E1E1E100E1E1
      E100E1E1E100EAEAEA00EAEAEA0093939300BE954500BE954500BE954500BE95
      4500BE954500BE954500BE954500BE954500BE954500BE954500BE954500BE95
      4500BE954500BE954500BE954500BE954500BE954500BE954500BE954500BE95
      4500BB924000C69E4C00C69E4C00D2A347006F95C2006493CA006493CA003873
      B2003F7BB8003D78B5003D78B5003D78B5003A74B2003A73B1003A73B1003973
      B1003971AF003871AF003871AF003871AF003770AE003770AE003770AE00376E
      AC00366EAC003972AE003972AE0014439100000000000000000000000000A9D0
      B900379D67004DB37D004DB37D0077CC9E007AD2A20081D7A80081D7A80088D9
      AD008FD9B00093D6B10093D6B100A1D9BA00A4D4BA0092C4A80092C4A800E9F1
      EB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFCFA00FCFEFC00F5F6F500F5F6F5000077
      27000B8E43000C9145000C9145000C9044000C8C41000B853C000B853C000A7D
      3900087032000A642F000A642F00B1C7B8000000000000000000000000000000
      0000C4916D00902E0000902E00009639000000000000FDFFFF00FDFFFF00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FCFEFF00FCFEFF0000000000A24F15009537000095370000AE67
      360000000000FCFFFF00FCFFFF00FCFFFF00FCFFFF00FCFFFF00FCFFFF00FCFF
      FF00FBFDFD00FBFBFB00FBFBFB0000000000A95C260000000000000000000000
      00000000000000000000000000000000000091919100F1F1F100F1F1F100E7E7
      E700E7E7E700E7E7E700E7E7E700F2F3F40076716C00F2B57700F2B57700FEEC
      DE00F9E3D200F3D8C000F3D8C000F0D3B800F0D2B700EFD1B500EFD1B500EFD0
      B200EECEB000EECCAE00EECCAE00EDCBAC00EDCAAA00ECC8A800ECC8A800ECC7
      A500EBC5A300EBC4A100EBC4A100EBC39F00EAC19D00E9BF9A00E9BF9A00EEC4
      A400F5D1B500EFA96200EFA9620074716E00F2F3F400E7E7E700E7E7E700E7E7
      E700E7E7E700F1F1F100F1F1F10093939300C39A4900C39A4900C39A4900C39A
      4900C39A4900C39A4900C39A4900C39A4900C39A4900C39A4900C39A4900C39A
      4900C39A4900C39A4900C39A4900C39A4900C39A4900C2994800C2994800BF95
      4200D8B46600DABC7C00DABC7C00BCB6AD007194BA006494CA006494CA003C78
      B600234F9500000257000002570029589C003E78B6003A73B1003A73B1003B73
      B1003973B1003971AF003971AF003871AF003870AE003770AE003770AE003770
      AE00366EAC003A72AF003A72AF0014449300000000000000000000000000CDE3
      D400399A69006BBD94006BBD940072C79C007BD0A40083D4AA0083D4AA008AD6
      AF0092D7B30098D6B70098D6B7009DD4B800A1D0B800ADCEBA00ADCEBA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A9760003A9760000087
      3B000B9247000B9648000B9648000D9749000D9448000B8E44000B8E44000C86
      4000047835002B794A002B794A00F4F7F400000000000000000000000000FEFE
      FD008C2800008D2900008D290000EEE3DC00FEFFFF00F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900FBFDFF00FDFFFF00912F0000912F00008F2A
      0000E9D9CF00FEFFFF00FEFFFF00FBFCFC00FBFCFC00FBFCFC00FBFCFC00FBFC
      FC00FBFBFB00FBFBFB00FBFBFB0000000000A95C260000000000000000000000
      00000000000000000000000000000000000091919100F7F7F700F7F7F700EDED
      ED00EDEDED00EDEDED00EDEDED00F3F6F80083705E00EEAF6F00EEAF6F00F8EA
      DF00F5E2D400E7CAAC00E7CAAC00E1C19C00E2C19C00E1C09B00E1C09B00E0BF
      9A00E1BE9800E0BD9700E0BD9700E0BC9500DFBB9400DEBA9300DEBA9300DFBA
      9100DFB99000DEB88F00DEB88F00DDB78D00DEB68C00DDB58900DDB58900EBC4
      A700F2D4BC00E2954700E295470098999B00EAEBEB00EEEEEE00EEEEEE00EDED
      ED00EDEDED00F7F7F700F7F7F70092929200C79D4C00C79D4C00C79D4C00C79D
      4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79E
      4D00C89E4E00C89E4E00C89E4E00C89E4E00C69B4A00C99F4E00C99F4E00E4C1
      7600CFB98F00BEC0C600BEC0C600BEBBB9007193B8006594CA006594CA003D7B
      B800133D8A00002078000020780018448E003F7BB7003C75B3003C75B3003A74
      B2003A73B1003A73B1003A73B1003972B0003871AF003970AE003970AE003770
      AE003770AE003A73AF003A73AF0015469500000000000000000000000000CDE3
      D400399A69006BBD94006BBD940072C79C007BD0A40083D4AA0083D4AA008AD6
      AF0092D7B30098D6B70098D6B7009DD4B800A1D0B800ADCEBA00ADCEBA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A9760003A9760000087
      3B000B9247000B9648000B9648000D9749000D9448000B8E44000B8E44000C86
      4000047835002B794A002B794A00F4F7F400000000000000000000000000FEFE
      FD008C2800008D2900008D290000EEE3DC00FEFFFF00F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900FBFDFF00FDFFFF00912F0000912F00008F2A
      0000E9D9CF00FEFFFF00FEFFFF00FBFCFC00FBFCFC00FBFCFC00FBFCFC00FBFC
      FC00FBFBFB00FBFBFB00FBFBFB0000000000A95C260000000000000000000000
      00000000000000000000000000000000000091919100F7F7F700F7F7F700EDED
      ED00EDEDED00EDEDED00EDEDED00F3F6F80083705E00EEAF6F00EEAF6F00F8EA
      DF00F5E2D400E7CAAC00E7CAAC00E1C19C00E2C19C00E1C09B00E1C09B00E0BF
      9A00E1BE9800E0BD9700E0BD9700E0BC9500DFBB9400DEBA9300DEBA9300DFBA
      9100DFB99000DEB88F00DEB88F00DDB78D00DEB68C00DDB58900DDB58900EBC4
      A700F2D4BC00E2954700E295470098999B00EAEBEB00EEEEEE00EEEEEE00EDED
      ED00EDEDED00F7F7F700F7F7F70092929200C79D4C00C79D4C00C79D4C00C79D
      4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79E
      4D00C89E4E00C89E4E00C89E4E00C89E4E00C69B4A00C99F4E00C99F4E00E4C1
      7600CFB98F00BEC0C600BEC0C600BEBBB9007193B8006594CA006594CA003D7B
      B800133D8A00002078000020780018448E003F7BB7003C75B3003C75B3003A74
      B2003A73B1003A73B1003A73B1003972B0003871AF003970AE003970AE003770
      AE003770AE003A73AF003A73AF00154695000000000000000000000000000000
      000058A67D0068B7910068B7910073C29D007DCBA40085D1AC0085D1AC0092D7
      B8009EDCC400A7DECB00A7DECB00ABDECD0093C7AF00FFFEFD00FFFEFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C1DACA00006C2600006C26000A88
      43000A9147000B974B000B974B000C994B000C974A000A9247000A9247000A8B
      4300007A330089AB940089AB940000000000000000000000000000000000C897
      75008F2D0000B4724500B472450000000000FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFBFC0000000000C8987800C8987800912F
      0000B37142000000000000000000FAF8F700FAF9F700FAF8F700FAF8F700FAF8
      F600FBFAF900FCFDFD00FCFDFD0000000000A95C260000000000000000000000
      0000000000000000000000000000000000008B8B8B000000000000000000F3F3
      F300F2F2F200F3F3F300F3F3F300F7F9FB0083756700ECAA6800ECAA6800F9ED
      E300F5E3D500F7E5D900F7E5D900F7E5D900F7E3D600F6E2D300F6E2D300F6E0
      D100F5DECE00F4DCCB00F4DCCB00F4DAC800F3D8C600F3D7C300F3D7C300F2D5
      C000F2D3BD00F1D1BB00F1D1BB00F0CFB800EFCDB500EFCCB200EFCCB200EBC5
      A800F5DBC500DD8B3800DD8B380099A2AB00EBEBEB00F4F4F400F4F4F400F2F2
      F200F2F2F20000000000000000008A8A8A00D4AD5D00CFA55500CFA55500D0A6
      5500D0A65500D0A65500D0A65500D0A65500D0A65500D0A75700D0A75700CDA3
      5300CCA25200CCA25200CCA25200CA9D4C00E1B76500EAC98200EAC98200CCC2
      B000C7CAD200C1C1C200C1C1C200BEBAB6007293B8006595CB006595CB003C77
      B600356EB100104AA000104AA0003771B1003E77B4003B75B3003B75B3003C75
      B3003B74B2003B73B1003B73B1003A72B0003A72B0003871AF003871AF003971
      AF003770AE003B74B0003B74B000154796000000000000000000000000000000
      0000A1CAB30063AF8D0063AF8D0072BD9B007DC6A5008FD3B7008FD3B700A2DE
      CB00B3E6D900BCEAE000BCEAE000BAE9DE00C2DACB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008DBFA1000066220000662200007C
      38000B8A47000B9149000B9149000D944C000C954D000C924A000C924A00048A
      4100217F4B00EDF1ED00EDF1ED0000000000000000000000000000000000A251
      19008F2C0000E5D1C400E5D1C400FEFFFF00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFCFC00FBFCFC00F7F2EF00FDFFFF00F8F7F600F8F7F6008F2B
      000093340000D9B09400D9B09400D2A48300D1A48300D1A48300D1A48300CF9F
      7D00E6CFBE00FEFFFF00FEFFFF0000000000A95B260000000000000000000000
      000000000000000000000000000000000000C0C0C000B3B3B300B3B3B3000000
      0000FEFEFE0000000000000000000000000080746700EAA76300EAA76300FAEF
      E700F7E8DC00EAD1B700EAD1B700E5C8A800E5C8A800E4C7A600E4C7A600E4C6
      A500E4C5A300E4C4A200E4C4A200E3C3A000E3C29F00E3C19D00E3C19D00E2BF
      9B00E1BF9A00E1BE9800E1BE9800E1BD9700E1BB9500DFBA9300DFBA9300EDC9
      AE00F8E0CC00DB8A3A00DB8A3A00929AA200F5F5F5000000000000000000FEFE
      FE0000000000C1C1C100C1C1C100B3B3B300F1E0BD00F0DDB000F0DDB000F1DD
      B100F1DDB100F1DDB100F1DDB100F1DDB100F1DDB100F3E1B800F3E1B800D7B0
      6600CFA35200D0A25200D0A25200FCD27C00988E760090A0BC0090A0BC00D5D6
      D600C9C9C900C1C1C100C1C1C100BEBAB6007294B9006695CC006695CC003B76
      B500407AB700427CB800427CB8003F78B6003D77B5003D76B4003D76B4003C75
      B3003C74B2003B74B2003B74B2003B73B1003A72B0003A72B0003A72B0003972
      B0003870AE003B74B0003B74B0001549970000000000000000000000000069A1
      7C002B8B51006CAE92006CAE920072B6980082C5AB009AD9C6009AD9C600B5E6
      DC00CAF0E900DCF8F400DCF8F400A8D2C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFDFB00FCFDFB00439A
      690000722C0004854100048541000A8C46000A8C47000B8B48000B8B4800007F
      390086AB93000000000000000000000000000000000000000000000000008D2A
      00008E2B00000000000000000000FBFCFC00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FDFFFF00FDFFFF00E1C1AA00FCFEFE0000000000000000009B42
      0300902D0000ECDBD000ECDBD000F6F0EB00F4ECE600F4ECE600F4ECE600F3EB
      E400F8F4F100FDFDFE00FDFDFE0000000000A95C260000000000000000000000
      00000000000000000000000000000000000000000000A1A1A100A1A1A1008484
      8400C5C5C500C2C2C200C2C2C200C3C5C6007D726800E9A45F00E9A45F00FBF2
      EB00F8EADF00EFDAC600EFDAC600EBD4BC00EBD3BB00EBD2B900EBD2B900EBD1
      B700EAD0B500EACEB300EACEB300EACDB100E9CBAF00E8CAAD00E8CAAD00E8C8
      AB00E7C7A800E6C5A700E6C5A700E6C4A500E5C3A300E5C1A000E5C1A000EDCA
      B100FAE4D000D6873900D68739008B939B00BBBBBB00C6C6C600C6C6C600BDBD
      BD0089898900969696009696960000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000DBB4
      6E00D9AD5C00F8D28300F8D2830056657F00001F8F0093A3BF0093A3BF00D8D5
      D200C9C9C900C1C1C100C1C1C100BEBAB6007294B9006595CC006595CC003B76
      B5003F79B7003F78B6003F78B6003E78B6003E77B5003D77B5003D77B5003D76
      B4003C75B3003C74B2003C74B2003B74B2003B73B1003A73B1003A73B1003A73
      B1003971AF003C75B1003C75B100164A9A0000000000000000000000000069A1
      7C002B8B51006CAE92006CAE920072B6980082C5AB009AD9C6009AD9C600B5E6
      DC00CAF0E900DCF8F400DCF8F400A8D2C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFDFB00FCFDFB00439A
      690000722C0004854100048541000A8C46000A8C47000B8B48000B8B4800007F
      390086AB93000000000000000000000000000000000000000000000000008D2A
      00008E2B00000000000000000000FBFCFC00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FDFFFF00FDFFFF00E1C1AA00FCFEFE0000000000000000009B42
      0300902D0000ECDBD000ECDBD000F6F0EB00F4ECE600F4ECE600F4ECE600F3EB
      E400F8F4F100FDFDFE00FDFDFE0000000000A95C260000000000000000000000
      00000000000000000000000000000000000000000000A1A1A100A1A1A1008484
      8400C5C5C500C2C2C200C2C2C200C3C5C6007D726800E9A45F00E9A45F00FBF2
      EB00F8EADF00EFDAC600EFDAC600EBD4BC00EBD3BB00EBD2B900EBD2B900EBD1
      B700EAD0B500EACEB300EACEB300EACDB100E9CBAF00E8CAAD00E8CAAD00E8C8
      AB00E7C7A800E6C5A700E6C5A700E6C4A500E5C3A300E5C1A000E5C1A000EDCA
      B100FAE4D000D6873900D68739008B939B00BBBBBB00C6C6C600C6C6C600BDBD
      BD0089898900969696009696960000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000DBB4
      6E00D9AD5C00F8D28300F8D2830056657F00001F8F0093A3BF0093A3BF00D8D5
      D200C9C9C900C1C1C100C1C1C100BEBAB6007294B9006595CC006595CC003B76
      B5003F79B7003F78B6003F78B6003E78B6003E77B5003D77B5003D77B5003D76
      B4003C75B3003C74B2003C74B2003B74B2003B73B1003A73B1003A73B1003A73
      B1003971AF003C75B1003C75B100164A9A00C1D7C80010633100106331004387
      680056947D005C9D83005C9D830068AA900080C4AE00A1DDD100A1DDD100C4EF
      E900E4FBF800D8F1EA00D8F1EA00DEEBE20000000000D9E2DC00D9E2DC002866
      3700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDEAE2001483460014834600007633000882410006804100068041001574
      4100FAF9F80000000000000000000000000000000000FEFEFF00FEFEFF008D29
      0000953900000000000000000000FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC000000000000000000D4A48100F7F2EE000000000000000000AA5E
      29008F2B0000E9D7CB00E9D7CB0000000000FEFFFF00FEFFFF00FEFFFF00FEFF
      FF00FDFEFE00FDFDFD00FDFDFD0000000000A95D260000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000073737300ABABAB00ABABAB00A4A6A700B8B0A800E49C5500E49C5500FDF5
      EF00F8EBE100F9EBE200F9EBE200F9EBE100F8E9DF00F7E7DC00F7E7DC00F7E6
      D900F7E4D700F5E2D400F5E2D400F4E0D000F4DDCD00F2DACA00F2DACA00F0D7
      C500EFD4C100EED2BE00EED2BE00EDD0BB00EDCFB900EDCEB700EDCEB700EAC9
      B000FCE7D400C97C3100C97C3100BBC3CB00A9A9A9007474740074747400D3D3
      D300F9F9F900000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EBCB
      8900E9C98700F0F0F000F0F0F000002E9300002E8E0095A5BF0095A5BF00D8D5
      D200C9C9C900C1C1C100C1C1C100BEBAB6007295BA006796CD006796CD003C77
      B6003F79B7003F79B7003F79B7003E79B7003E78B6003D77B5003D77B5003D76
      B4003D76B4003C76B4003C76B4003C74B2003B74B2003A74B2003A74B2003A73
      B1003A72B0003D76B2003D76B200164C9C00C6DDCE00AFCBBD00AFCBBD00ADCC
      BB00AFCEBD00B0D0BE00B0D0BE00AED0BE00B3D5C300B3D6C500B3D6C500B9DA
      CA00C1DECF00D5EAE000D5EAE00000000000498358000047000000470000004E
      03007DA3870000000000000000009DC6AA0024813D002D8743002D874300368C
      4B003B8F4F003B9352003B93520047A461004EB46D0054BE7A0054BE7A005EC9
      8A0092C5A400000000000000000097C6AA00006D2D0000662700006627008FAF
      9B00000000000000000000000000000000000000000000000000000000008D28
      0000943700000000000000000000FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FDFFFF00F3E9E100F3E9E100D09B7700F8F5F2000000000000000000A95C
      27008F2B0000E9D6CA00E9D6CA0000000000FDFDFE00FDFDFE00FDFDFE00FDFD
      FE00FDFDFE00FDFEFE00FDFEFE0000000000A95D260000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C00C5C5C500C5C5C500BCBEBF00B8B3AE00E1984E00E1984E00FEF8
      F200FAF1EA00E7CEB000E7CEB000DEC09A00DFC19A00DFC09900DFC09900DFBF
      9900DEBE9800DEBD9600DEBD9600DEBC9500DDBB9300DCB99000DCB99000DAB6
      8E00D9B58C00D9B48A00D9B48A00D9B38A00D8B38900D8B28600D8B28600E9C9
      B500FBE7D400BD732B00BD732B00B9C0C800C1C1C00089898900898989000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000338F000030900095A6C00095A6C000D8D5
      D100C9C9C900C1C1C100C1C1C100BEBAB6007395BA006697CD006697CD003C78
      B700417BB9003F79B7003F79B7003F79B7003E78B6003E78B6003E78B6003D78
      B6003D76B4003C76B4003C76B4003C76B4003B75B3003B74B2003B74B2003A73
      B1003A73B1003D77B3003D77B300174D9D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007EA689007EA68900004D0200005E130005681F0005681F000369
      1E0000550500FFFAFE00FFFAFE00000000007BB891002A994B002A994B001695
      3700189639001D9D3F001D9D3F0027B5510036D26E0048E88F0048E88F0055F8
      AB0038DF8C00E5DFDF00E5DFDF000000000000000000619D7A00619D7A000000
      0000000000000000000000000000000000000000000000000000000000008F2C
      00008E2A00000000000000000000FEFFFF00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD0000000000D8AD8F00D8AD8F00D3A48300000000000000000000000000973B
      00008E2A0000F6F1EE00F6F1EE00000000000000000000000000000000000000
      000000000000000000000000000000000000A6581F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B8B8B00ADADAD00ADADAD00A4A5A600A29E9B00E2974B00E2974B00FFFA
      F600FAF1EA00F9EEE500F9EEE500F8ECE200F7EAE000F7E8DD00F7E8DD00F6E7
      DB00F5E5D800F4E2D400F4E2D400F2DECF00EED7C700EAD1BF00EAD1BF00E5CB
      B700E3C6B100E0C2AE00E0C2AE00DFC1AC00E0C1AA00E1C2AB00E1C2AB00E5C6
      B100F6DCC400B3723300B3723300A2A7AD00A7A6A60087878700878787000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003492000032930095A6C00095A6C000D7D5
      D100C9C9C900C1C1C100C1C1C100BEBAB6007395BA006797CE006797CE003D78
      B800407BB900417BB900417BB9003F79B7003F79B7003E79B7003E79B7003F78
      B6003D77B5003D77B5003D77B5003C76B4003C75B3003B75B3003B75B3003B74
      B2003A73B1003E77B3003E77B300174E9F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007EA689007EA68900004D0200005E130005681F0005681F000369
      1E0000550500FFFAFE00FFFAFE00000000007BB891002A994B002A994B001695
      3700189639001D9D3F001D9D3F0027B5510036D26E0048E88F0048E88F0055F8
      AB0038DF8C00E5DFDF00E5DFDF000000000000000000619D7A00619D7A000000
      0000000000000000000000000000000000000000000000000000000000008F2C
      00008E2A00000000000000000000FEFFFF00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD0000000000D8AD8F00D8AD8F00D3A48300000000000000000000000000973B
      00008E2A0000F6F1EE00F6F1EE00000000000000000000000000000000000000
      000000000000000000000000000000000000A6581F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B8B8B00ADADAD00ADADAD00A4A5A600A29E9B00E2974B00E2974B00FFFA
      F600FAF1EA00F9EEE500F9EEE500F8ECE200F7EAE000F7E8DD00F7E8DD00F6E7
      DB00F5E5D800F4E2D400F4E2D400F2DECF00EED7C700EAD1BF00EAD1BF00E5CB
      B700E3C6B100E0C2AE00E0C2AE00DFC1AC00E0C1AA00E1C2AB00E1C2AB00E5C6
      B100F6DCC400B3723300B3723300A2A7AD00A7A6A60087878700878787000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003492000032930095A6C00095A6C000D7D5
      D100C9C9C900C1C1C100C1C1C100BEBAB6007395BA006797CE006797CE003D78
      B800407BB900417BB900417BB9003F79B7003F79B7003E79B7003E79B7003F78
      B6003D77B5003D77B5003D77B5003C76B4003C75B3003B75B3003B75B3003B74
      B2003A73B1003E77B3003E77B300174E9F000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AAC2
      B10000551400005B1100005B1100046C23000671250005742600057426000677
      270000741F0039854F0039854F000000000000000000D5E7DC00D5E7DC0069B9
      850039AC5A0027A64C0027A64C0030B259003CC56F0049D6880049D6880051E1
      940050EA9C0053B0760053B07600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A75B
      25008F2C0000E1C7B600E1C7B60000000000FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FDFDFD000000
      0000E1C0AA00D3A68500D3A68500E4C9B60000000000F4ECE700F4ECE7008F2B
      0000943500000000000000000000F0E4DE00821500008C2800008C2800008C28
      00008D2900008D2900008D29000080110000D0A6880000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008A8A8A00A7A7A700A7A7A700A7A8A900A4A2A100E1944600E1944600FFFC
      F900FBF4F000F4E7DA00F4E7DA00F2E2D200F1E1D000F1E0CE00F1E0CE00F1DF
      CC00F0DCC900EED9C500EED9C500EBD4BE00EAD4C400E6CEBE00E6CEBE00E0C9
      BD00DCC5B900D8BCAA00D8BCAA00D9BFB000DCC2B700DFC8BC00DFC8BC00E2CB
      BE00EECBAB00B1794500B1794500A5A9AE00A9A9A90078787800787878000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003695000034950096A7C10096A7C100D7D5
      D100C9C9C900C1C1C100C1C1C100BEBAB6007495BB006897CE006897CE003E7A
      B900427CBA00407BB900407BB900417AB800407AB800407AB800407AB8003F79
      B7003E78B6003D78B6003D78B6003D77B5003D76B4003C75B3003C75B3003C75
      B3003B74B2003E77B3003E77B3001850A1000000000000000000000000000000
      000000000000000000000000000000000000000000003378490033784900004B
      060002672200067027000670270006772A00077C2D0007802E0007802E000883
      3000078530000075160000751600C0D1C5000000000000000000000000008FC6
      A20036B75E0030B4580030B4580032B45B0038BB660041C6750041C6750048CD
      820048CE83002ABB63002ABB6300C6D2C9000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0A6
      8800902E0000AB602C00AB602C0000000000FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFEFE00000000000000000000000000E0BF
      A800D4A78800D4A98900D4A989000000000000000000BF865F00BF865F00912F
      0000BB7F56000000000000000000F2E8E2008E2C000099400000994000009940
      00009A4100008D2900008D290000CDA080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B8B8B800B8B8B800B5B6B600B3B5B700DE8D3D00DE8D3D00FFFF
      FC00FDF9F600ECD8C100ECD8C100E4CBAC00E4CBAD00E4CBAC00E4CBAC00E5CA
      AA00E3C8A800E2C6A500E2C6A500DFC09E00E4CCB700E3D0C700E3D0C700D197
      6500C55F0000C6610000C6610000C7630300C8650500C6660700C6660700C665
      0600C2570000BC987500BC987500B3B6B900B3B2B200FDFDFD00FDFDFD000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003897000036970096A7C20096A7C200D7D5
      D100C9C9C900C1C1C100C1C1C100BEBAB6007495BB006798CF006798CF003E7A
      B900427DBB00427CBA00427CBA00417BB900407BB900407AB800407AB800407A
      B8003E78B6003E78B6003E78B6003E77B5003E77B5003D76B4003D76B4003D76
      B4003B75B3003F78B4003F78B4001951A2000000000000000000000000000000
      00000000000000000000000000000000000000000000C2DACA00C2DACA000057
      1400056E2A0007782D0007782D00067E300008853300088B3400088B3400078C
      3600098B36000685330006853300006F260000000000EFF2EF00EFF2EF0044BB
      6E0033BC630039BD660039BD660038BB650039B965003BB86A003BB86A003DB8
      6D003DB46D0035AA610035AA61002F8A4E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000902E00008F2B00008F2B0000E3CCBD0000000000FEFEFE00FEFEFE00FEFE
      FE00FEFEFF00000000000000000000000000F0E2D700D6AB8C00D6AB8C00D3A7
      8700D5AB8D00FAF7F500FAF7F50000000000F7F0EC008E2A00008E2A00008D27
      0000F5EDE8000000000000000000F2E8E2008F2D00009A4101009A4101009940
      00008D290000CDA08000CDA08000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4823000D48230000000
      0000FCF8F600FFFCFB00FFFCFB00FFFCFC00FFFBF900FEF9F700FEF9F700FEF7
      F400FCF4EF00F8EEE800F8EEE800F2E3DC00E8D5CC00D9B59900D9B59900C45B
      0000C86A1100C96D1400C96D1400CA6F1800CA711A00C9711C00C9711C00C463
      0500D1976000FEFFFF00FEFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003A990000389A0096A7C20096A7C200D7D5
      D100C9C9C900C1C1C100C1C1C100BEBAB6007496BB006898CF006898CF003F7B
      BA00427DBB00427DBB00427DBB00417CBA00417CBA00407BB900407BB900407A
      B8003F79B7003F79B7003F79B7003F79B7003E77B5003E77B5003E77B5003D77
      B5003C75B3004079B5004079B5001953A5000000000000000000000000000000
      00000000000000000000000000000000000000000000C2DACA00C2DACA000057
      1400056E2A0007782D0007782D00067E300008853300088B3400088B3400078C
      3600098B36000685330006853300006F260000000000EFF2EF00EFF2EF0044BB
      6E0033BC630039BD660039BD660038BB650039B965003BB86A003BB86A003DB8
      6D003DB46D0035AA610035AA61002F8A4E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000902E00008F2B00008F2B0000E3CCBD0000000000FEFEFE00FEFEFE00FEFE
      FE00FEFEFF00000000000000000000000000F0E2D700D6AB8C00D6AB8C00D3A7
      8700D5AB8D00FAF7F500FAF7F50000000000F7F0EC008E2A00008E2A00008D27
      0000F5EDE8000000000000000000F2E8E2008F2D00009A4101009A4101009940
      00008D290000CDA08000CDA08000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4823000D48230000000
      0000FCF8F600FFFCFB00FFFCFB00FFFCFC00FFFBF900FEF9F700FEF9F700FEF7
      F400FCF4EF00F8EEE800F8EEE800F2E3DC00E8D5CC00D9B59900D9B59900C45B
      0000C86A1100C96D1400C96D1400CA6F1800CA711A00C9711C00C9711C00C463
      0500D1976000FEFFFF00FEFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003A990000389A0096A7C20096A7C200D7D5
      D100C9C9C900C1C1C100C1C1C100BEBAB6007496BB006898CF006898CF003F7B
      BA00427DBB00427DBB00427DBB00417CBA00417CBA00407BB900407BB900407A
      B8003F79B7003F79B7003F79B7003F79B7003E77B5003E77B5003E77B5003D77
      B5003C75B3004079B5004079B5001953A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005998
      7000006C2400067D3200067D320009863800088B3A00098D3B00098D3B00098C
      3B000A873A000A8038000A80380000742D004987610097CFAA0097CFAA0059D0
      850058CD840051C97E0051C97E0040C171003ABB6B003CB66A003CB66A003BB0
      670039A66300339A5A00339A5A001D844400A3BEAD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D3AD91008F2C00008F2C0000912F0000F7F1EE000000000000000000FEFE
      FE00FCFAF900E4C8B400E4C8B400D09F7C00D09F7D00D7B09400D7B09400E8D2
      C30000000000000000000000000000000000983C00009232000092320000BD82
      5A00000000000000000000000000F2E9E2008F2D000099400000994000008D29
      0000CDA181000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D37F2B00D37F2B000000
      0000FFFEFE00EFE0CE00EFE0CE00E9D5BB00E9D4BB00E9D3B900E9D3B900E8D2
      B800E8D1B500E5CDB100E5CDB100E1C6A800E3D0C100D49F7100D49F7100C764
      0500C96D1400CA6F1800CA6F1800CA721C00CA721D00C4640700C4640700CF97
      6200F6FCFF00F7F5F400F7F5F400FBFAF900FEFEFE0000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003C9B00003A9C0096A8C30096A8C300D7D5
      D100C9C9C900C1C1C100C1C1C100BEBAB6007497BC006899CF006899CF003F7C
      BB00437EBC00427DBB00427DBB00427CBA00417CBA00417CBA00417CBA00407B
      B900407AB800407AB800407AB8003F79B7003F79B7003E78B6003E78B6003E77
      B5003D77B5004079B5004079B5001A54A6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFC
      FA0015763B00017D3300017D330009853B0009873C000A873C000A873C000B85
      3D000B813B000A7A38000A7A3800086F330009622D0081DEA50081DEA50065D3
      91006FD5980076D69D0076D69D007FD7A30075D09A0054BF800054BF800038AC
      68003BA5670037996000379960002F8C56001B703E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B06A3800B06A380091300000912F0000E4CCBD00E4CCBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1E6DE00F1E6DE00973A000094340000A04B0F00A04B0F000000
      0000000000000000000000000000F3E9E4008F2D00008D2900008D290000CFA4
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D17C2600D17C26000000
      000000000000F4EBE000F4EBE000F1E3D200F1E3D200F0E1D000F0E1D000EFE0
      CD00EEDDCA00EBD9C500EBD9C500E6D1BA00E5D4C900D6A67D00D6A67D00C867
      0700CA6F1800CA711C00CA711C00C9721D00C4650800CD956100CD956100F3F8
      FF00F4F2F000FAF7F600FAF7F600FDFCFB00FFFFFE0000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003E9E00003C9E0098AAC50098AAC500D7D5
      D100C9C9C900C1C1C100C1C1C100BEBAB6007597BC006999D0006999D000407D
      BC00437EBC00437EBC00437EBC00427EBC00437CBA00417CBA00417CBA00427C
      BA00407BB900407AB800407AB8003F79B7003F79B7003E79B7003E79B7003E78
      B6003E77B500417AB600417AB6001A56A8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADCAB6000373320003733200087C39000A7F3B000A7E3A000A7E3A000B7D
      3A000C7838000B6E34000B6E340000521F009ED3B10068D5990068D5990072D4
      9D0077D6A1007DD6A4007DD6A40081D5A60088D4AA0092D5B00092D5B0008ACD
      A80042A56F00408A6000408A6000669578002B7D51007AA28B007AA28B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B06A38008F2C00008F2B00008F2B0000AB60
      2C00E2C8B700000000000000000000000000000000000000000000000000E7D3
      C600B47345008F2A00008F2A000096370000AB5F2A0000000000000000000000
      0000000000000000000000000000FAF7F40083150000D1A88A00D1A88A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D17B2700D17B27000000
      000000000000000000000000000000000000FFFEFD00FEFCFB00FEFCFB00FDFA
      F800FCF6F300F8F1EC00F8F1EC00F1E6E000E9DDD700D8AA8300D8AA8300C868
      0B00CA711C00CA721D00CA721D00C4650900CE966300F3F7FF00F3F7FF00F4F1
      F000F9F6F600FCFCFB00FCFCFB00FDFDFD000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0000040A0000040A2007F97B9007F97B900DDD9
      D300C9C9C900C1C1C100C1C1C100BEBAB6007597BE00699AD100699AD100407D
      BC00447FBD00437FBD00437FBD00447EBC00427EBC00437CBA00437CBA00417D
      BB00417BB900417BB900417BB900407AB800407AB8003F79B7003F79B7003E79
      B7003E77B500427BB700427BB7001A57A9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADCAB6000373320003733200087C39000A7F3B000A7E3A000A7E3A000B7D
      3A000C7838000B6E34000B6E340000521F009ED3B10068D5990068D5990072D4
      9D0077D6A1007DD6A4007DD6A40081D5A60088D4AA0092D5B00092D5B0008ACD
      A80042A56F00408A6000408A6000669578002B7D51007AA28B007AA28B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B06A38008F2C00008F2B00008F2B0000AB60
      2C00E2C8B700000000000000000000000000000000000000000000000000E7D3
      C600B47345008F2A00008F2A000096370000AB5F2A0000000000000000000000
      0000000000000000000000000000FAF7F40083150000D1A88A00D1A88A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D17B2700D17B27000000
      000000000000000000000000000000000000FFFEFD00FEFCFB00FEFCFB00FDFA
      F800FCF6F300F8F1EC00F8F1EC00F1E6E000E9DDD700D8AA8300D8AA8300C868
      0B00CA711C00CA721D00CA721D00C4650900CE966300F3F7FF00F3F7FF00F4F1
      F000F9F6F600FCFCFB00FCFCFB00FDFDFD000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0000040A0000040A2007F97B9007F97B900DDD9
      D300C9C9C900C1C1C100C1C1C100BEBAB6007597BE00699AD100699AD100407D
      BC00447FBD00437FBD00437FBD00447EBC00427EBC00437CBA00437CBA00417D
      BB00417BB900417BB900417BB900407AB800407AB8003F79B7003F79B7003E79
      B7003E77B500427BB700427BB7001A57A9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006399770063997700006B2B00097535000B7336000B7336000A6C
      32000B643200004518000045180093B4A00084DCAE006FD09E006FD09E0079D3
      A4007ED3A70084D3AA0084D3AA0088D3AC008DD2AE0091D0AF0091D0AF0097CF
      B2008FC4A6000000000000000000ECF5EF007BA18800215D3C00215D3C00EAEE
      EC00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D3AD9100902E0000902E0000902E
      0000902D00008E2B00008E2B000095380000963A00008F2C00008F2C0000902E
      0000922F00009230000092300000A3521600AE663400A85B2500A85B2500A758
      2100A7582100A7592200A7592200A2501600D2AA8D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D17B2800D17B28000000
      000000000000000000000000000000000000FEFEFE00FEFCFB00FEFCFB00FDFA
      F800FCF7F400F8F1ED00F8F1ED00F2E8E200EBE1DB00DBB28F00DBB28F00C768
      0B00CA721D00C4640700C4640700CE976400F3F7FF00F4F0EF00F4F0EF00F8F6
      F500FCFBFA00FDFEFE00FDFEFE00FFFFFE000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0000446A5000648A700154C9B00154C9B00D3CF
      C900DAD6CE00CECAC400CECAC400CBC3B9007A9CBF006999D1006999D100417E
      BD004580BE004580BE004580BE00437FBD00447EBC00427EBC00427EBC00437D
      BB00417CBA00407AB900407AB9003E79B8003D78B7003B76B5003B76B5003A76
      B500407AB700467EB800467EB8001150A9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFF6F100EFF6F100417F590000582100075A2B00075A2B000A55
      2B0000350E007E9A8A007E9A8A00C1EFD90069C5990079CBA40079CBA4007FCD
      A70084CEAB008BCFAE008BCFAE0090D0B00096CFB3009BCFB6009BCFB60091C6
      AB00EAF2EB0000000000000000000000000000000000C8DACE00C8DACE00D5E2
      D900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0A6
      8800A7592200902E0000902E00008E2A00008F2B0000902D0000902D0000A351
      1600C9997600FEFEFD00FEFEFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D17C2900D17C29000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FF00FDFBFB00FAF6F400FAF6F400F4EDEA00EFE7E600DEB79600DEB79600C767
      0B00C4640600CF986400CF986400F3F8FF00F4F0EE00F8F7F600F8F7F600FCFB
      FA00FEFDFD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0001D5BB100094DA9000348A9000348A9000943
      95004C6C9B00516F9B00516F9B004B6894004D7DB2007BA6D8007BA6D8003D7B
      BC00447FBE00417EBD00417EBD00407DBC003F7BBB003F7CBB003F7CBB003E7A
      B900417CBA004F85C0004F85C0005E90C7006A98CB00729ECE00729ECE0079A2
      D0006090C6001556AB001556AB00225EB2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D7E6DB004D7F610010492B0010492B000336
      1C0094A79D00F2FFFC00F2FFFC0076C1A00093CFB4009ED4BC009ED4BC00A8D8
      C300B3DCCA00BCDFD200BCDFD200C5E3D700CCE5DB00C5DED200C5DED200E5F0
      E800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFDFF00FDFCFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CD792700CD792700FFEC
      D60000000000FFFFFB00FFFFFB00FFFFFB00FFFFFB00FFFFFB00FFFFFB00FFFF
      FC00FFFEF900FFFBF500FFFBF500FCF5EE00F9F2EE00E3B99400E3B99400C158
      0000D19A6600F6FBFF00F6FBFF00F5F1F000F8F6F600FCFBFA00FCFBFA00FDFD
      FD00FFFFFE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000648EC900356EBC002461B5002461B5001154
      B0000C52AF000C51B0000C51B000094FAF001F62B40099BAE10099BAE1006597
      CD00538BC5006797CC006797CC00709ED000739FD10074A0D20074A0D20076A1
      D200729DD0005B8CC7005B8CC700437ABE00306CB7001C5CAF001C5CAF000B4F
      A9001254AD003B72BE003B72BE005282C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D7E6DB004D7F610010492B0010492B000336
      1C0094A79D00F2FFFC00F2FFFC0076C1A00093CFB4009ED4BC009ED4BC00A8D8
      C300B3DCCA00BCDFD200BCDFD200C5E3D700CCE5DB00C5DED200C5DED200E5F0
      E800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFDFF00FDFCFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CD792700CD792700FFEC
      D60000000000FFFFFB00FFFFFB00FFFFFB00FFFFFB00FFFFFB00FFFFFB00FFFF
      FC00FFFEF900FFFBF500FFFBF500FCF5EE00F9F2EE00E3B99400E3B99400C158
      0000D19A6600F6FBFF00F6FBFF00F5F1F000F8F6F600FCFBFA00FCFBFA00FDFD
      FD00FFFFFE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000648EC900356EBC002461B5002461B5001154
      B0000C52AF000C51B0000C51B000094FAF001F62B40099BAE10099BAE1006597
      CD00538BC5006797CC006797CC00709ED000739FD10074A0D20074A0D20076A1
      D200729DD0005B8CC7005B8CC700437ABE00306CB7001C5CAF001C5CAF000B4F
      A9001254AD003B72BE003B72BE005282C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFFFC00CCDCD000CCDCD000C3DB
      CB00A7D1BC006FB191006FB1910081BBA00082BCA00088BFA40088BFA4008DC1
      A80092C4AB0097C6AF0097C6AF009AC6B000B1D2C100EAF3ED00EAF3ED000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D48A
      4400D58A4000D58B4200D58B4200D58B4200D58B4200D58B4200D58B4200D58B
      4200D58B4200D48A4300D48A4300D38A4300D18A4500CD7F3400CD7F3400D9A6
      7600FAFFFF00F7F4F300F7F4F300F9F8F700FCFBFB00FEFEFE00FEFEFE00FFFE
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F00081A4D4004D80C4004D80C4005988
      C8005988C8005988C8005988C8005988C8005484C600437DBF00437DBF0076A0
      D2006E9ACF005387C5005387C500417ABE004178BE00477CC100477CC1004A7D
      C3004B7EC4004B7EC4004B7EC4004D80C5004F81C6005082C6005082C6005183
      C600497DC3006390CA006390CA00F0F0F000424D3E000000000000003E000000
      28000000C0000000C00000000100010000000000001200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFF80703860E00000000000000000000
      0000000000000000FFF000000002000000000000000000000000000000000000
      C91000000000000000000000000000000000000000000000C100000000000000
      00000000000000000000000000000000C1000000000000000000000000000000
      0000000000000000C0000440001B000000000000000000000000000000000000
      C00000400017000000000000000000000000000000000000E000000000010000
      00000000000000000000000000000000E000D800000000000000000000000000
      0000000000000000C00138000000000000000000000000000000000000000000
      C001F8000000000000000000000000000000000000000000C001F80000000000
      00000000000000000000000000000000C005F800000000000000000000000000
      0000000000000000C001F8000000000000000000000000000000000000000000
      C001F8000000000000000000000000000000000000000000C801F80000000000
      00000000000000000000000000000000F801F800000000000000000000000000
      0000000000000000080058000000000000000000000000000000000000000000
      F800F80000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000008000000000000000000000000000000000000000000
      0000100000000000000000000000000000000000000000000000180000000000
      0000000000000000000000000000000000001800000000000000000000000000
      0000000000000000000018000000000000000000000000000000000000000000
      0000180000000000000000000000000000000000000000000000180000000000
      0000000000000000000000000000000000001000000000000000000000000000
      0000000000000000000017FFFFFE000000000000000000000000000000000000
      000017FFFFFF000000000000000000000000000000000000000017F2007F0000
      00000000000000000000000000000000000017F3C07F00000000000000000000
      0000000000000000000017F0001F000000000000000000000000000000000000
      000017F0001F000000000000000000000000000000000000000017F0001F0000
      00000000000000000000000000000000000017FC001F00000000000000000000
      0000000000000000000017F8001F000000000000000000000000000000000000
      000017F0005F00000000000000000000000000000000000000001700007F0000
      0000000000000000000000000000000000001700007F00000000000000000000
      000000000000000000001000007F000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000000000001800007F0000
      0000000000000000000000000000000000001000007F00000000000000000000
      000000000000000000001000187F000000000000000000000000000000000000
      80003FFFFFFF000000000000000000000000000000000000C0001FFFFFFF0000
      00000000000000000000000000000000E00000000007C0000000000310000000
      0000FF000000001FC00000000001C00000000003100000000000FF0000000007
      800000000000C00000000003200000000000FF0000000003000000000000C000
      00000003200000000000FF0000000003000000000000C0000000000320000000
      0000FF0000000003000000000000C00000000003000000000000000000000000
      000000000000C00000000003000010000000000000000000000000000000C000
      00000003000000000000000000000000000000000000C0000000000300000000
      0000000000000000000000000000C00000000003000000000000000000000000
      000000000000C00000000003000000000000000000000000000000000000C000
      00000003000000000000000000000000000000000000C0000000000300000000
      0000000000000000000000000000C00000000003000000000000000000000000
      000000000000C00000000003800000000000000000000000000000000000C000
      00000003800000000000000000000000000000000000C0000000000300000000
      0000000000000000000000000000C00000000003000000000000000000000000
      000000000000C00000000003000000000000000000000000000000000000C000
      00000003000000000000000000000000000000000000C0000000000300000000
      0000000000000000000000000000C00000000003000000000000000000000000
      000000000000C00000000003000000000000000000000000000000000000C000
      00000003000000000000000000000000000000000000C0000000000300080000
      0000000000000000000000000000C00000000003000800000000000000000000
      000000000000C00000000003000000000000000000000000000000000000C000
      00000003000000000000000000000000000000000000C0000000000300000000
      0000000000000000000000000000C00000000003000000000000000000000000
      000000000000C00002000003000000000000800000000001000100408008C000
      00000003000000000000C00000000003000000000000C0000000000300000000
      0000C00000000003008000000000C00000000003000000000000FF800000007F
      000000000000C00000000003000000000000FF800000007F000000000000C000
      00000003000000000000FF800000007F000000000000C0000000000300000000
      0000FF800000007F000000000000C00000000003000000000000FF800000007F
      000000000000C00000000003000000000000FF800000007F000000000000C000
      00000007000000000000FF800000007F000000000000C0000000000700000000
      0000FF800000007F000000000000C0000000000F000000000000FF800000007F
      000000000000C0000000001F000000000000FF800000007F000000000000C000
      0000003F000000000001FF80000001FF000000000000C0000000007F00000000
      0001FF80000003FF000000000000C0000000007F000000000001FF80000003FF
      800000000000C000000000FF000000000001FF80000007FF800000000001C000
      000001FFE00000000001FF8000000FFFFF800000000FFFFFFFFFFFFFFF800000
      01FF800000000001FF800000000FFFFFFFFFFF7FFF00000000FF00F000000000
      FF800000000FFFFFFFFFFF7FFF00000000FF00F000000000FFF9FFFE7F9FFFE0
      0000001FFE000000007F000000000000FFF80008607FFF800000000FFE000000
      007F000000000000FFFFFF007F7FFF9000001007FE000000007F000000000000
      FFFFFF007F7FFF9000001007FE000000007F000000000000FFF0007001FFFF80
      00006001800000000001000000000000FFE00060007FFF800000000700000000
      0000000000000000FF8000E0007FFF800000000F000000000000000000000000
      FF8000E0007FFF800000000F000000000000000000000000FF000080001FFF80
      0006001F000000000000000000000000FE000000000FFF800008007F00000000
      0000000000000000FE000080000FFF900010007F000000000000000000000000
      FE000080000FFF900010007F000000000000000000000000F80000800007FF90
      0000017F000000000000000000000000F80000E00007FF900000077F00000000
      0000000000000000F00000F00001FF981880097F000000000000000000000000
      F00000F00001FF981880097F000000000000000000000000F0007FF00001FF80
      0100117F000000000000000000000000E001E7F87000FF000000617F00000000
      0000000000000000E00007F87000FE07E000017F000000000000000000000000
      E00007F87000FE07E000017F000000000000000000000000E0000FFE6000F810
      0800017F000000000000000000000000E0000FFE0000F0800108017F00000000
      0000000000000000E0001FFF8000E0000000017F000000000000000000000000
      E0001FFF8000E0000000017F000000000000000000000000F0001FFF0001E100
      0086017F600000000006000000000000F0007FFF0001E0000000017F17000000
      0068000000000000E000FFFF8007E6000060017F800000000001000000000000
      E000FFFF8007E6000060017F80000000000100000000000000008FFFF0078600
      0661017FF0000000000700000000000000010600060FE6000061017FF0000000
      001F000000000000FFF80100019FE60008E1FF7FF0000000001F000000000000
      FFF80100019FE60008E1FF7FF0000000001F000000000000FFE0018001FFE100
      1086007FF0000000001F000000000000FF8000E000FFE100E18600FFF8000000
      001F000000000000FF80008000FFF087010601FFFF90000001FF000000000000
      FF80008000FFF087010601FFFF90000001FF000000000000FFE00000007FF060
      0F0E07FFFF900000007F000000000000FFE00000007FF81FF81E0FFFFF980000
      007F000000000000FFF00000001FFE07E07E1FFFFF9F000000FF000000000000
      FFF00000001FFE07E07E1FFFFF9F000000FF000000000000FFF80000060FFF00
      00007FFFFF9F000000FF000000000000FFF80000078FFFE001FFFFFFFF9FE000
      07FF000000000000FFFE00000FFFFFFE7FFFFFFFFF88000007FF000000000000
      FFFE00000FFFFFFE7FFFFFFFFF88000007FF000000000000FFFF00001FFFFFFF
      FFFFFFFFFFE000000FFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object nfe_ite: TIBQuery
    Database = DMDados.IBDB
    Transaction = TEdicao
    BufferChunks = 2500
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT * FROM NFE_ITE_004'
      'WHERE NFE_CCAB = :ID')
    Left = 816
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object nfe_iteID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_ITE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object nfe_iteNFE_CCAB: TIntegerField
      FieldName = 'NFE_CCAB'
      Origin = '"NFE_ITE"."NFE_CCAB"'
    end
    object nfe_iteNFE_CDNF: TIntegerField
      FieldName = 'NFE_CDNF'
      Origin = '"NFE_ITE"."NFE_CDNF"'
    end
    object nfe_iteNFE_INDTOT: TIntegerField
      FieldName = 'NFE_INDTOT'
      Origin = '"NFE_ITE"."NFE_INDTOT"'
    end
    object nfe_iteNFE_CFOP: TIBStringField
      DisplayLabel = 'C.F.O.P.'
      FieldName = 'NFE_CFOP'
      Origin = '"NFE_ITE"."NFE_CFOP"'
      Size = 4
    end
    object nfe_iteNFE_CART: TIBStringField
      FieldName = 'NFE_CART'
      Origin = '"NFE_ITE"."NFE_CART"'
    end
    object nfe_iteNFE_CPROD: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'NFE_CPROD'
      Origin = '"NFE_ITE"."NFE_CPROD"'
    end
    object nfe_iteNFE_CEAN: TIBStringField
      FieldName = 'NFE_CEAN'
      Origin = '"NFE_ITE"."NFE_CEAN"'
      Size = 14
    end
    object nfe_iteNFE_NCM: TIBStringField
      DisplayLabel = 'NCM'
      FieldName = 'NFE_NCM'
      Origin = '"NFE_ITE"."NFE_NCM"'
      Size = 8
    end
    object nfe_iteNFE_EXTIPI: TIBStringField
      FieldName = 'NFE_EXTIPI'
      Origin = '"NFE_ITE"."NFE_EXTIPI"'
      Size = 3
    end
    object nfe_iteNFE_DCOR: TIBStringField
      FieldName = 'NFE_DCOR'
      Origin = '"NFE_ITE"."NFE_DCOR"'
      Size = 30
    end
    object nfe_iteNFE_XPROD: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NFE_XPROD'
      Origin = '"NFE_ITE"."NFE_XPROD"'
      Size = 120
    end
    object nfe_iteNFE_INFADPROD: TMemoField
      FieldName = 'NFE_INFADPROD'
      Origin = '"NFE_ITE"."NFE_INFADPROD"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object nfe_iteNFE_UCOM: TIBStringField
      DisplayLabel = 'UN'
      FieldName = 'NFE_UCOM'
      Origin = '"NFE_ITE"."NFE_UCOM"'
      Size = 6
    end
    object nfe_iteNFE_QCOM: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'NFE_QCOM'
      Origin = '"NFE_ITE"."NFE_QCOM"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
    object nfe_iteNFE_RCOM: TIntegerField
      FieldName = 'NFE_RCOM'
      Origin = '"NFE_ITE"."NFE_RCOM"'
    end
    object nfe_iteNFE_VPROD: TIBBCDField
      DisplayLabel = 'Total Produto'
      FieldName = 'NFE_VPROD'
      Origin = '"NFE_ITE"."NFE_VPROD"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VFRETE: TIBBCDField
      FieldName = 'NFE_VFRETE'
      Origin = '"NFE_ITE"."NFE_VFRETE"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VSEG: TIBBCDField
      FieldName = 'NFE_VSEG'
      Origin = '"NFE_ITE"."NFE_VSEG"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VDESC: TIBBCDField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'NFE_VDESC'
      Origin = '"NFE_ITE"."NFE_VDESC"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VOUTRO: TIBBCDField
      FieldName = 'NFE_VOUTRO'
      Origin = '"NFE_ITE"."NFE_VOUTRO"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_XLOCEMBARQ: TIBStringField
      FieldName = 'NFE_XLOCEMBARQ'
      Origin = '"NFE_ITE"."NFE_XLOCEMBARQ"'
      Size = 60
    end
    object nfe_iteNFE_UFEMBARQ: TIBStringField
      FieldName = 'NFE_UFEMBARQ'
      Origin = '"NFE_ITE"."NFE_UFEMBARQ"'
      Size = 2
    end
    object nfe_iteNFE_NDI: TIBStringField
      FieldName = 'NFE_NDI'
      Origin = '"NFE_ITE"."NFE_NDI"'
      Size = 12
    end
    object nfe_iteNFE_DDI: TDateField
      FieldName = 'NFE_DDI'
      Origin = '"NFE_ITE"."NFE_DDI"'
    end
    object nfe_iteNFE_XLOCDESEMB: TIBStringField
      FieldName = 'NFE_XLOCDESEMB'
      Origin = '"NFE_ITE"."NFE_XLOCDESEMB"'
      Size = 60
    end
    object nfe_iteNFE_UFDESEMB: TIBStringField
      FieldName = 'NFE_UFDESEMB'
      Origin = '"NFE_ITE"."NFE_UFDESEMB"'
      Size = 2
    end
    object nfe_iteNFE_DDESEMB: TDateField
      FieldName = 'NFE_DDESEMB'
      Origin = '"NFE_ITE"."NFE_DDESEMB"'
    end
    object nfe_iteNFE_CEXPORTADOR: TIBStringField
      FieldName = 'NFE_CEXPORTADOR'
      Origin = '"NFE_ITE"."NFE_CEXPORTADOR"'
      Size = 60
    end
    object nfe_iteNFE_NADICAO: TSmallintField
      FieldName = 'NFE_NADICAO'
      Origin = '"NFE_ITE"."NFE_NADICAO"'
    end
    object nfe_iteNFE_NSEQADIC: TSmallintField
      FieldName = 'NFE_NSEQADIC'
      Origin = '"NFE_ITE"."NFE_NSEQADIC"'
    end
    object nfe_iteNFE_CFABRICANTE: TIBStringField
      FieldName = 'NFE_CFABRICANTE'
      Origin = '"NFE_ITE"."NFE_CFABRICANTE"'
      Size = 60
    end
    object nfe_iteNFE_VDESCDI: TIBBCDField
      FieldName = 'NFE_VDESCDI'
      Origin = '"NFE_ITE"."NFE_VDESCDI"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_XPED: TIBStringField
      FieldName = 'NFE_XPED'
      Origin = '"NFE_ITE"."NFE_XPED"'
      Size = 15
    end
    object nfe_iteNFE_ITEMPED: TIBStringField
      DisplayLabel = 'Item'
      FieldName = 'NFE_ITEMPED'
      Origin = '"NFE_ITE"."NFE_ITEMPED"'
      Size = 6
    end
    object nfe_iteNFE_ORIG: TIBStringField
      FieldName = 'NFE_ORIG'
      Origin = '"NFE_ITE"."NFE_ORIG"'
      FixedChar = True
      Size = 1
    end
    object nfe_iteNFE_CST: TIBStringField
      FieldName = 'NFE_CST'
      Origin = '"NFE_ITE"."NFE_CST"'
      Size = 3
    end
    object nfe_iteNFE_MODBC: TIBStringField
      FieldName = 'NFE_MODBC'
      Origin = '"NFE_ITE"."NFE_MODBC"'
      FixedChar = True
      Size = 1
    end
    object nfe_iteNFE_PREDBC: TIBBCDField
      FieldName = 'NFE_PREDBC'
      Origin = '"NFE_ITE"."NFE_PREDBC"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VBC: TIBBCDField
      FieldName = 'NFE_VBC'
      Origin = '"NFE_ITE"."NFE_VBC"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PICMS: TIBBCDField
      FieldName = 'NFE_PICMS'
      Origin = '"NFE_ITE"."NFE_PICMS"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VICMS: TIBBCDField
      DisplayLabel = 'Valor I.C.M.S.'
      FieldName = 'NFE_VICMS'
      Origin = '"NFE_ITE"."NFE_VICMS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_MODBCST: TIBStringField
      FieldName = 'NFE_MODBCST'
      Origin = '"NFE_ITE"."NFE_MODBCST"'
      FixedChar = True
      Size = 1
    end
    object nfe_iteNFE_MVAST: TIBBCDField
      FieldName = 'NFE_MVAST'
      Origin = '"NFE_ITE"."NFE_MVAST"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_PREDBCST: TIBBCDField
      FieldName = 'NFE_PREDBCST'
      Origin = '"NFE_ITE"."NFE_PREDBCST"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VBCST: TIBBCDField
      FieldName = 'NFE_VBCST'
      Origin = '"NFE_ITE"."NFE_VBCST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VBCSTRET: TIBBCDField
      FieldName = 'NFE_VBCSTRET'
      Origin = '"NFE_ITE"."NFE_VBCSTRET"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VICMSSTRET: TIBBCDField
      FieldName = 'NFE_VICMSSTRET'
      Origin = '"NFE_ITE"."NFE_VICMSSTRET"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PICMSST: TIBBCDField
      FieldName = 'NFE_PICMSST'
      Origin = '"NFE_ITE"."NFE_PICMSST"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VICMSST: TIBBCDField
      FieldName = 'NFE_VICMSST'
      Origin = '"NFE_ITE"."NFE_VICMSST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PCREDSN: TIBBCDField
      FieldName = 'NFE_PCREDSN'
      Origin = '"NFE_ITE"."NFE_PCREDSN"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VCREDICMSSN: TIBBCDField
      FieldName = 'NFE_VCREDICMSSN'
      Origin = '"NFE_ITE"."NFE_VCREDICMSSN"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_CSTIPI: TIBStringField
      FieldName = 'NFE_CSTIPI'
      Origin = '"NFE_ITE"."NFE_CSTIPI"'
      Size = 3
    end
    object nfe_iteNFE_VBCIPI: TIBBCDField
      FieldName = 'NFE_VBCIPI'
      Origin = '"NFE_ITE"."NFE_VBCIPI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PIPI: TIBBCDField
      DisplayLabel = '% Ipi'
      FieldName = 'NFE_PIPI'
      Origin = '"NFE_ITE"."NFE_PIPI"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VIPI: TIBBCDField
      DisplayLabel = 'Valor Ipi'
      FieldName = 'NFE_VIPI'
      Origin = '"NFE_ITE"."NFE_VIPI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VBCIMP: TIBBCDField
      FieldName = 'NFE_VBCIMP'
      Origin = '"NFE_ITE"."NFE_VBCIMP"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VDESPADU: TIBBCDField
      FieldName = 'NFE_VDESPADU'
      Origin = '"NFE_ITE"."NFE_VDESPADU"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VIIIMP: TIBBCDField
      FieldName = 'NFE_VIIIMP'
      Origin = '"NFE_ITE"."NFE_VIIIMP"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VIOFIMP: TIBBCDField
      FieldName = 'NFE_VIOFIMP'
      Origin = '"NFE_ITE"."NFE_VIOFIMP"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_CSTPIS: TIBStringField
      FieldName = 'NFE_CSTPIS'
      Origin = '"NFE_ITE"."NFE_CSTPIS"'
      Size = 3
    end
    object nfe_iteNFE_VBCPIS: TIBBCDField
      FieldName = 'NFE_VBCPIS'
      Origin = '"NFE_ITE"."NFE_VBCPIS"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PPIS: TIBBCDField
      FieldName = 'NFE_PPIS'
      Origin = '"NFE_ITE"."NFE_PPIS"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VPIS: TIBBCDField
      DisplayLabel = 'Valor Pis'
      FieldName = 'NFE_VPIS'
      Origin = '"NFE_ITE"."NFE_VPIS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VBCPISST: TIBBCDField
      FieldName = 'NFE_VBCPISST'
      Origin = '"NFE_ITE"."NFE_VBCPISST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PPISST: TIBBCDField
      FieldName = 'NFE_PPISST'
      Origin = '"NFE_ITE"."NFE_PPISST"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VPISST: TIBBCDField
      FieldName = 'NFE_VPISST'
      Origin = '"NFE_ITE"."NFE_VPISST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_CSTCOFINS: TIBStringField
      FieldName = 'NFE_CSTCOFINS'
      Origin = '"NFE_ITE"."NFE_CSTCOFINS"'
      Size = 3
    end
    object nfe_iteNFE_VBCOFINS: TIBBCDField
      FieldName = 'NFE_VBCOFINS'
      Origin = '"NFE_ITE"."NFE_VBCOFINS"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PCOFINS: TIBBCDField
      FieldName = 'NFE_PCOFINS'
      Origin = '"NFE_ITE"."NFE_PCOFINS"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VCOFINS: TIBBCDField
      DisplayLabel = 'Valor Cofins'
      FieldName = 'NFE_VCOFINS'
      Origin = '"NFE_ITE"."NFE_VCOFINS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VBCOFINSST: TIBBCDField
      FieldName = 'NFE_VBCOFINSST'
      Origin = '"NFE_ITE"."NFE_VBCOFINSST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PCOFINSST: TIBBCDField
      FieldName = 'NFE_PCOFINSST'
      Origin = '"NFE_ITE"."NFE_PCOFINSST"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VCOFINSST: TIBBCDField
      FieldName = 'NFE_VCOFINSST'
      Origin = '"NFE_ITE"."NFE_VCOFINSST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VBCISSQN: TIBBCDField
      FieldName = 'NFE_VBCISSQN'
      Origin = '"NFE_ITE"."NFE_VBCISSQN"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VALIQISSQN: TIBBCDField
      FieldName = 'NFE_VALIQISSQN'
      Origin = '"NFE_ITE"."NFE_VALIQISSQN"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VISSQN: TIBBCDField
      FieldName = 'NFE_VISSQN'
      Origin = '"NFE_ITE"."NFE_VISSQN"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_CMUNFGISSQN: TIBStringField
      FieldName = 'NFE_CMUNFGISSQN'
      Origin = '"NFE_ITE"."NFE_CMUNFGISSQN"'
      Size = 7
    end
    object nfe_iteNFE_CLISTSERV: TIntegerField
      FieldName = 'NFE_CLISTSERV'
      Origin = '"NFE_ITE"."NFE_CLISTSERV"'
    end
    object nfe_iteNFE_VNF: TIBBCDField
      DisplayLabel = 'Total NF'
      FieldName = 'NFE_VNF'
      Origin = '"NFE_ITE"."NFE_VNF"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VUNCOM: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'NFE_VUNCOM'
      Origin = '"NFE_ITE_004"."NFE_VUNCOM"'
      DisplayFormat = '#,0.00#######'
    end
  end
  object dtsnfe_ite: TDataSource
    DataSet = nfe_ite
    Left = 848
    Top = 80
  end
  object aux: TIBQuery
    Database = DMDados.IBDB
    Transaction = TEdicao
    BufferChunks = 2500
    Left = 880
    Top = 80
  end
  object fin_rec_bai: TIBDataSet
    Database = DMDados.bSHEILD
    Transaction = tSHEILD
    BufferChunks = 2500
    DeleteSQL.Strings = (
      'delete from FIN_REC_BAI'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into FIN_REC_BAI'
      
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
      'from FIN_REC_BAI '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM FIN_REC_BAI')
    ModifySQL.Strings = (
      'update FIN_REC_BAI'
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
    Left = 616
    Top = 152
    object fin_rec_baiID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_REC_BAI_001"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fin_rec_baiFIN_DOCT: TIBStringField
      FieldName = 'FIN_DOCT'
      Origin = '"FIN_REC_BAI"."FIN_DOCT"'
    end
    object fin_rec_baiFIN_DVEN: TDateField
      DisplayLabel = 'Dt Vencto'
      FieldName = 'FIN_DVEN'
      Origin = '"FIN_REC_BAI_001"."FIN_DVEN"'
    end
    object fin_rec_baiFIN_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'FIN_TIPO'
      Origin = '"FIN_REC_BAI_001"."FIN_TIPO"'
    end
    object fin_rec_baiFIN_BANC: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'FIN_BANC'
      Origin = '"FIN_REC_BAI_001"."FIN_BANC"'
      Size = 4
    end
    object fin_rec_baiFIN_AGEN: TIBStringField
      DisplayLabel = 'Agencia'
      FieldName = 'FIN_AGEN'
      Origin = '"FIN_REC_BAI_001"."FIN_AGEN"'
      Size = 10
    end
    object fin_rec_baiFIN_CONT: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'FIN_CONT'
      Origin = '"FIN_REC_BAI_001"."FIN_CONT"'
      Size = 15
    end
    object fin_rec_baiFIN_NCHQ: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'FIN_NCHQ'
      Origin = '"FIN_REC_BAI_001"."FIN_NCHQ"'
      Size = 10
    end
    object fin_rec_baiFIN_OBSE: TMemoField
      DisplayLabel = 'Obs'
      FieldName = 'FIN_OBSE'
      Origin = '"FIN_REC_BAI_001"."FIN_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object fin_rec_baiFIN_STA: TIBStringField
      FieldName = 'FIN_STA'
      Origin = '"FIN_REC_BAI_001"."FIN_STA"'
      FixedChar = True
      Size = 1
    end
    object fin_rec_baiFIN_PRAZ: TSmallintField
      DisplayLabel = 'Prazo (Dias)'
      FieldName = 'FIN_PRAZ'
      Origin = '"FIN_REC_BAI_001"."FIN_PRAZ"'
    end
    object fin_rec_baiFIN_DPAG: TDateField
      FieldName = 'FIN_DPAG'
      Origin = '"FIN_REC_BAI"."FIN_DPAG"'
    end
    object fin_rec_baiFIN_DBAN: TIBStringField
      FieldName = 'FIN_DBAN'
      Origin = '"FIN_REC_BAI"."FIN_DBAN"'
      Size = 50
    end
    object fin_rec_baiFIN_STFI: TIBStringField
      FieldName = 'FIN_STFI'
      Origin = '"FIN_REC_BAI"."FIN_STFI"'
    end
    object fin_rec_baiFIN_VALO: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'FIN_VALO'
      Origin = '"FIN_REC_BAI"."FIN_VALO"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object fin_rec_baiFIN_VPAG: TIBBCDField
      FieldName = 'FIN_VPAG'
      Origin = '"FIN_REC_BAI"."FIN_VPAG"'
      Precision = 18
      Size = 2
    end
    object fin_rec_baiFIN_VPEN: TIBBCDField
      FieldName = 'FIN_VPEN'
      Origin = '"FIN_REC_BAI"."FIN_VPEN"'
      Precision = 18
      Size = 2
    end
    object fin_rec_baiFIN_COBR: TIBStringField
      FieldName = 'FIN_COBR'
      Origin = '"FIN_REC_BAI"."FIN_COBR"'
      FixedChar = True
      Size = 1
    end
    object fin_rec_baiFIN_STDO: TIBStringField
      FieldName = 'FIN_STDO'
      Origin = '"FIN_REC_BAI"."FIN_STDO"'
      Size = 3
    end
    object fin_rec_baiFIN_CCAB: TIntegerField
      FieldName = 'FIN_CCAB'
      Origin = '"FIN_REC_BAI"."FIN_CCAB"'
    end
    object fin_rec_baiFIN_CDBX: TIntegerField
      FieldName = 'FIN_CDBX'
      Origin = '"FIN_REC_BAI"."FIN_CDBX"'
    end
    object fin_rec_baiFIN_CDCX: TIntegerField
      FieldName = 'FIN_CDCX'
      Origin = '"FIN_REC_BAI"."FIN_CDCX"'
    end
    object fin_rec_baiFIN_CCLI: TIntegerField
      FieldName = 'FIN_CCLI'
      Origin = '"FIN_REC_BAI"."FIN_CCLI"'
    end
    object fin_rec_baiFIN_DCLI: TIBStringField
      FieldName = 'FIN_DCLI'
      Origin = '"FIN_REC_BAI"."FIN_DCLI"'
      Size = 40
    end
    object fin_rec_baiFIN_CVEN: TIntegerField
      FieldName = 'FIN_CVEN'
      Origin = '"FIN_REC_BAI"."FIN_CVEN"'
    end
    object fin_rec_baiFIN_VEND: TIBStringField
      FieldName = 'FIN_VEND'
      Origin = '"FIN_REC_BAI"."FIN_VEND"'
      Size = 40
    end
    object fin_rec_baiFIN_CREP: TIntegerField
      FieldName = 'FIN_CREP'
      Origin = '"FIN_REC_BAI"."FIN_CREP"'
    end
    object fin_rec_baiFIN_DREP: TIBStringField
      FieldName = 'FIN_DREP'
      Origin = '"FIN_REC_BAI"."FIN_DREP"'
      Size = 40
    end
    object fin_rec_baiFIN_ATRA: TSmallintField
      FieldName = 'FIN_ATRA'
      Origin = '"FIN_REC_BAI"."FIN_ATRA"'
    end
    object fin_rec_baiFIN_CONC: TSmallintField
      FieldName = 'FIN_CONC'
      Origin = '"FIN_REC_BAI"."FIN_CONC"'
    end
    object fin_rec_baiFIN_DCAD: TDateField
      FieldName = 'FIN_DCAD'
      Origin = '"FIN_REC_BAI"."FIN_DCAD"'
    end
    object fin_rec_baiFIN_DMED: TDateField
      FieldName = 'FIN_DMED'
      Origin = '"FIN_REC_BAI"."FIN_DMED"'
    end
    object fin_rec_baiFIN_DATR: TDateField
      FieldName = 'FIN_DATR'
      Origin = '"FIN_REC_BAI"."FIN_DATR"'
    end
    object fin_rec_baiFIN_MCHQ: TSmallintField
      FieldName = 'FIN_MCHQ'
      Origin = '"FIN_REC_BAI"."FIN_MCHQ"'
    end
    object fin_rec_baiFIN_STCO: TIBStringField
      FieldName = 'FIN_STCO'
      Origin = '"FIN_REC_BAI"."FIN_STCO"'
    end
    object fin_rec_baiFIN_RCLI: TIBStringField
      FieldName = 'FIN_RCLI'
      Origin = '"FIN_REC_BAI"."FIN_RCLI"'
      Size = 60
    end
    object fin_rec_baiFIN_RREP: TIBStringField
      FieldName = 'FIN_RREP'
      Origin = '"FIN_REC_BAI"."FIN_RREP"'
      Size = 60
    end
    object fin_rec_baiFIN_DBAI: TDateField
      FieldName = 'FIN_DBAI'
      Origin = '"FIN_REC_BAI"."FIN_DBAI"'
    end
    object fin_rec_baiFIN_VENC: TIBBCDField
      FieldName = 'FIN_VENC'
      Origin = '"FIN_REC_BAI"."FIN_VENC"'
      Precision = 18
      Size = 2
    end
    object fin_rec_baiFIN_CDRD: TIntegerField
      FieldName = 'FIN_CDRD'
      Origin = '"FIN_REC_BAI"."FIN_CDRD"'
    end
    object fin_rec_baiFIN_DFIN: TIBStringField
      FieldName = 'FIN_DFIN'
      Origin = '"FIN_REC_BAI"."FIN_DFIN"'
      Size = 60
    end
    object fin_rec_baiFIN_CPPL: TIntegerField
      FieldName = 'FIN_CPPL'
      Origin = '"FIN_REC_BAI"."FIN_CPPL"'
    end
    object fin_rec_baiFIN_CCUS: TIntegerField
      FieldName = 'FIN_CCUS'
      Origin = '"FIN_REC_BAI"."FIN_CCUS"'
    end
    object fin_rec_baiFIN_CDCO: TIntegerField
      FieldName = 'FIN_CDCO'
      Origin = '"FIN_REC_BAI"."FIN_CDCO"'
    end
    object fin_rec_baiFIN_CDBA: TIBStringField
      FieldName = 'FIN_CDBA'
      Origin = '"FIN_REC_BAI"."FIN_CDBA"'
      Size = 4
    end
    object fin_rec_baiFIN_DEBA: TIBStringField
      FieldName = 'FIN_DEBA'
      Origin = '"FIN_REC_BAI"."FIN_DEBA"'
      Size = 50
    end
    object fin_rec_baiFIN_CTNR: TIBStringField
      FieldName = 'FIN_CTNR'
      Origin = '"FIN_REC_BAI"."FIN_CTNR"'
    end
    object fin_rec_baiFIN_VMUL: TIBBCDField
      FieldName = 'FIN_VMUL'
      Origin = '"FIN_REC_BAI"."FIN_VMUL"'
      Precision = 18
      Size = 2
    end
    object fin_rec_baiFIN_PMUL: TIBBCDField
      FieldName = 'FIN_PMUL'
      Origin = '"FIN_REC_BAI"."FIN_PMUL"'
      Precision = 9
      Size = 2
    end
    object fin_rec_baiFIN_VJUR: TIBBCDField
      FieldName = 'FIN_VJUR'
      Origin = '"FIN_REC_BAI"."FIN_VJUR"'
      Precision = 18
      Size = 2
    end
    object fin_rec_baiFIN_PJUR: TIBBCDField
      FieldName = 'FIN_PJUR'
      Origin = '"FIN_REC_BAI"."FIN_PJUR"'
      Precision = 9
      Size = 2
    end
    object fin_rec_baiFIN_VDES: TIBBCDField
      FieldName = 'FIN_VDES'
      Origin = '"FIN_REC_BAI"."FIN_VDES"'
      Precision = 18
      Size = 2
    end
    object fin_rec_baiFIN_PDES: TIBBCDField
      FieldName = 'FIN_PDES'
      Origin = '"FIN_REC_BAI"."FIN_PDES"'
      Precision = 9
      Size = 2
    end
    object fin_rec_baiFIN_VCHQ: TIBBCDField
      FieldName = 'FIN_VCHQ'
      Origin = '"FIN_REC_BAI"."FIN_VCHQ"'
      Precision = 18
      Size = 2
    end
    object fin_rec_baiFIN_CPF: TIBStringField
      FieldName = 'FIN_CPF'
      Origin = '"FIN_REC_BAI"."FIN_CPF"'
      Size = 14
    end
    object fin_rec_baiFIN_DERD: TIBStringField
      FieldName = 'FIN_DERD'
      Origin = '"FIN_REC_BAI"."FIN_DERD"'
      Size = 30
    end
    object fin_rec_baiFIN_DTST: TDateTimeField
      FieldName = 'FIN_DTST'
      Origin = '"FIN_REC_BAI"."FIN_DTST"'
    end
  end
  object tSHEILD: TIBTransaction
    DefaultDatabase = DMDados.bSHEILD
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 568
    Top = 152
  end
  object aux2: TIBQuery
    Database = DMDados.IBDB
    Transaction = TEdicao
    BufferChunks = 2500
    Left = 872
    Top = 176
  end
  object nfe_tra: TIBQuery
    Database = DMDados.IBDB
    Transaction = TEdicao
    BufferChunks = 2500
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT * FROM NFE_TRA')
    Left = 816
    Top = 112
    object nfe_traID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_TRA"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object nfe_traNFE_CCAB: TIntegerField
      FieldName = 'NFE_CCAB'
      Origin = '"NFE_TRA"."NFE_CCAB"'
    end
    object nfe_traNFE_CTRA: TIntegerField
      FieldName = 'NFE_CTRA'
      Origin = '"NFE_TRA"."NFE_CTRA"'
    end
    object nfe_traNFE_MODFRETE: TIBStringField
      FieldName = 'NFE_MODFRETE'
      Origin = '"NFE_TRA"."NFE_MODFRETE"'
      FixedChar = True
      Size = 1
    end
    object nfe_traNFE_RETTRANSP: TIBStringField
      FieldName = 'NFE_RETTRANSP'
      Origin = '"NFE_TRA"."NFE_RETTRANSP"'
      FixedChar = True
      Size = 1
    end
    object nfe_traNFE_VSERV: TIBBCDField
      FieldName = 'NFE_VSERV'
      Origin = '"NFE_TRA"."NFE_VSERV"'
      Precision = 18
      Size = 2
    end
    object nfe_traNFE_VBCRET: TIBBCDField
      FieldName = 'NFE_VBCRET'
      Origin = '"NFE_TRA"."NFE_VBCRET"'
      Precision = 18
      Size = 2
    end
    object nfe_traNFE_PICMSRET: TIBBCDField
      FieldName = 'NFE_PICMSRET'
      Origin = '"NFE_TRA"."NFE_PICMSRET"'
      Precision = 9
      Size = 2
    end
    object nfe_traNFE_VICMSRET: TIBBCDField
      FieldName = 'NFE_VICMSRET'
      Origin = '"NFE_TRA"."NFE_VICMSRET"'
      Precision = 18
      Size = 2
    end
    object nfe_traNFE_CFOP: TIBStringField
      FieldName = 'NFE_CFOP'
      Origin = '"NFE_TRA"."NFE_CFOP"'
      Size = 4
    end
    object nfe_traNFE_CMUNFG: TIBStringField
      FieldName = 'NFE_CMUNFG'
      Origin = '"NFE_TRA"."NFE_CMUNFG"'
      Size = 7
    end
    object nfe_traNFE_PLACA: TIBStringField
      FieldName = 'NFE_PLACA'
      Origin = '"NFE_TRA"."NFE_PLACA"'
      Size = 8
    end
    object nfe_traNFE_UF: TIBStringField
      FieldName = 'NFE_UF'
      Origin = '"NFE_TRA"."NFE_UF"'
      Size = 2
    end
    object nfe_traNFE_RNTC: TIBStringField
      FieldName = 'NFE_RNTC'
      Origin = '"NFE_TRA"."NFE_RNTC"'
    end
    object nfe_traNFE_QVOL: TSmallintField
      FieldName = 'NFE_QVOL'
      Origin = '"NFE_TRA"."NFE_QVOL"'
    end
    object nfe_traNFE_ESP: TIBStringField
      FieldName = 'NFE_ESP'
      Origin = '"NFE_TRA"."NFE_ESP"'
      Size = 60
    end
    object nfe_traNFE_MARCA: TIBStringField
      FieldName = 'NFE_MARCA'
      Origin = '"NFE_TRA"."NFE_MARCA"'
      Size = 60
    end
    object nfe_traNFE_NVOL: TIBStringField
      FieldName = 'NFE_NVOL'
      Origin = '"NFE_TRA"."NFE_NVOL"'
      Size = 60
    end
    object nfe_traNFE_PSLQ: TIBBCDField
      FieldName = 'NFE_PSLQ'
      Origin = '"NFE_TRA"."NFE_PSLQ"'
      Precision = 18
      Size = 3
    end
    object nfe_traNFE_PSBR: TIBBCDField
      FieldName = 'NFE_PSBR'
      Origin = '"NFE_TRA"."NFE_PSBR"'
      Precision = 18
      Size = 3
    end
    object nfe_traNFE_NLACRE: TIBStringField
      FieldName = 'NFE_NLACRE'
      Origin = '"NFE_TRA"."NFE_NLACRE"'
      Size = 60
    end
  end
  object Consulta_S: TIBQuery
    Database = DMDados.bSHEILD
    Transaction = tSHEILD
    BufferChunks = 2500
    Left = 280
    Top = 240
  end
end
