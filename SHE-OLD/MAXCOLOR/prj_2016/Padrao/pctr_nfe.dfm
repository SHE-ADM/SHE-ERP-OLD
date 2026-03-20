inherited frmctr_nfe: Tfrmctr_nfe
  Left = 252
  Top = 70
  Caption = 'Controle de Notas Fiscais'
  ClientHeight = 610
  ClientWidth = 1100
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited SpeedBar2: TSpeedBar [0]
    Width = 1100
    inherited siEVE: TSpeedItem [5]
      ImageIndex = 8
      Visible = False
      OnClick = siEVEClick
    end
    inherited siREF: TSpeedItem [6]
      Left = 143
      Visible = False
    end
    inherited siLIXO: TSpeedItem
      Visible = False
    end
    inherited siREL: TSpeedItem
      Left = 552
    end
    inherited siSAIR: TSpeedItem [9]
      ImageIndex = 7
      Left = 882
    end
    object siCNF: TSpeedItem
      BtnCaption = 'Cancelar'
      Hint = '[Del] - Cancela Nota Fiscal'
      ImageIndex = 10
      Spacing = 1
      Left = 332
      Top = 2
      Visible = True
      OnClick = siCNFClick
      SectionName = 'Movimento'
    end
    object siCON: TSpeedItem
      BtnCaption = 'Consulta'
      Hint = 'Consulta Situa'#231#227'o da NFe'
      ImageIndex = 0
      Spacing = 1
      Left = 222
      Top = 2
      Visible = True
      OnClick = siCONClick
      SectionName = 'Movimento'
    end
    object siENV: TSpeedItem
      BtnCaption = 'Email'
      Hint = 'Enviar Email'
      ImageIndex = 5
      Spacing = 1
      Left = 662
      Top = 2
      Visible = True
      OnClick = siENVClick
      SectionName = 'Movimento'
    end
    object siVIS: TSpeedItem
      BtnCaption = 'Visualiza'
      Hint = 'Visualiza Nota Fiscal'
      ImageIndex = 2
      Spacing = 1
      Left = 442
      Top = 2
      Visible = True
      OnClick = siVISClick
      SectionName = 'Movimento'
    end
    object siTRI: TSpeedItem
      BtnCaption = 'Clone'
      Hint = 'Cria uma C'#243'pia Exata da Nota Fiscal'
      ImageIndex = 6
      Spacing = 1
      Left = 772
      Top = 2
      Visible = True
      OnClick = siTRIClick
      SectionName = 'Movimento'
    end
    object siCCE: TSpeedItem
      BtnCaption = 'Carta de Corre'#231#227'o'
      Hint = '|'
      ImageIndex = 9
      Spacing = 1
      Left = 112
      Top = 2
      Visible = True
      OnClick = siCCEClick
      SectionName = 'Movimento'
    end
  end
  inherited pnldir: TPanel [1]
    Left = 1100
    Height = 477
  end
  inherited sbMSG: TStatusBar [2]
    Top = 591
    Width = 1100
  end
  inherited pnldbg: TPanel
    Width = 1100
    Height = 477
    inherited gbDET: TGroupBox [0]
      Width = 1100
      Height = 234
      inherited DBGConsulta: TdxDBGrid
        Left = 2
        Width = 1096
        Height = 216
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
          Width = 88
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_DVEN'
        end
        object dbgConsultaNFE_DREP: TdxDBGridMaskColumn
          DisableEditor = True
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_DREP'
        end
      end
      inherited SpeedBar1: TSpeedBar
        Width = 0
        Height = 216
        Visible = False
        inherited siSAV: TSpeedItem [4]
        end
        inherited siCAN: TSpeedItem [5]
        end
        inherited siINC: TSpeedItem [6]
          Enabled = False
        end
        inherited siALT: TSpeedItem [7]
          Enabled = False
        end
        inherited siDEL: TSpeedItem [8]
          Enabled = False
        end
      end
    end
    inherited pnlbot: TPanel [1]
      Top = 234
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
    Left = 880
    Top = 48
  end
  inherited Cadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from NFE_CAB'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into NFE_CAB'
      
        '  (ID, NFE_AAMM, NFE_AAMMREF, NFE_CDNF, NFE_CFAV, NFE_CHAV, NFE_' +
        'CLFO, NFE_CNAT, '
      
        '   NFE_CNPJREF, NFE_CONC, NFE_CREP, NFE_CTRA, NFE_CUFREF, NFE_CV' +
        'EN, NFE_DCAN, '
      
        '   NFE_DEMI, NFE_DFAV, NFE_DHCONT, NFE_DREP, NFE_DSAI, NFE_DTRA,' +
        ' NFE_DVEN, '
      
        '   NFE_ESTO, NFE_FINNFE, NFE_HCAN, NFE_HRSE, NFE_INDPAG, NFE_ISU' +
        'F, NFE_MODREF, '
      
        '   NFE_NFREF, NFE_NNFREF, NFE_OBSE, NFE_PROC, NFE_PROCEMI, NFE_P' +
        'ROT, NFE_QCOM, '
      
        '   NFE_REFNFE, NFE_SERIEREF, NFE_STA, NFE_TPEMIS, NFE_TPNF, NFE_' +
        'VBC, NFE_VBCIRRF, '
      
        '   NFE_VBCISSQN, NFE_VBCRETPREV, NFE_VBCST, NFE_VCOFINS, NFE_VCO' +
        'FINSISSQN, '
      
        '   NFE_VDESC, NFE_VERPROC, NFE_VFRETE, NFE_VICMS, NFE_VII, NFE_V' +
        'IPI, NFE_VIRRF, '
      
        '   NFE_VISS, NFE_VNF, NFE_VOUTRO, NFE_VPIS, NFE_VPISISSQN, NFE_V' +
        'PROD, NFE_VRETCOFINS, '
      
        '   NFE_VRETCSLL, NFE_VRETPIS, NFE_VRETPREV, NFE_VSEG, NFE_VSERVI' +
        'SSQN, NFE_VST, '
      '   NFE_XJUST)'
      'values'
      
        '  (:ID, :NFE_AAMM, :NFE_AAMMREF, :NFE_CDNF, :NFE_CFAV, :NFE_CHAV' +
        ', :NFE_CLFO, '
      
        '   :NFE_CNAT, :NFE_CNPJREF, :NFE_CONC, :NFE_CREP, :NFE_CTRA, :NF' +
        'E_CUFREF, '
      
        '   :NFE_CVEN, :NFE_DCAN, :NFE_DEMI, :NFE_DFAV, :NFE_DHCONT, :NFE' +
        '_DREP, '
      
        '   :NFE_DSAI, :NFE_DTRA, :NFE_DVEN, :NFE_ESTO, :NFE_FINNFE, :NFE' +
        '_HCAN, '
      
        '   :NFE_HRSE, :NFE_INDPAG, :NFE_ISUF, :NFE_MODREF, :NFE_NFREF, :' +
        'NFE_NNFREF, '
      
        '   :NFE_OBSE, :NFE_PROC, :NFE_PROCEMI, :NFE_PROT, :NFE_QCOM, :NF' +
        'E_REFNFE, '
      
        '   :NFE_SERIEREF, :NFE_STA, :NFE_TPEMIS, :NFE_TPNF, :NFE_VBC, :N' +
        'FE_VBCIRRF, '
      
        '   :NFE_VBCISSQN, :NFE_VBCRETPREV, :NFE_VBCST, :NFE_VCOFINS, :NF' +
        'E_VCOFINSISSQN, '
      
        '   :NFE_VDESC, :NFE_VERPROC, :NFE_VFRETE, :NFE_VICMS, :NFE_VII, ' +
        ':NFE_VIPI, '
      
        '   :NFE_VIRRF, :NFE_VISS, :NFE_VNF, :NFE_VOUTRO, :NFE_VPIS, :NFE' +
        '_VPISISSQN, '
      
        '   :NFE_VPROD, :NFE_VRETCOFINS, :NFE_VRETCSLL, :NFE_VRETPIS, :NF' +
        'E_VRETPREV, '
      '   :NFE_VSEG, :NFE_VSERVISSQN, :NFE_VST, :NFE_XJUST)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
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
      'SELECT * FROM NFE_CAB')
    ModifySQL.Strings = (
      'update NFE_CAB'
      'set'
      '  ID = :ID,'
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
  end
  inherited DTSCadastro: TDataSource
    Left = 848
    Top = 48
  end
  inherited IBTra: TIBTransaction
    Left = 744
    Top = 40
  end
  inherited ibSP: TIBStoredProc
    Left = 784
  end
  inherited imageITEM: TImageList
    Left = 364
    Top = 174
  end
  inherited imageOPC: TImageList
    Top = 270
    Bitmap = {
      494C01010B000E00040048004800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000200100002001000001002000000000000010
      0500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDECEC00DDDCDC00D9D9D900D8D7D700D4D4D400D8D7D700CECDCD00CECD
      CD00CBCACA00C9C9C900C7C6C600C2C1C100C2C1C100C1C0C000BBBBBB00B9B8
      B800B8B7B700B5B4B400B4B3B300B1B1B100A9A9A900ADADAD00A7A6A600A6A5
      A500A3A3A300A1A0A000969DA1009F949600929397007A888E0089858E008688
      8900878686008685850084848400878686008786860088888800888888008C8C
      8C008D8D8D0091919100929292009493930098979700999898009A9A9A009E9D
      9D009F9F9F00A1A0A000A2A1A100A7A6A600A7A6A600ABAAAA00ACACAC00ADAD
      AD00B1B1B100B4B3B300B6B6B600B6B6B600BABABA00C4C3C300BDBCBC00BFBF
      BF00C2C1C100C4C3C300C5C4C400C8C7C7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4A3DE00FFFFFF00FFFF
      FD00FDFFFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F3F300ECEBEB00DEDEDE00D4D4D400D8D7D700D3D2D200D4D4D400CFCF
      CF00CBCACA00CBCACA00C7C6C600C4C3C300C1C0C000BFBFBF00BABABA00B8B7
      B700B8B7B700B4B3B300B2B2B200B0AFAF00ABAAAA00A2A1A1009B9B9B009998
      980095949400908F8F0083857C0073716B006961580065605800605B53007066
      5A006B6B6A006E6E6E006F6F6F007372720074747400787777007D7C7C007B7B
      7B007F7F7F008685850088888800898989008D8D8D00908F8F00949393009696
      96009A9A9A009B9B9B009E9D9D00A2A1A100A4A4A400A6A5A500A9A9A900ACAC
      AC00B0AFAF00B2B2B200B2B2B200B9B8B800BBBBBB00B9B8B800BDBCBC00BFBF
      BF00C2C1C100C4C3C300C5C4C400C8C7C7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000200DA001A0ED6009E9BDF00FFFF
      FF00FFFFFF00FFFDFD00FDFFFD00FFFFFD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFF
      FF00FCFDFF00FFFFFD00FFFFFF009491DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5F4F40000000000F1F0F000ECEBEB00D7D6D600D9D9D900D9D9D900D3D2
      D200CFCFCF00CECDCD00CBCACA00C8C7C700C2C1C100C1C0C000BBBBBB00B9B8
      B800B5B4B400B1B1B100ADADAD00A9A9A900ABAAAA00A4A4A400999898008D8D
      8D0087868600757575004E455600104D8F00026EEA000667F2000051C0000B30
      5B004F505100595959005F5F5F00666666006A6A6A006F6F6F00717171007575
      7500797979007E7E7E008180800083838300878686008B8A8A008D8D8D009191
      910096969600989797009A9A9A00A1A0A000A2A1A100A4A4A400A9A9A900ACAC
      AC00B0AFAF00B2B2B200B8B7B700B8B7B700B9B8B800BBBBBB00BFBFBF00C1C0
      C000C4C3C300C7C6C600C8C7C700CBCACA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C87DB002219DA00160AD8009F99
      DD00FFFFFF00FCFFFF00FFFFFC00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFD
      FF00FFFFFD00FFFFFF009A96DE00180DD7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F1F100F3F2F200E1E0E000DBDADA00D7D6
      D600D1D0D000D1D0D000CECDCD00C9C9C900C7C6C600C2C1C100BDBCBC00BABA
      BA00BABABA00B5B4B400B1B1B100ACACAC00A7A6A600A8A8A800A6A5A5009B9B
      98008F8D8A00817E8D000086F2000091FF000393FF00088CEF00006EF100005B
      E600535559005B5B5E005D605E0061616200636264006466670064676A00666A
      6F006D6C6C0076706C0071746E0074727100797976007B807A00838383008789
      8900908F8A0094939400999898009E9D9D00A2A1A100A4A4A400A9A9A900AFAE
      AE00B1B1B100B5B4B400B6B6B600BABABA00BDBCBC00BEBDBD00C2C1C100C4C3
      C300C7C6C600C9C9C900C9C9C900CECDCD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00A6A5E3001811D9001709
      D8009D99DF00FFFFFF00FDFFFD00FDFDFF00FFFFFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FD00FFFFFF009895E0001308D9002B21DD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F8F80000000000F5F4F400F2F1F100E3E2
      E200D9D9D900D3D2D200D3D2D200D1D0D000CBCACA00C9C9C900C8C7C700C2C1
      C100C1C0C000BDBCBC00B8B7B700B5B4B400B0AFAF00ACACAC00ACACAC00A8AF
      A6009DA3A300408AC300049CFF00049AFF000296FF00018EFD000080F8000069
      E5002F537F00756C6E005F6B600068666A006362620063615F00605C59005B60
      53004E58530047565A005F5B560060595E00615C610063625E0064666C006E71
      74007E7F7F0088888800959494009E9D9D00A7A6A600ABAAAA00AFAEAE00B0AF
      AF00B5B4B400BBBBBB00BDBCBC00BFBFBF00C1C0C000C4C3C300C5C4C400C8C7
      C700C9C9C900CECDCD00CFCFCF00D1D0D0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFDFD00FFFFFF00A9A6E1001D11
      D7001609D9009C98DE00FFFFFF00FFFFFF00FFFFFF00FFFFFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF009995DD001307D9001D13D700ACABE3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F4F400F4F3F300F5F4
      F400EDECEC00E1E0E000D8D7D700D6D5D500D6D5D500D6D5D500D3D2D200CECD
      CD00C9C9C900C4C3C300C1C0C000BEBDBD00BABABA00B4B3B300B0AFAF00A7B1
      AD00A9AFB30008A0F4000AA4FF0006A1FF00049BFF000296FB000288FB000072
      ED00003E9B007A6F6F005B655F005F5B5A00535353004F4D4A004A4642004D41
      41003E393B002C2D310012223900122846000F2947000F243B003A3F40007465
      61007A7C7C00919191009B9B9B00A4A4A400ABAAAA00AFAEAE00B1B1B100B0AF
      AF00BABABA00BFBFBF00C4C3C300C5C4C400C7C6C600C9C9C900CCCCCC00CECD
      CD00D1D0D000D3D2D200D4D4D400D7D6D60000000000FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000000000FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFF00FEFEFF000000000000000000FEFEFE00FEFE
      FE00FEFEFE0000000000FEFEFE00FEFEFE00FEFEFE0000000000FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000FEFEFE000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE000000
      000000000000000000000000000000000000FDFDFD00FFFFFD00FFFFFF00A8A6
      E1001D11D7001609D8009C97DF00FFFFFF00FFFFFF00FFFDFD00FDFFFF00FFFF
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FCFDFF00FFFFFD00FFFFFF009995
      DE001307D9001E15D500ABA9E300FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F7F700F8F7F700F8F7F700F5F4
      F400F5F4F400F8F7F700F5F4F400EDECEC00E8E7E700E0DFDF00D6D5D500D4D4
      D400D3D2D200CFCFCF00CECDCD00C9C9C900C9C9C900C4C3C300BDBCBC00BAB7
      BF00C2B2B300079AF60006A3FD0008A4FF00059DFE000296F900038EFA000079
      F6000041AD005B616A004E546500534E4400434140002D333A001E2632000421
      4100002F7C00004AC7000062E200006CF200006FF2000067E6000650B7007083
      A0009AA19800A4A3A400ABAAAA00B0AFAF00B8B7B700B8B7B700B8B7B700BBBB
      BB00C7C6C600C8C7C700CCCCCC00CECDCD00D1D0D000D2D1D100D3D2D200D4D4
      D400D8D7D700D8D7D700D9D9D900DDDCDC0000000000F7F7F700EDEDED00EDED
      ED00EEEEEE00F9F9F90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00F2F2F200F2F2F100F1F1
      F100F1F1F100F1F1F100F1EFF500F2F1F800F9F9F900FCFCFC00FCFCFC00FCFC
      FC00F5F5F500F7F7F700FBFBFB00FCFCFC00FCFCFC0000000000FEFEFE00F4F4
      F400FCFCFC00FCFCFC00FCFCFC00FCFCFC0000000000FCFCFC00F9F9F900FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC0000000000FFFFFD00FDFFFD00FAFFFC00FFFF
      FF00AAA7E1001B11D8001509D8009D97DD00FFFFFF00FCFFFF00FFFFFC00FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FCFDFF00FFFFFD00FFFFFF009894DE001307
      D9001C15D700ABAAE100FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F8F800F4F3F300F8F7F700EAEA
      EA00E9E9E900DDDCDC00D8D7D700D2D1D100D1D0D000CFCFCF00CECDCD00CCD0
      D100E7C9BB000592FB0008A4FF0009A5FF0006A1FE00059DFF00008EF900007F
      F400004DC3001E3C5F002D2D38000F273C00001C3F00001A4F00002259000029
      7B000048B800006EE600007EF9000386F9000489FB000281FE000270EA000354
      CA009AA6B300B5B6B600BDBCBC00BEBDBD00BEBDBD00BEBDBD00C4C3C300CBCA
      CA00D1D0D000D3D2D200D6D5D500D7D6D600D8D7D700D9D9D900DBDADA00DCDB
      DB00DDDCDC00E0DFDF00E0DFDF00E1E0E00000000000EFEFEF00DADADA00DADA
      DA00E1E1E100FEFEFE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFE00FCFC
      FE00FCFCFC00FCFCFC00FEFEFE0000000000FEFEFE00FCFCFC00FCFCFC00FCFC
      FC00FCFCFE00FCFCFE00FCFCFE00FCFCFE00FCFCFC00EDEDEE00DDE0E400DFE1
      E600DCDFE300DDE0E800DDDFE800E6E1ED00EEEDF100F2F5F800F9F9F900F9F8
      FC00EEEEF200EAEAED00F7F7F700FBFBFB00FBFBFB00FCFCFC00FEFEFE00E8E8
      EA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FBFBFB00F5F2F400F4F2
      F200F7F7F800F8F8F800F8F8F800F8F8F800F9F9F900F9F9F900F9F9F900F8F8
      F800F7F7F700F9F9F900F9F9F90000000000FAFFFD00FFFFFC00FCFFFC00FFFF
      FF00FFFFFF00A8A7E3001912D9001608D8009A96DE00FFFFFF00FDFFFD00FDFD
      FD00FFFFFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFD00FFFFFF009693DF001207D9001E15
      D600ABAAE000FFFFFF00FFFFFD00FDFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F5F4F40000000000F9F8F800EEEDED00EAEAEA00E0DFDF00D4DA
      DE00E9DAD0002898E60006A1FE000AA8FF0009A5FF0009A3FF000394FD000286
      F7000056CF00003E920000389C0000287900002266000021600000245E00002E
      81000055C400007CF200008DFF000298FF00059FFF000298FF000089FF000072
      F300276FC600D2D0CF00CFCFCF00CBCACA00CFCFCF00D2D1D100D7D6D600D8D7
      D700DBDADA00DCDBDB00DDDCDC00E0DFDF00E1E0E000E2E1E100E3E2E200E4E4
      E400E6E5E500E7E6E600E7E6E600E9E9E90000000000E6E6E600C6C6C600C6C6
      C600EBEBEB0000000000FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFB00FCFC
      FB00FCFCFC00FCFCFC00FEFEFE0000000000FEFEFE00FCFCFC00FCFCFC00FCFC
      FC00FCFCFB00FCFCFB00FCFCFB00FCFCFB00FCFCFB00EBEBED00C6C9D000CDD1
      D900CCD0D700CACDDA00CACDDA00D4D0DD00DCD7E600E3E6F200EDEBF200EFEE
      F400E6E3EA00E3E1E600F7F7F700FBFBFB00FBFBFB00FBFBFB00FEFEFC00E4E4
      E300F9F9FB00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FBFBFB00F8F4F400DFDD
      DD00F1EFEF00F4F4F200F4F4F400F4F4F400F7F7F500F7F7F700F8F8F800F5F4
      F400F1F1F100F4F4F200F8F8F70000000000FFFDFF00FDFFFD00FFFFFF00FFFF
      FD00FCFDFF00FFFFFF00ABA8E1001E12D7001508D9009995DD00FFFFFF00FFFF
      FF00FFFDFF00FFFFFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F1F1EF00E8E7E700E7E7E700E5E5E500E4E4E400E4E4
      E400E4E4E400E4E3E300E4E3E300E4E4E400E4E4E400E4E4E400E4E4E400E5E4
      E500E7E7E700E7E7E700EDEDED00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00FDFFFF00FFFFFF00FFFFFF009692DD001307D9001E16D700ACAA
      E300FFFFFF00FDFFFD00FFFDFD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F7F700F8F7F700000000000000
      0000F4F3F300F4F3F30000000000F8F7F700F5F4F40000000000F5F4F400EAF3
      F800F6F4F2007DC1EB0006A3FE0008A4FF0007A3FF000AA3FF000698FE00038F
      FD000260D7000042A600004CB70000327E000027660000255C0000266900002D
      83000051C000027BF3000294FE0008A3FE000DAFFF000DADFF00059DFA00008E
      FF000361D600E7DFD700E1E0E000E0DFDF00DEDEDE00E1E0E000E3E2E200E2E1
      E100E6E5E500E6E5E500E6E5E500E7E6E600E8E7E700EAEAEA00E9E9E900EAEA
      EA00ECEBEB00ECEBEB00EDECEC00EEEDED0000000000DCDCDC00B1B1B100ADAD
      AD00F9F9F900F8F9F900F8F8F800F8F8F800FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBF900FBFCF700FBFC
      F700FBFBFB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FBFB
      FB00FBFCF700FEFCF700FFFCF700FFFCF700FBFCF700EEEDEE00B6B6C400CDD0
      DC00BDC0CD00B9BCC900BABCCA00BCBDCC00C7C9D600CFCFE300D0D1E400E0E4
      EE00D9D4DF00DFDDDD00FCF7F800F7F7F800F7F7F700F8F9F900F9FBF800E3E1
      DC00F5F5F500F8F8F800F9F9F900F8F9F900F8F9F900F7F9F200F7F5EF00D1CD
      C900EBE7E300F2EEE800F5F1EB00F7F2ED00F7F2ED00F9F5F100F9F5EF00F7F2
      ED00EEEAE600F1EDE800F7F2ED0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFFFD00FDFFFF00FFFFFF00AAA7E1001E13D7001508D8009A95DE00FFFF
      FF00FFFFFF00FDFDFD00FDFFFF00FFFFFD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00E8E8E800A2A2A2006F6F
      6F00535453003D3D3C002F2F2D002D2B2A002D2B2A002A292800292827002A29
      29002B2A29002D2A2A002D2A2A002B2929002929280029282700292828002929
      2900292A29002B2B2B002D2D2D00333333003C3C3C004D4D4D0074747400BCBD
      BD00FCFDFD00FFFFFD00FFFFFF009692DE001205DA001E16D500ADABE300FFFF
      FF00FFFFFF00FDFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F6
      F400EDF4F100CEEBFF00009AFF000DA9FE0002A5FD00079CFE00049AFB000696
      FD00027AEA000047B4000055C600003A9D000028760000276900002569000028
      79000040AD000072EC00009BFB000EB2FF001CC1FF0021C6FD0013B7FF000697
      FE000371E600BECFE900F1EFE200E9EAE500E7E5EC00ECEBEB00EDECEC00EDEC
      EC00EEEDED00EEEDED00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F2F1F100F2F1
      F100F2F1F100F3F2F200F3F2F200F4F3F30000000000D3D3D3009D9B9D009797
      9400FFFEFC00F9F8F700F9F8F800F9F8F700FCFBF800FBF9F800F9FBF800F9FB
      F800F9FBF800FBFBF800FBFBF800FCFBF900FCFBF800FBF9F700FBFBF500FBFB
      F500FBFBF900FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFB00FCFCFB00F9FB
      F800FBFBF500FEFBF500FFFBF500FFFBF500FBFBF500FBFBF900C9CAD600BABC
      C400DDDDE300CCCAD600B1B3C000A4A6B600B6B7C900BCBAD100BDBFD400C9CA
      E100D4D1D900D9D6D600FCF8F500F7F5F400F5F4F200F8F7F500F9FBF700E4E0
      DA00F5F4F100F9F8F700FBF9F800F8F7F500F8F7F500F5F5EF00F5F2ED00D1CC
      C600E4E0DA00F2EEE800F5F1EA00F7F2ED00F7F2ED00F5F1EB00F1EDE700EEEA
      E400E6E0DA00E7E1DA00EFEDE70000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFFFD00FAFFFC00FFFFFF00ACA9E1001B13D8001308D8009993
      DD00FFFFFF00FCFFFF00FFFFFC00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009F9F9F00000000000000
      0000000000000304020008080500080504000101000002020000040403000705
      0400070805000B0A09000B0A0A00090909000505050005040300050404000303
      0400030303000505050005050500040404000101010000000000000000003F40
      4100FFFDFC00FFFFFF009591DE001205D9001D16D700ACACE100FFFFFF00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F6
      F200EFF3F200E3F3FF000092FF000DAAFF0006AAFE00079DFF00059CFD00069A
      FF000481F1000058C9000054C300004DB800002E840000266B00002265000025
      6E0000379D000081F20001A3FF0017BAFF0026CAFF0026CFFF001AC0FF0014B6
      FF000793FD008CB2DE00F3F0F000F9F2F200EEF2F200F3F2F200F3F2F200F3F2
      F200F4F3F300F4F3F300F5F4F400F5F4F400F5F4F400F5F4F400000000000000
      000000000000F9F8F800F9F8F800F9F8F80000000000C9C9C90087878800AFAA
      A300F9F5EF00FCF8F100FCF4F700FCF8F100FCF7F100F9F8F100F8F9F400F8F9
      F400F8F9F400F9F9F400FEF9F400FEF9F400FCF7F100FBF7F100FCF8F200FEF9
      F400FEF9F500FBFBFB00FCFCFC00FCFCFC00FCFCFC00FBFCF900FBFCF700F7F9
      F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9F400FFFCF500F4F4F400EDEF
      EA00FFFEF800FFF9F700EEEEED00BAB7C300A098AD00A09EB700C1C1D100BCB9
      C600CFCFD300D1C9CA00F9F5EF00F8F4ED00F7F2ED00F9F5EF00F9F8F200E7E3
      DD00F5F1EB00FBF7F100FBF7F100F8F4EE00F8F4ED00F7F2ED00F5F1EB00DDD3
      CF00E1DDD700F2EEE800F4EFEA00F7F2ED00F5F1EB00EFEBE600EEEAE400EBE7
      E100E7DCD900E0D7CF00EBE7E30000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFC00FCFFFD00FDFFFF00FFFFFF00AAA9E3001B13D9001507
      D8009894DE00FFFFFF00FDFFFF00FFFDFD00FFFFFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00ECECEC00A0A0A0006666
      6600474747003232320027262600211F1F001D1D1C000A0C0A000A0907000C08
      07000E0C0A000D0D0C00020202000C0C0C000D0B0A0009050400090707000808
      0800181818001D1D1D00222222002D2D2D00404040005C5C5C008B8B8B00D5D2
      D200FFFFFF009390DF001105D9002017D600ADACE100FFFFFF00FFFFFC00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F7
      F400F4F3F700F4F6FA000997FB000AACFF000BADFF0007A5FD00039DFD000598
      FF000485F7000467DC00004CBB00005BD20000399D0000267000001D6100001D
      60000050C7000085F20006A8FF0026C7FF0037D6FD002CD5FF001FCAFF0012BB
      FD00058DF200BFDBF600FAF7FA00FDF8FA000000000000000000000000000000
      0000F8F7F700F8F7F700F8F7F700F8F7F700F8F7F700F8F7F700F9F8F800F9F8
      F800F9F8F80000000000000000000000000000000000BFC0C00075707200E4E0
      DA00F7F2ED00F8F4EE00F7F2EF00F8F4EE00F8F5EF00FBF7F100F9F8F200F9F8
      F200F9F8F200FBF8F200FCF8F200F9F5EF00F8F5EE00F8F4EE00FBF7F100FCF8
      F200FCF8F200FBFBF800FBFBFB00FBFBFB00FBFBFB00FBFCF900FBFCF700FBF9
      F400FEF9F400FCF8F200FCF8F200FCF8F200FCF8F100FCF8F200FEF9F400F9F9
      EF00FCF8F200FEF7EE00FEF9F200FCF4F100DCD3D300B3AFB600CCC1C000D0C6
      BC00C9C3CC00CCC6C400F7F2ED00F5F1EB00F4EFEA00F5F1EB00F8F5EF00E6E0
      DA00EEEAE400F7F2ED00F7F2ED00F1EDE700EEEAE400F2EEE800F2EEE800EAE3
      DD00E7E3DD00F2EEE800F2EEE800F5F1EA00EFEBE600EDE8E300EDE8E100EAE6
      DF00E7DDD700E1D9D100E6E0DA0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFFFD00FFFFFF00FDFFFD00FCFDFF00FFFFFF00ACAAE1001F13
      D7001307D9009794DD00FFFFFF00FFFFFF00FFFFFF00FFFFFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F1EFF100DDDDDD00D6D3D300D6D5D5007F807E00171311004C47
      46002F2C2B00262525006C6C6C00292928002C2827004A4545001B161600706F
      6F00CECECE00CFCFCF00D8D8D800E8E8E800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009490DD001205D8001F17D700AEACE300FFFFFF00FCFFFF00FFFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDF8
      F400FAF3F900F9F3ED0016A5FE0008ACFE000EACFF000BADFB0006A5FF00069B
      FF000083F7000269DF000045B600005CDA000047B600002A7B00001E64000033
      86000050D6000085FD0006A9FF0031D0FF0044E0FB002CD5FF0020C9FF0006AA
      FF001283ED00FFFDFB00FCF9ED00FCFDFF00FCF1F400F5F4F400F5F4F400F5F4
      F400F5F4F400F5F4F400F5F4F400F5F4F400F5F4F400F5F4F400F5F4F400F5F4
      F400F5F4F40000000000000000000000000000000000B9B9B900615B5C00F9F5
      EF00F1EDE800F1EDE700F1EDE700F4EFEA00F7F2ED00F9F5EF00FBF7F100FBF7
      F100FBF7F100F8F4EE00F8F4EE00F5F1EB00F5F1EA00F8F4ED00FBF7F100FBF7
      F100FBF7F100FCFBF500FBFBF900FBFBFB00FBFBFB00FBFCF900FBFCF700FEF9
      F400FEF9F400FCF8F200FBF7F100FBF7F100FBF7EF00FBF7F100FBF7F100FCF7
      F200F8F4EF00FBEFED00F4EFEA00F1E8E100F2E7D600E8DDCA00DDCDB700D1C6
      B400C4BAC400CCC6C300F4EFEA00F4EFEA00F4EFEA00F5F1EB00F8F4EE00E1DA
      D300DCD6D000EBE7E300EDEAE400EAE6E000EAE7E100F2EEE800F2EEE800F1EE
      E700EBE7E100F4EFEA00F2EEE800F1EDE600EEEAE300EEEAE300EBE7E000E8E4
      DD00E8E0D900E4DCD400E6DFD70000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFD00FFFFFF00FFFFFF00ACAA
      E3002015D7001507D8009892DE00FFFFFD00FFFFFF00FDFDFD00FDFFFD00FFFF
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F7F002E2C2B006964
      64002622230074747400FFFFFF007B7A790024222100716B6B00312D2D007C7B
      7A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00948F
      DD001204DA002018D500AFACE300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000096D1FE0006ACFD0010B8FB000EB3FD000AA9FF00079D
      FF000684F600006FE9000049BC000047BF00003B9F000B42930000286A000039
      9A000051C7000079F2000AA0F60021BBFF0022C1F90028D5FF0019C4FF0000A1
      FF0078C1F300F6F6F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0B0B000605B5B00EAE4
      DC00E8E1DA00E8E1DA00EBE3D700EFE8E300F5EEE700F8EFEB00F8F5EF00F7F2
      EB00F9F2EB00F7EFE800F7EEE800F7EEE700F7EEE700F8F1EA00F9F2EB00FBF4
      ED00FCF4EF00FBF8F200F9F9F500FBFCF800FBFCF800FEFCF700FEF9F400FEF9
      F400FBF7F100F9F5EF00FBF7EF00F9F5EE00FEF5EE00FCF5EE00FBF4ED00F9F2
      EB00F8EFE300EDE7DC00EEE4D900E8DFCA00E0CFB700D4BFA400D4BFA700C9BA
      AC00BDB6B900DFD6D000F4EBE700F1EDE700EFEDE700F2EEE800F7F1EA00D6CC
      C400C1BAAF00DDD7CC00E7DFD900E8E1DA00EDE4DF00EFEBE600F5F1EB00F4EF
      EA00F1EDE700F4EFE800F2EEE700EFE7E100EFE7E000EFE7E000EEE7E000EAE6
      DF00E8E4DD00E6DDD600E1DAD30000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFD00FAFFFC00FFFF
      FF00AEABE1001C15D9001107D8009891DD00FFFFFF00FDFFFF00FFFFFC00FDFF
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003F403F00292928003D3B
      3B00110E0E00BABABA00FFFFFF00B1B1B1000B0A0A0042404100282727004242
      4200FFFFFF00FFFFFF00FFFFFF00FDFDFF00FFFFFD00FFFFFF00928EDD001204
      D8001E18D600AFAEE300FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C4E6FA0000AAFF0012B2FF0010BAF8000EB2FE0007A5
      FF00008FFD000076EF00025BD2008BBAEF00EFF4FB006986A00000277900003A
      A100004FC7000071E7000096F100038DF20013A9FF0016BBFD0014B7F8001CA6
      FD00FCF7F8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4A4A6007C757300DDCF
      BC00DCCDBA00DCCDBA00DDD3C400E7DDD600F1E7E000F5EBE700F5F1EA00F2EE
      E700F4EAE300F5EDE600F7EDE600F7EEE700F7EEE700F8EFE800F9F1EA00FBF2
      EA00FCF4EE00FBF5F100F9F9F200FBFCF700FBFCF700FEFCF700FEF9F400FEF9
      F400FBF7F100F9F5EF00FBF7EF00F9F5EE00FEF5EE00F8EFEA00F7EEE700EFE7
      E000E8DFD000E6D6C700E3D3BD00D6C4A100C6AD8C00D7C0A700C4AD9500BFAD
      9E00B4ADAF00D9CFC700F1EAE400F1EDE600EFEBE600F2EEE800F5EEE800CDC1
      BC009B928500C9C1B400E4DCD400EAE1DA00EDE4DD00EFEBE600F5F1EB00F4EF
      EA00F2EEE800F1EBE400F1EDE400EFE7DF00EFE7E000EFE7E000EFE7E000EDE8
      E100EAE4DD00E6DDD600E0D9D00000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFD00FFFDFC00FDFFFD00FDFF
      FF00FFFFFF00ACABE3001D15D8001305D8009592DD00FFFFFF00FDFFFF00FFFD
      FD00FFFFFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDDDD0015181700000301000000
      000028282800FFFFFF00FFFFFF00FFFFFF001A1B1B0000000000000000001E1F
      1F00E8E8E800FFFFFF00FFFFFF00FFFFFD00FFFFFF00918EDE000E04D9002119
      D600B0AFE100FFFFFF00FFFFFC00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBF7F40002A5FE0021B2FF001FC6FE001EBFFE0013B1
      FF00018FFD000180F7000069DC00669DCC008DB3D10000275C0000399F00004F
      BB00005FD6000072E500008CF6000991F40016A5FF000A9CF800129AF900D3EA
      F300F4F4F400F6F6F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A09DA000A6988700C1A9
      8E00BCA38800C1A78F00C4B6A300DDD0BD00EBE1D600F2EAE300F2EAE300F2EA
      E300F2EAE300F2EAE300F2EAE300F4EBE400F4EBE400F5EDE600F8EFE800F8EF
      E800FBF2EB00FBF2EE00FBF7F100FEF9F400FEF9F400FEF9F400FBF7F100FBF7
      F100F9F5EF00FCF4EF00FCF4ED00FCF4ED00F5EDE700EEE6DA00EBE1D300E4D6
      C300DCCDBC00DDC4AD00D0B69800C1AA8400D4BDA000D6BDA700AC917F00B1A1
      9200B1A7A900D0C6C100F1E8E100F2EAE300F2EAE300F2E8E400F4EBE400D4CC
      C1008F857900CCC1B600E7DFD900E8E0DA00EAE1DA00F2EAE300F4EEE700F5F1
      EA00F1EDE600F1E8E100EFE7E000EDE4DD00EFE7E000EFE7E000F2EAE300F2EA
      E300F1E8E100E6DDD600DCD4C90000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFD00FFFFFF00FDFF
      FD00FCFDFF00FFFFFF00B0ACE3002016D7001204DA009490DD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5B60000000000000201000000
      00005151510090909000545454009D9D9D004445450000000000000000000101
      0100C5C7C700FFFFFF00FFFFFF00FFFFFF008F8CDB001609DD003029EF00C1C0
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBF9F20033BCF9001DC0FB0025C7FF002FD1FF0023BC
      FA000D9AFF000B89F8000674EC000661C90000255E0000368A00004FB300005E
      D0000064DF00006BE0000E7CFD000697F600028CEA00068FFB00A1E0F800FFF8
      EA00F5F3FE00F5F6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D9D1CC00AC9479008E6C
      5C008C6B5B009D7C6100B9A38400DDCFBC00EAE0D400EFE7DF00F1E7DF00F2EA
      E000F1E8E000F2E8E000F2EAE000F4EAE100F4EAE100F5EDE300F7EEE600F7EE
      E600FBF1E800F9F2ED00F9F5EF00FCF8F200FCF8F200FEF9F400FBF7F100FBF7
      EF00F9F4EE00FBF2EE00F8EFEA00F4EBE300E8DFD400E3D3BC00DDCCB100DDC6
      A900D1BCA000D0B08E00CAB19100E1C7AF00DDCAB300C6AF98008E736600A797
      8800B1A6A700D9CFC900F1E8E100F1E8E100F1E8E100EEE4E000F2EAE300E1D6
      CA00A0948500CFC4B700E8E0D700E7DFD400E6DDD600EEE6DF00F2EBE400F2ED
      E600F1EBE400EBE3DC00EEE6DF00EDE4DD00EFE7E000EFE7E000F1E8E100F2EA
      E300F1E8E100E7DDD400DAD3C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFD00FDFFFF00FFFFFF00ADACE3002116D7001205D9009590DD00FFFF
      FD00FFFFFF00FCFDFD00FDFFFD00FFFFFD00FFFFFF00FFFFFF00FFFFFF00F7F9
      F700929293007D7C7D0082818200828282008282820082828200838383008281
      8100828181008181810081818100858585004D4C4C00090808000A0809000B09
      0900191817000B09090031303000090A0A001A1A1A000A0909000A0909000708
      0800585758008686810082847B00706BC0002217EC001B13D2004B487F008C8C
      7F00818181007E7F7E00818181007B7A7B0079767800B3B5B400FDFFFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F7F30053CFFD0022C0FA002CC9FF0037D5FF0033D0
      FF00069AFB000691F700088AF8000971DA0005317100002D7C0000429A000055
      BB000061D500006ADB000080F3000C81EC00007FFB005ABFFA00F5F4FA00F6F6
      F200EFF6F800F5F6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EADFD3009A7D61006F56
      4B0073584D00876A5500B7A17D00E3D0BF00EDE3D600EEE4D700F1E6D900EFE6
      D900EFE6D700F1E7DA00F2E8DC00F2E8DC00F2E8DC00F5EBDF00F4EDDF00F4ED
      DF00F9EFE300F8F1EA00F8F4EE00FBF7F100FBF7F100FCF8F200FCF8F100F9F5
      EE00FBF1ED00F9EFEA00F4EBE700EFE7D900E3D6C100DCC9AC00D7C3A100D9BF
      A000C9AF8F00C7AA8400D7BF9E00EAD4BF00DCC4AD00B9A38B0079605B009D8C
      8000A79B9E00DACCC700F1E6E000EFE7E000EDE4DD00EBE3DA00F2EBE100E7D9
      CF00A99B8700C9BDAC00E4DCD300E7DFD000E4DCD400E8E0D900EFE7E000F2EA
      E300F1E8E100E6DDD700EBE3DD00EBE3DC00EDE4DF00EFE7E100EDE4DD00EFE7
      E000EEE6DF00E7DDCF00DCD1C70000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FDFFFD00F9FFFC00FFFFFF00B0ACE300201ADA001309D900958F
      DB00FFFFFF00FFFFFF00FFFFFD00FDFDFD00FFFFFF00FFFFFF00FFFFFF00E3E3
      E3001A1818000000000005000000070101000501000004010000050201000502
      0100070202000702020007020200040100000D0A09001B1818001B1817001B18
      18001310100024242400717373004F505100110E0E001C1819001C1919001A1A
      1B000D0A0400030000000A075F001C10E400241DDE0027245A001C1A0C001313
      11000C0C0C001716170007050500272C2A000000000057545600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5F6F40075C6EB002DC9FF003CD2FF004ADFFF0044DC
      FF0012AAFF000A9AF7000A97FB001191FA000134770000276C0000296C000037
      8D00055AC1000A74E1000676E2000079E9004FAAEA00FFF7FF00F8F4F200FAF4
      F800FAF2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6ADA700A4886F008B6F
      55008564540095755800AD947300D1C1AC00E6DCCF00EDE3D600EDE3D600EEE4
      D700EFE6D900EFE6D900EFE6D900F1E7DA00F2E8DC00F4EADD00F5EDE000F5ED
      E000F9EEE600F7EFE800F9F5EF00FBF7F100FBF7F100FBF7F100FBF7EF00FCF5
      EE00F9EFEA00F8EFE800F7EFE600F5EBDF00EDE3D400E0D3BD00D9CCB000DAC3
      A700CDB79800C6A78000B79A7600CAA98800D6C0A600C4A78F00816559009583
      73009E929500CFC3B900EDE3DA00EEE3DD00EEE3DC00EBE4DD00EFE8DF00D6CA
      BC0085776600C7BAAA00E4DCD000E6DCCF00E3DACF00EAE1DA00F2EAE300F1EB
      E400EFE7E000E7E0D600EAE1D700EAE0D600EBE1D700EBE3D700EDE3D900EBE4
      D900EAE3D900E1D6CA00D4CCBC0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFFFD00FFFDFC00FDFFFD00FDFFFF00FFFFFF00A2A0D8001E16DD00180C
      DD008E8BDB00FFFFF900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E1
      E100302E2C002924220024201D0024201E002524200026242100262420002724
      220028242200292524002A2728002A2829002B292A002C292A002C292A002B28
      2A00272528002C2D2E007C818400515356002420240029252900282429002825
      24002929200028227D00261EFC002118DE00201D580029271F002C292A002D2B
      2E00272428002B292C00221F23003D414000100E0E00605D5F00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F6F700F6F7F700F8F6F600F6F3
      F300F8F7F400F6F4F300F8F7F700F5F4F400F6F6F400F4F6F400F6F7F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F4
      F300F8F8F400FAF4F300F4F4EF00A3DAF20029C1F90042D7FF004BDEFF004ADE
      FE001DB2FF000E9CF8000E9AFB000A8CF40000367C0000266600002667000029
      7200003E9A000B66D100027BE5002277DA00FCFDF600DCF9F000F3F7FB00FAF1
      F300F4FAF800F8F4F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007573700077655A00BA9D
      7700B0927500B69A7700BDA98F00D1C1A900E3D9CC00EEE4D700EEE4D700EEE4
      D700EDE3D600EDE3D600EEE4D700EFE6D900EFE6D900F4EADD00F7EDE000F7ED
      E000F9EDE700F7EFE800F9F5EF00FBF7F100FBF7F100FBF7F100F9F5EF00FEF5
      EE00F8EFE800F8EFE800F8F1E600F8EDE000EFEADF00EDE6D300EBDFCF00DFCF
      BC00D9C4A300D4B79200CDAF8400AF885D00B4916600D0AA8A0097735B009480
      6E008F848700BAB0A300EBE1D700EDE1DC00EEE1DC00EBE4DD00EFE7DD00BCB0
      9E00655C5100B1A69200DDD3C600E0D6C900E3D9CC00EAE1DA00F2EAE300F1EB
      E400EEE6E000E8E1D400E8E1D400E8DFD100E8DFD000E8DFD000EBE1D400E8E1
      D300E7E0D300D9CFC100CFC7B40000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFFFF00FFFFFF00FFFFFD00FFFFFF00B6B5A900332E68001107
      CC00180CE3006865BF00B2B2A900D8D6D100F9F7F700FFFFFF00FFFFFF00E7E8
      E7002B2929002E2B2C007C797A007C7B7C007D7B7C007E7C7D007F7D7E007F7D
      7D007C7975006F6C630066614F00645C4700655C4700665E470068634C006963
      4D0069644E00655F4C00605C4900605B470065614C0066604D00686249006A64
      49003A358C002219F6002C23E3005A537D00645E40005E5C4700615B47005E59
      46005F5947005E584600655E4A0049473A000C090B0060606100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F3F400F4F4F100F9F8F700FAF7
      FF00F6FAFF00F9F9FD00FBF9F400F6F3F300FAF6FA00F9F6FF00F4F2F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBF6
      F200F5FAFE0089B3DC005886AC002364A30015BAFF003DD6FF0047DBFF004ADF
      FF002EC4FF0014A8FA000DA0FF00109AFD00003180000027640000266B00002F
      7600002D79000048A8001F6CB700F6F9FF00FCF3F700FFF4F600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000757272003B312D00D1BA
      9E00CAB9A400CCBAA100D1C1A900D9D0BC00E6DCCF00F1E4DD00F2EAE300F1EA
      DD00EEE4D600EBE1D300EBE3D100EDE4D300EEE6D300F1E8D700F4EBDA00F5ED
      DA00F7EBE600F7EFE800F9F5EF00FBF7F100FBF7F100FBF7F100F9F5EF00F8F2
      ED00FBEEE800F9EDE700F7EFE400F7EFE300F7EEDD00F7EEDC00F4E8DC00EAE1
      D000E8D6C100DCC6AA00DCC1A100CFAF8400B08B5D00B9916300AC835F009A80
      6700877C8100C6B4AD00E7DCD400EBDFD900EBDFD900EEE1DC00F1E4DF00B0A1
      8B0070645700AFA18E00CFC6B300D6CDBC00E0D7C400E7DDD100F1E7DD00F1E8
      E300E8E1D700EAE3D600EAE1D400E4DCCA00E1D9C700E4DAC900E4DCCA00E1DA
      C700DFD7C600D3C7B600CABFAD0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAECEA00D9D9D800BFBEB5008180
      BA00281FDD00180ADF00342E88004D4C44006D6A68009C9A9D00C7C9C900D5D1
      D000221F1E002E2D2D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F6F4DF00E1DDC100CFCAA700BEB98900B5AE7200B1A7
      6800B1A76500B3A96600B4AA6800B6AC6E00B5AC6E00BAAE6A00BEB569007268
      A8002118F300241DDD00887B9100BDB46600B7AD6E00B5AC6E00B7AE7000B5AC
      6E00B5AC6E00B7AE7000C1B576008C865D0000000000605F6000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F600FCF9F000FAFDFF00141B
      3700141D3D0022273C00CBCADA00F2F8F000F3F6EF00F3F2EB00FFFDF9000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F9
      FF001E62B1000049A50005378500003A8D0015B1FF0038D9F90044DBFF0045E0
      FF003BD4FF001CB3FD000AA1FE000692FD0000358E000025620000266B00002A
      6F00002D800014438500F5FBFB00FDF9EA00EDF1F900FAF9F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006E686A000E080700E8DC
      CA00DAD0BF00D9D1B900D9D1B900E3DAC900EAE0D600EFE4DF00F2EAE400F2EB
      E000F1E8DC00EEE4D600EBE3D000EAE1CD00EEE4D100F1E8D400F4EBD900F5ED
      DA00F7EBE400F7EFE800F9F5EF00FBF7F100FBF7F100FBF7F100F9F5EF00F7F2
      EB00FBEEE700F9EDE600F7EFE300F7EFE300F7EEDC00F7EEDC00F4EADD00F2EA
      D900EEE4D400E7DAC900E4D3BF00DDC6A600CDB48800C1976600AC855D009B7D
      63007C6C7F00B4A39D00E7D9D300E8DCD600E7DAD400EBDFD900EEE1DD00B9A9
      91009B8E7A00C7BCA900D1C9B600CCC3AF00D4CCB900E4DACD00EBE1D700E8E0
      D900E3DCCD00E7E0D300E7DDD000E0D7C600DFD6C300DDD4C000DCD3C000D9CF
      BA00D0C7B300CABCA700C3B7A60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0E0E000F3F4F100FFFFFF00FFFF
      FF00B0AEE300221CDA001B0EE700332C87004B494200322E2C003A363700534F
      52001C1A180034333300F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFD00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F1E300DDDB
      C500CBC7AA00BBB78D00B4AC7400ACA46800ACA25D00B7AE66006B62A300190E
      E800241DDA00887C9100B7AE6300AFA66700AEA46800AFA66900AEA56800B0A7
      6900AFA66900B0A76900B6AC6E008780590001000200605F6000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F3FB00FCF4F4008D8DAC000612
      4D000D1047000A0F3C000A1239000E11300064698900D2D6E100F8FAF9000000
      0000F5F6F6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F6F600F6F6F4004F9D
      D9000050C00002429700003780000E5CB8000696F8002CD4FF003ED6FE0041E0
      FF002AD6FF0016BAFF00089BFF000088FB00002F8E000025660000256A000026
      6B00002B7900CBDCF000F6EDFA00F3F7EF00F1F4FE00F8FAED00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006562630000000000F7ED
      DF00E6DDCA00E6DDCC00E1DCCD00E6DDD600E8E0D900EEE7E000EFEBE400EFEB
      E400F4EBE400F1E8DD00F1E8D600EBE3D000EEE1CF00EEE6D300F2EADA00F5EB
      DF00F7EDE100FBF5EE00FBF7F100FEF9F200FEF9F400FCF8F100F8F4ED00F8EF
      E800F9EFE300F8EEE100F7EDE000F7EDE000F7EEDC00F7EEDC00F4EBDF00F2EB
      E000F4E7E400EDE4D700EEDFD400EBDFC900EDD7BC00BDA08500A7846300A081
      600075647C008A777500E8D9D300E6D9D300E4D7D100E8DDD600EEE7E000BFAC
      9400BFB4A300DDD4C400E0D6C900D1C9B900CAC0B300E3D9CC00E4DACD00DACF
      BD00D0C9B300E4DACF00E4DACD00E1D9C600D9D0BD00D6D0B400D0CCB100D0C6
      AC00BDB49B00C1AD9500BDB1A00000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DADDDB00FCFAF900FFFFFF00FDFF
      FF00FFFFFF00B1AEE400231BD8001E13E7008C87D800CACABD008B898A005350
      530012100E0038383800FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFF
      FF00FCFFFD00FDFFFD00FFFDFF00FFFDFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F4F4EA00E4E3CE00E0D8AF006E67AA00120AE5002119
      D60082798800B5AB5800AFA36100ADA46700AFA66800AEA56800AFA66900AFA6
      6A00AEA56800AEA56800B5AC6E0088815A0001000200605F6000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F0F600F3FAF0001D1C5300121A
      51000A144400071142000812430004123C000B163E000A0F3200262C4900838C
      9A00FFF9F200F5F2F40000000000F4F6F300F3F4F000F2F2F000F6F6F700F8F6
      F800000000000000000000000000F6F7F800F6F2F300FFF4F300DDEBFF000A77
      E2000056C3000036850000327E000058CF0008A0FF001BC7FF002BD2FB0041D9
      FF0029CDFF0014B7FE00049CFF000085FF0000297B0000286E00002967000020
      6000BED4E600FCFBFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000065616200040001007C73
      6800E8E0D100EAE0D900E8E1D700E8E0DA00EAE1DA00F1EAE300EFEBE400EFEB
      E400F4EDE600F4EDE300F5EDDF00F1E8DA00F1E6D600EEE6D600F2EADC00F4EB
      DF00F7EEE300FBF5EE00FBF8F400FCF9F700FCF9F500FBF8F100F8F4ED00F8EF
      E800F9EFE300F8EEE100F7EDE000F7EDE000F7EEDD00F5EDDC00F5F2E100FFFF
      EA00F9EDE000FFF5E100FFFEEB00CCBFBA00524A5C0028283B00675868006E5B
      590073667C0077676700EBDCD600E6D9D300E4D7D100E8DDD600F1EAE300BFAC
      9700D7CCC300EBE1DA00EBE1D700E0D6CD00D6CDC300E4DCCF00E0D6C700B9A6
      9400B6AC9200DCD1C400E1D7C900E3D9C700DCD3C000D1C7B100C6BFA400C6BC
      A300B6A38B00A7947D00BDB1A00000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700DDDDDD00FDFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B3B0E1002019D8001209DE009B96EA00FFFFFF00E7E7
      E4001D1A1A0036373800FDFFFF00FFFFFF00FDFFFD00FFFDFF00FDFFFF00FFFF
      FF00FDFFFD00FFFFFF00FFFDFF00FFFDFF00FFFFFF00FFFFFD00FFFFFF00FFFD
      FF00FCFFFF00FCFFFF00FFFFFF00FFFFFF00918DEC001509E100251DD800AFAC
      DE00E7E3B900C3BF9D00B5B18500B0A77000ABA26500A9A06000ABA26000ADA4
      6400AFA56800AEA56A00B7AD6F00867F5A0002000200605F6000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBF6F400C4CFDA003A3F89002A34
      74001B255F00121B50000B1547000A134700070E40000E1342000E124100060C
      36002F374D00E9EDF700FAFAFF00F9F8F700F6F4F400F5F3F600F5F3F400F8F7
      F700000000000000000000000000F6F8F800F6F3F900F4F9F10034A5E0000083
      F6000067D900003A890000317B000060D100079AFF000FB4FF0021C7FE002DD4
      FF001EC3FF000EAEFF000798FF00017CF60000328C000032920000268000CFE7
      FB00F1F1EC00FCF7F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066626300050303001612
      1100F5EDE700EEE6DF00EBE1DC00EEE4DD00EFE7E000F1EAE300EEEAE300EFEB
      E400EEEBE400F4EEE700F7EEE800F4EBE600F1EBDD00EFE8DC00F1EADD00F2EB
      DF00F8F2E700F9F5EF00FBF9F800FBFBFB00F9FBF900F9F8F100F8F4ED00F8EF
      E800F9EFE300F8EEE100F7EDE000F7EDE000F7EDDF00FFFBED00B4BDBC007A7D
      7900F8F5E700D6CDD1007D708700211F37001D193C00292A5500484E7F004345
      670068657D006C626200EBDCD600E7DAD400E3D4D000E8DCD600F1EDE300B19E
      8E00E0D6CD00EFE7E000EFE7E100E8E0D900E4DCD600E6DFD100DDD6C4007966
      5700A4947A00D0C6BA00D7CFBF00DCD3C000DCD4C100D9CCB900C4B9A000BDB3
      9A00A48F79009B877000C3B6A60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EAEAEA00E3E3E400FFFFFF00C5C4C4006A68
      6800A8A7A700F1F1F100FFFFFF00B0B0E4002820DE001609DD009791E300F6F9
      DD00221E1D0038343000FAF6DF00FFFFFF00FDFFFF00FCFDFC00FCFDFD00FDFF
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFF
      FF00FDFFFF00FFFFFF00FFFFFD008B88DD000E01DB00231CD500B4B2E300FFFF
      FF00FFFFFF00FFFFFF00FCFDFC00EDEDDF00DBD8C200CAC5A600BAB38B00B0AA
      7500AFA76800B0A76800B9AF710087805A00030003005F5E5F00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBF6EF006F79A100141D5F00242D
      6100313B83002F397F001F286700161C530011194E000A1246000B134800070E
      41000610390009123200111630008D91AF00F1ECF800F9F6FB00F3F1F200F4F4
      F100000000000000000000000000FFF1EF00EEF1FB00FFFAF000008FF8000089
      F6000075EC000049AD00002F76000048B200007AF0000596FF000EA8FF0013B8
      FF000EB3FF0005A0FD000691FF000269DB000041AC00003DA4009BBBE700F6F3
      F300FFFAF400F9F9F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066626300040101000000
      0000FFFFFE00EDE7DF00EBE6DF00EDE7E000EFEAE300EFEAE300EEEAE300EFEB
      E400F1EDE600F2EEE700F4EEE700F4EEE700F5EEE400F2EBE000F2EBDF00F4ED
      DF00F9F2EA00FBF8F200F9F9F900FBFBFB00FBFBF900FCF7F100F8F4ED00F7EE
      E700F9EFE300F8EEE100F7EEDD00F7EDE000F7EEDC00EDE4E3002C2C44002F34
      480044466000292B42001716350019183900312F5500303164002D356A005364
      A3005551790073686A00EDE1DA00E8DFD700E4DAD300EADFD900F2EDE3009480
      7000E1DAD100EDE8E100EFEAE300EFE8E100EDE4DF00E8E0D300DDD0C1004F45
      3A00A0927A00C4BAAA00CDC4B100D4CCB900D9D0BD00DFD0BD00D6CAB400C7BD
      A400A18E7700A99B8300C9BDAC0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E1E1E100EFEFEF00FFFFFF00918F90000000
      0000231E2100E3E1E100FFFFFF00FFFFFF00A29FCF001610D1002016E8007A73
      C70024272200382D1100D1A43100DDB55A00F3E4C200FCFFFD00FFFDFD00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFF
      FF00FFFFFD00FFFFFF008B87DD001002D800231CD500B4B4E400FFFFFF00FDFD
      FD00FFFDFD00FCFFFC00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1EF
      E000B3AC7B00AEA36600B7AD6F0087815A00030003005F5F6000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F3F6006F70940002083800060C
      47000E1A4D001A255A002630660034347A002B2F7400161E5A000A154D000C15
      470006104200091244000913420008113B000F1237002D325300C1C7D700FBFF
      FF00FBF8F700F4F2F100F6F9F400FFF4F000F6F3FA00FCF9FA000D9CFF000493
      FD00007CF2000062D20000347C0000388A00004EC3000061EA000075EF000289
      FD0009A1FF000293FF00087AF7000040B6000045BF004F80AA00FFF4F400F6F6
      F70000000000F4F4F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066626300040101000300
      0100D6D1CC00F4F1E800EBE7E000EBE7E000EEEAE300EEEAE300EEEAE300EFEB
      E400F2EEE700F2EEE700F2EEE700F2EEE700F7EEE700F7EEE600F4EDE000F4ED
      E000F9F2EB00FBF9F500F9F9F900FBFBFB00FCFBF900FEF7F100F8F4ED00F7EE
      E700F9EFE300F8EEE100F7EEDC00F7EDE000F7EEDA00A18FA1000C0A2500353A
      55001B203A00181B3700181B3900232144002D2C5F00464992004E53A1007584
      BA004E4979005E5A6000E3D9D000EDE4DD00E8E0D900EAE1DA00F4EEE4007C68
      5D00E1DCD300EBE7E000EBE7E000F1EAE300F1E8E100EBE3D600D9C9B900463C
      3100ADA08700BFB6A300C3BAA700CDC4B100D6CCB900E1D3C000E6D9C600D7CC
      B400B3A08A00BCB09700D9CCBA0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DDDDDD00FCFCFC00FFFFFF005E5C5D000000
      00004F4E4F00FFFFFF00FFFFFF00D6D7D7003F3C310018124A00251DDE002015
      EC001A187600362E0700D1900000CE910000ECDBAC00FFFFFF00FDFFFF00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008A87DD000B02D900241CD600B5B4E400FFFFFF00FFFFFC00FFFD
      FD00FFFFFD00FFFFFF00FFFDFF00FFFDFF00FFFFFD00FFFFFF00FFFFFF00EAEA
      D800ADA56A00B0A66800B6AD6F0088825C00030003005F5E5F00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8FDEF00F2F6F200F8F9FF004144
      5A0011123900060A3C000C125500101B4D001E29600026306B0026316E001E26
      64000C1549000A1345000913430007123F0006113E0008123A000D133400141A
      37005B627B00F2F4FF00F2F2F200F9F9E600FFF4EF00F9FAF70007AAFF00069B
      FF000188F700016FDF000648B10000296E00003A94000047C3000051D4000059
      DE000375EA000076E9000055CA000048BF00003FAE00FDFFFF00F4F0F1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066626300040101000A07
      07005A565600FFFFFE00EDEAE300EDEAE300EEEAE300EEEAE300EFEBE400EFEB
      E400F2EEE800F2EEE800F4EFEA00F4EFEA00F4EFEA00F4EFEA00F4EFE700F4EF
      E700F5F1EA00F9F5F100FCFBF900FBFBFB00FCFBF900FEF7F100F7F1EA00F7EE
      E700F7EDE000F7EDE000F7EDE000F7EEDC00FCEBE4008787920010122D002023
      3F00181D3500191C3C001518370025234C003F3C7D008585CF00989BD600A4AC
      D4006764A000554E6000C7C3B900E4DFD900E3DFD700EAE6DF00F4EDE3006455
      4E00E7DDD600EDE4DF00E7E3DC00E8E4DD00F2EAE400EAE3D000BFB19A006055
      4B00C3B6A100C6BDAA00C3BAA700C3BAA700CDC4B100E4DAC700E0D7C400D9CC
      B900C0B39E00C3BAA600DFD6C40000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700DDDDDD00FFFFFF00F6F4F400383436000100
      000081808000FFFFFF00DBDADA00383336000A070A001E190A00241E53002821
      DF002018FA003E2F7200D1920000D7A51900F7F7DF00FDFDFF00FCFDFC00FDFF
      FD00FFFFFD00FCFFFF00FDFDFF00FFFFFD00FFFFFF00FCFFFD00FFFFFF00FFFF
      FF008986DB000C02D900241DD600B6B5E500FFFFFF00FCFFFF00FCFFFD00FDFF
      FF00FDFFFF00FDFDFF00FDFFFC00FFFFFD00FDFFFD00FFFFFF00FFFFFF00D5D1
      B600AAA06200B2A76B00B7AE6D0089835B00030004005F5E6000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F7FF00F5F1F700FFF7FA00FFF9
      FD00FDFEFB00B6BDD2003C42690000063500070D41000E124C00141A59001E27
      65002229690018215B00101A4F000C164700071242000812440006104300070F
      44000A143C00090F2C0027294000A1AEAF00FFF9FF00FCFBFA0008ACFD00029C
      F900018EFB000380F100004FCD00002B7E0000226400002E8500003BA400003D
      A8000047BF000048BC000055C4000058CD000048B700FFFAFF00F5F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066626300040101000905
      0600120E1000E6E3DA00EFEAE300EFEAE300EEEAE300EEEAE300EFEBE400EFEB
      E400F2EEE800F2EEE800F4EFEA00F4EFEA00F4EFEA00F4EFEA00F4EFE800F4EF
      E800F5F1EA00F9F5EF00FCFBF800FBFBF900FCFBF800FEF7F100F7F1E800F7ED
      E700F7EDE000F7EDDF00F5EDDF00FCF2E100F8F2E60034395300252846001A1D
      3900141A3200161D4200121942002A2661007A70B900BFC3E000D0D0EA00D0CD
      EE0055548400544E6B00C1BCB900DDD9D300E3E0D900EDE8E100F7EFE6004B3F
      3800EAE0D900EBE4DF00E6E1DA00E4E1DA00F2EAE400E4DDCA00A6987F00AA9D
      8800DDD0C000D7CFBD00CDC4B300C7BFAC00CAC1B000E3DCC700DAD1BF00D3C6
      B300CDC0AD00D0C7B600DFD9C70000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ECECEC00E3E3E300FFFFFF00C9C6C7001C1719001009
      0B00BFBDBD00E5E5E5003A3838000B0407001E1A1B00161015003F3E3500A7A6
      D6002921E000231CF90078515E00E7B84700FFFFFF00FCFFFD00FCFFFD00FFFD
      FF00FCFFFF00FCFFFF00FDFFFF00FCFFFD00FCFFFD00FFFFFF00FFFFFD008787
      DA000C03D700261DD500B8B7F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FCFFFC00FCFDFD00FDFDFD00FCFFFF00FFFDFF00FFFFFF00C4BE
      9F00A9A26000B0A66900B7AD6F0089835A00030003005F5E6000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAF2F100F8F4F100F2F7F100F2F9
      F300F4F2F600F3F1F100FBF8F300EFEFF600A1A8C10003103300000A3600060F
      4200141C54001F296A00222A6A001A235C00161D53000B1342000B1643000613
      3C000C124100060F3B0008123D000D13380017193600534F58000D98EF0006AA
      FF000094FE000080F1000060D500003BAC00002E8600002B7000002B6A00002E
      6F00003FA4000253C3000060DB000066DB00004ECD00D1DEF400FAF1F2000000
      00000000000000000000000000000000000000000000F5F6F600000000000000
      00000000000000000000F5F6F600F5F6F600F5F6F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066626300040101000903
      01002A211D00BAB09E00F1E8E400F2EAE300EFEBE400F2EBE400EFEBE400EFEB
      E400F2EEE800F4EFEA00F4EFEA00F4EFEA00F4EFEA00F4EFEA00F4EFEA00F4EF
      EA00F4EFEA00F7F2ED00F8F5EE00FCF8F200FCF8F200FBF4EE00F9F1E600F4ED
      E000F9EFE000FBF4E300FFFFEB00E8DFDD007C8088001F2141001F223D001418
      3200181C3D001A21500019245B0028298300D3BFE400E6E4EF00D6D6ED00DDDC
      FF002C2E4A0054507000C7BCBF00DFD9D700E6E1DC00F1EDE600F8F1E8004539
      3000EDE4DD00EBE4DD00E7E3DC00E7E3DC00F4EAE400DDD6C30094846C00D7CF
      B400E8DFD900E3DCCD00DFD7C900D4CABD00D3C9BC00DFD6C300CCC4B100B9AC
      9800D6C7B400DCD6C900E1DCCF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E1E1E100EDEDED00FFFFFF009C9A9B00050103003430
      3200D1D0D10044424300070204001C181A00252023000B05080068686700FDFA
      E5002A275B002018DB00180EE300847BBB00FFFFFF00FCFFFF00FFFDFF00FDFF
      FD00FDFFFF00FCFFFD00FAFFF600FDFFFF00FFFFFF00FFFFFC008984DB000B00
      DB00241DD800BABAF900FFFFD200E0C68500DFB95F00D9B35300DBBE7200E5D7
      A700F9F6E100FFFFFF00FAFDFF00FDFDFD00FCFFFF00FFFDFF00FDFDF700B5AE
      8100ACA36100AEA66800B5AD6E008B835C00040004005F5E6100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFF0EB00F1EFF100FDF9FF00F5F3FF003840
      6100020B4000091049000E164C00192359001D2661001E266200162158000F1C
      4F000C15490009124500081144000912420009123E00091237000E173900004D
      9F00006BE200036BE1000064D7000042AE0000267700002F7700002D7700002D
      7F000046B400005ACF00006AE2000066E7000454C3006FA3DB00FBF7F700F8F7
      F700F8F7F70000000000F4F6F600F5F6F600F6F4F400F5F2F200F8F6F400FAF9
      F900F8F9F900F3F6F600F4F6F600F9F9F800F6F7F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066626300040101000100
      0000BF9D8300AD958100F9F4E700F1EAE400F1EBE400F2EBE400F1EDE600F1ED
      E600F2EEE800F4EFEA00F4EFEA00F4EFEA00F4EFEA00F4EFEA00F4EFEA00F4EF
      EA00F4EFEA00F5EFED00F8F1ED00F9F2EE00F9F4ED00FBF5EA00FFFFF400FFFF
      ED00F9EFE800E0DAD7006866840035394F0023243E001D213F001C1F3C001419
      34001C204C0021296B002D3C8C002B36AF00ACB3DC00BDBAEA00C3CCEF00C0CA
      F4000C122C007A73A100C1B6BD00E0DAD700E8E4DF00EFEBE400F8F1E8004134
      2E00EDE4DC00EAE3DC00E8E4DD00E7E3DC00F1EAE100D6CCB90084705F00E7E0
      CC00EFE8E100E8E3D900E7E0D600E4D9CF00E6DAD100DCD3C000AA9B8700988B
      7700D7CCBC00E6DCD300EAE1D70000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DDDDDD00F9F9F900FFFFFF006561620005020300433F
      41004A47480009030500171115007E7B7D0037323300070003009E9D9E00F1F7
      F40024241600281E4C002C24DE00130CED008B88D900FFFFF900FFFFFF00FFFF
      FF00FFFFFF00F4E3BE00D6AC3E00E1BC5600F3D895008683D6000A03DE00261E
      D900B9BCF600FDE59F00CB9D2100CD8C0000CE8C0000CE8D0000CC880000CD8D
      0000D3A62C00E8D3A400FDFFFF00FCFFFF00FDFFFD00FFFFFF00ECEADD00B0A8
      6D00AFA66800AFA66900B6AC70008B825C00040004005F5E6100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F7F600F4F2F300F8F6F900F5F4F200FDFB
      F200ADA8C400282F580000052E00090E46000E124C0012174F00181F5E001820
      5F00161F5900121B53000D164A000B134A00091146000C1246000A1040000C7B
      E0000189FB000284F8000076EB000166E200003B9F0000297000002A75000032
      8500004EBD000061D500006CE500006AEA000258D0004F8CCC00F9F7F300F8F7
      F700F3F2F200F9F8F800FDF8F800FAF9F900D7D7D700BEC3C300CBCFCF00D2D2
      D100F5F1EC00F4F4FD00F8F6F800F9F6F600F5F3F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066626300030001000300
      0000886856006F554900E0DFC700F4F1EB00F4EBE400F4EDE600F2EEE800F2EE
      E800F2EEE800F4EFEA00F4EFEA00F4EFEA00F4EFEA00F4EFEA00F4EFEA00F4EF
      EA00F4EFEA00F5EEEA00F9EEEA00FFFFF900FFFFF900F4F1EA0098A0B1005A5B
      73003E4159002C304B001D203E0020234100222441001C224200191F3F00151A
      4300212763002A3792003C4FBA005277D600688FDD007C84E600C9D3F7005763
      BA001E225500605C8500B6B4B600E0DAD600EAE6DF00EFEBE400F8F1E8004236
      3100EFE7DF00EBE4DD00EAE6DF00E8E4DD00F1EADD00B4A994006C584F00E7E3
      D400F2EEE700EBE8E100EAE3DD00EEE1DD00F1E3DF00DDD6C300877360009A8B
      7700E0D6C900EDDFDA00EDE0DC0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F9F9F900DDDDDD00FFFFFF00F6F6F60039383800161011001F1A
      1C00130C11000B0809008E8D8E00C4C2C200160E120019161800CFCECE00E5E7
      E700201D230042320500A06F42002B1FD200100AEF00806CA800E7C56E00EDDD
      AC00FDFDFC00DFC57900D18E0000D8960000755266001009EA00281DDB00BAB7
      F400FFEAA200CE920500CF8F0000D7920000CF910000CD9B1700D79E1E00D091
      0000D08D0000CB900100E1C57800FDFFFF00FCFFFC00FFFFFF00D8D7C100ABA2
      6400AFA56800AFA66900B5AC6E008B835C0008020700605E6000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5F3F600F6F4F600F6F7F600F5F4F600FAF7
      FA00F6F8EF00F6F6F000E3E6F200888FB300060C300002093200091042000E15
      4A00121B5300161F580017205A00121D53000E184D000C144A000A0F4500029D
      FB000A9BFD00029CFD00008FF3000076F1000970D400122D6900092F65000032
      80000050BF000062D600006CE500006AE6000058D6002D6EB400FAF8F300F8F7
      F70000000000E4E4E400ABA0A1008C858600969A98008C949300999F9F00A2A1
      9C00A19D9100A49F9B00A9ACAC00C9DBE400EAF8FE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066626300030001000502
      03003C302A00544137008E806800D9D0C300F4EBE100F1EDE700F2EEE800F2EE
      E800F4EFEA00F4EFEA00F4EFE800F4EFEA00F7EEEA00F5EFE800F7EEEA00F7EE
      EA00F5EFE800FBF5EE00FFFFF8009195A100767A940042475F00242947001E21
      4200212143001F21420021254200212441001F2549001F234E001D2351001D23
      5D0038419E004B5EC9004C5DC300A7BAEE0095ADED00C4DAF400A4A9DD005C6E
      D0002E399500837D9500B7B1B700DFD9D700EAE6E000F2EDE600FCF4EA00463A
      3500F1E8E000EDE6DF00EBE7E000E8E4DD00F4EEE10077685B0061514900EBE4
      D600EFEAE300E8E4DD00EBE6DF00F4EAE400EFE7DD00E0D0B9008B796400B1A6
      9200E4DDCF00EFE3DD00EEE1DD0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EDEDED00E1E1E100FFFFFF00C7C6C7001D191B001C1719001C16
      18000B05090086848500FFFFFF00848182000300000033303100F4F4F400B9BA
      BA00100D17003C331500DF9F0000A2714400261ACB001309E300764D5400DAA9
      2300FDFDE700E1C67E00DDA21A0079537100130DF4002615BA00AA938B00FFFF
      CF00D0A42800D18D0000D3930000CD910000DBBE6A00F4EACD00FCECCD00DFC0
      7100D1930700D3900000CC910000EAD8A600FCFFFF00FFFFFF00CCC3A600ACA2
      6100AEA56800AFA66900B6AC6E008A845C0009030700605E6000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5F6F4000000000000000000000000000000
      0000000000000000000000000000F6F4F400FDF7F900F4F0FF002A2D4E00060D
      3700020A3700000E3F0012194D001D1E5400152259001F205B000A3B7E000AA4
      FE0010AEFB000AA4FF0008A5FE0017A0F8000277DA0015092B000F1637001729
      4E00004AB400005AD600026EE200016EE6000058D100064EAF00FAFFEB00EEF3
      F400DEEBEC00AC9C9300799FB3003D7598002C6AAA003471C700446F9B003860
      8E002647740060595900887B7F00989D93000A61920096C0E100FBEFEC00E9FA
      F600F8FAF400EAF8F100F9F4F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066626300030001000502
      030030272300755A4E009B7C6600987D6600FBF5E800EFEDE700F2EEE800F2EE
      E800F4EFEA00F4EFEA00F4EFE800F4EFEA00F8EEEA00F5EFE800F8EDEA00F8ED
      EA00FCF4EA00E8E6E30052546E00252A4700252A4500292E4B00262949002427
      4700232545002123420020234000212849002326570024276F00252C8000333C
      94005565D400556FCF007595E600C0CCF700CFE7FB008494D300B6B9ED0098A1
      E0004964CC00A99E9700B0A6B900DFD9D700EAE6E000F4EEE700FEF5EB004E44
      3F00EFE7E000EDE4DF00EBE7E000E8E4DD00F9F2E60050463E00846E6100EAE4
      D600EFEAE300E7E3DC00EAE7E000F4EBE400EDE7DA00CCB69E00B19E8800C6BC
      A900E3DCCF00EFE3DF00EFE3DF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E3E3E300ECECEC00FFFFFF009A98990002000000090305000703
      0500827F8100FFFFFF00FFFFFF00545253000000000059575700FAFAFA008685
      860007030C003E300D00D7B45800F4DE9500AC98A7002720DF001208DE00806B
      A000FFFFF400FFFFF900877BC5000E05E0002825E300A6867300FFD98A00E3C5
      7C00CC900000D7920000CF8D0000DAB55700FFFFFF00FFFFFF00FAFFFF00FFFF
      FF00DDBC6A00CB8A0000CC890000D2B15300FDFFFF00FCFFFD00BAB58900ABA3
      6200B0A76A00AFA66900B6AC6E008A845C0009030800605E6000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6FAF100F9FEF100F8F8F400FFFF
      FF008796B6001C23470000022E000A1244000E134400091351001798EF001BBD
      FF002DCCFF0015B7FE0016BCFD000AAAFF00064AAF0010113C0008113F00070F
      2B000250A900005EE2000369DA00066EDF00005CD5000041A900FFF7FE00FFF6
      F800ADADAE002B6C9F00A6BAC300D4D6DC00DDD5D000E1DCCF00DBD9D200DEDB
      D500E4E1DB00B8D4DF00A7B2BF006876790037454F00265C79001E628F007E9F
      B800F8F4F300F4FAF900F4F3F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066636400040101000401
      0100231B16008C6A56009A756100AA816800EBE8DA00F1EDE800F4EFEA00F4EF
      EA00F4EFEA00F5EFEA00F8EEEA00F4EFE800F9EFEB00FFFBF100FFFFF200FEFE
      F100F8F4ED00373A4B00212640002D334E002A304B00282C4900212441002124
      42001F2341001F23420024284D00252E5F00262C7300323FA7004452C0006880
      DC007D91DC007A98E700ADC7F800C6DDF900464F7D005C6EC900B6B9E800B1B4
      E6006A8CD70063627300A9A0B400E0D7D400EDE4E000F4EEE700FCF4EA004A44
      4200EEEAE100EBE7E000EBE7E000E8E4DD00FBF8EB004B403700BCA99500E8E4
      DD00EBE7E000EBE7E000EDE8E100F1EDE600EDE4D900A7927A00CDC3B000DFD4
      C600E6DDD000EBDFD900EEE3DD0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DDDDDD00F9F9F900FDFDFD00DBDADA00AFAEAE00737172008788
      8800FFFFFF00FFFFFF00E3E1E100231F2100000000008B8B8B00FFFFFF005A57
      580008080E003D321200E0D5A700EFF6FF00F9FDE000A9A7D500241CDA001209
      E4008E8BE0008F89E0000E04E3002821DA00B8B7E700FFFFFA00F9FFFA00D6A7
      3300D18F0000D1940100D08F0000DAB85C00F1E3C500FAFAEC00FFFFFF00FFFF
      FF00F9F6DE00DABB7300E8D19A00EFEACF00FFFDFF00F1F3E300B1A97200AEA4
      6700AFA66900AEA56800B6AD6E0089835C000A030800605F6100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F0F600F9F6FD00FFF8FD00FCF2
      F700FFF9EC00FFF4EC007BB1E60000387E0008113C00080536000AAAF4001CC0
      FF0029C6FB0017BBFF001ABAFF000E97FF00001250000A124600021047001516
      2E008694AE002266B3000465CC000060DE00005FD600003D9C00EEEDFA00306E
      9300707C8100C2BCCF00BBC3C700CECDD100DBD2D100D7D4CF00D9D2D500DBD4
      D600DCD6D700F4DFCD00DED6D100A8CADF003D75B40092A4B200433A37003165
      9400F3EFF300FFEDED00F2F4F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066636400040101000501
      01000D0601006C5447009B756100AF887000B6A79700F4EEEA00F4EFEA00F4EF
      EA00F4EFEA00F5EFEA00F5EDEA00FFF7F100FFF7F400D1CDD300BDBFC700C9CC
      D1004344560023284300282E4700292F4A002A2F4B00252A4600222542002124
      3F001F2242001F264F00323C80002B3588004452BA006F8ADF008EA9ED00ADC1
      EF00C0D7FB00B6C6F20098A7CF001F263F00030830005767C300A6B3E000B6BF
      E8008F9BDA00343E65009A8A9400DFD7D300EFE6E100F4EEE700F9F1E6004D48
      4700EEEAE100EBE7E000EAE6DF00E6E1DA00F9F7EB0054494100DACAB900EAE6
      E000EBE7E000EBE7E000EDE8E100F1EDE600EAE1D600A08F7900E0D9C700EAE0
      D100EBE1D300EBDFD900EAE0D90000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F9F9F900DDDDDD00FFFFFF00F7F7F700FFFFFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D8D8D800535152002C292A00BDBCBB00F1EFEF002624
      2500120C100040383000F3F7E800FFFFFF00FFFFFF00FFFFFF00BAB6E500312B
      D8001A0DDF001910DD002F2BD700B3B1DB00FFFFF600FCFFFF00F3EFD200CD9B
      0E00D3910000D3930100CF930000CE8C0000D0930000CDA02700D9B04F00DDC4
      8600ECDFB800FCFDF300FFFFFF00FFFFFF00FFFFFF00DDDDC900ACA16500AFA6
      6800AFA66900AFA66900B7AE6F0089835C000A030800605E6100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F6F100F9F7F200F5F9F700F6FD
      F900EAF0FA00F2FBF8000C89EC000084FF0004AEFF000880D9000A9DFF0013B3
      FF001CBFFF0012AFFF000A9DFF000655BC00151B47000E174D0007164D004A4C
      7100D4DECD00C8C1AE00A6A5A6006F9FD0002765A8000045AA0003569F006189
      AF00AC9C9300ACBCBA00C7C3C100C9CFC700CBCDC400E1D4CA00D2D1D000D4D5
      D200D6D7D600C8D2E900E0DAD100E9DCD900175AB7001C75CF004FADD5007980
      7A000C4E850070A4C000FCFAF100F5F4F600F8F6F600F5F6F400F8F6F6000000
      0000F6F4F6000000000000000000000000000000000067636400040101000601
      0100010000004C3C3500A47C6600AD8B76009E846B00FCF5F200F4EFEA00F4EF
      EA00F4EFEA00F7EEE800FCF5F500D1D1D600515064003939500037374F003634
      4C0025284000272C4600282F4900252C4800282E4B0025284700232646002124
      4400242A59003F489200414EA3004957C100809EE800AFC1EF00B9C9F200CCDC
      F4007C8BB9001A1A330003051B000305210003072400383C9A007D92D7009BA9
      E600949EDF0039478E00EAE1E400E4DCD600EFE7DF00F4EFE800F1E7DD005C55
      5400EDE8E000EBE7E000E7E3DC00E4E1DA00E6DDD600806E6500E3DCCA00EAE6
      E100EBE6E000EEEAE300EBE7E000F1EDE700DAD0C400B3AC9500E7E0D300EFE6
      D700EFE6D700EDE0DA00EBDFDA0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00E1E1E100FFFFFF00F6F6F600FCFCFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECEAEC00F7F7F600DDDBDB005453
      550018181B003F372400D6B15700E0CA8C00EFE0BD00FDFFE400FFFFFD006A65
      D7001607E4001308E3006967D800FFFFF300EAE8E800E1E5ED00DFD5B200CF9B
      0B00D2920000D0930000D39A1300D29E2400CE920000CD880000CB880000CD8A
      0000CB920000CF9D2300D5AB4700EAD6B000FFFFFF00CFCAAC00ACA16000AEA6
      6800AFA66900AFA66900B6AD6F008B845C000A030800605E6100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4FAF900BAE1F600009BF900039AFF00049CFF0007A1FF0007A4FD0005A1
      FD0016BAFF000EA5FF000641A40007053C00061241000A164D0000012700E8E2
      F100DBE2E500DCE2E500DDE0E000D8D0C700BBBFBF007B98AA003860800090A0
      B40087817A00B2B3B700C4C0BF00CBC7C600CECAC900D2CFCD00D8D1D200D6D2
      D200D7D5CF00D9D6CD00E7DBD9002E76C1001B6ABB00127AD5001688D400339C
      E40081746700416C8E003571A800FFFFF200EFF4F600F6F1F600F3F8F800EFF4
      F400F1F3F6000000000000000000000000000000000067636400040101000601
      02000100000032262100AD8C7500B4958000AA917900FCF5ED00F7EFEA00F2EF
      E800F4EFE800FFFFFC00DCD6D900333948002A2B46003336510030334B002C2E
      4600272A4200262A4600252B4900262C4C00262C4D002329490021254B001C23
      4F004B55B1006379C9004B5BBD0088A0EB00B6CAED00C4D1F100CAD6F400B4C3
      DF00050A2500000219000B0E25000707230002061600212462005A6CCC00778B
      D10091A0E3005C77D4009794AA00EAE8E100EBE4DF00EAE6DF00E1D9D000796F
      6B00EDE8E000EBE7E000E7E1DA00EAE3DD00B1A6A100AC9E9100E8E3D600EDE8
      E300EDEAE000EEEAE300EEEAE300F2EEE400A1978300CCC1B100EEE6DC00F1EA
      E000F2E8DF00F1E6E000EEE4DF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E4E4E400EAEAEA00FFFFFF00F6F6F600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F7F600FFFFFF00E8E8
      EC0026242C003D311300CA880000CE8A0000D1950000D8A625007D68AE001712
      E4002C27DB002D26DA00180CDA008886DD00FFFFFF00FFFFFF00F1E4C600CF99
      1500D1910000CF8D0000DAB45D00E3E3D300E0D0A500DDBD7A00D6AF4800D39A
      0E00D3920000D1910000C9870000E3CC9300FFFFFF00BDB88F00ACA26200AEA6
      6900AEA56800AEA56800B8AE70008B845C000A030900605F6100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6F3FA0092DCFB0007A1FE0007A1FF0007A0FF0006A0FF0006A0FF0008A6
      FF00009AF7000C83F300052B5E000E2151000714450006063B005875A100BDD5
      D900ECE5E000E7E7D900EDE9E600DDDFE400CED0D000CCC9C100A1988D00ACA6
      A1009E968D00A9ADAF00C1BDBC00C8C4C300CBC7C600D1CDCC00CBC6C600D3D0
      CC00D7D2C600E2DBD9002667B1001869BB000A6CCC001A7CD7001E86DA00198D
      D700C5FFFF00A89FA4005F8084000E4E8F00FFFFFF00EEFBF900F9F2ED00FFF1
      F400FFF8F0000000000000000000000000000000000067646500040101000502
      0300050001001B110F00B39A8000BA9E8A00BCA38B00EEE7D700FFF7EF00FFF8
      F100FFFFFE00BCBDC00044424D0034374D0032344B002D2E46002C2D4600292A
      440023274000252846002327490028305400242B500022284F00272A5C003541
      8A007D8BDC00768AD7004B5BBD00A7BCEF00C6D6F200D1DAF500E3EDFF001A1D
      37000A0E290005092100151833000D102B0007071D00050C2E00424BA700707D
      E00095A0E0006B88D4007D83B600DFDAD300E6DAD700EBE8E100C9C1BC008C83
      7D00EBE7E000EBE8E100E4DFD700EFE4E00072666200CAC3B600EBE6DD00EEEA
      E300EDEDDD00EEEAE300EFEBE400F5F1E3007A6F5A00D9CFC300EEE6E000EEEA
      E300F4EBE600F2EAE300F1E8E10000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00F7F7F700FDFDFD00F6F6F600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700FFFFFF00DDDD
      DD002423290042382900D3A83F00D69F1700DD9A0300734F6A001005DE002A23
      D900C1BFE400BFBBE500291FD8000901D9008983DA00FFFFFF00FAF9E000CFA2
      2A00D18F0000D08D0000DEBD6E00F7FDFF00EAF3FF00E8F1FF00EAEAE300D7A8
      3100D0900000D3920000CA950800F3EDD000F7FCFA00B3AC7800AEA46800AFA7
      6900ADA46800AEA56800B7AE6F008A845C000A030900615F6200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFF6F80095DAFA0015ACFD000AA8FF0006A3FE00049CFF00049BFF0009A0
      FF000079F200002D7C0000265600002356000024540001265A00001D51000E41
      7E009AC1E900F1F0F200E7E2DE00E6E9E600E8E7E700D9D7DC00706F7400B1AF
      AF00B9BBBD009A989800B9B6B400C1BDBB00C5C1C000CBC7C600CECDC900D4CF
      BF00ACC1D9001250A5001062B6000D69C4001F7ECC001586CF001A8FD5001D8F
      D5001E8FDB004FB6EB0069797C00667C83000F4C81007D8C9F00001841000F43
      86005E91C300FAF9F80000000000000000000000000067636400050102000502
      0300080304000C050300BC978000BF9E8800B79D8500CCBFB000F5F2ED00D7D0
      CD0092949B003639490035364B002A2F4600282C4600272A4400252841002326
      4000212542002128490021274E00272F5C00252C5A00282D6500373F8C00586B
      CC006880D4004F60C4008497E300B7CDEA00CAD7F200EAF2FF005E658C001618
      370006092400070A2400121531000E122E0017193E000B10380008123F002D35
      800095A7E1008798D9005567AD00DDD3C700DFCDC900E4DDD6009E948E00A79D
      9700EDE7E000EBE7E000E6DFD700F4EAE400423C3900D9D1C300EDE7DD00EFEB
      E400EBEBDC00EBE7E100F1EBE600EDE0CC009A8C7700E0D9CC00EEE8E300EEEA
      E300F1EBE400EFEAE300F1EBE60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFC
      FC00DDDDDD00FFFFFF00F9F9F900F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4F400FAFAFA00FFFFFF00DBDB
      DA002521220041404200FFFDF300FFFFD1007F69AC000D05E1002720D200B7B1
      D600FFFFFC00FFFFFF00BBB8E700261FD6000B00DA008582DB00FFFFFF00E0C1
      6A00CC8B0000D18F0000CFA33200F7F1CC00FFFFFF00FFFFFF00E5D8A300CE93
      0400D6930000CF8D0000D8B24C00FFFFFF00E5E4D500ADA26800B1A76900B0A7
      6900ADA46800AEA56800B6AC6D0088815C0009030900625F6100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDF4F800A7DEFF000ABAFF0013B2FF0005A3FF00059BFF000E9DFF000079
      ED000055D6000247AE000021590000225100002160000026500000245E000025
      6200002F7E00003883006E9DC600C9D5E200D8DCD500DCD7CD009B8F9400E2D9
      C600A3A0A900988C8600ABAAAD00BEBABB00C4C0C000C8C6C900D2C7C10096B1
      C4000A499D000C5BB1001066BB001374C600167FCD001688D0001A8ED2001A8F
      D4001B8FDB001A8FD0003CA0DA007F96A60057666600055497006E9CB8000035
      8900004AA300003A7A00FFF7FF00FDF8F6000000000067636400050203000704
      04000904050005000000C0988100C19E8800B49883009D887C0044434C003235
      4A0022273900272A4400242A400024284300272B46002529430021253F002024
      3E0020254300252B51002A2F67002D3379002C3379003A4498004A58BF005568
      C6006B84DA006888D600B3BDF100C0CDF100D3DFF500EDF5FF0044496E00181B
      3B001B1D39000D102B000E122F000B0E2B00181C48001D215F0028338400232A
      7D006A81DF009DA3DA005C6EB300F1EDDD00DFD9D100D1C9C100C3B9B100B9AF
      AA00EBE6E000EBE7E000E7E1DA00FEF7F1002A242100E3DCCF00EFEAE100EFEB
      E400EDEBDC00EAE4DF00F4EBE700A6947C00C9BAA700E7E1D400EEEBE400EEEA
      E300EEEAE300EEEAE300F1EDE60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00E0E0E000FFFFFF00F7F7F700FAFAFA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4F400FDFDFD00FFFFFF00D9DB
      DB002522250047424200FFFFFC008684E8000B04E7002922D800BEB8E300FFFF
      FA00F4F6F300FAFDFC00FFFFFF00BAB7E700261FD7000C00DA008685E100FFFF
      DA00D7A62E00D08C0000CF900000D3A22500E5C07300DBB96600D09D1500D690
      0000CE8F0000CB9C1C00F4EACD00FFFFFF00D3CFB500ACA16300B0A76900B0A6
      6A00AEA66900AFA66900B8AD6E0088815C000B040B0063606100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F6
      F600EAF7F300E7E9FD000FBBF6001CC3FE000FACF9000DA3FF00028AFD00007E
      F4000074F3000062DB000024580000254F0000225C000026560000235A000024
      5F000030750000358D0000318400003786006596BB0076819100AFC9D6002B6C
      BC008B9BB100545954009B938C00B0ADA900C2BDBA00C7BDB40098B1C9000640
      93000B56AC000E62B700126EC0001477C7001680CC001684CF00198AD1001A8D
      D1001E85D700148DE1001E88D700B1D0E100989C9A006B727400114F7E005B8A
      B600004DA400004DAD006F9ABB00FAF3F0000000000068666300080402000A06
      04000A05060007030100B7977F00C39D8500BF9E8A00BCA08A00434048002227
      440022284200212741002127410023284400232843001F253E001D233E001F25
      410022274B002E346A00333F8B00313F940033419B004F5BB9006172CC006177
      CA00B6C1F100B7C9F400B7C6ED00CAD4F200E0E8F900CDE0F5009BB1E1001719
      3C002325460019193F00101233000C102A00181B490029318800687DCD00859A
      DA008397E000A3AAD900848EC000F7F2DA00EFEADF00E8DFD700F1EAE300D9D4
      CF00EEEAE400EEEAE400E7E0D900FFFFFC002E2A2800EEE6DF00F1EBE400EEEA
      E300EEE7DA00EEE6E000FCF4EA0060544700D6CABF00EFEBE400EEEAE300EFEB
      E400EFEBE400EFEEE000EDEBDF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4E4
      E400EAEAEA00FFFFFF00F6F6F600FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00F6F6F600FFFFFF00FFFFFF00DBDB
      DD002925220046453C00807ADB000C02DE002822D600BBBCE700FFFFFF00FAFD
      FC00F4F4F400FDFFFC00FCFDFD00FFFFFF00BBB9E4002821D3000A00DA008885
      EA00FFFFC900D8AC3E00CF900000CF8B0000CF8B0000D08A0000D18C0000CE8C
      0000D0A02000EDDBAB00FFFFFF00FFFFFF00C3BC9A00ABA26000AFA66900B0A6
      6A00AEA56800ADA46800B8AD6F0089825D000E080E0063606200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F6
      F400F6F9EF00FFF3F80040CDF80023CAFE0026CAFF0017B3F9000BA6FF000596
      FD00008DFB000072F100004AAE000021550000225B0000225500002359000026
      5F00002F650000306A0000347600003286007BA6D1002667AF00004DC000066B
      D4009FC6DA00888D8300616A7200A4A09C00B4B1AD00B2B8C30012478C000651
      B2000F62B3000E66BA001270C1001176C100127CC600157FCD001885D1001A89
      D100148CDC002788BB00CFCFD400D8DFE200FBE1DB0022374E0040778F00306A
      84001B478C00003797003A729A00FFF9F100000000006A6663000A0604000B07
      04000A0506000B07050097796300BF988100C0A08A00CCAD9400706466002026
      440020253F0020253F0020253F00212640001F263E001B2239001D2341002328
      4B00262955002F387A0037459A003E4BAD00414EB4005D6ACD00778BD900819D
      E000C0D0F100BACCF200C0CDF500CDD7F500E1EAFC00BACCED00AFC6F8001819
      3A00202144001F2149001C1D45000A0E2B00181B51003C47A1008C9EDA0098A6
      D100808CDA006B83D100C9D3D900F5EFDC00F4EDE100F7EFE800F5EEE800B4B0
      AA00F1EDE700F4EFEA00E6DFD700FFFCF7003F3B3800F2E8E300F2EBE600EEEA
      E400EDE6D700F5EEE700FFFCF2007A685700E0D6D100EFEDE600F1EDE600EFEB
      E400EFEBE400EFEEE000E8E7D90000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDE
      DE00F6F6F600FFFFFF00F6F6F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F9F9F900F7F6F600FFFFFF00FFFFFF00DDDD
      D8002B292600272386001509E7002923D600BDBBE800FFFFFF00FFFFFF00FAF9
      F700F7F7F600FDFFFD00FDFFFD00FDFFFD00FFFFFF00BCB8E5002622D3000700
      DA008684E800FFFFF400E8CD8900D6AC3D00D0A21E00D5A32A00D1A73900DEBF
      7300F7EFD500FCFFFF00FCFFFF00FAFDF700B7AF7E00ACA36400B0A66B00AFA6
      6800AEA56800AEA56800B7AC6E008B845F001009100063606100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F6
      F600F4F4F000FFF4F100B2E9FF0026D5FF0036DCFD003AD7FF001EC4FF0011B2
      FA00019AFF000280FD000062E7000022660000255A0000225600002359000026
      5E00002B6F00002D6C00002D6C00002D6600003781000054DA00077CCF00E1E7
      ED00EEE9E400BEB8B800748992005D647100B5AA9B00215689000B4FAC001059
      AA000D64B2000D6AB800106EBC001071C0001072C300147AC900167CC7001A7F
      C300247CC600DBDAE000DCD9D600E0DED600DEE2E200DBDBD7001D232D002D79
      91009EB1BF0000206200547CA100F6F6F200000000006C6765000C0604000D07
      05000C0507000E08060062504800B9957F00C1A08A00C6A98F00AD9B8F001823
      3F001F243E001F243E001F253E001E233C001D253E001D243F001F2547002329
      5500282F65002E3E8A003B4BA7004B58BF004F5DBF006577D40088A0DA00B0C4
      EE00C4D4F200C0D0F400C3D0F700D0DAF700DCE1F900BDCDF2008EA3E3004345
      62001D1D45001C1F49001B1F4B000E123B001B215F004652A700808CCF008385
      CC00727DD0005562AC00FEF9E600F4EDDF00F4EDE000EEEBE400EFEBE400DAD6
      CF00B6B1AC00C7C3BD00EDE8E300CAC7C10072676500F7EBE800F2EBE700EFEB
      E400EEE6D900FFFFFB00B4AAA400BAB39A00E7E3CD00EEEBE600EFEBE400EEEA
      E300EEEAE300EEEEDF00DCDACD0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00DDDD
      DD00FFFFFF00FAFAFA00F6F6F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F6F600F9F9F900FDFFFF00FFFFFF00E3E4
      D8002D288E001D11F1002B24D600BFBCE700FFFFFF00FFFFFF00FFFFFF00F7F6
      F700F9F9F900FDFFFF00FFFFFF00FFFFFD00FDFFFD00FFFFFF00BCB9E5002721
      D5000A00D9008680E000FFFFFF00FFFFFF00F6F4DA00F9F4E000FCFAEF00FFFF
      FF00FFFFFF00FDFDFF00FFFFFF00E8EADB00ACA66A00AEA56700AFA66900B0A7
      6900ADA56800B0A76A00B7AD6E008B845D001008110062616200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F6
      F400F4F2F400F8F9F000F4F9FF0047CFF7003AE7FF003EE5FB0034DAFF0022C6
      FF000BA9FF00058EFF00006FF9000048A800001C500000225600002359000029
      61000029660000296600002A6700002A6900002A7000139AE700DDDEF800E6E5
      E500E8E7E700E1E0E000C1AFA500042D6000847B7600094383000958A8000E5F
      B1001169B6000E6BB7000F6BBB00116CBF00126FC3001371BD000F70C7000E70
      CF00E2DCDA00CED5D100DCD6DA00DEDBDA00E0DCDB00E2DFDE00A2BAC0004742
      4F008C91940084A6D000EFFAFF00FDF7F800000000006B6764000C0604000E08
      060011090A00110A0A0036272600BD9E8500CFB19E00DAC3B100E1D4BC00141D
      38001F243F001E243F001E243F001B213D001B2344001D2347001F244F002528
      5D002A337C003549A0004A62BD00566CC3005C76C900798FD700A1B4E400BFCD
      EE00C1D0F200C0D0F500BACDF200D1DAF700D6DDF500B6C7ED009AB0E800A4B0
      CD001B1C44001A1E4700191E4E00292C67001A215900454FA7006A73C6006B70
      C1005E6CC100BCC3D600F9EDE100F5EBE300F5EBE100F1EBE400F1EBE400F7F2
      EB00E4E0DA00C3BFB700ADA9A10079736E00B0A9A300F4EDE700EFEBE700EBEB
      E300F1E7DC00EAE7E3003F3C3800D1B99E00D7A77500F4EFE800EFEBE400EEEB
      E000EEEBE000EEEADC00C1BCAC0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1F100E0E0
      E000FFFFFF00F7F7F700F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F3F4F400FAFCFD00FFFFFD00FFFFFD007F7A
      DA001C11F1002924D800BBBAE300FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4
      F400FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFD00FCFFFC00FFFFFF00BCBA
      E5002821D7000A00DA00857ED900FFFFFF00FFFFFF00FCFFFF00F7FCFD00FFFD
      FF00FFFFFF00FFFDFF00FFFFFF00D8D5BD00AAA26200AFA46900AEA66800B0A7
      6800AEA66800AFA66800B6AC6C008C845D001107130064616500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F6
      F600F3F2F600F4FAF400FCF6F000CEEDFF0031D5FD003FE9F90045E5FE0034D7
      FF001ABDFB00069DFD000081FE000060D900002876000026610000286A00002E
      7400002D7200002E7400002E7400002D7500002A7500B4CFF300E9ECD000E6E5
      E500E6E5E500E9E9E900B4D1D900606A8C0012418100305B77000E599A000A66
      AA00106BB2000E6BB4000E6AB7000E69BA000D66B8001569B6000E66CD001E69
      B700E0D5C900D9CFD500D9D9D000DCD9D700DDDAD900E1DEDC00DDE7E4004E67
      69008F7E83008B888600FDF7F400FDF6F700000000006C6865000E080700100A
      080012080A000F080A0017090800EEE1D100EFE0CD00F2DFD600F2E6CA001B21
      4100212541001F2541001F2544001C2042001C2748001A234900232A6300292F
      72002B3A8E004056B7005679CF006583D600688AD90094ADE300B7C4EE00BFCA
      F200C0CDF400C0CFF500B6CCEF00C3D1F200CCD1F500ACBDE700B1C4ED00D7E3
      FE0012143F00161C4500181D4C0036398B000A1142004650A9006068C1005866
      B6004D57AA00FFF9E400F7EAE400F7EAE400F7EAE400F4EBE400F4EBE400F1EB
      E400F1EBE400F1EDE600C6C3BC00C9C1BA00C7C3BC00EEEBE600EEEBE600EDED
      E400EACDB300625244004E3F3500D49B7200C0734000F9EAD400EFEBE300EFED
      DF00EEEDDF00E3DCD000B1AA970000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E5E500E8E8
      E800FFFFFF00F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFDFD00F3F3F300FFFFFF00FFFFFD007E7ADA001307
      E3001E16CA0043416C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CCCBFF00322EEC001103DD00837DD800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D3CDA700B4AA6300B8AD6F00B7AE6D00B6AD
      6D00B6AD6D00B8AE6E00C3B67500918960000E070C0064616300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEFAF800FFEDF800F3F8FE00FFF8EA0037D5FF0058E5FB0046E6FF0040E0
      FE002AD2FD0009ACFF000993F8000072F300024CC3000025710000338C000037
      9100003892000039930000399300003C8C0000389B005585A500E9E5F000E9E9
      E900E4E4E400E2E2E200E8EBD600C5BFCD0009367A001A53810014437E000C66
      A3000A6BAF00116CB3000F6BB6000E67B3000E67BA001162B1000753B400B5C9
      CD00D6CDCD00DED7C700D4D4D900D7D4D200DDDAD900DDDAD900E8E5E400E0DA
      E700374D5100989B9400CFD6D600F2F6F60000000000736C6800130C0A000F08
      0600170C0C00160E0D0015070500FFFFF900F1E3D400EBDAD100E7D9C600252B
      49001E2746001F274A001E254C001D244E001F2855001B2357002C3987002C3C
      8A003648A7004460BF005C7DD6007392DD007A98E3009EBAEB00BFCCF200BCCA
      F200BFCDF400BAC9F100B1C6EE009BB7E800B0BDE700A0A9E300B6C1F500B9C3
      EA00282C59001B205000181D5100232765000E164900444AA1004B52A6004550
      A70092A0CA00F8EAE300F5EBE100F7EAE400F7EAE400F5EAE400F5EAE400F1EB
      E400EFEBE400EDE8E100FBF5EE00FCF8ED00C6C1BC00F2EAE600F2EAE400EAE8
      DD00C7BA8E0047302500844F3B00F8C08F00E38F5300EAD1B100F4EEE300F4EB
      DF00F7F1E400BDB4A300C6BDAF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00F4F4
      F400FFFFFF00E3E3E300D5D5D500F4F4F400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9F9F900FCFAF700FFFFFD00807BDA000C01DD002922
      D800241F4A00353228009F9C9D00A3A1A200A2A0A100A09D9F009D9B9C009E9B
      9D00A2A0A100A29FA100A2A0A200A3A1A200A2A2A200A2A1A300A3A1A200A2A2
      A400ACACA400716E99001E15CD00160DE4007470D000A5A4A300A2A1A000A3A1
      A400A2A2A300A3A2A500A5A2A300857E65007A704D007B714F007B724F007A72
      50007C7350007B72500082795300615A49000D070E0064616100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EEF6F900C7EBFB002EE1FB0054EAFE0044E5
      FB0037DCFF0019BCFF00079CFF000084F8000266E0000045B7000045B2000047
      B100004AB200004CB300004DB400004DB600004AB4000050A600E7E9EA00E2EA
      E600E6E9E900E8E6E500E7E1E700E4E6DA008997B400033B890015508E000544
      75001367A6001372B200126EB3000E64B1001069B6000A53BD006E9AC100D1CD
      C700D4D1D000D6D2D100D8D4D400D9D6D500DBD7D600DDDAD900E1DCD700E0DB
      D700B6C0CC007F847C00A8A1A100FDFBFB0000000000726A6700120908001910
      0F001B0F0E00180F0E001B0D0C00F2E4DF00EEDFD300EADAD000EADACD00393F
      6000212855001F265B001F276100222C7000273585002B388F003C50B000334B
      A4003D53BA004666C600668ADD0085A9E4008CADE8009EBAEA00C0CDF200BCCD
      F200B6C7ED00B3C1EF0092A9E4008BA6E3009AB3E600A0A7E3009DA6E40098A7
      E6008897D900191C56001F23620026286F002C35810032368500373F8E003641
      9500F4F1E700F5EAE400F5EDE300F7EAE400F7EAE300F7EAE400F5EAE400EFEB
      E400EFEBE400F1EBE600F2EBE400FFFCEB00B9B3A900F8E8E800FFF9EF00E7E6
      DF0076AF8800476F510064816500FCC09B00F5B98300E0AD7A00F4EDED00F4F1
      E800EEE6D900A9A08B00D9D0C40000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00DDDDDD00FDFD
      FD00FDFDFD00CDCCCC00B0AEAE00BEBDBD00F4F4F400FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FDFFFF00FCFCF700FFFFFA00817ADB000A00DA00322ADD00A9A7
      CB00312D2200342F30002E292D002A2427002A252800292427002B2629002C27
      29002C2729002D282A002E292C002F2A2D00312B3000302C2F00312B2F00322D
      3200352E3300423B3500413A6C001C15CF001208E10029218800383431002E29
      27002A2527002B262A002C252A002D272D002D2730002B262D0029242C002822
      2A002722290026202900262129002C252D00110A12005C5B5C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFF8EF00FFF3FA0052E2F30042E5FF004CE9
      FF0042E5FF0027CFFF000CACFF000294FF00007FF8000066E200005FDC00005F
      D900005AD200005BD500005ED600005CD9000061D4000058CD00579FE500F6EA
      E600E2E5DF00DEE2E500EAE4EB00E8EBE500F1EAED0064839800024398000D4E
      A300074874000B659D00106CAA000F6EB3000761AE001D60A400D4CFCF00C9CC
      C300D2CFCD00D4D1CF00D4D2D200D8D4D400D9D6D500DCD9D700DEDBDA00DEDA
      D600CBD0D50052595F008B8A8900FCF8F40000000000756B68001D100F002114
      13001B100E001A0F0D001F121000B3A4A000EFE6D700EDE4D000F7E3DF005F5F
      8E00262C6B001E2B8400283998003D55BF004860C1003F55B700415BBF003D58
      BC004460C700547DD6007FA1E4009DBDEB00A0BDEB00A4BDED00B3CAEB00B0C6
      EB00AFC1EA00A4BAEA0087A0E30095AAE7009EB6E8009EB0E3008898DF00798C
      DD009AB0E70023285F00191D620023277500363C9B00272C7000333C92006A79
      BF00F7EFDA00EFE7DD00F7EEE300F7EEE100F5EDE100F7EAE400F4EBE300EFED
      E000F5EDE100F7EDE000FFFFEE00F8F4EB00646A8000302E530053518300F1E1
      E00087B0A30083C49B003D8358008E8E7500F9C99D00C7733C00E3B48100EBC7
      AF00B4AF9B00C1B3A000E6DFD30000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F3F300E0E0E000FFFF
      FF00FCFDFD00FAFAFA00F4F4F400E3E3E300E0E0E000E1E1E100E7E7E700EFF1
      F100F9FAFA00FFFFFF00FFFFF9007D78D8000B00DB002D28DA00C3C2EC00FFFF
      F700A4A2A200989697009997980096929400999597009B9899009B9799009B97
      99009B9799009B9899009C999A009C999B009D999B009D9A9C009D9A9C009E9A
      9C00A19C9E008C8A8D007A766D008E8AB7003029DE00190DEC004942A800A3A2
      96009C9A9B009C999A009B979A009A979A009996990098959900979498009793
      9700959296009592950095929600979497008F8C8E00BFBEBE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDF4F300F2F6F100E2F1F60037DCFF004EE7
      FF0048E9FF0035DBFE001EC6FF000AA6FD000293FF000081F4000079F1000074
      EA000075EB000074EB000072EA00006FEC000375E200006AEC00005FD500B1D4
      F600F5E7D900E0E5EC00F2E1E400DDE6E600EFE4E700ECF0EA007189A6000246
      98000E5CA5000042720012619800126AA9000D6BB7005280B100CCC7BA00CBC6
      C400CFCCCA00D2CFCD00D3D0CF00D6D2D100D8D5D400DBD7D500D9D9D900DDD7
      D000C9C9C700909BB200989D9B00D9D9CF00000000007C727000211312002316
      14001C110F001A0F0D001E101000564D4B00F8EEE400F5EBDC00FCEAE8009495
      B90028399500324CB6004F72D600689DE3006185DA00415ABA00415BC000415C
      C3004B6ACF006691D90098B6EE00A6C4EF00A7C3F100A4BDEE00A4C0E700A3B6
      E7009EB4E0009DB3E40092A6E1009AAFE800ADBFE7009AAAE3008FA1E1007A8E
      D4008EA1DA006776B9001D216F002C308C00272C7C002D388C006C76CA00EEEA
      EB00F7EDE100EFE7DD00F1EAE100F5EFE100F7F1E300F5EAE400FBF1E100FFFE
      EA00FEFBE700FEFBEA007F80AA0038346E0016175D001D2091001A1E8A006273
      CA00A0A09100FFF9FB00EFFCEF0043724300F9B49200D3814E00D1774100CF7F
      4B00A09A8500D4C7B600F1EADF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E5E500E7E7E700FFFF
      FF00F6F9F900ECECEC00FFFFFF00FFFFFF00FFFFFF00FAFAFA00EDEDED00E5E5
      E500E7E4E000EDEFE4007570DA000C00DB002720D3009D9BC100FDFCE700FCFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BEBCBD00AFB0B100FFFFFF00BEBBE7002724D800170BE5008C88
      ED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F9F300F6F3F400F8F4FE00ACE7EB004CE7
      FF0047E9FE0035E6FB002DD6FF001EBCFE0009A3FF000092FF00018EFD000088
      F7000084F2000081F200017FF400027CF2000076EC000077EC00006FE400176A
      D500FCE7E600E7EAF300E3E4E400E6E5E500E7E6E600E7E6E600E8EDED00889C
      BC00004598001262C600053C6E00185C8C000864A900607E9C00BDBBC000CBC1
      BF00CCC9C700CFCCCA00D2CFCD00D4D1D000D6D2D100D7D4D200DCD9D700DCD9
      D700D9D6D500CCC6C600A4A39800D2D0D100000000007F737500211412002214
      13001E1312001B0F0E001C1010002B211F00FEF7F200F7EDEA00F9EEEE00D3D1
      DD003C5BC3006094DD0087B4E60092BDE3005A80CF00425ABF00465FC700455E
      C400527AD0007FA3E0009EBDF200A9C4ED00AAC4EE00A0BCED009EBAED008FAA
      E1008BA1DA0094A9E10097A6E100A0B0E600A4BAE3009BADDF00A3B6E300A3B6
      E3009AA6DC009DAFEA00363C9A00444CB000323D94002E379800BFC9E100FFFF
      F800F9F4EA00FFFFE800FFFCE600F1EFE100F4F1E600FFFEE800EEEEE3008E8B
      B3004C4C87004C4D880017195A001F217D003334AC00494DD6004951DA007FA3
      F500BFBDD100EAE7E300EBE1E3005183570060553F00F9C09200EEA46700C168
      3E00BDAD8E00E6DCCF00F4EDE10000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFDFDF00F4F4F400FFFF
      FF00F6F6F600BDBCBC00C0BEBE00CAC9C900D6D5D500E7E7E700FDFDFD00FFFF
      FD00FFFFFD007A74D7000800DA002D28D800B5B3E000DBDBCE00DBDBD900E1DF
      DF00B4B1B100B3B2B100E7E7E700FCFDFD00E8E8E800FCFCFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FFFD
      FD00FFFFFF00A09D9F00C5C5C400FFFFFF00FFFFFF00BFBDE7002924D3000800
      DB00807BD800FFFFFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6F6F400F3F2F300FBF4FA00F1F7FE0033DF
      F60045E9FF004FE9FB003CE1FF002AD1FF0017BAFF000AA6FE00069BFF000393
      FE00028AF8000288F8000081F7000280F600007AF0000077EF00006CE600005B
      DB00397BC600F3EDD600E8E7E700E6E5E500E9E9E900E7E6E600F8EBE400FBEC
      E600A1B7C40009589A00025AB60000478F000C47720013619B00BBAEB400B5B7
      B300C7C3C100CBC7C600CFCCCA00D1CDCD00D4D0CF00D6D2D200D8D5D400D9D6
      D600DBD7D600C7C4C40091918600C4C3C400000000007F737500221412002114
      12001F1312001D1010001E111000190C0B0000000000F9EFEB00F7EEEA00F8F7
      ED005F94DA0098BAEA00A6C0EE008BB1E100557AD100415CBF004A6BC9005076
      CF006595E10097B4E600A3BDEF00A9C3EF00A4BFED009BB9EB0094B6ED0083A6
      E3008095DC008198D90097ACE000A4B4E700A1B3DD00ACBCE800A7B9E300A3B6
      DF00A3ACE1009DACE4005A65C4006277C6005964CF004F59B400393D7D004F50
      950042498F00545A9B009A9DC300F4F7ED00FEF8F100ADB3C4003D4180002125
      6A00232A84002C329400272A92004246C700656EE600A9B0ED00B3BDF400DFE1
      F800CDE3E600EBE7DD00EDEEE600F5EAE4002D573900E4B38500F9C49800D98B
      5800CAAA8500EFEBDD00F2EFE10000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00DDDDDD00FDFDFD00FFFF
      FF00E1E1E100D8D8D800DFDFDF00D8D7D700C1C2C200B5B6B600C1BFBC00F1F4
      E1007670D7000B00DD002923D200BDBBE100FFFFFF00FFFFFF00F7F7F700EDED
      ED00E1E0E000CECECE00DADADA00DADADA00B5B4B400AFADAD00DEDEDE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFC00FFFF
      FF00F4F4F40093929200E4E4E400FFFFFF00FDFFFD00FFFFFF00BFBDE7002B24
      D6000A00D900817ADA00FFFFFC00FFFFFF00FFFDFD00FDFFFD00FFFFFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5F2F400FAF6F600F3F2F300FFF1F400BFE9
      FB003BDCFD0045EBFF0043E6FB0037DEFE0026CDFF0015BBFB0008A6FE00069B
      FF00038FFD00028AFA000184F800007EF600007BF3000077F1000066E2000040
      BA00002F98007B98C600E6E5E500E7E6E600E8E7E700E8E7E700E1E5F100E7E6
      E700EAEAE700E0E5E7003F5F8900B1C7E600D4CDC300244971001A598000BDAE
      AC00C1BDBC00C2BFBD00C8C4C300CBC7C600CFCCCA00D2CFCD00D7D4D200D7D4
      D200D8D5D400CECFCF009DA09300D3D7D700000000007F737600211412001F12
      100021141300201212001F1211001D0E0D00F7F4EF00F5F2ED00F9F5EE00FEFE
      F5007FADDD00A9C0EA00AAC0EF007FA6DF005279D9004261C4005681D4005E8B
      D400739EE400A1BDEA00A7C0EE00A6BFEE00A0BAEB0095B4E8008CB3E80080A4
      E0007F9ADC007C94D9009EB7E800B0BFE700ACBAE600B0BFE8009AADE0009AA4
      DA00A7B0E300B0BAEE00919BE0008A9ADA007283DA007687D6002E338E002E32
      8F002C3695002B338B002D378A004F57980049467D001F266500272D8B003E46
      AD00525FC300606FD600585FCF008892ED00BAC0F800EAE7FE00EDEFFB00F8F7
      F800EAEDEA00F9EEE3009E987D00FFCDA300BAC69800B0916100FBC7A000EBAC
      7300D9AD8300EFF1E300F1EFE10000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4F400DEDEDE00FFFFFF00FFFF
      FF00DADADA00B8B8B800B2B2B200D0CFCF00EDEDEF00EAE8E300E4E5DF007B74
      D9000A00DB002B26D600BFBEE800FFFFF100E5E5E400E4E4E400EAEAEA00F4F4
      F400FCFCFC00FFFFFF00FAFCFC00EFEFEF00E8E5E500D1D1D100D5D5D500E5E5
      E500EFEFEF00F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FFFF
      FF00D5D3D30098969600FFFDFD00FFFFFF00FDFFFD00FAFFFC00FFFFFF00C2BE
      E7002A24D7000900DA008079D800FFFFFD00FFFFFF00FDFFFC00FDFFFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6FAFB00FDF2F400EDF7F400F3F9F300F6F4
      F6007EE1FF0045DAFE004DE7FF003EE0FF002DD5FF001FC7FF000BB2FF0007A3
      FF000491FE00018AFA000081F600007CF3000079F100006FE700004ECA000038
      9700003A9D0000359700CCD5DB00EEEBEB00E3E4E500E7E5E600EAE9DE00E6EC
      E900EAE9E400E7E6EB00E4E6E400A8B3AF00ACB8BA00E2D4C100889FAE00123D
      6100B1AFAF00B9B6B400C2BFBD00C7C1C000CBC7C400CFCCC900D6D2D000D4D1
      CF00D3D1CF00ABB4B600969C9300E7ECEB0000000000817677001F1210001F12
      100021131200211413002113120021141200B1A7A100F5F8F200FCFBF900FFFF
      FC009EBADD00ACC4ED00A4C1EE007AA3E300547FD7004A70CF00638EE00077A0
      E00080A4E10095B7E800A1BFEF009EBAEB009BB9EB008FB0E80083A7E10083A6
      E3007D9EDA00819EDF008BACE000B0C0EA00ADC1EA00A6B6E80091A7E00098A7
      E000B4BDEE00BCC1EE00ACB6E8008A9BDF00859DE1008198D9004B56B9004D5B
      C6005362C1005363BF004D5CBC003B44A7001D207A0030399D004653BF007388
      DD00A0ACED00A7B6ED00B6C3F200CDD0F400E8EBF900EFF4F800F8F8F800F4F2
      F200D4CFB700EDEBE3005E4B4400AC7F6000B4856C004E724A00F4BA9200F7BC
      8500D7975E00EEEFE700F4EFE70000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8E8E800E5E5E500FFFFFF00FCFC
      FC00C3C3C300C2C2C200C2C2C200D7D6D600F9F9EF00FFFFFC007671D9000800
      DA002F29D600B6B5DF00FAF9E800ECECEC00F3F3F300F4F4F400F3F3F300ECEC
      EC00E7E7E700E4E4E400E7E7E700F1F1F100FAFAFA00FFFFFF00FFFFFF00F3F3
      F300E7E7E700E1E1E100E0E0E000E4E4E400ECECEC00F4F4F400FCFCFC00FFFF
      FF00B5B5B500ABA9A900FFFFFF00FDFFFF00FDFFFC00FCFFFC00FCFFFD00FFFF
      FF00BFBEE7002924D8000A00DA007E7AD900FFFFFC00FFFFFD00FDFDFF00FFFF
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F300F5F4F600ABE7FD0024D1F90022D1FE001BC7FF0014B8FF0002A6FF000196
      FE000088F700269BF40068B6F400A1D2F000F3F9FD00EAEDFB000A4E9C000051
      BF00005BCD00005CCF00035BB3007DACE600EFECDA00EAE4F100E1E6E400E3EB
      E900E7E9E600E6E5E600E4E4E400EAEAEA00E1E4E200BEBFBF00A7A5A500B9C3
      C000505C690098989D00AFACAA00BEBBB700BFBCBA00C8C4C100CEC9C700C7C4
      BF00B5C4CA0037678C008B9CA600FFF9F80000000000847979001F1210002113
      1200211413002214140023161500211412005B4E4C00F8FBF700FBFBFB00FCFB
      FB00BCD0E800ADC6EF00A1C0ED007AA1E6005581D9005B8EDD006E9DE00080AC
      E40087AAE7008FB6E7009ABAED009BB9EB0098B7EB0085A6E1007DA0DD007DA1
      DF00779BD70084A3E00083A4DA00A4BFE800A9BDE7009DAFE60094AAE3009EB0
      E700C0CDF200CAD0F100C1CDF2009EA9E600A4B9E700A6BCE6007D94DF006C85
      D6008095DC0085A1D700798FD4005B6AD100373FAD006176D7007D8FDF00B4C1
      EB00D4D3F500D9D9F400D7DDF400E1E3FF00E7EAF700E6EBEF00FBEDEA00EBD4
      B000A0A06E00F8F5EE00BDC1BD00C3C3B600C6C0BC00415D4100E7A68100F9C0
      9400C76F3F00F9E7D300F5EFEB0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0E0E000F1F1F100FFFFFF00F6F4
      F400DBD9D900CFD0D000C7C7C700C1BFBB00C7C9C0006E68D3000D01DE002A24
      D500BAB8DE00FFFFF600F4F6F400F3F1EF00EAEAEC00E7E7E700E5E5E500EAEA
      EA00F1F1F100F4F4F400F3F3F300EDEDED00E7E7E700E4E4E400E7E7E700EDED
      ED00F7F7F700FDFDFD00FDFDFD00F6F6F600EAEAEA00E8E8E800FDFDFD00FFFF
      FF00A0A0A000C4C3C300FFFFFF00FFFFFF00FDFFFD00FDFFFF00FFFFFD00FCFD
      FF00FFFFFF00C1BFE8002D24D5000900DA007E79D800FFFFFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F6
      F400F3F9F200FFF8F800F4F4F700D7F3FE00CCEAFF00D7E2FE00D1E4FE00CCE5
      F900FCF7F400F4F3F000F4F7F100FDF3F000FDFBFF00004FB6000360E1000075
      EB000077F0000076F000006EF600006FDE004CA1E000FFF1E600EEE4E200E8E9
      E600E6E6E600E2E1E100E6E5E500E6E5E500E3E2E200E7E5E500DEE4E200C5C9
      C700989B9B0071767F00484D5300787B80009A9DA300ACAEB300B1B4BA00969F
      A600486079008798A600F4F2F700FFF3F40000000000837A75001F1210002113
      1200221413002315140025181700211412002F201F00FBFFFE00FBFBFB00FBFB
      FB00D1E4EE009EC1F2009BB9EE007DA3E800638FE00079A4E3007FA9E3007DA9
      E40085A9E6008BB3E80094BAEF008FB6EB008AB0E70083A6E700799EE1007A9E
      E100779AD70081A6DF007FA4DA009BB6E000A4BDEB0097ADE60097ADE600A3B6
      EA00C7D0EF00D3D9F100CFD4F100C0C6EE00C6D0EE00C4D1EE00B0C6EB00AABC
      ED00A7BAEA00B6C7E600A9BAE60094A6E100768CE100AABDEF00BFC6ED00DADC
      F400E6E3FC00E4E3FC00D7DAF900D1D9EE00E0E1EB00EDEEDF00EBCDAD00E18F
      580067834E00FCEFDF00B7B1B400F9D4AC00F9E7D30063574600A0875F00FEBA
      9800D3734100DFB17F00F2F2EB0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00DDDDDD00FCFCFC00FFFFFF00EAE8
      E800BFBCBC00C1C0C100D2D2CD00F7FCED00716BD6000900DB002C26D100C2C0
      E700FFFFF700EAEAEA00E5E5E500E7E7E800EAECEC00F1F1F100F6F6F600F3F3
      F300EDEDED00E7E7E700E5E5E500EAEAEA00EFEFEF00F4F4F400F4F4F400F1F1
      F100E8E8E800E5E5E500E4E4E400EAEAEA00F6F6F600FFFFFF00FFFFFF00F9F9
      F90093939300E1E1E100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FD00FDFDFD00FFFFFF00C1BFE8002D24D6000A00D9007E76D900FFFFFC00FFFF
      FF00FDFDFD00FDFFFD00FFFFFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F4
      F300F9F3F700F2F8F400E8FBF200E7F6F000F2F9F300F6FAF900E6F2F800E4F3
      F900FFF4F600FFF3F300FDF3F000FBF7F4001D69BD000074FA000083F0000088
      F6000189F8000285F900008EED000072F4000075F000298AE400CCE0F600E6E6
      DE00E8EBEC00EAEBEA00E7E6E600E4E4E400E9E5E600EDEAEA00E4EBEA00E7E4
      E500E3E0DF00C1C0BC00898A860079777700706F6F006A69690090969700ABAC
      A800DDDFE200F6F8F100F8F4F300F4F4F700FEFEFE0083797600211312002114
      1200211412002315140023141300241614001B0C0B0000000000F9F9F900FBFB
      FB00EBF1F70091BCF1008EB0EB007FA6EB007CA6EA0088AFE7008AACE70083A7
      E3008CB0EA0091B4E80097BAEE0091B4EA008CB1E80084ACEA00769EE00084A3
      E30081A4E10080A4DF0081A6DF009BB7E4009BB4E70092AAE40095AAE600A3B4
      EB00C1CAED00D4D9F400D4D9F500CFDCF100D6E1F500D9DFF800CFDCF400CCD7
      F500C7D3EF00C6CFEE00BAC6EB00B6C0EA00ADB7EF00C9D0F400D7E0F400E3E8
      F800DCE4FB00D7E0F900D7DDEF00EAEAEA00F2EEE700F1EBD700E1AD7F00EB9D
      6100B1B67700BD9D7D00F7EBE8006C544300E7DAD000B4795E0051724600E1A0
      7900E0975F00D08E5800F4F4E800FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F4F4F400DEDEDE00FFFFFF00FDFDFD00FDFC
      FC00FFFFFF00FFFFF700F1F1E5007672D9000900DB002D29D600BBBAE100F9F9
      E700E5E5E500ECECEC00F3F3F300F6F6F600F1F1F100ECECEC00E7E7E700E5E5
      E500E8E8E800F1F1F100F6F6F600F4F4F400EFEFEF00EAEAEA00E5E5E500E7E7
      E700ECECEC00F3F3F300F4F4F400F1F1F100EAEAEA00F7F7F700FFFFFF00D8D8
      D80095959500FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFFFD00FAFFFC00FFFFFF00C3C0E7002B25D7000800DA007E76D800FFFF
      FC00FFFFFF00FFFFFC00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5F6F60000000000F6F6F400F5F6F4000000000000000000F5F6F6000000
      0000F2F8F100FAF1F400ECF7F400E3EFFF000079EF00078CF6000A8DFF000698
      FF00069AFF000496FF000496FD00028FF800048CF8000285F2000772E9009DC9
      EC00FAEBE500E7E2E000E1E5E700E0E4E500E4E4E100E6E6E500E8E6E600E6E5
      E500E7E6E600E7E6E600E7E6E700EAEAEA00EAEAEA00EAEBEB00E8E7E700EAEB
      EB0000000000000000000000000000000000FCFCFC0081757600211412002114
      1200231614002416150026171600251615001B0D0C00FFFEFC00F9F9F900FBFB
      FB00FEFEFC008CB3EB0085AFEE008FB1ED009BB7E7009EBAE4009AB3E40094AF
      E1008FAFE60094B3E80095B4EA0092B4E8008FB1E80083AAE70080A6E40081AA
      DF0084A7E6007DA1E00081A4E3008FB0E4008EACE300839BDC00889BDD0098A7
      E100BAC6F100D4D7F700D6DCF500D0DDF500DDE6F700DDE6F700DAE3F500DADD
      F700D4D7EF00CDD7F200C3CCEE00BAC6EE00B4BFEA00CFD7F200DCE4F700DCE6
      F800D9E0F100DCE3EF00F7F1ED00FCF4ED00FBEFE800EEE4D000F9C38F00FFC4
      8F00F7C791005C774E00CF9E7F00DDD9D400F1EFE400F2BC8A0052874E008B80
      5400FFC08800DFAF8400F7F1EF00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E8E8E800E5E5E500FFFFFF00FFFFFF00A5A4
      A40085857F00BABBB7007671DF000A00DE00302AD800CCCBF400FFFFFF00FFFF
      FF00F9F9FA00EFEFEF00E7E7E700E4E4E400E5E5E500EAEAEA00F1F1F100F4F4
      F400F3F3F300EFEFEF00E8E8E800E4E4E400E8E8E800EFEFEF00F3F3F300F6F6
      F600F1F1F100EAEAEA00E5E5E500E5E5E500EDEDED00FDFDFD00FFFFFF00B9B9
      B900A7A7A700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFF
      FF00FDFFFC00FCFFFC00FDFFFD00FFFFFF00C1C0E8002A26D8000A00DA007C75
      D900FFFFFC00FFFFFD00FDFDFF00FFFFFD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F3FB00EFF4F800FDF3EF004FA3E6000093FF00069BF8000BAAFF000AAD
      FE000CADFF000AA9FF0006A4FF00049DFF000498FF000091FF000185F6000072
      F8002888D500E1E1F800E8F0E900E3E4DC00F1EBF400E9E9E900E8E7E700E7E6
      E600E7E6E600E7E6E600E7E6E600E8E7E700E8E7E700E6E5E500E9E9E9000000
      0000F5F4F400000000000000000000000000FCFCFC007F737200231614002315
      14002316140023161500281918002718160021121200CCC3C00000000000FBFB
      FB00FFFEFC00A4B7E300A6B7EA00C0CDE700DADDEB00DAE0EB00CAD0E400C6CC
      E300B9C7E300B0C3E400A9BFE100A0B9DD00A0B9DF00A1B4E4009BB0E00094AC
      E0008AACE4008CACE4008EACE40085A3D7009DB4E70095AAE3008A9EDF0091A0
      DC00BFCDF200D6DCF200D4DDF400D1DDF500D7E1F700D7E1F700D9E1F700D6DF
      F700CCD6F400C3D3F200B9CAEF00B1C3EA00B1C4E700D3DDF500D7E0F500DCE3
      F100F2EEEF00F5F1EF00FCF4EA00F9F2EB00F9F2EB00EFE8DD00E1B39100E8B1
      8700FCC4950075A0650060794E00EDC7A300F1C49800FBC491008FAA6B005A75
      4900E7AD7900EFD4B700F4EDEA00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E0E0E000F3F1F100FFFFFF00FCFCFC006E6C
      6800595854003E3AA8000C01DF002F28D7008988AC00C7C6BD00C9CAC900E4E3
      E100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00F4F4F400EAEAEA00E4E4
      E400E4E4E400E8E8E800EFEFEF00F4F4F400F4F4F400F1F1F100E8E8E800E7E7
      E700E5E5E500ECECEC00F3F3F300F4F4F400F1F1F100FCFCFC00FFFFFF00A2A2
      A200BFBFBF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFFFD00FDFFFF00FFFFFD00FCFDFF00FFFFFF00C4C1E8002E26D5000800
      DB007B75D800FFFFFD00FFFFFF00FFFDFF00FFFFFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFF9F700EEF9F900FDF4F7001796F400039BFE000DB4FB0015BFFF001AC3
      FD001BC4FF0019C0FF0012B7FE000EAFFD0007A5FF00009AFE000293FF000689
      F4000372FA00005FC300437FC700ECEBFA00EEEBDC00E2E1E100E4E4E400E7E6
      E600E7E6E600E7E6E600E8E7E700E7E6E600E6E5E500E8E7E70000000000F8F7
      F700F8F7F700000000000000000000000000FCFCFC0080767200231615002316
      140022141300231514002617160027181600221514006759580000000000FBFB
      FB00FFFEFE00DFDFE800D7D7E400EBEDEA00FBEFED00FBF2EB00F8F5ED00F8F8
      EE00FEF7ED00FBF7EE00F7F4EE00EDEFEE00EAEEEE00E8EAEE00E6E8EB00DDDD
      E700B3C6DF00A9BDDF00A1B3E10097AADC00ACB9E30095A9E000859ADA0094A3
      E100C4D4F400D9E1F100D3E0F400C9D4EE00CCD7F100CAD7F100C7D4F500C1D4
      F200B6CFEF00B6CCEE00A9C0ED00A7BAEE00B3C9F200CCD1F700DADDF100F4F1
      F200FCF2ED00FCF1EB00FBF2EB00F8F2ED00F7F2EB00F9F4F7008E807300E0BD
      9700D9A36F00B49773008BAF7600C69A6600FFC49500FBC08F00D1B78800557C
      4E009B9A7F00F2DABD00EFE8DF00FCFCFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DFDFDF00FAFDFD00FCFFFF00FFFFFC00ECED
      E100655ECC000C00E000342DDA007A74980094938600888786005C5B5B00B2B1
      B100A7A7A700C7C6C600B8B8B800C7C7C700FAF9F900F6F6F600FFFFFF00FFFF
      FF00FFFFFF00F7F7F700ECECEC00E5E5E500E4E4E400E7E7E700EDEDED00F4F4
      F400F6F6F600F3F3F300ECECEC00E4E4E400F1F1F100FFFFFF00FAFAFA009493
      9300DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFD00FDFDFD00FFFFFF00C2C1E8002E26
      D6000900DA007C74D900FFFFFA00FFFFFF00FDFDFD00FDFFFD00FFFFFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5F8F100F3F8F800FFF8FD000996F60012B3FD0017C9F80026D2FE002CD7
      FF002DDAFF002BD4FF0026D1FD001EC6FE0014B8FF0008ACFB0005A1FD000394
      FF000185F6000071F0000055D50089BBE900FDF8F100F4F3F300EEEDED00ECEB
      EB00E6E5E500E6E5E500E4E4E400E9E9E900F2F1F1000000000000000000F5F4
      F400F5F4F400000000000000000000000000FCFCFC007F767200271916002516
      150025171600261716002718140027181800211413002F1F1F00E1DFDA000000
      0000E4E6E600DDDDD900DDDFD600E6E7E000F1EDE600F4EEEA00F5EFEA00F4EF
      EA00F7F2EB00FBF7EF00FBF7EF00FCF7F100FEF8F100FEF9F100FFF9F100FFF9
      F100FCF5F400E7EAEF00D6DCE600E1E0EA00DFDDE600C7CCE400B0BCE000A1AC
      E000BCC9ED00C6CFED00CDD6EB00D0DCE700D9E0EB00D9E1ED00DAE1EE00DFDF
      EA00DCDFE700E0E0ED00CCD4E700BAC6E600BFC9E800D6DDEE00F2F1F200F7F2
      EB00F8F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00FFFFFC00A19D9500FFEE
      CD00B17F5300875F5100BC9D6F0058855700EBA38700F4BC9100F2F1E7005F8E
      600056B0AA00F5DAC000F7F2E400FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9F9F900E4E4E400FAFAFA00FFFFFF00FFFFFD007B75
      DE001002E0002F2AD600C9C6EC00DFDFD500BCBCBC00ABACAC00C0C0C000B1B1
      B1007372720084828200807E7E006D6B6B00888787009F9D9D00B3B1B100D7D6
      D600DEDEDE00EDEDED00FFFFFF00FFFFFF00FDFDFD00F7F7F700EFEFEF00E8E8
      E800E4E4E400E5E5E500EAEAEA00F3F3F300FCFCFC00FFFFFF00DBDADA009594
      9400FAFAFA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00F9FFFC00FFFFFF00C5C2
      E8002C27D7000700DA007C73D800FFFFFC00FFFFFF00FFFFFC00FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3F7F400F6F7FB00FFF4F60012A4F80014BDFF0029DAFF003ADEFF003BE5
      FF003FE6FF0042E6FF003BE1FF0031D9FF0021CCFF0014BBFF000EADFF00059D
      FF00048CFF00007CEF00005EE000A3C4E900F4F7F600F8F7F700F8F7F700F3F2
      F200000000000000000000000000F9F8F800F9F8F800F5F4F400000000000000
      000000000000000000000000000000000000FCFCFC007F757200281A16002415
      1400291A1900271817002618140023161500231615002311110065545300A6A6
      A100CCCACA00CFCFCD00D3D4CF00DADCD700EAE6E000EFEBE600F2EEE800F4EF
      EA00F7F2ED00F9F4EF00F9F5EF00F9F5EF00F9F5EF00FBF7F100FBF7F100F9F5
      EF00FBF2F400FCF5F100F8F7EA00FEF8EA00FBF5E800FEF5ED00F8F5F200E3E3
      EE00DFE1EB00E7E7ED00F1EEEB00F4F4EB00F9F2EB00F9F2EA00FCF4ED00FBF1
      ED00FCF2EE00FEF5EB00FEF5ED00F8F2ED00F7F1EB00F7F5EA00F8F4EA00F7F2
      ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00FCF8F200D1CFCA00CCC0
      A9008E654A00C7AC9D00B4856600A6B376005A794E006C9BA000DCF2EA005288
      600052A69700FCEBDD00F7F1E400FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFDFD00F3F3F300F1EFEA00F4F6EC00716DDA000700
      DA002F28D300C7C5E800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEA
      EA00CDCCCC00BEBDBD008F8E8E009E9D9D0086848400BEBDBD00767474006260
      60007C7D7D00A7A7A700FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FAFAFA00F1F1F100ECECEC00FCFCFC00FFFFFF00BDBCBC00A5A4
      A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFC00FDFFFD00FDFFFD00FFFF
      FF00C3C2E8002C27D8000900DA007973D800FFFFFC00FFFFFF00FDFDFF00FFFF
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6F8F200F4F3F900FFF7F7002AB2F4001ECCFF0036E2FF004BE2FF004BE9
      FE0054ECFD0060EFFF0058EFFF0045E4FF0031DAFF0022CDFF0015BBFE0009A9
      FF000592FF000284F900006AE600E4F2FF00EAF7F4000000000000000000F9F8
      F8000000000000000000F5F4F400F4F3F300F5F4F400F8F7F700000000000000
      000000000000000000000000000000000000FCFCFC0081757200281B16002718
      17002618170024161500251716002315140023161400261716002C1818008379
      6B00DCD3D600D1CDCF00CFCFCF00D1D3D300E1DADA00E8E1E000EFEBE600F1ED
      E700F2EFE800F5F1EB00F8F4EE00F9F5EF00F9F5EF00FBF7F100FBF7F100FBF7
      F100FBF7F100F9F5EE00F8F5EF00F5F2ED00F5F2ED00FBF1ED00F8F2EB00FEF5
      ED00F9F5EE00FEF5E800FCF2ED00F7F2EB00FBF1EB00FBF1EB00FBF1ED00FBF1
      ED00FBF1ED00FBF2EB00FBF4EE00FBF2EB00FCF2EB00FBF1EB00F7F2ED00F7F2
      ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F8F5EF00E6E0
      D6007F655400A18C8700AC9E8F00F9D9C3006FA77500266F5500448353003081
      6200B7CABD00EEEDE600F5EDE600FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFFFF00FFFDFD00FFFFFF00FFFFFD00736ED8000700D900302A
      D600BFBDE400FFFDEF00EAEDEC00F1F3F100F7F7F700FDFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00D1D1D100CBCBCB00B1B1B100ACAB
      AB00A1A1A100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFFFF00A4A4A400BDBC
      BC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFD00FFFFFF00FFFFFD00FCFD
      FF00FFFFFF00C6C3E8003028D5000800DB007972D800FFFFFD00FFFFFF00FFFD
      FF00FFFFFD00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F7EC00F3F2FA00F9F4F20050CDFD0026C3FA0039E7FF0044E7FD0057E9
      FF0064EAFF0075F0FF006EF3FE0057EBFB003EE2FF002EDBFF001DC7FF000DB2
      FF00069AFF000980FD00005AD700FDF2FD00ECF7F6000000000000000000F5F4
      F400F8F7F700F8F7F70000000000F8F7F70000000000F4F3F300000000000000
      000000000000000000000000000000000000FCFCFC007F726F00271916002516
      160024161500231514002214130023161600251815001D0D0C0029181600E4DA
      D000E6DFDF00DAD6D400D6D4D100D4D3D000D9D1D300DCD6D600E8E6E100EBE8
      E400EFEBE700F5EFEB00F7F2ED00F8F4EE00F9F5EF00FBF7F100FBF7F100FBF7
      F100FBF7F100F9F5EF00F9F5EF00F8F4EE00F8F4EE00F9F1ED00F7F2ED00F9F2
      EB00F7F2ED00F9F1ED00F9F1ED00F7F2ED00F9F1ED00F9F1ED00F9F1ED00F9F1
      ED00F9F1ED00F9F2EB00F9F2EE00F8F1ED00F9F1ED00F8F1ED00F7F2ED00F7F2
      ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F5F2EB00F7F4EE00FCFB
      F200DFD6CD00FBF1EF00EFEEEB00F5F5F500FFF8F100A1C7A90081BFA30084D4
      C400FFF4EF00EDEFE800F4EEE800FCFCFB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FCFDFD00FFFFFF00FFFFFC00746ED9000700DD00302BD300C7C5
      EA00FFFFFF00FDFDFD00F7F7F700F1F1F100EAEAEA00EAEAEA00EAEAEA00EFEF
      EF00F6F6F600FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD0093939300DADA
      DA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FD00FDFDFD00FFFFFF00C4C3EA003028D5000900DA007971D800FFFFFA00FFFF
      FF00FDFDFD00FDFFFD00FFFFFD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5F4FA0015BCFF0052E2FE0052E9FF005AEB
      FF0068EBFF0069EDFF0064ECFF0058E9FF0046E7FF0039E1FE0021D4FF0012B4
      FF000EA0FF000085FA003A94EB00FAF8F000F4F6FA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB007D726C00231614002315
      140023161500211413002214140023140E00281D180081726F00C6BCBA00FCF5
      F100EFEBE600E8E4DF00E3DFD900DCD7D000D9D1D400D4D0D100D7D9D900DDDD
      DD00EBE4E600F1EBEA00F4EFE800F5F1EB00F9F5EE00F9F5EF00FBF7F100FBF7
      F100FBF7F100FBF7F100FBF7F100F9F5EF00F9F5EF00F7F2ED00F7F2ED00F7F2
      ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2
      ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2
      ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F8F1EB00FBEFE300F2E6
      D400F9EDDC00F7F2DF00F2EBD900F2EBD700F5EEDC00FFEFE700FFF2EA00FFEF
      E700F5E4D700F1E7D300F5EBDA00FBFBFB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFF00FFFFFD00FFFFFD00736DD8000800DA002F2BD500C9C7EA00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00F9F9F900F3F3
      F300ECECEC00EAEAEA00EAEAEA00EFEFEF00F6F6F600FCFCFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE0093939300F9F9
      F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFF
      FF00FDFFFD00F9FFFA00FFFFFF00C6C4E8002D28D7000500DA007970D800FFFF
      FC00FFFFFF00FFFFFC00FDFFFD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFF8F20087D2F0002ADCFF0047E2FF005EEA
      FF006AEAFF0069EAFF0066EAFF0059E7FF004BE7FF003FE4FF0027D1FA0013B7
      FE00029DFF000079F200E7EAF100F1F0F000FBF8F90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB007A6F6B00201211002315
      140023161500231514001D0F0C0041332E00D1CAC3000000000000000000F8F4
      EE00F5F1EB00F2EEE800F1EDE700E6E1DC00E3D9D700DCD4D400D3D1D300D4D3
      D400DDDADC00E8E4E400EFE8E700F2EBEA00F5EFED00F8F4EE00FBF7F100F9F5
      EF00F9F5EF00FBF7F100FBF7F100FBF7F100F9F5EF00F8F4EE00F8F4EE00F8F4
      EE00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2
      ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2
      ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F9F1ED00F8EAE600E3CCC100CFB4
      9100E4C9AA00EACDB600D7BDA600DFC7AC00DFC7AD00D7C4A900E1C1A700E3C3
      A900DFC3A300D7C7AF00EEDFC600FBFBFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFD00FFFFFC00726DDA000500DA00312BD500C9C7E800FFFFFF00FDFF
      FC00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9F9F900F3F3F300ECECEC00E8E8E800EAEAEA00EDED
      ED00F4F4F400FAFAFA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BEBEBE00A2A2A200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFF
      FF00FFFFFC00FDFFFD00FDFFFD00FFFFFF00C5C4EA002D29D7000900DA007670
      D800FFFFFC00FFFFFF00FDFDFD00FFFFFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F4F300F3FAFE005BDCEF0043DCFF0050E7
      FF005EE7FF005DEAFF005EEAFF0050E7FF0042E6FF0036E0FD0020CDFF0008B2
      FF00068DE400ABD7FB00F4FAF300FFF3F300EDF4F80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB007A726C00211412002516
      16001C0E0C002316140077686000F8FBF40000000000F9F7F100F5F8F200FCF8
      F200F9F5EF00F7F2ED00F5F1EB00F1EDE700EEE4DF00E6DCDA00D9D6D600D4D4
      D400D6D6D600DDD9DA00E7E0E300EEE6E800F1EBEB00F5F1EA00F8F4EE00F9F5
      EF00F9F5EF00FBF7F100FBF7F100FBF7F100F9F5EF00F9F5EF00F9F5EF00F9F5
      EF00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2
      ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2
      ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00FBF1ED00CFCAC3009B918B00A79E
      9200C3BCAF00B9AFA400B3A99E00B6AC9B00B3A99800A79A8C00B6A79A00ACA7
      9D00B7ADA100C0B7AC00F7EEE600FBFBFB00FFFFFF00FDFFFF00FFFFFF00FFFF
      FF00FFFFFC00726CD8000700DA00312BD600C9C7EC00FFFFFF00FCFFFD00FFFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00F6F6
      F600EFEFEF00EAEAEA00E8E8E800EDEDED00F3F3F300F9F9F900FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3A3A300B8B8B800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FFFFFD00FCFDFF00FFFFFF00C9C5EA003129D5000700
      DB007570D800FFFFFC00FFFFFF00FFFDFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F3F100FFFBF200F8F6F90094D4E60035DE
      FF004CE7FF004EE9F8004EEBFF0047E5FF003CDFFF0030D5FE000CBAFD000093
      F300ACE4FF00F5F4F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB0075686500190D09002416
      0F0062584E00BAB6A60000000000F9F5EE00FCF8F200FCF9F400FBFBF900F9F9
      F800F9F8F800F8F7F400FEF8F200F8F4EE00F7F1EB00EDE7E100E1DFD900DFDC
      D600D9D3D400D6D1D300D7D6D600DDDDDD00E4E1E100EFE8EA00F4EEEA00F7F2
      ED00F8F4ED00F8F4EE00F9F5EF00F9F5EF00F9F5EF00F9F5EF00F9F5EF00F9F5
      EF00F9F5EF00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2
      ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F2ED00F7F1EB00F5F1
      EA00F5F1EA00F5F1EA00F7F2ED00F7F2ED00F8F2ED00E3E0D900DCD9D100E3E0
      DD00EDEAE600E8E7E100F2EFEA00F1EFE800DDDCD400EDE7E300EAE6E100E6E4
      E000EEEBE800EFEBE400F4EFEA00FBFBFB00FCFFFF00FDFDFD00FFFFFF00FFFF
      FA00726CD9000500DD00312CD300CAC9EA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FCFCFC00F6F6F600EFEFEF00EAEAEA00EAEAEA00ECEC
      EC00EFEFEF00F7F7F700FDFDFD00FFFFFF00FCFCFC00AFAFAF00E1E1E100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFD00FDFDFD00FFFFFF00C6C5EA003229
      D5000800DA00766FD800FFFFFA00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F3F800F4F9F900F8F2F300F3F8FE00E3ED
      F80037D6EA0024D4FD002DD5FF001FD2FF0016C4FE0011AEF70060C1F800F6F3
      FA00FDFBF700F5F6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00A99E9B004F474200BAB4
      A600FFFFF700FEFFEF00F7F2ED00F7F2ED00FBF8F200FCF9F500FBFBFB00FBFB
      FB00FBFBFB00F9F9F800FEFBF500FEF9F500FBF8F200F7F4EE00F2EEE800F1ED
      E800EBE4E700E7E3E400E1E1E100E1E3E300E7E6E600F2EBED00F4EFED00F7F2
      EE00F9F7F100F9F7F100FBF8F400FCF8F400FCF8F400FCF8F400FBF8F200FBF8
      F200FCF8F400F9F7F100F9F7F100F9F7F100F9F7F100F9F7F100F9F7F100F9F7
      F100F9F7F100F9F7F100F9F7F100F9F7F100F9F7F100F9F7F100F8F5F100F8F4
      EF00F8F4EF00F8F4EF00F9F7F100F9F7F100F9F7F100FCF9F500FFFBF700FBF8
      F200FBF8F400F9F7F200F9F5F100F9F7F200FEFBF500F9F7F100FBF8F200FBF7
      F100F8F5EF00F7F4EE00F5F2ED00FBFBFB00FCFDFD00FFFFFF00FFFFFC00706B
      D8000700DA00312DD500CBCAEC00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00F9F9
      F900F1F1F100ECECEC00E8E8E800ECECEC00E5E5E500E8E8E800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FDFFFD00F9FFFA00FFFFFF00CAC6
      EA002E29D7000500DA00756DD800FFFFFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCF6F900F9F0F700F5F7F900FCF7EF00EEF6
      F700FCF4F300FFF8F300D6EFFF00D1F0F700E9F8F600FFF9F300F9FEED00F8F6
      F400F3F4F200F8F6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F80000000000000000000000
      0000F8F8F900F9F9F900F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900FBFBFB00F9F9F900F9F9F900F9F9F900F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F900F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800FFFFFC00F3F3FA006E69D9000C02
      DA003731D600CCCBEA00FFFFFF00FFFFFC00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFDFD00F7F7F700F1F1F100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFC00FDFFFD00FDFFFF00FFFF
      FF00C7C7EA00332ED8001002DA007A73DA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7F6E900FDF7F800F4F2FB00FAF4F100ECF3
      FE00F5F3FA00F5F3F600EFFBF200EFF3F200F8F2FE00F5F1FF00F3F0F900F1F1
      F400F5F6FA00F8F6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800FFFFFF008C8AD5000700D9002018
      DB00BFBEE700FFFFFF00FAFDFD00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFFFF00FDFDFF00FFFFFD00FAFC
      FF00FFFFFF00BDBAE4002117DA00190CDE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E2EAE600CBD9D200C4D5CC00C4D5CC00C4D5CC00C4D5CC00C4D5
      CC00C4D5CC00C4D5CC00C4D5CC00C4D5CC00C4D5CC00C4D5CC00C4D5CC00C4D5
      CC00C4D5CC00C4D5CC00C4D5CC00C4D5CC00C4D5CC00C4D5CC00C4D5CC00C4D5
      CC00C4D5CC00C4D5CC00C4D5CC00C4D5CC00C4D5CC00C4D5CC00D8E4DD00F6F9
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA00FCFCFC00CFCF
      CF00C1C1C100F3F3F300FDFDFD00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FFFF
      FF00FAFAFA00EBEBEB00FCFCFC00F7F7F700F9F9F900FAFAFA00FAFAFA00FAFA
      FA0000000000F0F0F000F4F4F400FCFCFC00F9F9F90000000000BCBCBC00F7F7
      F700D7D7D7001919190008080800090909000606060009090900090909000909
      0900090909000909090009090900090909000909090009090900090909000909
      09000909090009090900090909000A0A0A0018181800F7F7F700EDEDED00B7B7
      B700F4F4F400F7F7F700F1F1F1000000000000000000BF6E6000665430006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006051300064513000665432006F593600785F3C0081633C00A170
      4A00B4785400BD7C5E00C7806400CC8367000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00EFEF
      EF00E1E1E100D9D9D900D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D8D8D800D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9
      D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9
      D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9
      D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D8D8
      D800D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D8D8D800DFDF
      DF00EEEEEE00FBFBFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00E4E4E400A09DA100738C
      830047805900337B48002C7B45002B7A43002B7540002B7540002B7540002B76
      41002B7641002B7641002B7641002B7741002B7841002B7841002B7841002B78
      43002B7843002B7843002B7843002B7843002B7843002B7843002B7943002B78
      43002B7843002B7843002B7843002B7943002C7E45002C814600307D47003A79
      4B00518760008EB29D00E8EEEB00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD0000000000ACACAC004141
      41007C7C7C00F9F9F900FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FFFF
      FF00FAFAFA0052525200C4C4C400FFFFFF00FAFAFA00F9F9F900F7F7F700FDFD
      FD00FAFAFA00F9F9F900F7F7F700F3F3F300EEEEEE009090900030303000FCFC
      FC00DDDDDD001B1B1B000A0A0A000C0C0C000A0A0A000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A
      0A000A0A0A000C0C0C000D0D0D00090909001919190000000000EAEAEA002727
      270072727200DDDDDD00F4F4F40000000000DE7B61000E510000005800000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000058000000580000005800000059000000590000005600000056
      0000005900000056000000580000005900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB00D0D0
      D000B8B8B800AEAEAE00ABABAB00ABABAB00ABABAB00ABABAB00ABABAB00ACAC
      AC00ACACAC00ACACAC00ADADAD00ADADAD00ADADAD00AEAEAE00AFAFAF00AFAF
      AF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00B0B0B000B0B0B000B0B0
      B000B0B0B000B0B0B000B0B0B000AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAF
      AF00AFAFAF00AFAFAF00AFAFAF00AEAEAE00ADADAD00ADADAD00ADADAD00ACAC
      AC00ACACAC00ABABAB00ABABAB00ABABAB00ABABAB00ABABAB00AEAEAE00B5B5
      B500CFCFCF00F4F4F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00DCDCDC0095949600545557003A3D40001D55
      330007531D00014D1500004D1500004D1400004B1400004B1400004C1400004D
      1400004E1400004E1400004F1500005015000050150000511500005115000052
      1600005216000053170000531700005317000053170000531700005417000055
      17000055170000551800005518000056180000581900005C1B00005F1C000262
      20000B6F2B00257F44004B7F590081A88E00DDE8E100FCFDFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00F9F9F9001D1D1D000C0C
      0C0081818100FAFAFA0000000000F9F9F900FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFF
      FF00F7F7F7000101010038383800B9B9B900F3F3F30000000000F9F9F900F9F9
      F900F4F4F400FCFCFC00EEEEEE00F3F3F300717171000C0C0C0016161600FDFD
      FD00E1E1E100262626000D0D0D00060606000C0C0C00080808000A0A0A000A0A
      0A00090909000C0C0C000C0C0C000C0C0C000A0A0A00090909000C0C0C000606
      06000C0C0C00090909000C0C0C000C0C0C001F1F1F00FCFCFC00EEEEEE002D2D
      2D00040404004E4E4E00F7F7F700FFFFFF00E0786B00144F0100005900000059
      0000005900000055000000560000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005A00000058
      0000005800000059000000590000005900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFAFA00C9C9
      C900BDBDBD00BBBBBB00B9B9B900B8B8B800B9B9B900BABABA00BBBBBB00BDBD
      BD00BDBDBD00BEBEBE00BFBFBF00BFBFBF00C1C1C100C2C2C200C3C3C300C4C4
      C400C5C5C500C5C5C500C6C6C600C7C7C700C7C7C700C8C8C800C9C9C900C9C9
      C900C9C9C900C9C9C900C9C9C900C7C7C700C6C6C600C6C6C600C6C6C600C5C5
      C500C4C4C400C4C4C400C3C3C300C1C1C100C0C0C000BFBFBF00BFBFBF00BEBE
      BE00BCBCBC00BBBBBB00B9B9B900B7B7B700B7B7B700B8B8B800BFBFBF00C0C0
      C000CDCDCD00F2F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3F3F300BAB9BA0068676800313033000B0E0E000C2317000344
      1500004813000045110000441100004411000045110000461100004611000047
      1200004812000049120000491300004A1300004B1300004B1300004C1400004D
      1400004D1400004E1500004F1500004F15000050160000501600005016000051
      160000521600005217000053170000531700005317000055180000591A00005E
      1C0000641F000067200001631F001F7B3D005D906C00B1C7BA00ECF2EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00ACACAC00121212000A0A
      0A007D7D7D00FFFFFF00FCFCFC00F9F9F900FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FDFDFD00FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFF
      FF00F7F7F700161616000505050033333300C3C3C3000000000000000000FDFD
      FD00FDFDFD0000000000EBEBEB00787878000C0C0C001010100016161600FDFD
      FD00F1F1F10073737300040404000A0A0A000A0A0A0009090900090909000C0C
      0C000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A00090909000A0A0A000E0E
      0E000A0A0A000A0A0A000D0D0D000606060040404000F7F7F700E0E0E0002525
      25000E0E0E0006060600EBEBEB00FAFAFA00E0786E00144F0300005900000059
      0000005900000056000000560000005600000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      000000580000005800000058000000580000005800000058000000590000005A
      0000005900000059000000590000005900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFAFA00D1D1
      D100C9C9C900CFCFCF00CFCFCF00CBCBCB00CDCDCD00CFCFCF00D1D1D100D3D3
      D300D4D4D400D5D5D500D7D7D700D8D8D800DBDBDB00DCDCDC00DCDCDC00DFDF
      DF00E0E0E000E1E1E100E2E2E200E3E3E300E4E4E400E5E5E500E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E4E4E400E3E3E300E2E2E200E2E2E200E1E1
      E100DFDFDF00DFDFDF00DCDCDC00DBDBDB00DADADA00D8D8D800D7D7D700D5D5
      D500D3D3D300D1D1D100CDCDCD00CACACA00CACACA00CCCCCC00D2D2D200CFCF
      CF00D4D4D400F4F4F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3F3F300B1B1B20051515300111012000809090007120C00033612000141
      1000004410000044110000451100004611000047110000481100004812000049
      1200004A1200004B1300004B1300004C1300004D1300004D1400004E1400004E
      1400004F1500004F150000501500005116000052160000521600005316000053
      1600005417000055170000551700005517000056170000571800005718000057
      180000581800005D1B00016A2100017225000465220043815700A2BEAC00E7EF
      EA00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F9003F3F3F00080808001111
      110082828200FFFFFF00F4F4F400FCFCFC00FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00FCFCFC00FDFDFD00FFFFFF00FAFAFA00FAFAFA00FFFFFF00FFFF
      FF00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FFFFFF00FFFFFF00FDFDFD00FFFF
      FF00F9F9F900141414000D0D0D00030303005D5D5D00FDFDFD00FAFAFA00FAFA
      FA00F9F9F900FAFAFA00BABABA001C1C1C000D0D0D000D0D0D000E0E0E00FDFD
      FD00FDFDFD00C4C4C400262626000C0C0C00101010000C0C0C00090909000A0A
      0A000C0C0C000C0C0C000A0A0A000C0C0C0008080800050505000C0C0C000606
      06000D0D0D000909090010101000010101009E9E9E00FCFCFC00E8E8E8003030
      30000D0D0D000C0C0C008B8B8B00FFFFFF00E0786E00144F0300005900000059
      000000590000005A000000600000005F00000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      000000600000006000000060000000600000006000000060000000630000005C
      0000005800000059000000590000005900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC00DBDB
      DB00C6C6C600CCCCCC00CDCDCD00C5C5C500C8C8C800CBCBCB00CDCDCD00CECE
      CE00D1D1D100D2D2D200D4D4D400D6D6D600D8D8D800DADADA00DADADA00DCDC
      DC00DDDDDD00DFDFDF00E1E1E100E2E2E200E3E3E300E3E3E300E3E3E300E4E4
      E400E4E4E400E4E4E400E3E3E300E3E3E300E2E2E200E1E1E100E0E0E000DFDF
      DF00DCDCDC00DCDCDC00DADADA00D9D9D900D7D7D700D5D5D500D4D4D400D2D2
      D200D0D0D000CCCCCC00CACACA00C7C7C700C6C6C600C9C9C900C9C9C900C6C6
      C600D4D4D400F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00B9B9BA004C4C4D000B0B0D0007070800060C090006241000004411000045
      110000461100004611000047110000491100004A1200004A1200004B1300004B
      1300004D1300004D1400004E1400004F1400004F140000501500005115000051
      1500005216000052160000521600005417000055170000551700005617000056
      17000056180000571800005718000057180000591900005A1900005A1900005A
      1900005B1900005B1900005B1A0001651F0001732600016721003B7E5000A5BF
      AD00F5F8F7000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000898989000C0C0C00111111000A0A
      0A007F7F7F00FFFFFF00FFFFFF00FCFCFC00FDFDFD00FFFFFF00FFFFFF00FDFD
      FD00FAFAFA00FCFCFC00FDFDFD00FCFCFC00F4F4F400F9F9F900FAFAFA00FAFA
      FA00FDFDFD00FDFDFD00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFF
      FF00FCFCFC000C0C0C00090909000D0D0D0015151500B4B4B400FAFAFA00FCFC
      FC00FCFCFC00FDFDFD005E5E5E0008080800090909000A0A0A0014141400FDFD
      FD00F4F4F400FCFCFC009A9A9A00080808000909090009090900080808001111
      11000D0D0D000D0D0D0008080800060606000E0E0E000D0D0D00090909000505
      050006060600060606000E0E0E0080808000F3F3F300FCFCFC00EDEDED002929
      29000C0C0C000808080036363600CFCFCF00E0786E00144F0300005900000058
      0000007000000C832900268A1E002C8A1C002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100238B1E001183
      2700007915000063000000590000005800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00EBEB
      EB00CDCDCD00CFCFCF00CFCFCF00C4C4C400C7C7C700CBCBCB00CCCCCC00CFCF
      CF00D2D2D200D3D3D300D5D5D500D7D7D700D9D9D900DCDCDC00DCDCDC00DEDE
      DE00DEDEDE00E1E1E100E2E2E200E4E4E400E4E4E400E5E5E500E5E5E500E6E6
      E600E6E6E600E6E6E600E5E5E500E5E5E500E4E4E400E3E3E300E2E2E200E1E1
      E100DEDEDE00DDDDDD00DCDCDC00DADADA00D8D8D800D5D5D500D4D4D400D2D2
      D200CFCFCF00CCCCCC00CBCBCB00C9C9C900C7C7C700CCCCCC00CACACA00CACA
      CA00DCDCDC00F9F9F90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEDE
      DE00565658000D0D0F00050506000606070007150D00023C1100004611000047
      11000048120000491200004A1200004A1200004B1300004C1300004C1400004E
      1400004E1400004F1500004F1500005115000051150000521600005316000054
      1600005417000055170000561700005718000057180000571800005818000059
      1800005A1900005A1900005B1900005B1900005C1A00005D1A00005D1A00005D
      1A00005D1A00005E1A00005F1C00005F1C0000631F0001772A00016722004B82
      5B00C3D4CA00FDFDFD0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000035353500101010000C0C0C000808
      08007C7C7C00FCFCFC00FCFCFC00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FDFD
      FD00FAFAFA00FCFCFC00F7F7F700F7F7F700FCFCFC00F7F7F700FCFCFC00FDFD
      FD00FDFDFD00FCFCFC00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FDFDFD00FFFF
      FF00FDFDFD00080808000C0C0C000A0A0A000808080062626200F9F9F900FDFD
      FD00FDFDFD00F3F3F30011111100090909000D0D0D000808080012121200FFFF
      FF00FAFAFA00FAFAFA00FDFDFD00575757001B1B1B00181818000D0D0D001515
      15000D0D0D000E0E0E00111111000E0E0E000E0E0E00111111000E0E0E001414
      14001212120048484800ACACAC00F4F4F400FFFFFF00FFFFFF00EEEEEE002929
      2900090909000A0A0A00030303009A9A9A00E0786E00144F0300005900000055
      000060BA7700DBF4EB00C2EDD000C5EECB00BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800C2E9D000D3F4
      E700C5EAC400007A0E0000580000005800000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100D2D2D200D2D2D200D1D1D100C6C6C600C9C9C900CCCCCC00CFCFCF00D0D0
      D000D2D2D200D4D4D400D6D6D600D8D8D800DADADA00DCDCDC00DDDDDD00E1E1
      E100E3E3E300E4E4E400E4E4E400E5E5E500E6E6E600E8E8E800E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E8E8E800E6E6E600E5E5E500E4E4E400E3E3
      E300E1E1E100DDDDDD00DDDDDD00DCDCDC00D9D9D900D7D7D700D5D5D500D2D2
      D200D0D0D000CFCFCF00CBCBCB00C9C9C900C7C7C700CFCFCF00CFCFCF00D4D4
      D400E9E9E900FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC008484
      850026252700050506000404050006090800081D0F0000471100004912000049
      1200004A1300004B1300004C1400004C1400004D1400004E1400004E15000050
      1500005015000051160000511600005317000054170000541700005517000055
      180000561800005618000058180000591900005A1900005A1900005A1900005A
      1A00005C1A00005C1A00005E1A00005E1A00005E1B00005F1C00005F1C00005F
      1C00005F1C00005F1C0000611D0000611D0000611D0001692200027A2B00066E
      290053856200E9F1EC0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014141400050505000C0C0C000C0C
      0C0077777700FFFFFF00FAFAFA00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FAFAFA00F9F9F900FAFAFA0000000000D9D9D900E5E5E50000000000FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC000C0C0C00090909000A0A0A000606060036363600FDFDFD00FCFC
      FC00FCFCFC00FAFAFA00060606000D0D0D000C0C0C000A0A0A0012121200FAFA
      FA00F9F9F900F7F7F700F9F9F900EAEAEA00CFCFCF00C3C3C300BFBFBF00C1C1
      C100C3C3C300C4C4C400BBBBBB00BDBDBD00C2C2C200C2C2C200BFBFBF00BDBD
      BD00C1C1C100E4E4E400F9F9F900F7F7F700FDFDFD00FCFCFC00EBEBEB002929
      29000C0C0C00080808000606060065656500E0786E00144F0300005C00000058
      00008AC99B00006A0300006D0000006A00000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000006F00000C81
      3C00EAFBFF0000762400005A0000005800000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F300D4D4D400CECECE00CCCCCC00C3C3C300C7C7C700C9C9C900C9C9C900CFCF
      CF00D0D0D000D2D2D200D5D5D500D7D7D700D9D9D900DCDCDC00DDDDDD00E1E1
      E100E3E3E300E4E4E400E4E4E400E5E5E500E6E6E600E8E8E800E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E8E8E800E8E8E800E6E6E600E4E4E400E3E3
      E300E1E1E100DDDDDD00DCDCDC00DCDCDC00D9D9D900D6D6D600D4D4D400D2D2
      D200CFCFCF00CBCBCB00CBCBCB00C9C9C900C6C6C600CFCFCF00D1D1D100D8D8
      D800EDEDED000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E8003938
      3900050506000404050005050600060E0A0005271100004A1200004A1300004C
      1300004D1400004D1400004E1500004F15000050150000501500005116000051
      1600005417000054170000551700005618000056180000571800005918000059
      1900005A1900005A1900005A1A00005B1A00005C1A00005D1A00005E1B00005E
      1C00005E1C00005F1C00005F1C0000611D0000611D0000611D0000611D000062
      1D0000631D0000631F0000631F0000641F0000641F0000641F00017427000175
      2800277B420093B6A10000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000A0A0A00060606000C0C
      0C0071717100FFFFFF00FCFCFC00FFFFFF00FDFDFD00FDFDFD00FAFAFA00FAFA
      FA00F9F9F900DEDEDE00A1A1A100636363003D3D3D004B4B4B0070707000ACAC
      AC00FCFCFC00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC000C0C0C00090909000C0C0C00080808001F1F1F00FCFCFC00F7F7
      F70000000000F9F9F9000606060006060600080808000A0A0A0012121200FCFC
      FC000000000000000000F9F9F900F4F4F400FCFCFC0000000000F4F4F400F7F7
      F7009191910060606000424242003C3C3C0077777700BDBDBD00F1F1F100F9F9
      F900F9F9F900F7F7F700FAFAFA00F9F9F900FFFFFF00FDFDFD00EDEDED002929
      29000D0D0D00080808000303030049494900E0786E00144F0300005D00000071
      000075C07A00005500000058000000590000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A00000071
      0E00D5F7ED00037E1C00005A0000005600000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F5
      F500D1D1D100C2C2C200C2C2C200C1C1C100C1C1C100C2C2C200C5C5C500C7C7
      C700C9C9C900CDCDCD00D1D1D100D3D3D300D5D5D500D8D8D800D9D9D900DDDD
      DD00DEDEDE00E0E0E000E0E0E000E2E2E200E3E3E300E4E4E400E5E5E500E4E4
      E400E5E5E500E5E5E500E4E4E400E4E4E400E4E4E400E2E2E200E0E0E000DFDF
      DF00DDDDDD00DCDCDC00D9D9D900D8D8D800D5D5D500D2D2D200CFCFCF00CACA
      CA00C7C7C700C6C6C600C2C2C200C2C2C200C2C2C200C7C7C700C8C8C800D5D5
      D500F0F0F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000989899002423
      240005040500040405000606070007120C00042D1200004C1400004D1400004E
      1400004E1500004F150000511600005116000052160000541600005417000055
      17000056180000561800005818000059190000591900005A1900005A1900005C
      1A00005C1A00005E1A00005E1C00005F1C00005F1C00005F1C0000601C000061
      1D0000611D0000611D0000631D0000631F0000641F0000641F0000641F000064
      1F0000641F000066200000662000006620000066200000672000016C2200027C
      2C00087730004673530000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030303000E0E0E00090909001111
      11006F6F6F00FFFFFF00FAFAFA00FFFFFF00FAFAFA00FDFDFD00FCFCFC00FCFC
      FC00ACACAC003E3E3E00090909000C0C0C000606060009090900030303001212
      1200CECECE00FDFDFD00F9F9F900F3F3F300FAFAFA00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC000C0C0C00080808000D0D0D000A0A0A0016161600FDFDFD00FDFD
      FD00FCFCFC00FAFAFA00060606000C0C0C000C0C0C000D0D0D0010101000FDFD
      FD00F7F7F700FDFDFD00F7F7F700F7F7F700FCFCFC00F4F4F400EEEEEE008585
      85000808080008080800040404000A0A0A000D0D0D001919190072727200E1E1
      E100EEEEEE00F7F7F700FDFDFD00FAFAFA00FFFFFF00FCFCFC00EEEEEE002727
      27000A0A0A000C0C0C000909090044444400E0786E00144F0300005D0000067C
      000069BC6A000058000000590000005C00000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005A00000073
      0900BDF4D80006831500005A0000005600000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700D3D3D300BBBBBB00B9B9B900BBBBBB00B8B8B800B8B8B800BCBCBC00BDBD
      BD00BFBFBF00C2C2C200C6C6C600C8C8C800CBCBCB00CFCFCF00D0D0D000D3D3
      D300D5D5D500D6D6D600D8D8D800DADADA00DADADA00DBDBDB00DBDBDB00DADA
      DA00DBDBDB00DBDBDB00DADADA00DADADA00DADADA00DADADA00D8D8D800D5D5
      D500D3D3D300D3D3D300D0D0D000CDCDCD00C9C9C900C6C6C600C3C3C300C0C0
      C000BDBDBD00BCBCBC00B9B9B900B8B8B800B9B9B900B9B9B900B9B9B900D0D0
      D000F2F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004D4D4E001010
      110004040500040405000606070007120C00042E1200004E1500004F15000050
      1500005016000052160000531700005317000054170000551800005618000058
      18000058190000591900005A1900005B1A00005B1A00005C1A00005D1A00005E
      1C00005E1C00005F1C0000601D0000611D0000611D0000621E0000621E000063
      1F0000631F0000631F0000651F00006520000066200000662000006620000167
      2000016721000168210001692100016921000169210001692100016B21000279
      2A0002782A002F704100D6E2DC00000000000000000000000000000000000000
      000000000000000000000000000000000000010101000A0A0A00080808000A0A
      0A0070707000FFFFFF00FAFAFA00FFFFFF00FDFDFD00FAFAFA00F1F1F100A7A7
      A700272727000C0C0C000A0A0A000E0E0E000A0A0A00080808000D0D0D000A0A
      0A0040404000CACACA00F7F7F700F0F0F000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FCFCFC000A0A0A00060606000D0D0D000C0C0C0019191900FDFDFD00FFFF
      FF00F9F9F900F9F9F9000606060009090900090909000E0E0E000E0E0E00FDFD
      FD00FDFDFD00FCFCFC00FFFFFF00FDFDFD00F9F9F900F9F9F900828282001010
      1000080808000C0C0C00090909000C0C0C000A0A0A000D0D0D00080808006060
      6000DADADA00F9F9F900FAFAFA00F9F9F900FFFFFF00FDFDFD00EEEEEE002727
      2700080808000D0D0D000606060045454500E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000FEFEFE00FDFDFD00FBFBFB00FAFAFA00F9F9F900F9F9F900F9F9F900F7F7
      F700DADADA00BBBBBB00AFAFAF00AEAEAE00ABABAB00ABABAB00ADADAD00AEAE
      AE00B0B0B000B2B2B200B5B5B500B6B6B600B9B9B900BBBBBB00BEBEBE00BFBF
      BF00C2C2C200C3C3C300C5C5C500C7C7C700C7C7C700C7C7C700C7C7C700C7C7
      C700C8C8C800C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C5C5C500C2C2
      C200BFBFBF00BFBFBF00BEBEBE00BBBBBB00B7B7B700B5B5B500B3B3B300B0B0
      B000AEAEAE00AEAEAE00ACACAC00ABABAB00ACACAC00ADADAD00B1B1B100CECE
      CE00F2F2F200FAFAFA00F9F9F900F9F9F900FAFAFA00FBFBFB00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00F6F6F6002A292A000606
      070004040500040405000606070007120C00042F1200004F1600005116000053
      160000531700005417000055180000551800005618000058190000591900005A
      1900005B1A00005B1A00005C1A00005D1B00005D1B00005E1B00005F1B000060
      1D0000601D0000621D0000621E0000631E0000631E0000641F00006520000065
      2000006520000167200001672100016721000168210001692100016921000169
      2100016A2200016A2200016B2200016B2200016C2200016C2200016C22000177
      2900027B2B00207B3D009BBBA900FEFFFF000000000000000000000000000000
      00000000000000000000000000000000000005050500090909000C0C0C001010
      100071717100FFFFFF00FAFAFA00FDFDFD00FDFDFD00F7F7F700FCFCFC002424
      24000C0C0C0006060600060606000D0D0D000A0A0A000A0A0A000C0C0C000A0A
      0A000A0A0A0040404000DDDDDD00F0F0F000FCFCFC00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC000A0A0A00060606000C0C0C000909090019191900FFFFFF00FFFF
      FF00FAFAFA00F9F9F90009090900090909000C0C0C001010100011111100FDFD
      FD00FFFFFF00FFFFFF00F7F7F700FFFFFF00FDFDFD00A2A2A200060606001B1B
      1B00111111000C0C0C0009090900090909000909090006060600111111000606
      06006C6C6C00F7F7F700FAFAFA00F9F9F900FFFFFF00FDFDFD00EBEBEB002929
      2900060606000D0D0D000909090043434300E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000FDFDFD00FAFA
      FA00F3F3F300EAEAEA00DFDFDF00D8D8D800D6D6D600D4D4D400D4D4D400D7D7
      D700C6C6C600ADADAD00A2A2A2009F9F9F009C9C9C009D9D9D009E9E9E009F9F
      9F00A1A1A100A2A2A200A4A4A400A4A4A400A6A6A600A7A7A700A9A9A900AAAA
      AA00ACACAC00ADADAD00AFAFAF00B0B0B000B0B0B000B0B0B000B0B0B000B1B1
      B100B1B1B100B0B0B000B0B0B000B0B0B000AFAFAF00AFAFAF00AEAEAE00ACAC
      AC00ABABAB00AAAAAA00A9A9A900A7A7A700A5A5A500A3A3A300A3A3A300A1A1
      A100A0A0A0009F9F9F009D9D9D009D9D9D009F9F9F00A1A1A100A6A6A600BCBC
      BC00D5D5D500D6D6D600D4D4D400D6D6D600D9D9D900DFDFDF00EAEAEA00F3F3
      F300FAFAFA00FDFDFD00FEFEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00DADADB001E1D1E000404
      050004040500040405000606070007130C000431130000521700005317000055
      18000055180000571800005819000058190000591900005B1A00005B1A00005C
      1A00005D1B00005E1B00005F1C0000601D0000601D0000611D0000611E000063
      1E0000631E0000651F0000652000006520000166200001672000016821000168
      21000168210001692100016A2200016A2200016A2200016B2200016C2200016C
      2200016C2300016D2300016D2300016D2300016E2300016F2300016F24000175
      2800027D2C00137E380067957900FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A00080808000C0C
      0C0071717100FDFDFD00FCFCFC00FDFDFD00F9F9F900F7F7F700FFFFFF000303
      03000E0E0E000A0A0A000E0E0E000A0A0A000A0A0A000C0C0C00090909000C0C
      0C000A0A0A000808080096969600FCFCFC00FCFCFC00FFFFFF00FDFDFD00FFFF
      FF00FDFDFD000A0A0A00080808000D0D0D000A0A0A0018181800FDFDFD00FCFC
      FC00FAFAFA00F9F9F900050505000C0C0C00080808001010100012121200FDFD
      FD00FFFFFF00FFFFFF00FDFDFD00FCFCFC00DEDEDE00393939000E0E0E000C0C
      0C00080808000A0A0A000C0C0C000C0C0C0011111100080808000D0D0D000808
      080024242400FCFCFC00FDFDFD00FDFDFD00FDFDFD00FFFFFF00EAEAEA002727
      2700060606000A0A0A000909090045454500E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D50003841400005900000056000000000000FDFDFD00F8F8F800E7E7
      E700D1D1D100BEBEBE00AFAFAF00A4A4A400A0A0A0009E9E9E009E9E9E00A1A1
      A100999A9A00919191008F909000919191009090900090909000919191009191
      9100939393009494940095959500959595009696960096969600989898009898
      9800999999009B9B9B009C9C9C009C9C9C009C9C9C009D9D9D009D9D9D009D9D
      9D009D9D9D009D9D9D009D9D9D009C9C9C009C9C9C009C9C9C009B9B9B009999
      9900999999009898980097979700969696009696960095959500949494009393
      93009292920091919100909090009090900091919100919191008F8F8F009797
      9700A1A1A1009F9F9F009E9E9E00A0A0A000A5A5A500AFAFAF00BCBCBC00CECE
      CE00E2E2E200F3F3F300FCFCFC00000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C8001B1B1C000404
      050004040500040405000606070007130C000432130000551700005517000057
      18000058180000591900005A1900005B1900005C1A00005D1B00005D1B00005E
      1B00005F1C0000611C0000611D0000621E0000631E0000641E0000641F000065
      1F0000661F000067200000682000006820000168200001692000016A2100016A
      2100016B2100016B2100016C2300016D2300016D2300016D2300016E2300016E
      2400016E2400016F2400016F2400017124000171240001712500017126000177
      2900027E2D000C7D3400477E5D00FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000A0A
      0A0072727200FFFFFF00FCFCFC00FFFFFF00F7F7F700F9F9F900E3E3E3000E0E
      0E000C0C0C000C0C0C00090909000D0D0D000A0A0A000A0A0A000A0A0A000A0A
      0A000C0C0C000606060054545400F0F0F000FCFCFC00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC0009090900080808000D0D0D000909090018181800FFFFFF00FFFF
      FF00FAFAFA00F9F9F900050505000A0A0A00090909000E0E0E0012121200FDFD
      FD00FFFFFF00FDFDFD00FFFFFF00FDFDFD00AEAEAE00151515000C0C0C001111
      11000C0C0C000A0A0A000A0A0A000C0C0C000909090009090900141414000E0E
      0E0008080800F9F9F900FFFFFF00FAFAFA00FDFDFD00FDFDFD00EBEBEB002929
      2900080808000A0A0A000909090045454500E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FEFEFE00F8F8F800EBEBEB00C7C7
      C700A3A3A3008A8A8A007A7A7A00727271006C6C6C006A6A6A006A6A6A006B6B
      6B00696A6A006D6E6E0078797900828282008383830083838300838383008383
      83008585850085858500868686008787870088888800888888008A8A8A008A8A
      8A008B8B8B008C8C8C008C8C8C008C8C8C008C8C8C008D8D8D008D8D8D008D8D
      8D008D8D8D008D8D8D008D8D8D008C8C8C008C8C8C008C8C8C008C8C8C008B8B
      8B008B8B8B008A8A8A0089898900888888008888880087878700868686008585
      850084848400838383008383830083838300838383007D7D7D00707070006A6A
      6A006B6B6B006A6A6A006A6A6A006C6C6C00727272007A7A7A00868686009B9B
      9B00BABABA00DDDDDD00F5F5F500FDFDFD000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C8001B1B1C000404
      050004040500040405000606070007130C00053313000057180000571800005A
      1900005B1900005B1A00005C1B00005E1B00005F1B00005F1C0000601C000060
      1D0000621E0000631E0000641F0000651F0000651F0000661F00006720000067
      20000069200001692100016A2100016B2100016B2100016B2200016C2300016C
      2300016E2300016E2300016E2400016F24000170240001702400017025000171
      260001722600017226000172260001742600017426000174270001742700017A
      2A0002812F00097C34003C765600FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000C0C
      0C0071717100FDFDFD00F7F7F700FDFDFD00FDFDFD00FCFCFC00B2B2B2000909
      0900090909000C0C0C000A0A0A000C0C0C000A0A0A000A0A0A000A0A0A000A0A
      0A00080808001010100032323200D3D3D300FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700080808000A0A0A000C0C0C000909090018181800FFFFFF00FFFF
      FF00FAFAFA00F7F7F70005050500090909000C0C0C000D0D0D0014141400FCFC
      FC00FFFFFF00FDFDFD00FFFFFF00FFFFFF008282820009090900090909001111
      11000C0C0C000A0A0A000A0A0A00090909000A0A0A000A0A0A000A0A0A000909
      09000A0A0A00EBEBEB00F9F9F900F7F7F700FFFFFF00FCFCFC00EDEDED002929
      2900080808000A0A0A000909090045454500E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FDFDFD00F4F4F400D9D9D900A8A8
      A80081808000696767005A59580053535100504F4D004F4F4E00494848004444
      4400434343004B4B4B005E5E5E006D6D6D006E6E6E006F6F6F006F6F6F007171
      7100727272007373730074747400757575007676760078787800797979007A7A
      7A007B7B7B007C7C7C007C7C7C007D7D7D007D7D7D007D7D7D007D7D7D007D7D
      7D007E7E7E007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007B7B7B007B7B
      7B007A7A7A007979790078787800777777007676760075757500747474007373
      730072727200707070006F6F6F006F6F6F006F6F6F00636363004F4F4F004343
      430044444400464646004D4D4B00504F4E005352510059575700646262007676
      760094949400BFBFBF00EBEBEB00FAFAFA000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C8001B1A1B000404
      050004040500040405000606070007130C0005341400005A1900005A1900005C
      1A00005D1A00005E1B00005F1C0000601C0000611C0000611D0000621D000064
      1F0000641F0000651F000066200000672000006820000068200001692100016A
      2100016B2100016B2200016C2200016D2200016E2200016E2300016E2400016F
      2400017024000171250001712500017125000173250001742500017426000174
      270001752700017527000176270001762700017728000177280001772800017C
      2B0002833000097D35003C765600FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000C0C
      0C006F6F6F00FDFDFD00F9F9F900FDFDFD00FAFAFA0000000000A1A1A1000808
      0800080808000A0A0A000A0A0A000C0C0C000A0A0A000A0A0A000A0A0A000A0A
      0A000A0A0A00050505001C1C1C00BFBFBF00FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00F7F7F7000A0A0A000C0C0C000D0D0D000A0A0A0018181800FFFFFF00FFFF
      FF00FAFAFA00F7F7F70006060600090909000C0C0C000C0C0C0015151500FCFC
      FC00FFFFFF00FDFDFD00FDFDFD00FDFDFD006A6A6A00060606000A0A0A000909
      0900080808000A0A0A000A0A0A00090909000A0A0A00080808000D0D0D000A0A
      0A000D0D0D00E0E0E000F9F9F900FCFCFC00FCFCFC00FCFCFC00EBEBEB002727
      2700080808000A0A0A000909090045454500E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FBFBFB00EFEFEF00C6C6C6009292
      91006A6967005B5857005C5956005C5A57005C595700605D5B00444342002F2F
      2F002B2B2A003434340044444400525252005353530053535300545454005757
      570057575700585858005B5B5B005C5C5C005E5E5E0060606000626262006464
      64006666660067676700686868006A6A6A006B6B6B006C6C6C006C6C6C006C6C
      6C006D6D6D006C6C6C006C6C6C006B6B6B006A6A6A0069696900676767006666
      66006464640062626200606060005E5E5E005C5C5C005B5B5B005A5A5A005858
      5800575757005555550054545400535353005353530048484800363535002B2B
      2A002E2D2D0039373700555350005D5B59005C5A58005B585600595654005F5E
      5D007B7A7A00ADADAD00E2E2E200F8F8F8000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C8001B1A1B000404
      050004040500040405000606070007130C0005351500005C1A00005C1A00005E
      1C00005F1C0000601D0000611D0000621D0000631E0000631F0000641F000066
      2000006620000068200001682100016B2300026F26000472290009762F000976
      30000A7830000A7832000A7A320006782F0003762A0001732700017126000171
      2500017325000173270001752700017527000175270001762700017627000176
      28000176280001762800017928000179280001792A0002792A00027A2A00027F
      2D0002853100097F35003C765600FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000A0A
      0A006D6D6D00FFFFFF00F9F9F900FCFCFC00FFFFFF00FAFAFA00A3A3A3000909
      09000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A
      0A000A0A0A00111111001C1C1C00C1C1C100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC000A0A0A00090909000A0A0A000C0C0C0018181800FFFFFF00FFFF
      FF00FAFAFA00F7F7F7000606060009090900080808000A0A0A0015151500FAFA
      FA00FFFFFF00FFFFFF00FFFFFF00FAFAFA006A6A6A0006060600090909000D0D
      0D00090909000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000808
      080010101000E1E1E100FAFAFA00FAFAFA00F7F7F700F9F9F900EDEDED002525
      2500080808000C0C0C000909090045454500E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000058000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005800000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000590000067F1F000C832A000C85
      2900005800000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FAFAFA00EBEBEB00BABAB8008383
      800068666300605E5B005D5C5A005E5C5B005F5D5C0068666100302E2D000D0D
      0C0007070600131312002E2E2E00484848004C4C4C004C4C4C004D4D4D004E4E
      4E004F4F4F005050500051515100535353005555550056565600585858005B5B
      5B005C5C5C005E5E5E005F5F5F00616161006363630064646400646464006565
      650065656500656565006464640063636300616161005F5F5F005E5E5E005D5D
      5D005B5B5B005858580058585800555555005353530052525200515151004F4F
      4F004E4E4E004D4D4D004C4C4C004C4C4C004A4A4A0034343400171716000808
      07000A0909001C1A1A0052504E00615F5D005E5C5B005D5C59005F5D5A005E5C
      5A006F6D6C009F9E9E00DADADA00F4F4F4000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C8001B1A1B000404
      050004040500040405000606060007140C0005361500005E1C00005F1C000061
      1D0000611D0000621E0000641F0000641F0000651F0000662000006820000168
      2100016A2100016A2100016B2300057E350009964A001FAD680048C995004DCD
      9A004ECD9A004ECE9C004ECE9C002BBF810011A65E00068B3E0002782A000175
      270001752700017628000176280001762800017828000179290001792A000279
      2A00027A2A00027A2A00027A2A00027A2A00027C2B00027C2B00027C2B000282
      2E00038932000A8135003C765600FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000A0A
      0A0070707000FDFDFD00F3F3F300FDFDFD00F7F7F700FCFCFC00BEBEBE000909
      09000A0A0A000C0C0C000C0C0C000C0C0C000C0C0C00090909000C0C0C000C0C
      0C000C0C0C00090909003F3F3F00E0E0E000FCFCFC00FFFFFF00FDFDFD00FDFD
      FD00FDFDFD0010101000080808000D0D0D000909090018181800FFFFFF00FFFF
      FF00FAFAFA00F7F7F700060606000A0A0A00060606000808080012121200FDFD
      FD00FCFCFC00FFFFFF00FCFCFC00FDFDFD008B8B8B000E0E0E00080808000D0D
      0D000A0A0A00090909000C0C0C000A0A0A000A0A0A000A0A0A000A0A0A000A0A
      0A0006060600F0F0F000FCFCFC00FAFAFA0000000000FAFAFA00E8E8E8002424
      2400060606000E0E0E000909090045454500E0786E00144F0300005D0000087B
      000069BC690000590000005900000059000000560000005D0000006D0000006D
      0000006D0000006C0000006C0000006C0000006C0000006C0000006C0000006C
      0000006A0000006C000000640000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000AFDFBA00BDEAD400BFF0
      D100005600000058000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FAFAFA00E7E7E700B3B1B1007F7C
      7B006965630064615F00625F5D00635F5D0064605E006C6866002D2C2C000A09
      0900030303000807070011101000181818001919190019191800191918001919
      19001A1A1A001A1A1A001B1B1A001B1B1A001B1B1B001C1B1B001C1C1C001E1D
      1D001E1D1D001E1E1E001E1E1E001F1E1E001F1E1E001F1F1F001F1F1F00201F
      1F00201F1F00201F1F001F1F1F001F1E1E001E1E1E001E1E1E001E1E1E001E1E
      1D001E1D1D001C1C1C001C1C1B001C1B1B001B1A1A001B1A1A001B1A1A001A1A
      1A00191919001919190019191800191818001919180011111100090909000404
      0400060606001A18180053504F006663600063605D00635F5D00635F5D006460
      5E0073716F009D9D9C00D8D8D800F4F4F4000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C8001B1A1B000404
      050004040500040405000605060007140C000539160000611D0000631D000063
      1F0000641F000065200000662000006720000168200001682100016A2100016B
      2200027126000D9F56005FC69A00AEE0CB00D8EFE300E6F6EE00EBF9F300EBFA
      F400ECFAF400ECFAF400ECFAF400E8F8F100DDF2E800B5E3D10060BC90000484
      36000179280001792A00027A2A00027A2A00027A2A00027B2B00027C2B00027C
      2B00027D2B00027E2B00027E2B00027E2B00027F2D00027F2E0002802E000284
      3200038A36000A8239003C765600FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000C0C
      0C005B5B5B00FCFCFC00FDFDFD00FDFDFD00FFFFFF00F7F7F700FFFFFF000909
      0900080808000A0A0A000A0A0A00090909000808080009090900090909000808
      0800060606001010100064646400F9F9F900FFFFFF00F7F7F700FFFFFF00FFFF
      FF00F7F7F7000D0D0D00090909000D0D0D000C0C0C0018181800FFFFFF00FFFF
      FF00FAFAFA00F9F9F9000505050009090900060606000C0C0C0008080800FDFD
      FD00FAFAFA00FFFFFF00FFFFFF00FFFFFF00C5C5C500202020000A0A0A000808
      08000D0D0D000D0D0D000A0A0A000A0A0A000D0D0D00080808000D0D0D000D0D
      0D0008080800FDFDFD00FFFFFF00FDFDFD00F9F9F900FFFFFF00D6D6D6001919
      19000A0A0A000A0A0A000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005600000C7E1F00EFEECF00C7F3
      EF00C7F3EE00C5F1ED00C5F1ED00C5F1ED00C5F1ED00C5F1ED00C5F1ED00C5F1
      ED00C2F0EE00B4E7D6004CAF3500005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000CCECE400D3FBFD00C7FC
      FA00005C000000600000005C0000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FAFAFA00E7E7E700B0B0AF00807D
      7C006C6866006864620066625F0066625F00676360006E6A68002C2B2B000C0B
      0B00080807000A0909000B0A0A000C0C0C000C0B0B000C0B0B000C0B0B000C0B
      0B000C0B0B000C0B0B000C0B0A000C0B0A000C0B0B000C0B0B000C0B0B000C0B
      0B000C0B0B000C0B0B000C0B0B000C0B0B000C0B0B000C0B0B000C0B0B000C0B
      0A000C0B0B000C0B0B000C0B0B000C0B0B000C0B0B000C0B0B000C0B0B000C0B
      0B000C0B0B000C0B0B000C0B0B000C0B0B000C0B0A000C0B0B000C0B0B000C0B
      0B000C0B0B000C0B0B000C0B0B000C0B0B000C0C0B000B0B0B000A0A09000909
      0800080808001919180052514F00696764006663600066625F0066635F006865
      6200757472009E9E9D00D8D8D600F3F3F3000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C8001A1A1B000404
      050004040500040405000605060007140C00053A160000631F0000641F000065
      200000662000016721000168210001692100016A2100016A2200026F2500068C
      400078C3A000B7E5D000DCF4EB00F2FBF800F6FCFA00EBF6F200D7F0E500C9ED
      E000CAEDE100CAEDE100CAEDE100DDF3EA00EFF9F400F1FAF700A7E2C9001AA9
      6200027B2A00027B2B00027C2B00027D2B00027E2B00027E2D00027E2D00027F
      2D00027F2D0002802D0002802D0002812D0002812F0002812F0002812F000286
      3300038D39000B843D003C765600FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000909
      090032323200F1F1F100F9F9F900FAFAFA00F4F4F400FCFCFC00FDFDFD000101
      010008080800080808000E0E0E000C0C0C0009090900050505000E0E0E000808
      0800060606000E0E0E00B1B1B100FDFDFD00FCFCFC00FDFDFD00F7F7F700F7F7
      F700D1D1D100080808000A0A0A00050505000A0A0A0018181800FFFFFF00FFFF
      FF00FAFAFA00F9F9F900040404000A0A0A000C0C0C001818180006060600FAFA
      FA00FDFDFD00FFFFFF00FCFCFC00FDFDFD00EBEBEB00525252000D0D0D000404
      04000C0C0C00090909000A0A0A0011111100121212000A0A0A00090909000606
      06003A3A3A00FCFCFC00F3F3F300F7F7F700FDFDFD00F3F3F300B7B7B7000909
      0900040404000A0A0A000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005800000C802D00DDFBF000D5FF
      FE00D5FFFE00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FF
      FD00D3FFFF00BFF4E20057B53F00005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000CFEBE600D3FFFF00C7FF
      FF00005D0000005F0000005A00000059000000580000005A0000005A0000005A
      0000005A00000059000000580000005800000059000000590000005900000073
      0700B4F5D500038414000059000000560000FAFAFA00E9E9E900B1B1B000817F
      7E006E6B6A006A6765006865630068656300696664006E6B68002B2929000D0C
      0C000B0A09000C0B0A000C0B0A000B0B0A000B0A0A000B0A0A000B0A0A000B0A
      0A000B0A0A000B0A0A000B0A09000B0A09000B0A09000B0A09000B0A09000B0A
      09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A
      09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A
      09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A0A000B0A0A000B0A
      0A000B0A0A000B0A0A000B0A0A000B0A0A000B0B0A000C0B0A000C0C0B000B0B
      0A000B0A0900191818004F4E4D006D6B68006866640068656300686563006A67
      6500777674009F9E9E00D9D8D700F4F4F4000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C8001A1A1B000404
      050004040500040405000605060007140C00053B170000652000006720000167
      210001692100016A2200016A2200016B2200016D220004772D001BA05B0096D4
      B300DAF2E900F7FCFA00E9F7F000ABE6CE006DCDA10051B37C0046A368003E9E
      62003F9E62003F9F64003F9F640049AB720054BB84005BC7920044BC81000E99
      4D00027E2B00027E2D00027F2D00027F2D0002802D0002802E0002802F000281
      2F0002812F0002832F0002832F0002832F00028330000385310003863100038C
      360004913F000C8641003C765600FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000A0A
      0A0016161600B3B3B300FAFAFA00FDFDFD00FCFCFC0000000000FDFDFD005353
      5300111111001818180003030300111111001010100011111100060606001111
      1100101010006C6C6C00EEEEEE00E7E7E700F3F3F300EEEEEE00E8E8E800EEEE
      EE0089898900060606000C0C0C00090909000A0A0A0018181800FFFFFF00FFFF
      FF00FAFAFA00F9F9F900040404000C0C0C000D0D0D000C0C0C0006060600D5D5
      D500F7F7F700F7F7F70000000000F7F7F700F9F9F900C4C4C4002C2C2C000909
      0900090909000D0D0D00050505000A0A0A000E0E0E0005050500141414001818
      180096969600F9F9F900FDFDFD00FAFAFA00FAFAFA00EBEBEB00444444000C0C
      0C00080808000D0D0D000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005A00000C832F00D1F9F600D1FF
      FD00D1FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FF
      FD00D5FFFD00BFF3E20064B34500005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000C5EBE700D3FFFF00CFFF
      FF00005A0000005C0000005A0000005800000056000000560000005800000058
      000000580000005800000056000000560000005C0000005A0000005900000073
      0700B4F5D500038414000059000000560000FBFBFB00EBEBEB00B3B2B2008482
      8100716E6D006C6A68006A6866006A6866006C6967006F6D6A00282727000E0D
      0D000B0B0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C
      0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C
      0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C
      0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C
      0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C
      0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C0B000C0C0C000C0C
      0C000B0B0B00181818004D4D4C00716E6C006B6967006A6866006A6866006D6A
      68007A787700A2A0A000DCDBDB00F5F5F5000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      050004040500040405000605060007140C00053B18000167210001692100016A
      2200016C2200016C2300016D2300016E230003792E00249E5D0094DBBB00F0FA
      F500F9FDFB00C1EEDF007BC9A3003BA96D0012934A0004843500027C2B00027A
      2900027B2900027B2B00027C2B0003833100058C3C0006934300069040000385
      350002802D0002802F0002812F0002822F0002822F0002833000028330000284
      31000386320003883300038B3500038D3700038D3900048F3900049139000495
      3E00059744000D8943003C765600FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000808
      08000909090061616100FDFDFD00EBEBEB00F4F4F400FCFCFC00FDFDFD00D5D5
      D5004F4F4F000303030015151500060606000606060009090900080808000909
      090069696900F0F0F000EBEBEB00F7F7F700FCFCFC00F1F1F100F7F7F700DCDC
      DC003636360011111100080808000E0E0E000505050018181800FFFFFF00FFFF
      FF00FAFAFA00F9F9F90004040400090909000C0C0C0003030300080808009595
      9500FDFDFD0000000000FAFAFA00F9F9F900FCFCFC00FCFCFC00B3B3B3002E2E
      2E000606060006060600080808000C0C0C001212120008080800111111008F8F
      8F00F4F4F400FAFAFA00F7F7F700F9F9F900FDFDFD00B2B2B200151515000505
      05000A0A0A000D0D0D000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D3FF
      FD0000590000005C0000005A00000067000000802C00148A4A001A8E4D00178E
      4D00178E4D001D8E4D00238F4E001A8C4100005F0000005A0000005900000073
      0700B4F5D500038414000059000000560000FBFBFB00EBEBEB00B5B4B4008684
      8400737170006F6D6B006D6B69006D6B69006E6C6900706F6C00272626000E0D
      0D000B0B0B000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C
      0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C
      0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C
      0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C
      0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C
      0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C
      0C000B0B0B00181818004E4D4C0073706F006E6C6A006D6B69006D6B69006F6D
      6B007C7A7900A3A3A300DFDFDF00F7F7F7000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      050004040500040405000605060007140C00053C180001692100016B2100016C
      2300016E2300016E2400016F2400027429002394520083D1AD00F3FBF700FBFE
      FD00B7ECD80059BD8F0019944E00037F3000017A2900017A2900027B2A00027C
      2A00027D2A00027E2C00027F2C00027F2C0002802E0002802E0002812E000282
      2E0002822E000282300002833000028531000288320002893400028A3500038C
      3700038E390003903B0003933C0003953E0004973F0004973F0004983F00049C
      4300069D47000D8C46003C765600FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000C0C
      0C000A0A0A001515150090909000F3F3F300F9F9F900F4F4F400F7F7F700FDFD
      FD00D9D9D9007A7A7A002A2A2A00121212000606060006060600111111003F3F
      3F00E3E3E300EDEDED00F3F3F300EEEEEE00F9F9F900F4F4F400E3E3E3006969
      69000A0A0A0011111100060606000E0E0E000C0C0C0018181800FFFFFF00FFFF
      FF00FAFAFA00F7F7F70005050500090909000A0A0A000D0D0D000A0A0A002727
      2700B2B2B200F3F3F300F7F7F700FAFAFA00EDEDED00EEEEEE00FAFAFA00BDBD
      BD00272727000E0E0E0008080800030303001F1F1F004B4B4B00ABABAB000000
      0000FAFAFA00FAFAFA0000000000FAFAFA000000000046464600090909001010
      1000060606000A0A0A000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D3FF
      FD0000580000005C0000005A0000007D1F009BDDBD00D3FCFF00D7FFFF00D3FF
      FF00D3FFFF00D9FFFF00DEFFFF00D7FBED0000600000005A0000005900000073
      0700B4F5D500038414000059000000560000FCFCFC00EDEDED00B8B8B6008987
      860076737200726F6D00706D6B00706D6B00706E6C0073716F00282726000E0D
      0D000C0B0B000D0C0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C
      0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C
      0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C
      0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C
      0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C
      0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C0C000D0C
      0C000B0B0B0018181800514E4E0076737100706E6C006F6D6B00706D6B00726F
      6D007E7C7B00A5A5A500E1E1E100F9F9F9000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      050004040500040405000605060007150C00053E1800016C2300016E2300016E
      24000170240001712500017126000F873F0061BC8E00E7F6EF00FAFEFC00D5F2
      E9004BBE8A000F8B4100027B2C00027B2A0003802F0004863500048635000385
      330002802C0002802E0002812E0002812E0002822F0003853300048A3800048D
      3900048D39000389360002893400038C3700038F380003913A0003933C000495
      3E0004963E0004963F0004983F0004983F000499410004994100049A4100059F
      450007A04A000E8F49003C765600FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000A0A
      0A00060606000D0D0D0015151500FDFDFD00FDFDFD00F7F7F700F4F4F400F9F9
      F900F1F1F100FDFDFD00E3E3E3009D9D9D006E6E6E0078787800B3B3B300F3F3
      F300EEEEEE00F1F1F100F0F0F00000000000FDFDFD00FAFAFA00686868000404
      04000C0C0C000D0D0D000C0C0C00090909000A0A0A0018181800FFFFFF00FFFF
      FF00FAFAFA00F9F9F900060606000A0A0A00080808000C0C0C000A0A0A000101
      010031313100B7B7B700FDFDFD00EEEEEE00F1F1F100F7F7F70000000000FFFF
      FF00CECECE0092929200737373006B6B6B00B9B9B900F0F0F000FDFDFD00F7F7
      F700FAFAFA00F9F9F900FCFCFC00F9F9F900D7D7D70005050500080808000C0C
      0C00080808000D0D0D000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D3FF
      FE00004C0000005D0000005800000C7D1500B2DD9E00C2FFF000D3FDFE00D1FF
      FD00CFFCFA00CFFCFD00CFFDFF00CAF7E6000063000000510000005400000073
      0700B4F5D500038414000059000000560000FEFEFE00F1F1F100BCBCBA008C8B
      8900787674007572700073706E0073706E0073716F0076737200292827000F0E
      0E000D0C0C000E0D0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D
      0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D
      0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D
      0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D
      0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D
      0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D0D000E0D
      0D000C0B0B001918180052504F00797674007473710074727100747271007673
      7100817F7D00A9A7A700E5E5E500FAFAFA000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      050004040500040405000605060007150C00053F1800016E2400017024000171
      2500017325000174260001772A0035A46800A4E6CC00FEFFFE00EAF7F20073CE
      AB000F893E00027C2C0004823200198F450030A05E0039AE6F0039AD6E0034A7
      670024965100088B3B0002853100028531000F8F410026A05B0038AE6D003AB2
      720039B1710032A76400159F51000798430004953E0004953D0004953E000496
      3F0004973F0004983F0004994000049A4000049A4200049B4200049C420005A0
      460007A24D000F914C003C775700FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000A0A
      0A00101010000A0A0A000505050062626200A9A9A900D3D3D300F9F9F900FFFF
      FF00FFFFFF00FCFCFC00FDFDFD00FCFCFC00FDFDFD00FDFDFD00FCFCFC00FDFD
      FD00FDFDFD00F9F9F900FCFCFC00F4F4F400CDCDCD0046464600090909001010
      10000A0A0A000D0D0D000C0C0C00080808000909090018181800FFFFFF00FFFF
      FF00FAFAFA00F7F7F700060606000A0A0A000A0A0A00080808000A0A0A000E0E
      0E00060606002222220072727200DEDEDE00F9F9F900F9F9F900FCFCFC00FAFA
      FA00FFFFFF00FDFDFD00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FAFAFA00FFFF
      FF00FAFAFA00E7E7E700C4C4C400868686002E2E2E000D0D0D00080808000808
      0800040404000D0D0D000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D7FF
      FF00005400000058000000580000087B15009BD59E00D3F7F400CFFCF700DBFF
      FA00DBFFFA00DBFFFA00D7FDFA00CFF5E4000061000000540000005600000073
      0700B4F5D500038414000059000000560000FEFEFE00F4F4F400C1C1C000908F
      8E007B7A780077757300767371007673710076747200797775002A2A29000F0F
      0F000D0D0D000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E
      0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E
      0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E
      0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E
      0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E
      0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E
      0E000C0C0C0019191800545251007C7A7800848281008D8B8B00868483007E7C
      7A0084828100ADACAB00EAEAEA00FAFAFA000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      050004040500040405000605060007150D000540190001702500017325000173
      270001752700017628000485390066BC8F00E9F7F100F7FCFA00C3E9D6000894
      4700037F2E0003812E0019A1560077CFA800CEEFE300E7F7EF00E5F6EE00DBF3
      E900A7E4D20032B673000B9342000890400049BC8600A8E7D000E4F5ED00E8F7
      F000E6F6EF00D6F1E40066D8A90029B36A000D9D4A000497400004973F000498
      400004994000049A4000049A4200049C4200049C4200049D4300049E430005A2
      470008A64F00109550003C795700FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000A0A
      0A0010101000090909000D0D0D00010101001111110035353500555555005757
      5700585858005858580058585800555555005454540059595900565656005C5C
      5C005D5D5D005858580059595900494949002626260003030300101010000808
      0800090909000C0C0C0009090900080808000C0C0C0018181800FFFFFF00FFFF
      FF00FAFAFA00F7F7F700060606000A0A0A000C0C0C00090909000D0D0D000808
      08000C0C0C000C0C0C00040404003D3D3D0057575700565656005D5D5D005A5A
      5A0058585800595959005454540058585800565656005A5A5A00585858005A5A
      5A005B5B5B00484848001C1C1C000303030008080800080808000C0C0C000909
      0900040404000C0C0C000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE900D5FFFF00D5FF
      FF005BB37B00006A000000590000067B150098D4A100D9F8F70098D7B00060B7
      670066B8680066B8680064B867005BB35B000058000000560000005800000073
      0700B4F5D500038414000059000000560000FEFEFE00F7F7F700CAC7C7009693
      93007F7D7C007B7977007A7775007A7775007A7876007D7A79002B2B2A000F0F
      0F000D0D0D000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E
      0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E
      0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E
      0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E
      0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E
      0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E
      0E000D0D0C001B1A1900575553007E7C7A00A19F9F00D5D5D500B3B2B1008B88
      870088868500B1B0AF00EEEDED00FBFBFB000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      050004040500040405000605060007160D0005431A0001732700017527000176
      28000176280001782900109E540080DAB20000000000E9F8F30088D5B900037F
      2F0002802E000796460092D4B200EEF8F3000000000000000000000000000000
      000000000000E8F7F00042C4880034C68700A8E8CD00FBFDFC00000000000000
      0000FEFFFF000000000000000000D1EFE30049C0810006A1490004994000049A
      4100049A4200049C4200049C4200049E4300049E4300049F4300049F440005A5
      490008A95200109752003C795700FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000C0C
      0C0001010100121212000505050010101000050505000A0A0A00040404000808
      080005050500040404003B3B3B0078787800989898008C8C8C006C6C6C003232
      3200050505000909090004040400101010000606060005050500090909000D0D
      0D00101010000A0A0A000C0C0C000C0C0C000A0A0A0018181800FFFFFF00FFFF
      FF00FAFAFA00F7F7F70005050500090909000C0C0C000C0C0C00090909000909
      0900060606000E0E0E00040404000D0D0D000404040005050500121212000000
      00004B4B4B008383830097979700979797005E5E5E001D1D1D00000000000808
      080009090900090909000E0E0E000C0C0C0008080800080808000A0A0A000909
      0900060606000C0C0C000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000095D4A400C5F7E600D3FF
      FD00DBF9F20043AB670026913F00007B15009ED6A100D3F9F6005BB47500006D
      0000006F00000070000000700000006F00000055000000580000005900000073
      0700B4F5D50003841400005900000056000000000000FBFBFB00D1D0D0009998
      97007F7E7D007B79770079777500797775007A7876007C7A79002B2A2A000F0F
      0F000D0D0D000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000F0E
      0E000E0E0E000F0E0E000F0F0E000F0F0E000F0F0E000F0F0E000F0F0E000F0F
      0E000F0F0E000F0F0E000F0F0E000F0F0F000F0F0F000F0F0F000F0F0F000F0F
      0E000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F
      0F000F0F0E000F0F0E000F0F0E000F0F0E000F0F0E000F0E0E000F0E0E000E0E
      0E000E0E0E000E0E0E000E0E0E000E0E0E000F0E0E000E0E0E000E0E0E000E0E
      0E000D0C0C001B1A1900575654007F7D7B008684840090908F0089888700807E
      7D0087868500B3B3B100F1F1EE00FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      050004040500040405000505060007160D0005431A0001762800017928000179
      2A00027A2A00027B2A003DAD7400ADE7D30000000000CEF0E1001DB56D000281
      2E0002812F004EC08E00C8EFE000FDFEFE0000000000FBFDFC00ECF8F300D6F1
      E400E9F7F100FAFDFC00D5F1E400B1E8D300D7F3E90000000000E3F6F00090DF
      C20042CE9200B1E8D700F1FAF700F8FCFB00C9EDDD0053C1860006A14800049C
      4200049C4300049E4300049E4300049F4400059F440005A0440005A1450006A7
      4A0009AC5500119A56003C795800FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000A0A
      0A0011111100050505000D0D0D00040404000A0A0A000C0C0C00010101000909
      09003D3D3D009E9E9E00DFDFDF00F9F9F900FCFCFC00FCFCFC00F9F9F900CDCD
      CD00252525000E0E0E000A0A0A00121212000A0A0A000A0A0A000C0C0C000C0C
      0C000A0A0A00090909000A0A0A000C0C0C000C0C0C0018181800FFFFFF00FFFF
      FF00FAFAFA00F9F9F90005050500090909000A0A0A00090909000A0A0A000A0A
      0A000D0D0D00090909000E0E0E00080808000A0A0A000C0C0C000D0D0D004D4D
      4D00EBEBEB00FDFDFD00FDFDFD00FCFCFC00EDEDED00C0C0C000646464001515
      15000808080009090900090909000A0A0A000A0A0A000C0C0C000A0A0A000909
      0900060606000A0A0A000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000590000005A000037920F007BD09600BAF1
      E400D9FFFF00D5FFFF00D7F9DD00208C4200A1D9A500C2F5F4003AA976000056
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D50003841400005900000056000000000000FDFDFD00DBDADA00A09E
      9D0084838100807F7D007E7D7B007E7D7B007F7D7C0081807E0031312F001615
      1500141313001515150015151500151515001616160016161600171716001817
      1700171717001817170018181800181818001918180019191800191919001A19
      1900191919001A1A19001A1A1A001B1B1B001B1B1B001B1A1A001B1A1A001B1A
      1A001B1A1A001B1A1A001B1A1A001B1A1A001B1A1A001B1A1A001A1A1A001A1A
      1A001A1919001A19190019191900191918001818170018171700181717001717
      1700171717001717170017171600161616001716160016151500151515001515
      150013131300212020005D5C5A0084828000817F7E00807F7D00807F7D00817F
      7E008C8B8A00B8B7B600F3F3F200FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      050004040500040405000505060007170D0005451B0001782A00027A2A00027B
      2A00027C2B00027D2B0065B88900D6F2E700F8FDFA00BAE6CF000AA050000283
      2F000284310090D3B000E7F7F10000000000FBFDFC00C6F0DE0059CB970031A6
      61003ABB7A00B6E7D400EDF9F400E8F7F200F1FAF700F9FDFB00B0E6CD0026B9
      71000DA4500029AE65008BDEC000E8F9F400F7FCFA0097E1C4002DB87400049E
      4300049E4300049F440005A0440005A1440005A2450005A2450005A3450006A9
      4C000AAE5700139E59003C795800FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000909
      09000C0C0C0010101000090909000D0D0D00090909000C0C0C00121212004C4C
      4C00CFCFCF00FAFAFA00EEEEEE0000000000F7F7F700FCFCFC00FAFAFA00FFFF
      FF00BCBCBC002A2A2A0011111100050505000C0C0C00080808000A0A0A000808
      0800090909000A0A0A000A0A0A000A0A0A000A0A0A0018181800FFFFFF00FFFF
      FF00FAFAFA00F9F9F900060606000A0A0A000A0A0A000A0A0A000A0A0A000909
      09000909090005050500080808000A0A0A0009090900000000007B7B7B00EEEE
      EE00FAFAFA00FCFCFC00FCFCFC00F9F9F900FAFAFA00F7F7F700F1F1F1009292
      92002222220005050500080808000A0A0A00090909000C0C0C00090909000808
      0800080808000C0C0C000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000590000005500000055000040A8
      7500C2FFFA00E2FFFA00D1FFEE00E6F5F300B4E2C600C7F9F70040AB77000056
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000E6E5E500ADAB
      AB00918F8E008D8C8A008B8A88008B8B89008D8B8B008F8F8D00434342002626
      260025252400282828002A2A2A002B2A2B002C2C2C002D2D2D002F2F2E003130
      3000323131003333330034343400343434003535340036363500373636003737
      37003737370038383700383838003939390039393900393939003A3939003A39
      39003A3939003A3939003A393900393939003939380039393800383838003838
      3800383737003737370037373600363636003535350034333300343333003333
      33003232320030303000302F2F002E2D2D002D2D2D002C2B2B002A2A2A002828
      2800262626003333330071716F00949291008D8C8B008B8A8A008C8B8A008C8B
      8A0099989700C2C1C000F5F5F500FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      050004040500040405000505060007180D0005471B00027B2A00027B2B00027E
      2B00027F2C00027F2D0070BC8F00E1F4EC00F7FCFA00B5E1CA00079444000285
      300003863200AADABE00F3FBF70000000000F1FAF6009EDBBC0013A354000390
      3B00059A44003BBA7900C1EAD500F2FBF700FCFEFD00F6FBF900A0E1C1000BAE
      5A00049A4200059C44002AB66F00BFEAD500F8FCFA00D5F4E80067CD990006A5
      4A0005A0440005A0450005A2450005A2450005A4450005A4460005A4460007AA
      4D000BB15A0014A05D003C7A5800FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000A0A
      0A000A0A0A000C0C0C000C0C0C000A0A0A00050505000D0D0D0003030300DBDB
      DB00FFFFFF00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FFFFFF00FDFDFD00FDFD
      FD00FCFCFC00B7B7B7002D2D2D000C0C0C000A0A0A000A0A0A000C0C0C000A0A
      0A00090909000A0A0A000A0A0A000A0A0A000A0A0A0018181800FFFFFF00FFFF
      FF00FAFAFA00F9F9F900060606000A0A0A000A0A0A000A0A0A000A0A0A000A0A
      0A000A0A0A00080808000D0D0D000E0E0E000808080073737300E4E4E400F1F1
      F100FDFDFD00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FFFFFF00FCFC
      FC00999999000D0D0D000505050008080800090909000A0A0A00090909000808
      0800080808000C0C0C000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000590000005A000000580000005C0000006C
      0000D3FBE800CCFFF700DBFFF200D7FCFE00DDF9EA00D1FFFD0040A976000056
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000EDECEC00B9B8
      B7009D9B9A00979695009594930096959400989797009D9C9A004D4D4C002B2B
      2B00282928002D2C2C002E2E2D002F2F2F003030300032323100333333003534
      3400373636003737370038383800393939003B3A3A003C3B3B003D3C3C003D3D
      3D003E3E3D003E3E3E003F3F3E0040403F004040400040404000414040004140
      40004140400041404000414040004040400040403F0040403F003F3F3F003E3E
      3E003E3E3E003D3D3D003D3D3C003C3C3C003B3B3B003A393900393939003738
      37003737370035353500343333003232320031313100302F2F002E2E2E002C2C
      2C0029292900393939007F7E7D00A2A19F009998980097979600979796009796
      9500A6A4A400CDCCCC00F8F8F800000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      050004040500040405000505060007180D0005481B00027E2B00027E2D000280
      2D0002812E0002822F0071BD9000E2F5ED00F3FAF700AADBC000048B39000388
      320003883400ACDBC000F3FBF70000000000ECF8F3008FD2AC0004933D000392
      3C0004933C00069D470070D2A600D9F5EA0000000000FBFDFC00ACE7CC0016B7
      6900049B4200049C430006A248007CD6AF00DEF6EE00F7FCF90091DFBA0012B4
      610005A2450005A2450005A4450005A4460005A5460005A6470005A6480007AC
      4F000CB45D0015A360003C7A5800FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000A0A
      0A000A0A0A000C0C0C000A0A0A000C0C0C000A0A0A00080808000A0A0A00FDFD
      FD00FDFDFD00FDFDFD00FAFAFA00FDFDFD00FDFDFD00FDFDFD00FFFFFF00FFFF
      FF00F7F7F700FCFCFC0087878700050505000A0A0A000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A0018181800FFFFFF00FFFF
      FF00FAFAFA00F9F9F900060606000A0A0A000A0A0A000A0A0A000A0A0A000A0A
      0A000A0A0A000D0D0D000A0A0A000606060034343400DBDBDB00FCFCFC00F9F9
      F900F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00F7F7
      F700EBEBEB000C0C0C00090909000C0C0C000808080009090900090909000808
      0800080808000C0C0C000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005900000059000000580000007A
      1500067F1B000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005600000056
      0000005800000055000000560000005800000058000000580000005900000058
      000037AB6200A1F0D100D1FFEF00D3FFFF00D9FFFC00C7FBFC0046AB75000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000F0F0F000BEBD
      BC00A09E9E00989796009595940096959500999797009F9E9C00504F4E002727
      2700222222002525240026262500272726002727260028272700282828002828
      280029292900292929002A2A2A002A2A2A002B2B2A002B2B2B002C2B2B002C2C
      2C002C2C2C002D2D2D002D2D2D002D2D2D002D2D2D002D2D2D002D2D2D002D2D
      2D002D2D2D002D2D2D002D2D2D002D2C2C002D2C2C002D2C2C002C2C2C002C2C
      2C002C2C2B002B2B2B002A2A2A002A2929002929290028282800272727002627
      2600262626002625250025242400242424002323230023232300222222002020
      20001F1F1E003433330082808000A2A09F009998980098979600989796009897
      9600ABA9A800D5D2D200FBFAFA00000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      050004040500040405000505060007180D0005481B00027F2C0002802E000282
      2E00028330000284300072BE9100E3F5ED00F1FAF500A7D9BD00038833000389
      3300038A3600A7DABD00F1FAF60000000000EEF9F40092D5AF00049742000394
      3D0004953E0004963F0029BB7600B5EAD200FBFEFC0000000000BFEFDB0030C4
      8200049D4200049E4300049E43003AC68A00C0EFDD00FEFFFE00B2ECD60037C3
      830005A3460005A3460005A5460005A5470005A7480005A7480005A8490007AE
      51000DB6600017A663003C7B5800FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000A0A
      0A0009090900090909000A0A0A00090909000A0A0A0004040400666666000000
      0000FDFDFD00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FCFCFC00FDFD
      FD00F9F9F90000000000DBDBDB0045454500080808000C0C0C00090909000C0C
      0C00090909000A0A0A000A0A0A000A0A0A000A0A0A0018181800FFFFFF00FFFF
      FF00FAFAFA00F9F9F900060606000A0A0A000A0A0A000A0A0A000A0A0A000C0C
      0C000C0C0C00080808000C0C0C000808080093939300F0F0F000FAFAFA00F7F7
      F700FDFDFD00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FDFDFD00FAFAFA00FFFF
      FF00F7F7F700232323000A0A0A000E0E0E00080808000C0C0C00090909000808
      0800080808000C0C0C000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005600005EB4
      7A004FA4530000690000006A0000006A0000006A0000006A0000006A0000006A
      0000006A0000006A0000006A0000006A0000006A000000690000006A00000061
      0000005A00000066000000690000006A0000006A0000006A0000006A00000069
      0000006C000092E8B700CAFDEE00D3FFFD00CCFFFC00BDF9F90043A66B000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000F1F1F100BFBD
      BC009C9B9A00929190008F8E8E008F8E8E0092908F0098979600545352002827
      2700222222002424230024242300242423002323230024232300232323002323
      2200222222002222220021212100212121002121200020202000202020002020
      2000201F1F00201F1F001F1F1F001F1F1E001F1F1E001E1E1E001E1E1E001E1E
      1E001E1E1D001E1D1D001D1D1C001D1D1C001D1C1C001D1C1C001C1C1C001C1C
      1C001C1C1B001C1B1B001B1B1B001B1A1A001A1A1A001A1A1A001A1A1A001A1A
      19001A1919001A1919001A191900191919001919190019191900191918001818
      17001818170032313000807F7E009694930091908F00918F8E0091908F009392
      9100AAA8A700D8D6D500FDFCFC00000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      050004040500040405000505060007180D0005491C0002812E00028230000284
      3000028531000286310074C09200E4F6ED00F4FBF800B1DFC60005934000038B
      3600038C380089D4B000E4F7F00000000000F4FCF8009EDEBD000AA654000496
      3E0004983F0004983F0009A953009BDEBC00F4FBF80000000000CFF2E60056CD
      9B00049E430004A0430004A0440015BC6C00ABE9CD00FAFDFC00CEF2E60061CC
      9C0005A5470005A5470005A7480005A7480005A94A0005A94A0006AB4B0008B1
      53000FB864001AA867003C7D5800FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A00090909000A0A0A000909090014141400A6A6A600FAFA
      FA00FCFCFC00FFFFFF00FCFCFC00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FFFF
      FF00FAFAFA00FCFCFC00FCFCFC006F6F6F000C0C0C000C0C0C000A0A0A000C0C
      0C00090909000A0A0A000A0A0A000A0A0A000A0A0A0018181800FFFFFF00FFFF
      FF00FAFAFA00F9F9F900060606000A0A0A000A0A0A000A0A0A000A0A0A000C0C
      0C000A0A0A000D0D0D000C0C0C0027272700D0D0D000FAFAFA00F7F7F7000000
      0000FDFDFD00FDFDFD00FDFDFD00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FDFD
      FD00FDFDFD004C4C4C000A0A0A00060606000A0A0A0009090900090909000808
      0800080808000C0C0C000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB148000059000000590000005F000000751800BFE5
      D90084BF79003D9917003D9A17003D9A17003D9A17003D9A17003D9A17003D9A
      17003D9A17003D9A17003D9A17003D9A17003D9A17003D991700499D18000E7B
      0000006700001A951800329917003D9A17003D9A1700409918003D9A17003596
      1700067E2F00B4EDCB00D1FFF200D3FFFA00D1FFF300BFFFF90026913E000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000F3F3F300BFBE
      BC00999896008D8B8A008A8988008A8988008B8A8900908F8E005B5B5A003130
      30002B2B2B002C2C2B002C2C2B002B2B2B002B2B2B002B2B2A002A2A2A002A2A
      2800292828002828280027272700272727002726260026262600262625002625
      2500252525002525240025242400242424002424240023232300232322002322
      220022222100222121002121200021212000212020002120200020201F001F1F
      1F001F1F1F001F1F1F001F1F1E001E1E1E001E1D1D001E1D1D001E1D1D001D1C
      1C001C1C1C001C1C1C001C1B1B001B1B1B001B1B1B001B1B1B001B1B1A001A1A
      19001D1C1C0038383700817F7E008C8B8A008A8988008A8988008B8A89008F8D
      8C00ABA9A700DDDBDA00FEFEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      050004040500040405000505060007180D00064B1D0002842F00028531000286
      310002873200038833006CC09000DCF4EA00F8FCFA00BAE8D1000BA95900038E
      3700038F390044C48C00C5F0DF00FEFFFE00FCFEFC00BAECD40031BF7B000499
      41000499400004994000069E460093D8B200EFFAF50000000000E1F6EF0082D6
      B200049F440005A1440005A145000CB76000A0E4C300F6FCF900DBF5EB0074D1
      A50005A7470005A7480005A94A0005A94A0006AB4C0006AC4D0006AD4F0008B3
      570011BB69001CAB6B003C7E5800FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000A0A0A00090909000C0C0C0026262600D5D5D500F9F9
      F900FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00F9F9F900FCFCFC00A9A9A9000E0E0E000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A0018181800FFFFFF00FFFF
      FF00FAFAFA00F9F9F900060606000A0A0A000A0A0A00090909000A0A0A000A0A
      0A000909090008080800090909004A4A4A00F1F1F100F1F1F100F9F9F900FDFD
      FD00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FCFCFC00FDFD
      FD00FDFDFD0071717100080808000D0D0D000A0A0A0009090900090909000808
      0800080808000C0C0C000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005C0000005C000000710E00EAFDFF00CCFF
      FD00CFFDFD00D9FFF900D9FFF900D9FFF900D9FFF900D9FFF900D9FFF900D9FF
      F900D9FFF900D9FFF900D9FFF900D9FFF900D9FFFA00D9FCFD00E6FFFF0066B0
      880000743000D3FDFF00D7FFFC00D9FFFA00D7FDF900DDFBFF00CFFFFC00DBFF
      F900F5FFFF00E0FFFC00D7FFFD00DDFFFC00EFFDF900CFFFFF00005600000059
      0000005C00000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000F5F5F500C2C1
      C000989796008B8987008987850089878500898886008D8C8A00646462003939
      3800313131003232310032313100313030003030300030302F002F2F2F002F2F
      2E002F2E2E002E2E2E002D2D2D002D2D2D002D2C2C002C2C2C002C2C2B002C2B
      2B002B2B2B002B2B2A002B2A2A002A2A29002929280028282700282727002727
      2600272626002626250026252500252525002524240025242400242424002424
      2400242424002424240024242300232323002322220023222200232222002221
      21002121210021212100202020002020200020201F001F1F1F001F1F1F001E1E
      1D002322220042424100838180008988870089878500898785008A8887008E8D
      8C00AFAFAD00E2E2E10000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      050004040500040405000505060007190D00064D1D0002853100028632000389
      320003893400038A350049B78100B9EBDB00FBFEFC00C6EEDB0017B86D00038F
      390003903A000FB16000A3E5C500F7FDFA0000000000EFFAF500A7E0C30014A5
      5500049B4100049B4200049C42008CD5AE00EAF9F30000000000F3FBF700ABE3
      C50005A3470005A3450005A345000CB96200A0E5C400F6FCF900EEFAF40092DA
      B20005A8490005A84A0006AB4C0006AC4D0007AE4E0007AE4F0008AF51000AB5
      5A0013BD6D0020AE6E003C7E5900FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A002F2F2F00EEEEEE00F9F9
      F900FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FAFAFA00FAFAFA00BABABA00121212000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A0018181800FFFFFF00FFFF
      FF00FAFAFA00F9F9F900060606000A0A0A000A0A0A000A0A0A000A0A0A000909
      090009090900050505000909090056565600F9F9F900F7F7F700FAFAFA00FAFA
      FA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FDFD
      FD00FCFCFC0083838300050505000E0E0E00090909000C0C0C00090909000808
      0800080808000C0C0C000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005A000000590000006700006CBA6100C5FB
      F400CAFFF100CCFFF700CCFFF700CCFFF700CCFFF700CCFFF700CCFFF700CCFF
      F700CCFFF700CCFFF700CCFFF700CCFFF700CCFFF700CCFFFA00DBFFFF005EB1
      880000763000C7FDFF00CAFFFC00CFFFF700D3FFFA00D5FFFA00CFFFF900D1FD
      F900CAFCEF00D5FDFE00D3FFFF00D1FDFF00BFF3F0006CC46B0000590000005A
      000000590000005A000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000F6F6F600C6C5
      C4009C9A99008B8988008988860089888600898886008C8B890071706E004544
      43003A3A39003A3A39003A3A3900393939003939390039393800393838003938
      3700383737003737360037363600373636003635350035353400353434003434
      3200343232003232310032313100313130003131300030302F00302F2F002F2F
      2E002F2E2E002E2E2D002E2D2D002D2C2C002D2C2C002D2C2C002C2B2B002B2B
      2B002B2B2B002B2B2A002B2A2A002B2A29002A2929002A2929002A2828002927
      2700292726002726260026262500262625002625250025252400252524002323
      22002B2B2A004E4E4D00858583008988860089888600898886008A8988009190
      8F00B3B3B200E5E5E50000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      050004040500040405000505060007190D00064E1E000389320003893500038A
      3500038B3500038B360022AF680091E3C10000000000DAF5EB004CCC98000392
      3A0003923D0004943D0077CCA100DCF5EC0000000000FDFEFE00E4F7F10084DC
      BB0008A34B00049F4400049E430062CA9B00CEF2E70000000000F7FCFA00B7E8
      CE0009B0540005A4470005A447000EBA6300A1E6C500F6FCFA00ECF8F3008FD9
      B10006AB4C0006AC4D0007AE4E0007B0500008B0510008B1530008B255000BB8
      5E0015C1710022B072003C7E5900FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000A0A0A000A0A0A000808080032323200E5E5E500F3F3
      F300FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00FFFFFF00FDFDFD00ADADAD00141414000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A0018181800FFFFFF00FFFF
      FF00FAFAFA00F9F9F900060606000A0A0A000A0A0A000A0A0A000A0A0A000909
      090008080800060606000A0A0A0054545400FAFAFA00FDFDFD00F0F0F000FDFD
      FD00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA00FCFC
      FC00FCFCFC007F7F7F00060606000C0C0C00080808000C0C0C00090909000808
      0800080808000C0C0C000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB148000059000000590000005F00000377000072CE
      82005BBE78002094560023945600269456002694560026945600269456002694
      56002694560026945600269456002694560026945600269456002F955A000E77
      1F00006700001A8F5B001D925700209456003DA56A00C2FDE900D1FFF400D1FF
      F300C5FBEF00D1FFF700D1FFFD00D5FFFF00CAF1E60014800F00005900000058
      000000580000005A000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000FAFAFA00CACA
      CA009D9D9C008A8A89008989880089898800898988008C8B8A007B7978004E4E
      4D0041414000414140004141400040403F00403F3F003F3F3F003F3F3F003F3F
      3E003F3E3E003E3E3E003E3E3E003E3E3E003E3D3D003D3D3C003D3C3C003C3C
      3B003B3B3A003B3B3A003A3A39003A3A39003A3A390039393900393938003938
      3800383837003837370037373600373636003636350036363500353534003534
      3400343433003433330033333100333331003232300031313000313130003030
      2F002F2F2F002F2F2E002F2E2E002E2E2D002E2E2D002E2D2D002D2D2C002B2B
      29003333320058575600898886008989880089898800898988008C8B89009594
      9300B9B9B800EAEAE90000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      0500040405000404050005050600071A0D00064F1E00038A3500038B3500038B
      3700038D3700038F38000AA24F0074D2A400F5FCF900F0FAF700A9E0C6000594
      3E0004953D0004953F0014AA5A008CD9B300F1FBF60000000000FBFEFD00EAF9
      F200BEE8D30065D4AA003CCC90008FDFBE00E2F6EE0000000000F9FDFB00BCEC
      D5000EBC650005A7470005A7470012BE6D00A6E9CB00F9FDFB00D4F4E9006BD3
      A40007AE4F0007B0510008B0530008B1540009B2550009B457000AB559000DBB
      620018C3750026B176003C7F5900FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A0021212100BEBEBE00FFFF
      FF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00FAFAFA00FCFCFC008C8C8C000A0A0A000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A0018181800FFFFFF00FFFF
      FF00FAFAFA00F9F9F900060606000A0A0A000A0A0A00090909000A0A0A000A0A
      0A0009090900080808000C0C0C003D3D3D00DCDCDC00FDFDFD00F9F9F900FDFD
      FD00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FDFD
      FD00FCFCFC005E5E5E0010101000080808000A0A0A000A0A0A00090909000808
      0800080808000C0C0C000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB148000059000000590000005F00000377000072CE
      82005BBE78002094560023945600269456002694560026945600269456002694
      56002694560026945600269456002694560026945600269456002F955A000E77
      1F00006700001A8F5B001D925700209456003DA56A00C2FDE900D1FFF400D1FF
      F300C5FBEF00D1FFF700D1FFFD00D5FFFF00CAF1E60014800F00005900000058
      000000580000005A000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000FCFCFC00D2D0
      D000A2A2A1008D8C8B008B8B8A008B8A89008B8A89008C8C8A0081807F005555
      5400474746004747460047474600464645004645450045454500454545004544
      4400444444004444440044444400444444004343430043434200434242004242
      410041414100414141004141400041404000404040003F3F3F003F3F3F003F3F
      3E003F3F3E003E3E3E003E3E3D003D3D3D003D3D3D003D3D3D003D3C3C003C3C
      3C003C3B3B003B3B3B003B3A3A003A3A3A003A39390039393900393939003939
      3900393938003938380038383700383737003737360037363600363635003333
      32003D3D3C00626160008C8A89008B8A89008B8A89008B8A89008E8D8B009A99
      9800C1C0BF00EFEFEF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      0500040405000404050005050600071A0E0006502000038B3700038D3700038E
      3900038F390003903A0004943E005ABC8600D9F3E800FBFDFC00D5F2E30015B8
      6B00069A430004984000059C44002AB971008BE0BB00EBF9F30000000000FDFE
      FE00F6FCF900E0F7EF00D6F5E900E8F9F200F9FDFC0000000000FCFEFD00C5EF
      DB000FBF6A0005A8490005A8490038CA8A00BFF0DC00FEFFFE00C3F1E10051CF
      990008B0530008B1540009B2560009B458000AB559000AB65A000AB75C000EBD
      66001AC578002BB378003C7F5900FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000030303000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000A0A0A000A0A0A00080808000909090086868600F9F9
      F900FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC00F7F7F700F1F1F1005F5F5F00040404000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A0018181800FFFFFF00FFFF
      FF00FAFAFA00F9F9F900050505000A0A0A000A0A0A00090909000A0A0A000A0A
      0A00090909000D0D0D000C0C0C000E0E0E00B2B2B200FCFCFC00FCFCFC00FCFC
      FC00FFFFFF00FCFCFC00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF003636360015151500050505000D0D0D000A0A0A000A0A0A000808
      0800080808000C0C0C000909090045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005A0000005A0000005900000E8B
      0E00007901000055000000550000005500000055000000550000005500000055
      0000005500000055000000550000005500000055000000550000005500000058
      000000590000005100000054000000550000006F0000BDF5E400D1FFF600D1FF
      F400CFFDF700D1FFF700D1FFFE00B4EBDB0069B87B0000610000007A0E001A86
      2100006A0000005A000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000FDFDFD00DBDB
      DA00ABABA900918F8E008D8C8B008C8B8A008C8B8A008D8C8B00868584005C5C
      5C004D4D4D004C4C4B004C4C4B004B4B4B004B4B4B004A4A4A004A4A4A004A4A
      4A004A4A4A004949490049494900494949004848480047474700474747004747
      4700474747004747470047474700474747004747470046464600454545004545
      4500444444004444440043434300434343004343430043434300424242004242
      4200424242004242420041414100414141004140400040404000404040004040
      400040403F00403F3F003F3F3E003F3E3E003E3E3D003E3D3D003D3D3C003C3C
      3B00474747006C6C6A008E8C8B008C8B8A008C8B8A008C8B8A008F8E8C009E9C
      9C00C8C6C600F3F3F30000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      0500040405000404050005050600071A0E0006512000038E3800038F38000390
      3A0003913A0003913A0003913A0024AC620086DDB700FAFDFB00F1FBF60093E0
      BD0015A45300049A4100049A410008A24C002AB86E0073D5A700C7F0E200F2FC
      F700000000000000000000000000000000000000000000000000F7FDFA00B8EC
      D2000DBE660006AA4B0006AB4C007ED9AF00DFF7EE00FCFEFD00A9EBD10030C8
      840009B2560009B458000AB559000AB65B000BB75D000BB85E000BBA5F000FBE
      6A001EC67D002FB47B003C805900FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000040404000C0C0C000C0C0C000909
      09000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000C0C0C002A2A2A00FAFA
      FA00FCFCFC00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00F9F9
      F90000000000F9F9F900BABABA00151515000C0C0C000A0A0A000A0A0A000A0A
      0A000A0A0A000C0C0C000A0A0A000D0D0D000D0D0D0019191900FCFCFC00FDFD
      FD00FCFCFC00F9F9F9000808080008080800090909000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000D0D0D000101010060606000F1F1F100F4F4F400F7F7
      F700FAFAFA00FFFFFF00FFFFFF00FDFDFD00FCFCFC00FFFFFF00FDFDFD00FDFD
      FD00FCFCFC00090909000E0E0E000D0D0D000A0A0A000A0A0A000C0C0C000808
      08000A0A0A000C0C0C000505050045454500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005500000060
      0000005D00000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005A0000005A000000710000C5F1E700CCFFFA00CFFF
      FC00D3FFFE00D3FFFE00D5FFFF007ECEA400005C00000059000060B76900A6DB
      9D002F972900005F000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000000000000000000000000000E4E4
      E400B5B4B30095949300908E8E008E8C8C008E8C8C008E8D8C008A8888006665
      6500555454005151510052515100515151005151510050505000505050005050
      5000504F4F004F4F4F004F4F4F004F4F4F004E4E4E004D4D4D004D4D4D004D4C
      4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C004B4B4B004A4A4A004A4A
      4A004A4A49004A49490049494900494949004949480049494800484847004847
      4700484747004747470046464600464646004646460046464600464646004645
      4500454545004545450045444400444444004444430043434300434342004242
      420051515100777674008F8E8D008E8C8C008E8C8C008E8C8C00908F8D00A19F
      9F00CDCBCB00F8F7F70000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      050004040500040405000505060007190E00065221000390390003913A000391
      3A0003933A0003933A0003933B00079C47004AC08400D2F3E800FCFEFE00E7F7
      F0005CC8970014A35200049C4200049D430005A248001CB060004FC3870072D8
      A60095E6C600BBEDDD00C7F0E300C9F0E400C5EFE200AEEBD50088E2BA0054D0
      910009B4570007AD4D0021C07100B8EAD300F5FCF900F1FBF6008CE1BA0015BE
      6C000AB559000AB65B000BB75C000BB95F000CB961000CBB62000CBC630011C0
      6E0022C7810033B67E003C825900FEFEFE000000000000000000000000000000
      00000000000000000000000000000000000001010100080808000A0A0A000A0A
      0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000909090004040400FCFC
      FC0000000000F1F1F100F7F7F700F9F9F900FFFFFF00F7F7F700FCFCFC00FDFD
      FD00F4F4F400EDEDED005B5B5B00080808000D0D0D000A0A0A000A0A0A000A0A
      0A000A0A0A000D0D0D000C0C0C0008080800080808001F1F1F00FCFCFC00FDFD
      FD00FCFCFC00FAFAFA00010101000D0D0D000C0C0C000A0A0A000A0A0A000A0A
      0A000A0A0A000C0C0C00060606000909090014141400ADADAD00FCFCFC00F9F9
      F900FAFAFA00F9F9F900FAFAFA00FDFDFD00FCFCFC00FAFAFA00F4F4F400FAFA
      FA00CCCCCC000A0A0A000D0D0D000808080009090900090909000A0A0A000A0A
      0A000C0C0C000A0A0A000E0E0E0049494900E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005600000056
      0000005400000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005A0000005A000000710000C5F1E700CCFFFA00CFFF
      FC00D3FFFE00D3FFFE00DBFFF40095C59A00005500000056000081D28C00C2FD
      FD00ACF3DC00006B000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000000000000000000000000000EBEB
      EA00BEBCBC009B9A990092908F008F8D8D008F8D8D008F8D8D008D8C8B00716F
      6E005D5C5C00595959005A595900595858005858580058585800585858005857
      5700585656005756560056565600565656005655550055555400555454005453
      5300535353005353520053535200525251005252510051515000515050005050
      500050504F00504F4F004F4F4F004F4F4F004F4F4E004F4F4E004E4E4D004E4D
      4D004E4D4D004D4C4C004C4C4C004C4C4C004C4C4C004C4C4B004C4C4B004B4B
      4A004B4A4A004A4A4A004A4A4A004A4949004A49490049484800484848004848
      4800595959007F7E7D00908F8D008F8D8D008F8D8D00908E8E0092918F00A6A5
      A400D4D2D200FBFAFA0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      050004040500040405000505060007190E00065321000391390003933B000393
      3B0003933A0003933B0003943C0003953D0021A85D007DD7AF00F0FAF600FCFE
      FD00BBEDDD004CC28A0012A65300049E4300049F430004A1440006A548000CB1
      590027BE74004DC68B0058C991005ACA930056C992003FC585001EBE6E0009B4
      590007AE50000BB85D0075DDAF00E0F7EE00FCFEFD00CAF1E2005ED39D000BB9
      5F000AB85C000AB85E000BB960000BBB62000CBC64000DBD65000DBE670014C2
      720027C9840037B880003C825900FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000141414000E0E0E000C0C0C000E0E
      0E000A0A0A000A0A0A000A0A0A00090909000C0C0C000D0D0D00060606009D9D
      9D00FAFAFA00F4F4F400F7F7F700FFFFFF00FAFAFA00FDFDFD00F9F9F900FAFA
      FA000000000076767600080808001B1B1B00090909000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A00080808000E0E0E000A0A0A003D3D3D00F9F9F900F3F3
      F300FDFDFD00FCFCFC000D0D0D0019191900090909000A0A0A000A0A0A000A0A
      0A000A0A0A00080808000A0A0A00040404001C1C1C0019191900CBCBCB00FCFC
      FC00F9F9F90000000000FCFCFC000000000000000000FAFAFA00F3F3F300E8E8
      E800575757000A0A0A000A0A0A000E0E0E0008080800090909000C0C0C000D0D
      0D00080808000A0A0A000808080066666600E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005900000059000000560000005C
      0000005F0000005A000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005A0000005A000000710000C5F1E600CCFFFA00CFFF
      FC00D1FFFE00D3FFFE00CAFCFF000066000000520000004F0000C2F1EE00D1FB
      FF00CAE9E900005A000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000000000000000000000000000F0F0
      EF00C6C5C400A1A09F0093929100918F8E00918F8E00908F8E00918F8E007A79
      7800676665006160600061616100616161006160600060606000605F5F005F5F
      5F005F5F5F005F5F5E005F5E5E005F5E5E005E5D5D005D5C5C005C5C5C005C5B
      5B005B5B5B005B5A59005A5A5900595958005959580058585700585757005757
      5700575756005756560056565500565555005555550055555500555454005554
      5300545353005353520053525200525252005252520052515100525151005150
      5000514F4F004F4F4F004F4F4F004F4F4E004F4E4E004E4E4E004E4D4D004F4F
      4F00616160008585840091908F00918F8E00918F8E009291900096959300AFAD
      AC00DCDBDA00FDFDFD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      0500040405000404050005050600071A0E000654210003933B0004943E000394
      3D0003933C0004943D0004953E0004973E00059D460029B66B00A6E6CA00F6FD
      FA00F6FCFA00ABEAD40055C58F001BAD5C0005A4480005A2440005A3450005A3
      460005A5470005A7480005A7480005A9490005A94B0005AA4C0006AC4E0008AF
      520015BA660053D49700D5F4E500FAFEFC00EEFAF5008AE1BD0029C57C000AB9
      5F000BBA60000BBB62000CBC64000DBD65000DBF67000EC068000FC16A0017C5
      75002BCB88003BBA83003C835A00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000003A3A3A0009090900090909000E0E
      0E000A0A0A000A0A0A000A0A0A000A0A0A00090909000A0A0A00111111001818
      180082828200DDDDDD00FAFAFA00F7F7F700FAFAFA00F7F7F700FAFAFA00FAFA
      FA00686868000C0C0C00090909000E0E0E000A0A0A000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000C0C0C000A0A0A00050505006E6E6E00F9F9F900FAFA
      FA00FAFAFA00F7F7F70023232300050505000A0A0A000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000A0A0A000E0E0E00090909000D0D0D0035353500A7A7
      A700FAFAFA00FDFDFD00FDFDFD00F7F7F700F4F4F400F4F4F400B8B8B8004D4D
      4D0009090900101010000E0E0E000A0A0A00060606000A0A0A000A0A0A000808
      08000D0D0D0011111100050505009E9E9E00E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005900000059000000580000005A
      0000005C00000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000580000005600000056000000710000C7F8ED00CFFFFF00D1FF
      FF00CCFCFF00D5FFFD00CCFCFF0060C69B0064C5A10064C69B00C7FDFF008CDD
      CD001A9147000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000000000000000000000000000F6F6
      F500CECDCC00A5A4A3009494920092918F0092918F0091918F00929190008181
      8000706F6E006A6969006A6A6A006A6A6A006A69690069696900696868006868
      6800686767006767670067676700676767006666660066656500656565006563
      6300636363006361610062616100616060006160600060605F00605F5F005F5F
      5F005F5E5E005E5E5E005E5E5E005E5D5D005E5C5C005E5C5C005D5B5B005C5B
      5A005B5A5A005A5A5A005A5A5A005A5959005A59590059585800595858005857
      5700585656005656560056565600565555005655550055545400545353005656
      5600696969008A8988009291900092918F0092918F00949291009B9A9900BBB9
      B800E6E4E3000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      0500040405000404050005050600071A0E000654220004953D0004953F000394
      3D0004943D0004953E0004963F0004983F000499400009A24B002CC27D00BAED
      D700F2FBF700F9FDFB00C7F0E3006DD3A30029B86B0010AC540006A7490005A5
      470005A7470005A8490005A94A0006AB4B0006AD4D0007B0520012B65E002BC0
      750059D7A200DEF6EB00FBFEFD00F8FDFB00B7ECD6004BCF90000DBD65000BBB
      63000CBC64000CBD65000DBF67000EBF69000EC06B000FC16C0010C26D0019C6
      79002ECD8C003EBB86003C875B00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000008A8A8A000D0D0D00121212000808
      08000A0A0A000A0A0A000A0A0A00090909000C0C0C000D0D0D00101010001010
      1000060606003838380098989800D9D9D900EDEDED00EBEBEB00CDCDCD008383
      8300080808001B1B1B000909090005050500050505000A0A0A000A0A0A000A0A
      0A000A0A0A00060606000A0A0A00060606001F1F1F00BABABA00FCFCFC00F4F4
      F40000000000F7F7F7005C5C5C00060606000C0C0C000A0A0A000A0A0A000A0A
      0A000A0A0A000C0C0C000A0A0A0006060600161616000D0D0D00050505001515
      1500A7A7A700E1E1E100EAEAEA00F0F0F000C5C5C5006B6B6B00141414000606
      06000E0E0E0011111100040404000D0D0D0009090900090909000C0C0C000C0C
      0C0011111100101010003E3E3E00D5D5D500E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000058000000560000006E0000B7E9CE008FD9A80095D9
      9D00BFFBFF00CFFFFD00D5FFFF00C7FFFC00C7FFFF00CAFFFC00B7F0DD0057BD
      7B00005F00000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000000000000000000000000000FBFB
      FB00D4D3D300A8A7A60095949300949291009391910093919100949392008686
      85007676750070707000707070007070700070707000707070006F6F6F006F6F
      6F006F6E6E006E6E6E006E6E6E006E6E6E006D6D6D006C6C6C006C6C6C006B6B
      6B006B6B6B006969690069696900696969006969690069696900686868006868
      6800676767006767670066666600666666006565650065656500646464006363
      630061616100616161006060600060606000606060005F5F5F005F5F5F005E5E
      5E005E5E5E005E5E5E005E5E5E005D5D5D005D5D5D005C5C5C005A5A5A005E5E
      5E00727271008D8C8B0093929100939191009391910095949300A2A1A000C6C6
      C500EDEDEC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      0500040405000404050005050600071A0E000655220004973F0004953D000494
      3D0004953F0004963F000498400004994000049B4100049C420007A149001FC3
      7D00B9EBD300EFFAF500FCFEFD00ECFAF300A7EACF004DD1970022BB68001BAF
      580016AF580010B055000FB1570017B35B001CB65F0024C06F004CD29A00A5E9
      D400F1FBF700FEFFFF00F9FDFB00CEF3E20053D49C0012C16E000CBB63000CBD
      65000DBF66000EBF68000FC06B0010C16C0010C26E0011C26F0011C371001CC8
      7B0034CE8F0041BD88003D895D00FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000EBEBEB004C4C4C00121212000C0C
      0C00090909000C0C0C000D0D0D000C0C0C000606060009090900080808000808
      080006060600050505000E0E0E002424240041414100363636001C1C1C000E0E
      0E0005050500060606000A0A0A000C0C0C00090909000A0A0A000E0E0E000D0D
      0D000D0D0D00101010000D0D0D000404040070707000F9F9F900F9F9F900FDFD
      FD00F9F9F900FAFAFA00C5C5C5001D1D1D000C0C0C0009090900090909001010
      100009090900080808000C0C0C000E0E0E0008080800080808000C0C0C000808
      0800151515002C2C2C003E3E3E003E3E3E001616160009090900030303000A0A
      0A0008080800060606000D0D0D00060606000C0C0C000A0A0A00080808000C0C
      0C00090909000A0A0A0090909000FFFFFF00E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005C0000005C0000006D00001A8B2900B2DFB4005EBA610060B1
      4700CAF8F300D3FFFF00E0FFFF00D5FFFF00D7FFFF00D1FFFE009BD5A200238E
      2700005800000058000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000DFDFDD00B3B2AF0099989700969594009593920095939200959492008988
      88007A7A7A007676760076767600757575007575750074747400747474007474
      7400737373007373730073727300737273007272720071717100717171007070
      700070707000707070007070700070707000707070006F6F6F006E6E6E006E6E
      6E006E6E6E006D6D6D006D6D6D006C6C6C006C6C6C006C6C6C006B6B6B006A6A
      6A006A6A6A006868680068686800686868006868680067676700676767006767
      6700666666006666660065656500656565006464640063636300606060006666
      66007B7A790091908F0095949300959392009593920097959400A7A5A400D0CF
      CE00F3F3F3000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      0500040405000404050005050600071A0F000655240004973F0004943D000495
      3F0004973F0004984000049A4000049B4100049D4200049E4300049E4300049F
      44000BB75F009CE2C200E6F8F000FBFEFD00FDFFFE00F5FDF900E4F8EE00C8EE
      DE009AE4CD005FD9AC0059D8AA0091E3C600C1EDDB00DDF5EA00F4FCF8000000
      0000FEFFFF00F7FDFB00C6EFDE0043D1940012C06D000DBE65000DBF67000EBF
      69000EC06A0010C16B0010C26F0011C4700012C4720013C4740014C5760020C9
      7F0038D0910044C08C003D8D6000FEFFFE000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA00ABABAB00090909000909
      0900161616000C0C0C000A0A0A000A0A0A00090909000A0A0A00090909000A0A
      0A000C0C0C000D0D0D000C0C0C00090909000909090009090900090909000C0C
      0C000C0C0C000C0C0C000C0C0C000C0C0C000A0A0A00050505000C0C0C000909
      09000A0A0A00080808000D0D0D0041414100D2D2D200FDFDFD00FCFCFC00FDFD
      FD00FAFAFA00FDFDFD00F4F4F4008E8E8E0014141400141414000E0E0E000909
      0900121212000C0C0C000D0D0D00080808000A0A0A000D0D0D00090909000808
      0800090909000808080008080800080808000C0C0C000C0C0C000A0A0A000C0C
      0C000C0C0C00090909000A0A0A000D0D0D0009090900080808000E0E0E000808
      08001414140011111100F1F1F100F7F7F700E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005F00005EA96100DBFBE800D9FFFE00D3FFFE00ACE2
      CD00EAE7C400E4F9F200E2FCFF00E2FBFF00E0F9FF00D5FBFC006CA874000054
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000E8E8E800C1BFBE00A2A09E00989795009594930095949300969594008D8C
      8B007F7E7E007A7A7A007A7A7A00797979007979790079797900797979007979
      7800787878007878780078777700787777007777770077767600777676007675
      7500767575007575750075747400757474007574740074737300747373007372
      7200737272007272710072717100717070007170700071707000707070007070
      6F006F6F6F006F6F6E006E6E6E006E6E6E006E6E6D006D6D6D006D6D6D006C6C
      6C006C6C6B006C6B6B006B6B6A006B6A6A006A6A69006A696900686868006F6F
      6F00818080009493920096959400959493009595940097979500A7A6A400D5D4
      D400F9F9F9000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      0500040405000404050005050600071A0F000655240004953F0004953F000497
      3F0004994000049A4100049B4200049D4200049E4300049F4300049F440005A1
      440006A5480016AB530047CB8D009EE7C900E2F6ED00F8FDFA00FCFEFD00F9FD
      FB00F4FCFA00EDFBF600EDFBF600F3FCF900F8FDFB00FBFEFD00FCFEFD00F3FB
      F800D5F4E7007AE0BE002AC4780013BE6A000EBE68000EC069000FC06A0010C1
      6C0010C26E0011C46F0012C4730013C4740015C5760016C6780017C67A0023CA
      83003CD1950047C18F003D906000FEFFFE000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA00F0F0F000252525000808
      0800101010000A0A0A0006060600090909000808080008080800080808000808
      0800060606000808080009090900090909000606060008080800080808000606
      060008080800080808000606060008080800080808000E0E0E000A0A0A000909
      0900060606000E0E0E003E3E3E00DADADA00FCFCFC00F9F9F900FFFFFF00FFFF
      FF00F9F9F900FAFAFA00F7F7F700F4F4F4008585850005050500090909000808
      08000909090009090900060606000C0C0C000808080005050500040404000606
      0600060606000A0A0A00080808000505050008080800090909000A0A0A000606
      06000909090009090900050505000A0A0A000909090011111100040404000D0D
      0D000505050068686800F0F0F000FDFDFD00E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005800000055000037A57200CCFFFF00D3FFFE00D3FFFE00BFFB
      F700006F000000700400006E0600006F060000710600006B0600006100000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F2F2F200D2D1D000ADABAA009C9B9A009796960097969500989796009190
      8F00848383007D7D7D007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C
      7B007B7B7B007B7B7B007B7A7A007B7A7A007A7A7A007A7979007A7979007979
      7900797978007878780078787700787777007877770077767600777676007676
      7500767575007575740075747400747474007474730074747300737373007373
      7200727272007272710071717100717171007171700070707000707070006F6F
      6F006F6F6F006F6F6F006F6F6E006E6E6E006E6E6D006D6D6D006C6C6C007575
      7400878686009695940098979600979695009A9897009F9D9C00B4B3B200E0E1
      E000FDFEFD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      0500040405000404050005050600071A0D000655220004953F0004973F000499
      4000049A4200049B4200049D4300049E430004A0430005A1440005A1440005A3
      450005A4450005A447000FAD540024B563003EC5810063DAAB0097E6CB00C6EF
      E000E5F9EF00EBFBF300ECFCF300ECFCF400E1F6EB00C4EFDE0097E6CA0065DA
      A9003ACB860021C3760010BF67000EBF68000FC06A0010C26B0010C26D0011C3
      6F0012C4720013C4740014C5750015C6780017C6790018C77A001AC87D0028CC
      870041D398004AC391003E926100FEFFFE000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00F7F7F700B3B3B3004A4A
      4A00151515000D0D0D000E0E0E000A0A0A000D0D0D000C0C0C000D0D0D000C0C
      0C000C0C0C000C0C0C000D0D0D000D0D0D000A0A0A000D0D0D000C0C0C000A0A
      0A000A0A0A000C0C0C000A0A0A000A0A0A000D0D0D000A0A0A000C0C0C000A0A
      0A000606060058585800D3D3D30000000000FDFDFD00FFFFFF00FDFDFD00FCFC
      FC00FAFAFA00F9F9F900F9F9F900FAFAFA00EBEBEB009C9C9C003B3B3B000A0A
      0A0009090900111111000E0E0E00090909000D0D0D000C0C0C000C0C0C000D0D
      0D000A0A0A000A0A0A000C0C0C000C0C0C000C0C0C000C0C0C00090909000C0C
      0C000C0C0C000D0D0D000A0A0A000A0A0A00090909000E0E0E000C0C0C002D2D
      2D007E7E7E00DFDFDF0000000000FCFCFC00E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A0000005A00003DA97200CAFFFF00D3FFFE00D3FFFE00C7FF
      FF00006000000059000000550000005600000059000000560000005600000059
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000FBFBFB00E4E4E300BFBEBC00A5A4A3009A9A990098979600989695009392
      9100868585007F7E7E007C7C7C007C7C7C007C7C7C007C7B7C007C7B7B007B7B
      7B007B7B7B007B7B7B007B7B7A007B7B7A007A7A7A007A7A7A007A7A7A007A7A
      7A007A7A79007979790079797800797878007978780078787700787777007877
      7700777777007776760076767600767675007676750076767500757574007474
      7400747373007373730073737200737372007372720072727200727272007171
      7100717171007171710071707000707070006F6F6F006E6E6E006E6E6E007877
      77008A8988009695950098979600999896009E9C9B00ACAAA900D1CFCF00F1F1
      F000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      0500040405000404050005050600071A0D000655220004963F0004984000049A
      4100049B4200049C4300049E4300049F430005A1440005A1450005A2450005A4
      460005A6460005A6470005A7480006A94A000AAF540017B966002DBE740042C4
      7D004FC8870052CC890053CD8B0053CE8D004FCD8B0043CA870030C780001CC4
      74000EBF68000DBE67000FC069000FC16C0010C26D0011C36F0011C3710013C4
      730014C5760015C5780017C6790018C77B001AC77D001CC87E001EC980002CCD
      8A0046D49C004EC594003E956400FEFFFE000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00F1F1F100F7F7F700F0F0
      F0009D9D9D0046464600111111000E0E0E000A0A0A00080808000A0A0A000909
      09000A0A0A000606060006060600080808000808080008080800080808000D0D
      0D000A0A0A000A0A0A0008080800080808000A0A0A000D0D0D000A0A0A001818
      18005252520000000000FDFDFD00F4F4F400F7F7F700F3F3F300FDFDFD00FFFF
      FF00FDFDFD00FCFCFC00FFFFFF00FFFFFF00FDFDFD00FFFFFF00EAEAEA003333
      3300262626000C0C0C00090909000A0A0A0009090900090909000A0A0A000C0C
      0C00060606000808080009090900060606000909090009090900050505000C0C
      0C0008080800090909000A0A0A00080808000E0E0E00242424006F6F6F00D9D9
      D900FFFFFF00F4F4F400FDFDFD00F7F7F700E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005A0000117F1F00CFEDCE00CAF0
      E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0
      E000C7F0DE00B7E7C9005BAB3500005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A0000005C00004CA96700DBFFEF00D9FFFE00D3FDFD00C7F5
      E60000610000005A000000580000005800000059000000590000005800000059
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      000000000000F5F5F500DEDEDD00C4C3C200B1B1B000AEADAC00ADAAAA00A5A3
      A300908F8F007E7C7C00787776007B7A7A007F7F7F0080808000818181008181
      8100818181008181810082828100828281008282820082828200838282008383
      8300838383008484840084848400858484008584840085858400858484008584
      8400848484008483830083838300838382008383820082828200818180008080
      8000807F7F007F7F7F007E7E7E007D7D7D007D7D7D007C7C7C007B7B7B007B7A
      7A007A7A7A007A7A7A007A79790078787800737373006E6D6D00717070008281
      80009A999900ABAAAA00ADACAB00AFAEAC00B9B7B600D0CECE00EDECEC00FCFB
      FB00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      0500040405000404050005050600071A0D000656220004984000049A4100049B
      4200049D4300049E430005A0440005A1440005A2450005A2450005A4460005A6
      470005A7470005A8480006A94A0006AB4C0006AD4E0007AF500008B0520008B1
      530009B357000AB658000AB75B000BB85D000CBA60000CBB62000CBC64000DBE
      66000EC068000FC06A0010C16D0011C36F0011C3700012C4720014C5750016C5
      770017C6790018C77B001AC77D001CC87E001EC9800020CA820022CA830030CF
      8D004BD59F0051C697003F986700FEFFFE000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F1F1F100D1D1D100ACACAC00ABABAB00AAAAAA00AAAAAA00AAAA
      AA00ABABAB00ACACAC00ABABAB00ABABAB00ACACAC00ACACAC00ABABAB00ABAB
      AB00ABABAB00A9A9A900ACACAC00A9A9A900ABABAB00ADADAD00BCBCBC00D7D7
      D700F7F7F700FCFCFC00FAFAFA00FCFCFC00FFFFFF00FFFFFF00FDFDFD00FCFC
      FC00FCFCFC00FFFFFF00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FDFDFD00EAEA
      EA00C2C2C200B3B3B300ACACAC00ACACAC00ABABAB00ACACAC00AAAAAA00ABAB
      AB00A8A8A800ACACAC00AAAAAA00ABABAB00A9A9A900ACACAC00ABABAB00ACAC
      AC00AAAAAA00A9A9A900ACACAC00AAAAAA00B1B1B100E0E0E000FCFCFC00FFFF
      FF00FAFAFA00FFFFFF00F9F9F900FCFCFC00E0786E00144F0300005D0000087B
      000069BC690000590000005900000059000000580000007100007EBF6B0078C0
      800075C0800072BF7F0072BF7F0072BF7F0072BF7F0072BF7F0072BF7F0072BF
      7F006FC07E006FB972001D8B0900005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000058000000580000298E3600ACD6A100CFEEE300B4E2C6008ACA
      8A00005D0000005A0000005A0000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      000000000000FEFEFE00F7F7F700EAEAE900DDDDDD00DCDBDB00DAD9D900D0CE
      CE00A6A5A400807E7E00747372007E7D7C00878787008A8A8A008B8B8B008B8B
      8B008C8C8C008D8D8D008F8F8F00908F8F009191910093939300959595009696
      960097979700999999009B9B9B009D9D9D009E9E9E009F9F9E009F9F9F00A0A0
      A000A0A0A0009F9F9F009F9F9F009D9D9D009C9C9C009B9B9B00999999009696
      9600959595009594950092929200909090008F8F8F008D8D8D008C8C8C008B8B
      8B008A8A8A008989890088888800868686007C7B7B0071706F00777575009493
      9200BCBCBC00D9D9D900DBDADA00DDDCDB00E3E2E200F2F1F100FCFCFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      0500040405000404050005050600071A0D000656220004994100049B4200049D
      4200049E4300049F430005A1440005A2440005A3450005A4460005A5470005A7
      480005A7480005A94A0006AB4C0006AD4E0006AF500007B0530008B2550008B3
      570009B55A000AB85C000AB85E000BBA60000CBC63000CBD65000DBE67000EC0
      69000FC16B0010C16D0011C3710012C4720013C4740014C5760016C5780018C6
      7B001AC77C001BC77E001EC8800020C9820021CA830023CB840025CC860034D0
      90004ED5A20054C79B003F9A6800FEFFFE000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00FDFDFD00FAFAFA00F4F4F4000000000000000000FDFD
      FD00FDFDFD00F0F0F000CFCFCF00ADADAD0099999900A6A6A600B7B7B700D2D2
      D20000000000FCFCFC00F7F7F700F7F7F700F4F4F400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFF
      FF00FFFFFF00FAFAFA00FAFAFA00F9F9F900F7F7F700F7F7F700FAFAFA00F7F7
      F700C9C9C900A8A8A800A1A1A1009C9C9C00BEBEBE00E0E0E000FAFAFA00F9F9
      F900FCFCFC00FCFCFC00F3F3F300FAFAFA00FDFDFD00FCFCFC00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00FFFFFF00FFFFFF00E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000056000000560000005C0000005D
      0000005D0000005C0000005C0000005C0000005C0000005C0000005C0000005C
      0000005900000055000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005600000054000000560000006D000081CA860043A01C00006E
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F4
      F400BAB9B8008785840079787700858484009292920095959500969696009797
      97009A9A9A009B9B9B009E9E9E00A0A0A000A2A2A200A5A5A500A9A9A900ABAB
      AB00ADADAD00B0B0B000B4B4B400B7B7B700B9B9B900BBBBBB00BCBCBC00BFBF
      BF00BFBFBF00BCBCBC00BCBCBC00B9B9B900B7B7B700B5B5B500B2B2B200AEAE
      AE00ABABAB00AAA9AA00A6A5A600A3A3A300A0A0A0009E9E9E009C9C9C009B9B
      9B009898980096969600959595009292920086868600797877007E7D7C00A4A3
      A200DBDBDB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      0500040405000404050005050600061A0D0006562300049B4200049D4200049E
      430004A0440005A1440005A2450005A3450005A4460005A6470005A7480005A8
      490005A94B0006AC4D0007AE4E0007B0510007B0530008B2560009B4580009B6
      5A000AB75D000BBA60000BBB61000CBC63000DBF66000EBF68000FC06A000FC1
      6C0010C36E0012C3700013C4740015C5760016C6770017C6790019C67B001BC7
      7E001DC880001EC9810021CA820023CB850025CC860027CD87002ACE890038D2
      930052D7A50057C99E00409D6B00FEFFFE000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFDFD00FFFFFF00F4F4F400F7F7F700F3F3F300F1F1
      F100AAAAAA00505050002222220010101000050505000A0A0A00111111003030
      3000BBBBBB00F7F7F700FAFAFA00EDEDED00FCFCFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FFFFFF00FCFC
      FC00FFFFFF00FFFFFF00FCFCFC00FCFCFC00FCFCFC00F9F9F900DDDDDD009393
      93001D1D1D000C0C0C001111110005050500141414003131310073737300DADA
      DA00FAFAFA00F7F7F700F7F7F700FDFDFD00FDFDFD00FFFFFF00FCFCFC00FDFD
      FD00FFFFFF00FFFFFF00FDFDFD00FDFDFD00E0786E00144F0300005D0000087B
      000069BC690000590000005900000059000000600000005F0000005C00000058
      0000005800000059000000590000005900000059000000590000005900000059
      000000590000005A000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005600000058000000590000005C00000068000000630000005D
      0000005D00000058000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F500BEBDBC008E8D8C00828180008F8E8E009D9D9D00A0A0A000A2A2A200A4A4
      A400A7A7A700A9A9A900ACACAC00AFAFAF00B2B2B200B6B6B600BABABA00BDBD
      BD00C0C0C000C4C4C400C6C6C600CBCBCB00CDCDCD00CECECE00D1D1D100D4D4
      D400D4D4D400D1D1D100CFCFCF00CECECE00CCCCCC00C8C8C800C5C5C500C2C2
      C200BDBDBD00BCBCBC00B7B7B700B3B3B300B0B0B000AEAEAE00ABABAB00A8A8
      A800A5A5A500A3A3A300A0A0A0009E9E9E00909090008281800085848400AAA8
      A800DFDFDF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      0500040405000404050005050600061A0D0006562300049C4200049E4300049F
      440005A1440005A2450005A3450005A3460005A5470005A7470005A9490005AB
      4B0006AC4E0007AE4F0008AF510008B2540008B2560009B458000AB65B000AB8
      5D000BBA60000CBB63000CBC65000DBE66000EC069000FC06B0010C16D0010C2
      700012C4710014C4740016C5770018C6790019C77B001AC77C001CC77F001FC9
      810021CA830022CA840025CC860028CD870029CD89002BCE8B002ECF8C003FD4
      970059D9A90058CA9E0040A06C00FEFFFE000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC00FDFDFD00FDFDFD00FDFDFD00F0F0F000F7F7F700F3F3F3006161
      61000C0C0C00060606000C0C0C00090909000D0D0D000C0C0C000A0A0A000404
      04001919190080808000E4E4E400FDFDFD00FAFAFA00FDFDFD00FDFDFD00FDFD
      FD00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FFFF
      FF00FFFFFF00FDFDFD00FDFDFD00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FDFD
      FD00FCFCFC00FDFDFD00FCFCFC00FCFCFC00F4F4F400B5B5B500414141000606
      06000808080008080800090909000D0D0D000505050011111100060606002F2F
      2F0099999900F7F7F700F9F9F900F1F1F100FDFDFD00FDFDFD00FDFDFD00FFFF
      FF00FDFDFD00FCFCFC00FFFFFF00FDFDFD00E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C0000005C0000005A00000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000058000000590000005900000059000000590000005900000059
      0000005A00000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F600C1C0BF00949392008A89890099999800ABABAB00AEAEAE00B0B0B000B2B2
      B200B7B7B700BABABA00BEBEBE00C1C1C100C4C4C400C9C9C900D0D0D000D2D2
      D200D5D5D500D8D8D800DADADA00DDDDDD00DEDEDE00DFDFDF00E2E2E200E2E2
      E200E2E2E200E2E2E200E0E0E000DFDFDF00DDDDDD00DBDBDB00D9D9D900D7D7
      D700D5D5D500D1D1D100CCCCCC00C6C6C600C3C3C300C0C0C000BCBCBC00B7B7
      B700B3B3B300B1B1B100AEAEAE00ABABAB009A9A9A008A8989008B8A8A00AFAD
      AD00E4E2E2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      0500040405000404050005050600061B0E0006582500049E4300049F440005A1
      440005A3450005A3450005A4460005A5470005A7480005A9490006AB4A0006AC
      4D0007AE500008B0510008B1540009B4570009B559000AB65B000AB85E000BBA
      5F000CBB63000CBC64000EBE67000FC0690010C16C0010C16E0011C3700012C4
      730014C4750016C5760018C67A001AC77C001BC87E001EC9800020C9820022CB
      840024CC850026CC860029CD89002BCE8A002DCF8B0030CF8D0032D08F004CD7
      A10065DBB2004CC6960040A06D00FEFFFE000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00FFFFFF00FAFAFA00FFFFFF00FCFCFC0000000000DBDBDB000404
      04000D0D0D000D0D0D00010101000909090012121200080808000A0A0A000A0A
      0A000D0D0D000404040059595900E8E8E800FCFCFC00FFFFFF00FDFDFD00FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FFFFFF00FFFF
      FF00FDFDFD00FAFAFA00FCFCFC00FDFDFD00B1B1B1001C1C1C00141414000909
      09000A0A0A000606060006060600050505000D0D0D000A0A0A000A0A0A000C0C
      0C000E0E0E00F3F3F30000000000FDFDFD00FAFAFA00FFFFFF00FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F600C4C3C2009997960091908F00A5A5A400B9B9B900BBBBBB00C0C0C000C2C2
      C200C7C7C700CCCCCC00D1D1D100D5D5D500D8D8D800DADADA00DDDDDD00E1E1
      E100E3E3E300E4E4E400E7E7E700E9E9E900EAEAEA00EAEAEA00EBEBEB00EDED
      ED00EDEDED00EAEAEA00EAEAEA00EAEAEA00E9E9E900E6E6E600E4E4E400E3E3
      E300E1E1E100DDDDDD00DCDCDC00D8D8D800D5D5D500D2D2D200CDCDCD00C8C8
      C800C4C4C400C1C1C100BDBDBD00B8B8B800A4A3A30090908F00908F8E00B3B1
      B100E5E5E5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      0500040405000404050005050600061B0E0006582500049F440005A1440005A3
      450005A4450005A4460005A6470005A7480005A9490006AB4B0006AC4D0007AE
      500008B1540008B2550009B458000AB65A000AB65C000AB85F000BBA61000CBB
      63000DBF66000EC068000FC16A0010C26C0011C36F0012C4710014C4740015C5
      770017C6790019C77A001CC87E001DC880001FC9810021CA830023CB850026CC
      870028CD89002ACE8A002ECF8B002FCF8E0031D08F0034D1900037D2910063DC
      AC0072DCB40026B97800409D6C00FEFFFE000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00FCFCFC00FDFDFD00FDFDFD00FCFCFC00D2D2D200393939000909
      090008080800090909000C0C0C000C0C0C0006060600080808000A0A0A000909
      0900090909000A0A0A00050505005E5E5E00EBEBEB00FAFAFA00FDFDFD00F4F4
      F400FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FDFD
      FD00FCFCFC00F9F9F900FCFCFC00AFAFAF0029292900040404000A0A0A000606
      0600080808000C0C0C000C0C0C000C0C0C000C0C0C000D0D0D00090909000909
      0900080808008D8D8D00FCFCFC0000000000FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F600C8C7C6009D9C9B0097969600AEAEAE00C5C5C500C8C8C800CCCCCC00CECE
      CE00D3D3D300D7D7D700DADADA00DDDDDD00E0E0E000E3E3E300E4E4E400E8E8
      E800E9E9E900EBEBEB00EEEEEE00F0F0F000F1F1F100F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F1F1F100F1F1F100EFEFEF00EDEDED00EBEB
      EB00E8E8E800E4E4E400E3E3E300E1E1E100DDDDDD00DBDBDB00D9D9D900D4D4
      D400D0D0D000CDCDCD00C9C9C900C5C5C500ADADAD009695950094939200B7B6
      B400E8E8E6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      0500040405000404050005050600061B0E000758250005A1440005A3450005A3
      450005A4470005A6470005A8480005A9490006AB4B0006AC4E0007AE500008B1
      540008B2550009B458000AB65B000BB85D000BBA5F000BBB62000CBD64000EBF
      66000EC06A0010C16B0010C26E0011C3700012C4730014C4750016C5770018C6
      7A001AC77C001CC87E001FC9810021CA830023CB850025CD860027CD88002ACE
      8A002CCE8C002ECF8E0032D08F0034D1900037D2920039D293004AD69F007FE1
      BD0079CFA6000F92470040A06D00FEFFFE000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FCFCFC00FDFDFD00FDFDFD00FAFAFA00FAFAFA006F6F6F00010101000505
      05000A0A0A00090909000A0A0A000C0C0C0009090900090909000A0A0A000909
      09000A0A0A0010101000060606000A0A0A0096969600F4F4F400FDFDFD000000
      0000FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FDFD
      FD00F7F7F700FDFDFD00FAFAFA003F3F3F0004040400080808000C0C0C000808
      0800080808000A0A0A000A0A0A000A0A0A000A0A0A00090909000A0A0A001010
      10000909090024242400D3D3D300F4F4F400FDFDFD00FDFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      F900CECDCC00A4A3A3009F9E9E00B7B6B600CDCDCD00D1D1D100D3D3D300D6D6
      D600DADADA00DDDDDD00E0E0E000E2E2E200E5E5E500E8E8E800E9E9E900EDED
      ED00EFEFEF00F1F1F100F2F2F200F3F3F300F4F4F400F5F5F500F5F5F500F7F7
      F700F7F7F700F7F7F700F7F7F700F6F6F600F4F4F400F2F2F200F1F1F100F1F1
      F100EEEEEE00E9E9E900E8E8E800E5E5E500E3E3E300E1E1E100DEDEDE00DBDB
      DB00D7D7D700D5D5D500D1D1D100CDCDCD00B3B3B3009C9B9B009A999800BBBA
      B900EAEAE9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900C7C7C7001A1A1B000404
      0500040405000404050005050600061B0E000759250005A3450005A3450005A4
      470005A6470005A8480006AA4A0006AB4B0006AD4D0007AE500008B0530008B2
      560009B458000AB65A000BB85D000BBA5F000BBB61000DBD64000EBF66000EC0
      690010C16C0011C26E0012C4710013C5730014C5760016C6780018C77B001AC8
      7E001CC87F001FC9810021CA840023CC850026CD870029CE89002BCE8B002ECF
      8D0031D08E0034D1900036D1910039D293003BD3940042D4990072DFB5007BDF
      B8003CB97B00158A410069B89100FEFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00BBBBBB00181818000A0A0A000808
      08000D0D0D000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000C0C0C000C0C
      0C000A0A0A00090909000D0D0D000A0A0A0033333300FCFCFC00FDFDFD00FDFD
      FD00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FAFAFA0000000000F9F9F9000D0D0D00080808000D0D0D000C0C0C000606
      06000A0A0A000A0A0A00090909000909090009090900080808000A0A0A000909
      09000A0A0A000909090058585800E8E8E800FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00DBDBDB00B7B6B600B1B1B100C4C4C400D2D2D200D3D3D300D6D6D600DADA
      DA00DDDDDD00DFDFDF00E2E2E200E4E4E400E6E6E600E9E9E900EBEBEB00EFEF
      EF00F1F1F100F2F2F200F3F3F300F5F5F500F6F6F600F7F7F700F7F7F700F9F9
      F900F9F9F900F9F9F900F8F8F800F8F8F800F6F6F600F4F4F400F3F3F300F2F2
      F200F0F0F000ECECEC00EAEAEA00E7E7E700E5E5E500E3E3E300E0E0E000DDDD
      DD00DADADA00D8D8D800D4D4D400D0D0D000C0C0C000AEAEAE00B0AFAE00CDCC
      CC00F2F1F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00E4E4E4001D1D1E000404
      0500040405000404050005050600061B0E00075A250005A3450005A4460005A6
      470005A7480006A9490006AB4B0006AC4D0007AE500008B0530009B2550009B4
      58000AB65B000BB85D000CBA61000CBC63000CBC65000EBE68000FC06A000FC1
      6C0011C36F0012C3720014C5740015C6770017C67A0019C77C001CC87E001EC9
      800020C9830023CB840025CC860027CD88002BCE8A002DCF8C002FCF8E0032D0
      900035D1910038D293003BD294003ED3960040D3980067DCB0008BE4C50062CF
      A000139E5300208A460098D0B600000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00FDFDFD00F1F1F1006969690004040400151515000D0D
      0D000C0C0C000A0A0A000A0A0A000C0C0C00090909000A0A0A000A0A0A000C0C
      0C000A0A0A0010101000050505001010100001010100FFFFFF00FAFAFA00FDFD
      FD00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FDFDFD00FDFDFD00DBDBDB00060606000909090008080800090909000D0D
      0D000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000C0C0C000A0A0A000C0C
      0C00080808000E0E0E000A0A0A00C9C9C900FCFCFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00EDEDED00D9D9D900D2D2D200D3D3D300D3D3D300D4D4D400D7D7D700DBDB
      DB00DEDEDE00E0E0E000E3E3E300E4E4E400E6E6E600EAEAEA00ECECEC00EFEF
      EF00F2F2F200F2F2F200F3F3F300F5F5F500F7F7F700F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700F5F5F500F3F3F300F2F2
      F200F0F0F000EDEDED00EAEAEA00E9E9E900E6E6E600E4E4E400E2E2E200DFDF
      DF00DCDCDC00D7D7D700D4D4D400D2D2D200D0D0D000D0D0D000D5D5D400E7E6
      E600FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F9002D2D2E000707
      080004040500040405000404050006170C000750220005A4460005A6470005A8
      480006A94A0006AB4B0007AD4E0007AE500008B0530009B2560009B458000AB6
      5B000BB95E000CBA60000CBC63000DBD65000EBF68000FC06B0010C16D0011C3
      6F0012C4720014C5750016C6770018C77A001AC87D001CC87F001FC9810021CA
      830023CB850026CD870029CE88002BCF8B002FD08D0031D08F0034D0900037D1
      92003AD294003CD3960040D3970046D59C006ADCB10097E7CA0073D8AC0042C2
      880027A464002C904F00CCE7DA00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC00FCFCFC00FCFCFC00E1E1E1003131310005050500060606000E0E
      0E000A0A0A00090909000A0A0A000C0C0C000C0C0C000C0C0C00090909000A0A
      0A000D0D0D0006060600060606000E0E0E0004040400F9F9F900FCFCFC00FDFD
      FD00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FDFD
      FD00F7F7F70000000000BDBDBD000A0A0A000C0C0C000D0D0D000C0C0C000A0A
      0A000A0A0A000C0C0C000A0A0A000A0A0A000A0A0A00090909000E0E0E000808
      08000D0D0D00060606000A0A0A0090909000FDFDFD00FDFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2796F0014510300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700EDEDED00E5E5E500DBDBDB00D2D2D200D4D4D400D6D6D600DADA
      DA00DDDDDD00E0E0E000E3E3E300E4E4E400E6E6E600E9E9E900EBEBEB00ECEC
      EC00F0F0F000F1F1F100F2F2F200F4F4F400F5F5F500F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F6F6F600F6F6F600F5F5F500F4F4F400F1F1F100F0F0
      F000EFEFEF00ECECEC00EAEAEA00E8E8E800E5E5E500E4E4E400E2E2E200DEDE
      DE00DBDBDB00D7D7D700D4D4D400D3D3D300D9D9D900E4E4E400EBEBEB00F5F5
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006C6C6D001717
      1800040405000404050004040500060D0900073B1C0005A0460005A7480005A9
      490006AB4B0006AC4D0007AE500007B0530008B2560009B4580009B65B000AB8
      5D000BBA61000CBB63000CBD65000EBF68000EC06B000FC26D0010C36F0012C4
      720014C4740016C5780018C67A001AC77D001DC87F001FC9810022CA830024CB
      850026CC880029CD8A002DCE8C002FCF8E0032D0900036D1910039D192003CD2
      94003FD3970043D49A0053D7A6007BE2B90096E7CB007BD9AE0059CA940042BB
      840030A56A004CA77000F1F8F400000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC00FAFAFA00FFFFFF00C5C5C5001C1C1C000A0A0A00080808000808
      08000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A
      0A000C0C0C000A0A0A0009090900090909000C0C0C00EEEEEE00F9F9F900F9F9
      F900FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFF
      FF00FDFDFD00FFFFFF009898980009090900090909000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000C0C0C00090909000C0C
      0C000D0D0D000D0D0D00080808006D6D6D00FDFDFD00FDFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2796F0014510300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8F800EEEEEE00E5E5E500DADADA00D1D1D100D3D3D300D4D4D400D8D8
      D800DCDCDC00DFDFDF00E2E2E200E3E3E300E5E5E500E7E7E700E9E9E900EAEA
      EA00EDEDED00EFEFEF00F0F0F000F2F2F200F3F3F300F4F4F400F5F5F500F5F5
      F500F5F5F500F5F5F500F3F3F300F3F3F300F3F3F300F1F1F100EFEFEF00EDED
      ED00EDEDED00EAEAEA00E9E9E900E6E6E600E4E4E400E3E3E300E0E0E000DCDC
      DC00D8D8D800D6D6D600D4D4D400D2D2D200DADADA00E5E5E500ECECEC00F5F5
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C9C9C9003535
      360007070800040405000404050006060700082213000681380005A9490006AB
      4B0006AD4D0007AE500008B1530008B2560009B4580009B65B000AB85D000BBA
      60000CBB64000DBD66000EBF68000FC16B000FC26E0011C3700012C4730014C4
      760017C6770019C77B001BC87D001DC9800020CA820022CB840025CC860028CD
      88002ACE8A002DCF8C0031D08F0033D1910037D292003BD294003DD2950046D4
      9B0057D8A7006DDEB10088E4C30098E7C80075D4A9004FC38A0063CA9E0048B3
      8000299C5A0092CEAF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FAFAFA00FFFFFF00B2B2B20012121200090909000D0D0D000C0C
      0C000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A
      0A00090909000A0A0A000C0C0C000C0C0C0008080800E3E3E300FCFCFC00FDFD
      FD00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFF
      FF00FDFDFD00FFFFFF0083838300090909000A0A0A000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000C0C0C000A0A0A000808
      08000A0A0A000A0A0A000C0C0C005D5D5D00F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2796E00114F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8F800EEEEEE00E5E5E500DADADA00D1D1D100D2D2D200D4D4D400D7D7
      D700DADADA00DDDDDD00E0E0E000E3E3E300E4E4E400E6E6E600E7E7E700E8E8
      E800EAEAEA00ECECEC00EEEEEE00F0F0F000F1F1F100F2F2F200F2F2F200F3F3
      F300F3F3F300F3F3F300F2F2F200F1F1F100F1F1F100EFEFEF00EDEDED00EBEB
      EB00EAEAEA00E8E8E800E7E7E700E5E5E500E2E2E200E1E1E100DEDEDE00DBDB
      DB00D7D7D700D4D4D400D3D3D300D0D0D000D8D8D800E5E5E500ECECEC00F5F5
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      72001B1B1C0004040500040405000505060007100B0008401D000697420007AC
      4F0011B55C001AB966001DBC6A001EBC6C001FBF6F0020C0720021C2730023C3
      770024C47A0026C67C0027C87D0028C9800029CA82002BCB84002DCB87002FCC
      8A0031CD8B0033CE8E0036CF900038D092003BD194003CD296003FD2970041D3
      980044D4990047D59C004AD69D004CD69F0050D7A00056D9A4005EDAA8006EDE
      B2008BE4C500A1E9CB009CE4C1004CD29B0037B671007CCEA80068C9A2002EA9
      69005DB37E00E6F3EC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FAFAFA00FFFFFF00ADADAD00121212000A0A0A000E0E0E000C0C
      0C000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A
      0A000A0A0A00090909000A0A0A000C0C0C000A0A0A00E3E3E300FDFDFD00FDFD
      FD00FAFAFA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFF
      FF00FDFDFD00FFFFFF007E7E7E000C0C0C000D0D0D000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000C0C0C000909
      09000D0D0D00090909000E0E0E005C5C5C00F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2796E00114F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8F800EEEEEE00E3E3E300D8D8D800D0D0D000D0D0D000D3D3D300D7D7
      D700D8D8D800D9D9D900DCDCDC00E1E1E100E3E3E300E4E4E400E4E4E400E5E5
      E500E9E9E900EAEAEA00ECECEC00EEEEEE00EFEFEF00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000EFEFEF00EDEDED00ECECEC00EAEAEA00E9E9
      E900E9E9E900E5E5E500E4E4E400E3E3E300E0E0E000DDDDDD00DBDBDB00D9D9
      D900D7D7D700D4D4D400D3D3D300D0D0D000D6D6D600E4E4E400ECECEC00F5F5
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3E3
      E400595959000C0C0D0004040500040405000505060009110D00094824000B99
      4D0036BE830056CBA00062CFAA0066D5AF0069DCB6006CDDB8006EDDB90071DD
      BA0073DEBD0076DFBE0078E0BF007AE0C0007CE0C1007EE1C20080E1C20081E2
      C30084E2C40085E3C40086E4C40088E4C50089E4C60089E4C60089E4C6008AE4
      C6008CE5C7008CE5C7008EE5C9008EE5C8008EE5C8009FE9CD00B3EDD200B5ED
      D10096E4C1004AD29A001DB768002DC27E00A9E3CA0080D5B4002EAA6A0044AE
      7000B1E1C9000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00FAFAFA00FFFFFF00BFBFBF0016161600080808000C0C0C000D0D
      0D000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A
      0A00090909000A0A0A000C0C0C000C0C0C0008080800E8E8E800F9F9F900FDFD
      FD00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFF
      FF00FDFDFD00FDFDFD00929292000A0A0A000A0A0A000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000C0C0C000909
      09000D0D0D00080808000303030066666600F7F7F700FDFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E87C71001A540600005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B2F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8F800EEEEEE00E3E3E300D6D6D600CCCCCC00D0D0D000D3D3D300D3D3
      D300D7D7D700D9D9D900DBDBDB00DDDDDD00E0E0E000E3E3E300E4E4E400E5E5
      E500E5E5E500E8E8E800EAEAEA00ECECEC00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EBEBEB00EAEAEA00E9E9E900E8E8
      E800E5E5E500E4E4E400E4E4E400E2E2E200DEDEDE00DCDCDC00DADADA00D7D7
      D700D4D4D400D3D3D300D0D0D000D0D0D000D6D6D600E3E3E300EBEBEB00F5F5
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C3C3C3004E4E4E000505060004040500040405000505060009090A001516
      18003A474200485953004E60590057957F005DD6AB005AD8AC005CD9AC005ED9
      AE005ED9AE005ED9AE005FDAAE005FDAAF005FDAB0005FDAB0005FDAB0005FDA
      B0005FDAB0005FDAB0005FDAB0005FDAB0005FDAB0005FDAB0005EDAAF005ED9
      AE005ED9AE005CD9AE005CD9AE005CD9AC005BD8AC003DD096001AC1740009AF
      57000DAA540037C88D00B0E3D300F5FCFA0075D7B0001CA45A0031AB6700A0DC
      BE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC00FCFCFC00FFFFFF00D9D9D9002222220009090900060606000909
      09000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A
      0A000C0C0C000A0A0A0008080800080808000D0D0D00FAFAFA00FAFAFA00FFFF
      FF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFF
      FF00FDFDFD00FFFFFF00AEAEAE000D0D0D000A0A0A000A0A0A000A0A0A000A0A
      0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000C0C0C000A0A
      0A000A0A0A00080808000C0C0C0086868600FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EF8075002056070000600000067B
      000075BA68000059000000540000005800000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005800000070
      0A00D9E5E3000C80180000590000005800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8F800EDEDED00E1E1E100D4D4D400CBCBCB00CCCCCC00D0D0D000D3D3
      D300D4D4D400D6D6D600D8D8D800DADADA00DDDDDD00E0E0E000E3E3E300E4E4
      E400E4E4E400E5E5E500E7E7E700E9E9E900E9E9E900E9E9E900EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00E9E9E900E9E9E900E9E9E900E7E7E700E4E4
      E400E4E4E400E3E3E300E1E1E100DEDEDE00DCDCDC00DADADA00D6D6D600D4D4
      D400D3D3D300D3D3D300D0D0D000CCCCCC00D4D4D400E2E2E200EBEBEB00F5F5
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8F800C0BFC00057555700070607000504050004040500080809001817
      1B0047484B00595B5E007B7C7E008FB0A80087D5BE0080DABF0081DABF0081DB
      BF0081DBBF0081DBBF0081DBBF0081DBBF0081DBBF0081DBBF0081DBBF0081DB
      BF0081DBBF0081DBBF0081DBBF0081DBBF0081DBBF0081DBBF0081DBBF0081DB
      BF0081DBBF0081DBBF0081DBBF0081DBBF0080DBBF007DDABC0092DEC200BFE7
      D400DCF2E700E5F7F000CFE9DF003FC3880013A2540037B26F00A5DFC100F5FB
      F800000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F0F0F0004F4F4F0008080800060606000A0A
      0A000C0C0C000A0A0A0009090900090909000A0A0A000A0A0A00090909000909
      09000C0C0C000C0C0C00080808000A0A0A0001010100FDFDFD00FCFCFC00FDFD
      FD00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC00FCFCFC00D1D1D1000C0C0C000D0D0D00080808000D0D0D000909
      09000D0D0D000A0A0A000A0A0A000A0A0A000A0A0A00090909000D0D0D000909
      09000C0C0C00090909000C0C0C00B1B1B100FCFCFC00FDFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF8A7D0026590A00005A0000006E
      000084C38700005500000054000000580000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005800000071
      1100F7F0FA0006771F0000580000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8F800EDEDED00E1E1E100D3D3D300C9C9C900CCCCCC00D0D0D000D3D3
      D300D3D3D300D4D4D400D6D6D600D8D8D800DBDBDB00DDDDDD00DEDEDE00E2E2
      E200E3E3E300E4E4E400E5E5E500E6E6E600E6E6E600E7E7E700E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E7E7E700E6E6E600E6E6E600E5E5E500E3E3
      E300E2E2E200E0E0E000DDDDDD00DCDCDC00DADADA00D8D8D800D5D5D500D3D3
      D300D2D2D200D0D0D000CCCCCC00CBCBCB00D2D2D200E1E1E100EBEBEB00F5F5
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F4F4F400C5C5C500676768000E0D0E00060607000A0A0B00506C
      6400A9BCB500D3D7D600E3E3E400E8EEED00E6F6F100E4F7F100E4F7F100E4F7
      F100E4F7F100E4F7F100E4F7F100E4F7F100E4F7F100E4F7F100E4F7F100E4F7
      F100E4F7F100E4F7F100E4F7F100E4F7F100E4F7F100E4F7F100E4F7F100E4F7
      F100E4F7F100E4F7F100E4F7F100E4F7F100E4F7F100E4F7F100E3F5EE00D6F0
      E600A8E3CD0050CD960031AD650011A655005BC28D00B7E4CD00EEF9F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009D9D9D0008080800010101000505
      0500090909000A0A0A000C0C0C000C0C0C000A0A0A000A0A0A000A0A0A000A0A
      0A0006060600060606000A0A0A000909090012121200FDFDFD00F9F9F900FAFA
      FA00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC00F9F9F900F9F9F900030303000E0E0E00090909000C0C0C000909
      09000C0C0C000A0A0A000C0C0C000A0A0A000909090009090900060606000909
      0900080808000D0D0D0027272700E3E3E300FFFFFF00FDFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF9586002C5D0F00005A0000005D
      00007BC79700178E4E001A8C3C001A8F3900208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00148F3F004FA8
      7200F9FDF2000E751C0000580000005500000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8F800ECECEC00E0E0E000D2D2D200C8C8C800CACACA00CDCDCD00D0D0
      D000D2D2D200D3D3D300D5D5D500D7D7D700D8D8D800DADADA00DCDCDC00DEDE
      DE00E0E0E000E2E2E200E2E2E200E3E3E300E4E4E400E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E4E4E400E3E3E300E1E1E100E0E0
      E000DEDEDE00DDDDDD00DCDCDC00DADADA00D8D8D800D6D6D600D4D4D400D2D2
      D200D1D1D100CECECE00CACACA00C8C8C800D1D1D100E0E0E000EAEAEA00F5F5
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5F5F500D3D3D3009797980054545500121213002B37
      34004C5C55005A7A6900769C8A008BB0A10089BAA5007DCCAB006FDAAE006FDA
      AE006FDAAE006FDAAE0070DAAE0071DAAE0071DAAF0071DAB00071DAB00071DA
      B00071DAB00071DAB00071DAB00071DAB00071DAAF0071DAAE0070DAAE006FDA
      AE006FDAAE006FDAAE006FDAAE006FDAAE006FDAAE0065D4A10057C88C004ABD
      7A0035B770001AB4630047BE800092D6B000CDEDDD00F3FBF700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00E5E5E5004D4D4D000C0C0C000909
      09000A0A0A00090909000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000C0C
      0C0008080800141414000C0C0C000606060075757500F9F9F900FDFDFD00FFFF
      FF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC00FFFFFF00FAFAFA00303030001010100008080800090909000D0D
      0D00090909000C0C0C000A0A0A000A0A0A000A0A0A000C0C0C00090909000C0C
      0C000808080015151500AAAAAA00FCFCFC00FCFCFC00FDFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFA090003A631500006100000058
      00003DAF6B00A3E1D100A6DDAC009EE0A6009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009BDEB300BAE3
      D000B7DEA6001477060000580000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8F800EDEDED00E3E3E300D9D9D900D0D0D000D1D1D100D3D3D300D7D7
      D700D8D8D800D9D9D900DBDBDB00DDDDDD00DEDEDE00DFDFDF00E1E1E100E3E3
      E300E4E4E400E5E5E500E6E6E600E8E8E800E9E9E900EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00E8E8E800E6E6E600E6E6E600E5E5
      E500E3E3E300E1E1E100E1E1E100DFDFDF00DDDDDD00DCDCDC00DBDBDB00D9D9
      D900D7D7D700D4D4D400D1D1D100CFCFCF00D9D9D900E3E3E300EBEBEB00F5F5
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00EFEFEF00C4C4C500989899007776
      78005D6260003F524900465E5400586F6800547F700042A178002FC581002FC5
      82002FC582002FC6820030C6830030C6830031C6840031C6850031C6850032C6
      850032C6850032C6850032C6850031C6850031C6840031C6830030C683002FC6
      83002FC682002FC582002FC581002EC481002DC47F002DC27B0039C07B0057C3
      880079CE9D0098DBB500BDEAD500ECF9F200FCFEFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9F900B6B6B600101010001010
      10000A0A0A0009090900090909000A0A0A000C0C0C000C0C0C000A0A0A000A0A
      0A000909090004040400060606003D3D3D00DFDFDF00F7F7F700FCFCFC00FAFA
      FA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC00F7F7F700F9F9F9008F8F8F00050505000E0E0E000C0C0C000C0C
      0C00090909000A0A0A000A0A0A000A0A0A000A0A0A00080808000C0C0C000404
      04001010100069696900F4F4F400FCFCFC00FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFAD9B004F691B00006100000055
      0000005900000068000006730000067300000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C740000007700000063
      0000005C0000005A000000590000005900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8F800EEEEEE00E6E6E600DDDDDD00D5D5D500D6D6D600D7D7D700DADA
      DA00DADADA00DBDBDB00DCDCDC00DEDEDE00DFDFDF00DFDFDF00E0E0E000E3E3
      E300E3E3E300E4E4E400E5E5E500E6E6E600E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E6E6E600E5E5E500E5E5E500E4E4
      E400E3E3E300E0E0E000E0E0E000DFDFDF00DEDEDE00DDDDDD00DCDCDC00DBDB
      DB00D9D9D900D7D7D700D6D6D600D5D5D500DDDDDD00E6E6E600ECECEC00F5F5
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0DF
      E000C6C6C700AAA9AB00A1A0A200A5A5A600A3ADAB0099C3B0008EDEB7008EDE
      B8008EDEB8008FDEB8008FDEB9008FDEB90090DEB90090DEBA0090DEBA0090DF
      BA0090DFBA0090DFBA0090DFBA0090DEBA0090DEBA0090DEB9008FDEB9008FDE
      B9008EDEB8008EDEB8008EDEB7008DDDB7008DDDB60093DFB900A6E4C600C5EC
      DA00E7F6EE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD0000000000F7F7F7009C9C9C000505
      05000A0A0A000C0C0C000C0C0C000A0A0A0006060600090909000C0C0C000C0C
      0C00090909000505050030303000BBBBBB00F3F3F300F3F3F300FCFCFC00F9F9
      F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC00F7F7F700FCFCFC00E8E8E8007B7B7B000E0E0E00080808000E0E
      0E000606060009090900090909000A0A0A000C0C0C000D0D0D00060606000A0A
      0A0008080800D9D9D900FCFCFC0000000000FDFDFD00FDFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFB09E0052691B00005A00000058
      000000590000005C0000005D0000006100000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006400000059
      0000005C0000005A000000590000005900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB00F3F3F300EBEBEB00E4E4E400DEDEDE00DEDEDE00DEDEDE00E0E0
      E000E0E0E000E0E0E000E1E1E100E1E1E100E2E2E200E2E2E200E2E2E200E5E5
      E500E5E5E500E5E5E500E5E5E500E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E5E5E500E5E5
      E500E5E5E500E2E2E200E2E2E200E2E2E200E1E1E100E1E1E100E1E1E100E0E0
      E000E0E0E000DEDEDE00DEDEDE00DEDEDE00E3E3E300EBEBEB00F1F1F100F8F8
      F800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9F90000000000FAFAFA002929
      290008080800080808000D0D0D000E0E0E00080808000E0E0E00080808000909
      09000D0D0D0045454500C0C0C000FAFAFA00FCFCFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FCFCFC00FCFCFC00EBEBEB00818181001D1D1D000D0D
      0D00090909000D0D0D000909090008080800080808000A0A0A000C0C0C001212
      12005E5E5E00F9F9F900F7F7F700FDFDFD00FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFB49E00466A1B00005600000059
      0000005900000059000000580000005A00000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005A00000059
      0000005A00000059000000590000005900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00FAFAFA00F7F7F700F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F9F9F900FBFBFB00FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC0000000000F9F9F900D2D2
      D200757575001B1B1B0003030300040404000909090006060600040404000303
      030089898900DDDDDD00FCFCFC0000000000F9F9F900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00F4F4F40000000000BFBFBF005858
      580005050500050505000808080009090900010101000303030041414100A5A5
      A500EBEBEB00F7F7F700FAFAFA00FCFCFC00FDFDFD00FDFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFB59B00436A1800005500000058
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F9F9F90000000000F9F9
      F900F1F1F100C6C6C60090909000626262005050500055555500727272009F9F
      9F00F7F7F700FDFDFD00FCFCFC00F4F4F400FCFCFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFDFD00FDFDFD00F7F7F700F7F7F700F7F7F7000000
      0000898989005F5F5F0053535300505050007D7D7D00ABABAB00E1E1E100FDFD
      FD00FDFDFD00FFFFFF00FCFCFC00FAFAFA00FDFDFD00FDFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFBEAB0081753500005C0000005F
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FCFCFC0000000000F7F7
      F700FAFAFA00FDFDFD00FFFFFF00FFFFFF00FCFCFC00FFFFFF00FFFFFF00FFFF
      FF00FAFAFA00F3F3F300EDEDED00FAFAFA00FCFCFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FCFCFC00F9F9F900FAFAFA00FFFFFF00FAFAFA00FDFD
      FD00FDFDFD00FFFFFF00FDFDFD00FCFCFC00FFFFFF00FFFFFF00E8E8E800FAFA
      FA00FAFAFA00F7F7F700FCFCFC00FCFCFC00FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFE2E900FFABA400E27A7900E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A760000000000EEEEEE00EDEDED00EEEE
      EE00EDEDED00E9E9E900EDEDED00EEEEEE00EDEDED00EDEDED00ECECEC00E3EA
      E500E1EAE300EDE9E900EBE8E800EEEBEB00EEECEC00E7E7E700E9E7E900EAE9
      EC00ECEBEC00EAEAEA00E9E9E300E9EAE400E9EDED00E7E8E800ECEAEA00EAEA
      EA00E7E6E800E7E7E700DEEFEE00EBEEEE00F1E8EC00EFEBEB00EAEBEC00EEEC
      ED00DEE7F200E2ECE400E7EEE100EAE6EB00EEE5F500E2EBEC00E1EDE900F3EA
      ED00F9E8F200EDEAEE00E6EFE800E6EFE700E4EAE900E1EFF200E0E6E900E7E6
      ED00EFEBF100ECECF300DDE3F200E7EAF500DFE9F000E9E7E900E4E4E800E6EF
      EE00E1E9E900E3ECEC00E5EDEE00E5ECF100E2E8F100E2EAED00E7E9F000E9EA
      E800E4EAE600DFE9E600E5EBE400918D93000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FEFE
      FE00FEFEFE00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007D7D7D00E9E9E900E8E8E800EAEA
      EA00EAEAEA00E9E9E900EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00E5E5
      E700E6E8EB00EAE9E900EAEAEA00E9E9E900E9E9E900E9E7E700EAE9E900EAE9
      EA00EAEAEA00EAEAEA00EBE8E400EAE8E600E3EBEA00E5E9E900E9E8E800E9E9
      E900E9E8EA00E9E9EC00E7E7E900EDE9EA00E8EAE900E6EAE900E5E9EA00E5E7
      EB00E7E7E900E7EAE600E7EAE600E7E7E900EAE7EE00E7EAEA00E3E8E600EAE8
      EC00ECEAE900E8E8E800EDEDE800D6D3D0003236480031457F00334892003440
      76003438520034395A0030364F00333B6100313B61007BB4F4006AA7E3006EAE
      E50072B1E7006CABE1006DABE20068A6E1005B97DE005290DF004C83D4004D86
      D300467DD300426EC5004E7DCD00D7CECD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FCFCFC00F9F9
      F900F9F9F900FAFAFA00FCFCFC00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000072767A00E7E8E800E8E8E800E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E8E7
      E900E8E8EA00E9E9E900E9E9E900E9E9E900E9E9E900E9E8E800E9E9E900E9E9
      E900E8E9E900E9E9E900E5E9E700E9E8EA00E1DCDC00DDDCD900E3E7E800EAE9
      E900E8E9EA00E9E9EA00E9E8E800EAE8E900E8E9E900E7E9E900E7E9E900E7E8
      E900E9E8E800E9E9E800E8E9E900E8E8E900E9E9EA00E9E9E900E7E8E800E9E8
      EA00E9E9E800E8E9E800EFEEEB00D1D0CF00000420000012540006277F00051C
      5F0000072900000A3B000006230002114000000D42005CA3EA004894DF0053A3
      E50055A1E7004D9AE1004B98E1004594DF00357FD9002680E400216CD1002473
      D600195CC7001A58C7002261C900E7E3E1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00F8F8F800F3F3F300EFEF
      EF00F4F4F400F7F7F700F9F9F900FBFBFB00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFAFE00D4D7
      F200AAB0E6009299DF007C84D8006267CE005555C8005555C7005555C7005555
      C7005555C7005555C700565FCC006A74D3008189DA009DA3E200C1C6ED00E7E8
      F800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007D7B7800E6E9E900E8E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E8E9E900EBE8E900E1E8E500ECE4D900ECBFA900E2BAA500E4E3E100E7E7
      E700EAE9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900EFEFED00D1D2D1000009360000105100082B7F000620
      6200000627000008330000062300041853000B296E00589EE0004A94E00055A4
      E70058A2E900519CE3004C96E2004793E1003881D8001761C4001552B9002377
      DF001553BD001E63D2002367CF00E3E3E1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FCFCFC00F7F7F700EDEDED00E2E2E200B8B8
      B800121211002A2A2A0091919100E8E8E800FBFBFB00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFBFD00E3E4F600B8BCEA008E92DC006D6DD0005456
      D300383CD300292DD6001A20D600090FD3000005D2000006D2000006D2000006
      D2000006D2000004D200010AD3000E17D4001E23D7003034D700484BD6006162
      D4007475D500959CE000C3C7EE00F3F4FC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000847F7900E7E9EA00E8E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E8E8E800E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E8E9E900ECE8E900E1E6E300F3DCBF00F1A67800EBA37700E2D6CE00E0E6
      E300ECEAE800E8E8E800E9E9E800E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900EFEFED00D1D2D0000010550000146100052171000318
      5500000526000006260000082C000315570029529D005697E1004C92E40058A5
      EA005BA6EB00579FE5004F99E500468FE1003A82D9001F61BF001652B4001D6B
      D5001653BE002066D500266CD400E4E3E2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FBFBFB00F6F6F600EAEAEA00DBDBDB00CBCBCB003E3B
      3A00171616000D0D0D000B0B0B00101010008080800000000000FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5F5FC00C8CBEF00999CE0007173D800464BD5001D22D0000004CB000003
      D5000002DB000000E1000001E4000003E6000005E8000006E9000006E9000006
      E9000006E8000004E8000003E7000002E5000001E4000001E0000002DA000003
      D2000407CD00252BD3005255D8008183DD00ACAFE800D9DCF500F7F8FD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E7D7C00E8E9EB00E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E8E8E800E9E9E900E9E9E900E7E7
      E700E8E8E800E6E6E600E7E7E700E8E8E800E9E9E900E8E8E800E9E9E900E7E8
      E800E8E8E800E8E7E500DFDCD700F2C7A100E48F5400EB915800E3C2A900DFDC
      D400EAEAE500E7E7E600E9E9E700E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E800EFEEED00D1D2CF000116660001186E0001145B00000C
      3D0000072F000005240002135100010D4D00476FB5005591E3004987DE0060A8
      EC0060A9ED005CA6E900539EE8003F85D900347CD5003887DF002977D000216A
      CD001E65CC002167D400286DD600E6E5E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FBFBFB00F5F5F500E9E9E900DADADA00C9C9C9009A9A9A004B47
      47001514140013131300090909000B0B0B000B0B0B003D3D3D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFF00F5F6FC00CBCE
      F000A0A2E300575CD600191ECB000003CD000002DA000002E5000005EB000005
      EA000003E7000001E5000000E3000000E1000000E0000000DF000000DF000000
      DF000000DF000000DF000000E1000000E2000001E4000001E5000003E8000005
      EA000004E9000000E3000002D7000004CB002D33D1007175DC00AAACE800D7D9
      F400FBFBFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000807D7A00E7E9EA00E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E6E6E600E0E0
      E000E2E2E200DFDFDF00E1E1E100E5E5E500E7E7E700E7E7E700E8E9E900E3E8
      E700E7E5E700E1E0D900DABFA800E9A47A00D77C3A00E9783D00ECA97500EAC3
      B200E5E5E100E8E7E700E9E9E800E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9EAE800EFEEEE00D1D2CF000014610000125F0003134F000006
      260000093700000525000B319100021153004D77BD00528CE100417ED20064A7
      EA0063A8EB005EAAEC0054A2E700367ACE002A70C9003D90E3003789DD003186
      DF002879D700226DD5002770D700E5E4E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FAFAFA00F3F3F300E7E7E700D7D7D700C5C5C500B5B5B5003C3A39002323
      2200151515002222210024232200111111000A0A0A00090909006F6F6E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00F2F2F200EFEFEF00F1F1
      F100FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F9FD00DBDDF500AFB1E8004E55
      D4000F12C5000002D4000005E6000007ED000004EA000001E5000000E1000000
      E0000000E0000000E0000000E0000000E0000000E0000000E0000000E0000000
      E0000000E0000000E0000000E0000000E0000000E0000000E0000000E0000000
      E0000000E3000001E6000005EB000005EB000002E0000001CE001D21CB006A6F
      DC00C4C5EF00E8EAF90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7D7A00E7E9EA00E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E7E9E800E4E5E500DDDEDD00CCCB
      CB00CACAC900CDCDCC00D1D1D100D8D8D800DBDBDB00E4E4E400E5EAEA00E1EA
      EA00E9DCDA00EAD0BB00D89C6100EE9E6500E89E5E00EC8E4C00E3925000E7A9
      7F00DEDFDC00E9E9E900E8E7EA00E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9EAE800EFEEEE00D1D2D10000125D00000D4800061B52000004
      220000083100000524001654B5000C2B7D005388CE005A96E2004F8ED80065A6
      EA0061A4E6005FA7EB0059A6ED00387CCF003076CB004191E8003C8CDE003488
      E100297BD8002272D7002776DA00E7E2E2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00F9F9
      F900F2F2F200E4E4E400D3D3D300C1C1C100B1B1B100838383004F4C4E001312
      12001D1C1B002D2B2A0022222000282826001D1D1D0015141400CAC8C800FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB00E5E5E500AEAEAE00A3A3A300AAAA
      AA00D4D4D400F3F3F300FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFE00F3F4FC00CACDF1005E66D5000002BD000001
      D9000008EB000008ED000003E7000000E3000000E1000000E2000000E2000000
      E2000000E2000000E2000000E2000000E2000000E2000000E2000000E2000000
      E2000000E2000000E2000000E2000000E2000000E2000000E2000000E1000000
      E1000000E1000000E1000000E1000000E3000003E8000005ED000004E6000002
      D3001B20C800868EE100E7E9F900F9FAFE00FEFEFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A7D7900E3E7E900E7E8E800E9E9
      E900E9E9E900E9E9E900E9E9E900E5EDE500E2EDE800D0D8D400C1C9BE00ACA8
      A7009A9E9500A2A39D00AAAAA600B7B8B900C3C3C400D4D6D500E4E8E800E3EA
      EF00E7C09E00E6A16500EDA05C00EA9F6100E1A16000E89F6100F6945900DF91
      5600EBD5C800E5E6E400E1E9E700E8EAE700E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900EFEFEE00D1D3DC0000186900000A360004184E000006
      260000072D0000062600092C8E002E6FC00063AEE90060A3E8006EADEC0061A2
      E90064A9ED005F9FEE00549EE800458BE0004C98E6004598E9004093E3003389
      E0002B7CD8002276D800287BDA00F3E9EA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F9F9F900EFEF
      EF00E2E2E200D1D1D100BEBEBE00AFAFAF00ACACAC0049454500242323001A19
      18002A2726002D2D2B002726260021202000161516005151510000000000FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DADADA005353530008080800060606000505
      05001E1E1E0094949400F3F3F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EAEBF900939AE100131FC3000001D100000BF0000007
      EF000002E7000000E4000000E3000000E3000000E3000000E3000000E3000000
      E3000000E3000000E3000000E4000000E4000000E4000000E4000000E4000000
      E4000000E3000000E3000000E3000000E3000000E3000000E3000000E3000000
      E3000000E3000000E2000000E2000000E2000000E2000000E3000003E9000007
      EE000005E6000507CB002E3FCD00CCCFF300F8F9FD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007D7F7A00E5E9EA00E8E9E900E9E9
      E900E9E9E900E9E9E900E5E9E900E9E9E900E3E0DF00BEB7B800ADA8A4009A9E
      9B0095969500A7A2A100A3A6A000949D940098A19900A9ADAD00D0CFCC00D7C6
      BA00E8A46D00EBA16400E79F5F00E79F6100E59E6000E8A06300C8703D00D169
      3200D9B99E00EAE2D200E6E9E700E9EAE700E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900EFEEED00D1D2DF00021A6F0000115000000D3C000007
      2B000005250000072B0001104C004C8EC9006FB9EB004E8FD8006EA9E900649F
      E70065A7EA005B99E0005CA1E8003E82CF004A99E0004A99E6003D91E1003A8E
      E4003387E100267AD7002A7CD600E5E1DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FCFCFC00F7F7F700EEEEEE00E0E0
      E000CECECE00BCBCBC00ADADAD00A2A2A200767575005553500015141400211F
      1F003C383700292726002D2B2B001D1D1D0017171700C6C5C500FAFAFA00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D0D0D0005B5B5B001010100007070700060606000505
      0500070707001F1F1F0084848400F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CFD2F300686CD6001012CB000208E400000AEE000004E9000001
      E5000000E4000000E4000000E4000000E4000000E5000000E5000000E5000000
      E5000000E5000000E5000000E5000000E5000000E5000000E5000000E5000000
      E5000000E5000000E5000000E5000000E5000000E5000000E5000000E5000000
      E4000000E4000000E4000000E4000000E4000000E3000000E3000000E4000001
      E6000003EA00010AEC000507DF00161AC8009399E300E7E9F900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7D7900E5E9EB00E8E9E900E9E9
      E900E9E9E900E9E9E900E5E9E900E8E2E700CFCED2008CA48B00739B750057A0
      5F00599D6000689F760081A1840087858400837A8300838282009C9A9900B8A1
      9100EDA26200EAA26200E69E6200E79F6100E89E6000E69E6100EA995C00EC73
      3B00ED9D6F00E3BEA300E2E8E600E8EAE700E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900EFEEED00D1D0DD0001196F000522790000072D000008
      31000006260002114000000934005996CC0075BBE9005195D50071A8E70069A0
      E70065A7EA005896DF00549AE6003C83D2004D9BE4004D9AE4004094E3003C8F
      E300388AE000297FDC002E81DF00E1E1E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FCFCFC00F7F7F700ECECEC00DFDFDF00CECE
      CE00BBBBBB00ADADAD00A2A2A200A5A5A5005A575600252424001C1C1B003531
      300035313000302E2E00252424001A1A1A0056545400FCFCFC00FCFCFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C8C8C80060606000171717000A0A0A0011111100121212000D0D
      0D000707070006060600232323007E7E7E00F3F3F30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AFB6EB004F54D6001318D7000008E6000006ED000002E9000001E6000000
      E5000000E5000000E6000000E6000000E6000000E6000000E6000000E6000000
      E6000000E7000000E7000001E7000001E7000001E7000001E7000001E7000001
      E7000000E7000000E7000000E6000000E6000000E6000000E6000000E6000000
      E6000000E6000000E5000000E5000000E5000000E5000000E5000000E5000000
      E4000001E5000003E8000006EC000006E4001E20D0008487E100DDDFF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E7D7A00E6E9EA00E9E9E900E9E9
      E900E9E9E900EAE9EA00EEEAEC00DCDBDC00A3B6A700478E5000266C2E00175E
      1A00185C1C001D5D2500285F2A004D7E550065766500646062006D6965007C6F
      6B00D4966100E69F6100E79D6200E89C6200E59F6000E7A06200EB9D5C00EF88
      4200DD6F3E00E1AC8100E5E7E800EBE9E800E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E8E9E900EFEEED00CFCEDA0000165A000B37980000052A000009
      39000006260005194B00010930005998DA006BAAEA005D9AE0006FA5E80076AA
      EC006CA9EA0058A1E7005399E6002972C8002766BB004596EA00469BEC003C90
      E6003A8DE2002F83DC003285DC00E4E1E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FCFCFC00F6F6F600ECECEC00DDDDDD00CCCCCC00BBBB
      BB00ADADAD00A3A3A3009D9D9D00717070005654530017161600242324004643
      4300302E2D00353333002020200017161600D7D7D700FBFBFB00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0D0D000707070001D1D1D000C0C0C001616160026262600262626001515
      15000D0D0D000606060006060600252525007E7E7E00F2F2F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6AC
      E900464BD4000F16DB000009E9000005EC000002E9000000E6000000E6000001
      E6000001E6000001E7000001E7000001E7000001E7000001E7000001E7000001
      E7000001E8000003E9000007EC000009EE00000BEF00000EF100000EF100000E
      F100000DF100000DF1000009ED000007EC000005EA000002E8000001E7000001
      E7000001E7000001E6000001E6000000E6000000E6000000E6000000E6000000
      E5000000E5000000E5000003E8000005EC000005E2002326D9008185E500DBDE
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7B7900E6E8E900E8E8E800E9E9
      E900E9E9E900E9E8E900EBE6EA00AFC4B00070A9750013601A0007550F00226E
      2F00226F3400116B1E00085B1100175D1C00275C29003A7455004C6068006057
      60009E735500D18C5B00EB9C6000E99D6400E59E6000E9A06300E7985A00E795
      5300E27B4000E8A97900E6E4E800EAE8E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E8E9E900ECECEB00D1D7E1000D337A001247A300000626000008
      330000082A0004154700000A380068A2E4005E9DE7006CA3EC0070A5EA007CB0
      ED0071ACEC005AA6E9004E91DD003E86D1003477C4004195E5003287E0003D90
      E3003E90E2003488DD003788DB00E3E2EA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FBFBFB00F5F5F500EAEAEA00DBDBDB00CBCBCB00BABABA00ADAD
      AD00A5A5A5009F9F9F009D9D9D00625E5D00242322001F1E1E00403E3B00403C
      3B003B3C3B002A2928001C1B1C005E5D5B00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3A3A300363636000D0D0D001616160021212100545454004D4D4D003636
      36001A1A1A000B0B0B0006060600050505002222220082828200F3F3F300FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAB0EB004046
      D4000C14DB000009E9000007ED000002E9000001E7000001E7000001E8000001
      E8000002E8000002E8000002E8000002E8000002E8000003E9000007EB00000C
      EF000012F100000FF000000DEE00000BEC000009E8000009E5000009E6000009
      E6000008E5000008E7000008EA00000AED00000DEF00000EF100000BEF000004
      EA000002E8000002E8000001E8000001E8000001E7000001E7000001E7000001
      E7000001E6000001E6000000E6000002E9000005EC000006E600272BDF008083
      E600DBDDF7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7A7900E6E7E900E8E8E800E9E9
      E900E9E9E900E9E8E900E6E5E7007AB280003B8D43001E5F2500538D5C0081BA
      920031A07C00129D5C000C863E000F6C1F00065B1200136D2E0025765B003758
      5700675F5B009B725800E2986100EDA36800EA9D6000EBA16400E69C6000E19D
      6100F2975900EEA67900E5E2E700E7E8E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E8E9E900E9EAE800D6E0E7004E7BC000507BC400364E7B00203D
      74000212480001104400000A460080B1E6005899E00075A7F00073A5EB0079B1
      E90074ADEB005EA4E7004C8DD800569CE0005099DE004094E1002279D3004294
      DF004392E100368BDF003C8CDD00E2E5ED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FBFBFB00F4F4F400EAEAEA00DADADA00CACACA00BABABA00AFAFAF00A7A7
      A700A2A2A200A0A0A00075747400545150001B1A1A002A282A0054504E003739
      34003C393900262424001B1B1B00ECECEC00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009191910023232300101010001D1D1D002323230067676700676767005656
      560035353500181818000A0A0A0004040400040404001B1B1B008C8C8C00EAEA
      EA00FDFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F9FE00C3C7F1003F46D6000B13
      DB00000BEA000007EC000003E9000002E7000002E8000002E8000002E8000002
      E8000003E8000003E8000003E9000006EA00000BED000012F0000013F100000D
      ED000012E7000115E3001929E4002E39E5004349E4005558E3005558E4005558
      E4005558E4004E51E4003A41E5002531E5000D1AE400000EE700000EED00000E
      F0000007EB000003E8000002E8000002E8000002E8000002E8000002E8000001
      E7000001E7000001E7000000E7000000E6000002E9000007EE000007E800272C
      DE008185E400DDE0F80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E7C7900E7E8E900E8E8E800E9E9
      E900E9E9E900E9E9E900E9E7E7004FAA5B0014671F005F936A00C5D6C6009AD1
      CD0016A8A30003A9900007A07B0024A56600238A41000B5C0F0003702300065F
      3600335C610052615A00B2865E00D8925A00EF9E6100EFA16400E7A06500E1A1
      6400F7995E00F19E6E00E8DFDF00E4E7E800E8E9E800E8E9E900E8E9E900E8E9
      E900E9E9E900EAE8E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E8E8E800E8E9E800DBE1E80095B8F0009AB9EE0082ABEE005F92
      DC00314F98002D488000243D840088B5E7005698DD007BA8ED0074A7EC0073B2
      E70070ADE8005C9DE400468BD800529EE800549DE6004192E1002277CC004999
      E0004694E3003A8DE000418FDE00E5E7EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00FAFA
      FA00F4F4F400E8E8E800DADADA00CACACA00BCBCBC00B1B1B100A9A9A900A5A5
      A500A3A3A3009C9C9C00625E5D0021202000222020004B4746004A4645004544
      43002F2D2D001D1C1C006A696700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009D9D9D002F2F2F000E0E0E001A1A1A001D1D1D0044444400656565006363
      6300525252003131310015151500090909000404040003030300101010009191
      9100D3D3D300E4E4E400E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E4E4E400E4E4E400E4E4E400E4E4
      E400E6E6E600EAEAEA00EFEFEF00F8F8F800FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9FAFE00D3D6F5005056D5000911DB000010
      EF000009EE000003E9000002E8000003E8000003E9000003E9000003E9000003
      E9000003EA000005EA00000AED000010F0000014F0000018EE00051FE900282F
      E4004849DE005560DE007C85E5009AA2EB00BAC0F100D5D8F600D5D8F600D5D8
      F600D5D8F600CBCFF400ADB4EF008D96E900696FE2004448DE001F27E3000011
      ED000013F2000004EA000003E9000003E9000003E9000003E9000003E9000002
      E8000002E8000002E8000002E8000002E7000002E7000003EA000007EF000007
      E5002327D900868AE600F1F2FC00000000000000000000000000000000000000
      0000000000000000000000000000000000007B7F7A00E9E9E900E9E9E900E9E9
      E900E9E9E900E8E9E900E7E6EA002B923400095815009EB6A600E0DCD9001AA5
      A40001A3A00019A098002AA6A80055BCB4006FBE92003F97480004500700045C
      100001524300195B570061645100A0653900EF9E6000F19F6000EE9E6200E89E
      6200F4925200EE875300E7CEBE00E2DFDE00E7E7E600E5E7E800E7E8E800E8E9
      E900EBE9E900EDE7E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E8E8E900DFE2ED009EC2F300A0C5F30093B6F5008FB7
      F5008AB4F50088B6F50071A2EB0079A9EF005A99E50085AEEE007AADEF006FB4
      EC0065ABE8005191DF003179CF003C89D2004A98E3004892DE00226FC1004D98
      E4004895E6003F8EE4004691DF00E9E5E2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD00FDFDFD00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FAFAFA00F3F3
      F300E8E8E800DADADA00CBCBCB00BDBDBD00B3B3B300ADADAD00A8A8A800A6A6
      A600A8A8A80076747400555150001D1C1C00373333005B57570041413E004341
      4100292627001F1F1E00F0EFF000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C5C5C500585858000C0C0C001010100016161600161616004A4A4A006060
      60005E5E5E004C4C4C002D2D2D00111111000808080003030300000000000C0C
      0C006B6B6B00AAAAAA00C0C0C000C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C1C1C100C1C1C100C1C1C100C1C1
      C100C2C2C200C7C7C700CFCFCF00DEDEDE00ECECEC00F6F6F600FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFF00DFE1F800787EE0000105CD000015F200000D
      F1000006EB000003E9000003E9000003E9000004EA000004EA000004EA000004
      EA000007ED000010EF000017F200001AEF000C1DE700292DDE004556DC00959F
      EB00DEE1F800FAFAFD0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7DAF7006F77E600040F
      DD000020F7000007ED000004EA000004EA000004EA000004EA000004EA000003
      E9000003E9000003E9000003E8000003E8000003E8000002E8000003EA000008
      EE000008E7002426D800ADB4EF00FBFCFE000000000000000000000000000000
      000000000000000000000000000000000000767D7D00E9E7EA00E9E8E900E7E9
      E900E7E9E900E8E9EA00D9E6F30015651C00054A1300C2C2BD00BCDED60000A2
      9D0003A29400749FA100B3BBB600E2E4E300E6EBE900B2D4AF0020892C000A59
      0F00005C2500005A4300294F4900915A4200DE945700EEA05C00EE9B6100EC9C
      6000EE8A4E00CB4D2400DAA28100E2C9C300E5E1E500E5E4E700E9E8E300EAE9
      E700ECE7E900EFE7E900EBE7E900E9E8E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E8EAE900DBE2EB0091C5F00097C9ED0090B8EF0095BA
      F40090B6F8008BB8F8008BAEEE0068A1F20066A0EF0085ADF2007FACEE0075B9
      F20066ACED004C82D9002262C600092A7200296EBE004D95E600378BD9004B97
      E6004B95E5004391E2004B94E100E5DEDE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00F4F4F400DFDFDF00E2E2E200F2F2F200F8F8F800FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00FAFAFA00F3F3F300E8E8
      E800DADADA00CCCCCC00C0C0C000B6B6B600B0B0B000ABABAB00A9A9A900A8A8
      A800A3A2A200656160001E1D1D002625250056504F00504E4D004B4847003534
      33001E1D1D007573730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F100929292001D1D1D00090909001111110012121200131313004444
      44005C5C5C005A5A5A0047474700272727000D0D0D0007070700030303000000
      0000070707008A8A8A00E6E6E600FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5F5F500E1E1E100D8D8D800BCBCBC00B7B7B700D5D5D500EFEFEF00FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EEF0FC00A0A4EA000007CB000015F300000FF0000006
      EC000004EA000004EA000004EA000004EB000004EB000004EB000005EC000008
      ED000013F3000024F500061DEC001321DE004C5BDF00BCC1F100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2B9F2001328
      DE000019F300000DF0000006EC000005EC000004EB000004EB000004EB000004
      EB000004EB000004EA000004EA000003E9000003E9000003E9000003E8000007
      EC00000AF000010BE8001B2DD700DFE3F900FBFCFF0000000000000000000000
      000000000000000000000000000000000000767F8000E7E7E900E8E8E900E6E9
      E900E6E9E900EDE9EA00EFE4F3000E5919000A581D00C3BFC1008CC9C50000A7
      9900019979008D999D00CABFC300E2EBE500E2E9E600EDEBE70083A99600429F
      5B0001480200045C10003D5D4300A5724300AC904900D7A45900F4A36D00EBA4
      6500E88E4E00BE431300F88A5900DE997400E3CDBA00E1D9D000EAE3E100ECE3
      E500E0E7E500E1E7E700E9E5E900E9E7E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900EBECEA00CFD5E4002C82D500267EC900639BDB0083B6
      EA0093BAEF0097B9EC008DAEF0005B96E50072A4ED007EAFF00082AFF1007BB6
      F1006AA7E9003166BA000D2D81001F4C90004CA2EF003489DB0056A1ED004897
      E3004997DD00479AE3004A99E400E9E7E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00E8E8E8006E6E6E00CDCDCD00ABA9A70081808000DCDCDC00EDED
      ED00F8F8F800FDFDFD00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00F9F9F900F2F2F200E7E7E700DADA
      DA00CDCDCD00C1C1C100B8B8B800B4B4B400B0B0B000ADADAD00ACACAC00AEAE
      AE0083838300514F4D00201E1E003D39380064606000484645004C4A48002E2E
      2B0023222200E8E8E80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D8D8D800B2B2B200777777000E0E0E000707070010101000101010001010
      10003E3E3E005959590056565600424242002323230009090900070707000202
      0200000000000707070083838300EFEFEF00000000000000000000000000FEFF
      FF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFFFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F800C1C1C100BABABA00E3E3
      E300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BABFF0002433D700000AE8000019F7000006EC000004
      EB000005EC000005EC000005EC000005EC000005ED000005ED000008ED000020
      F7000027F700000DE1003A40DD00A3ABEE00F5F6FD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2BAF300132C
      E2000023F600000FF1000008ED000005ED000005ED000005ED000005ED000005
      EC000005EC000005EC000004EB000004EB000004EB000004EA000004EA000004
      EA000007ED00000CF2000B0CE4006672E300EEEFFC0000000000000000000000
      000000000000000000000000000000000000827F7600EBE9E700E9E9E800E6E9
      E800E5E9E800E9E5EA00D9E8D7000F5B1D0019643300CABBC40098C5C70000A3
      960002A27400999D9F00C5C5C700E8E9E900E5E8E900F0E7E900E7DECF00C0D4
      AD0026822E00085D0F0029731E0080A54700A06C4500BF915000E6A06500E79F
      6500F39E5A00EE904C00CB521C00DC632800EB9F7100E3B08B00E6D2BD00EAD4
      C000E8D9D800DFE2DF00EAE9ED00E8E9EB00E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E8E8E800EAEAE900D1DBE7001A4E9900072162000E266F002253
      A1003887D7003E86D00079B6F3005D97E10076A2E90081B2EF0082AEF0007FB2
      F50075ACED002754AE00051952002A4F92005BA2EA002C7BCD00509FED004999
      DF004A98DF004B9ADF00509CE000DDE2DD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00F9F9F9009E9E9E0000000000FCFCFC00D1D3D600AC9D9200A1998F007D7C
      7C00DFDFDF00EEEEEE00F9F9F900FDFDFD000000000000000000000000000000
      000000000000FEFEFE00FDFDFD00F8F8F800F1F1F100E7E7E700DBDBDB00CECE
      CE00C3C3C300BCBCBC00B7B7B700B4B4B400B2B2B200B1B1B100B2B2B200B6B6
      B6006A646300201F1E002D2A28005F5B590059555400504E4C003C3B38001F1F
      1F00828181000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600C8C8C800DFDFDF00E9E9E900A5A5A5000B0B0B00050505000C0C0C000D0D
      0D00131313003636360052525200505050003E3E3E001D1D1D00080808000606
      060002020200010101001414140079797900EFEFEF00F4F9F700C6DBD50081AC
      A20037876E0023643E001E452A001C3C27001C3D27001C3F27001C4227001D4C
      2E00277E5D00579D8700A8CABE00E9F1EE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00F8F8F800DCDCDC00C7C7
      C700DCDCDC000000000000000000000000000000000000000000000000000000
      000000000000D9DBF7007377E400040EDC000024F7000009EE000005EC000005
      ED000005ED000006ED000007ED000007ED000008EE00000FF1000032F900001F
      F200000DDC00676EE500C9CDF500F5F6FD00FEFEFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BCC2F5004550E7000212
      E7000030FA000008EF000007EF000007EF000007EE000007ED000007ED000007
      ED000007ED000005ED000005ED000005EC000005EC000005EC000004EB000004
      EB000005EC00000AEF000110F1000B0CD700B1B6F200F3F3FD00000000000000
      0000000000000000000000000000000000007F7B7D00EDE9E800EAE9E900E7E9
      E900E7E9E800E7E7E900D3F1C6000E5C1D001C673800C2B8C10095C4C70003A0
      8B0009A07D00959E9F00C3C7C700E9E9E900E7E9E900EBE9E900E6EBDB00DDE4
      DF0078B07600388638000A4709002E621B009C854C009F753C00CDA35400DB9C
      5500ED9B6300E69B6100C85E2000D44D1600CA592C00DC794C00F1AA7200EFAB
      7800DFAE9D00E6D2C400E6E7E600E8E9E800E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900EAEAE900D1DCE8002D6ABF003F71B200759DD9006095
      D3000F3174000B214A00224EA40062A0EA0083AFEF0085B0F20083AEF0007EAE
      F3006DAFEB002B62C100061F59002859AB0053A1EC003387D4005FA1ED00539E
      E5004E9AE2004A98E1004F9ADD00DFE4E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00C7C7C700E3E3E300F0F0F000DDDDDD00B3B5B800BDAC9C00AF9F9300B5A5
      9800978D85008C8C8A00DADADA00F1F1F100F9F9F900FEFEFE00000000000000
      0000FEFEFE00FCFCFC00F8F8F800F0F0F000E5E5E500DBDBDB00CFCFCF00C6C6
      C600C0C0C000BABABA00B8B8B800B6B6B600B5B5B500B6B6B600BCBCBC008884
      84004B49470022212000423E3D00706B68004F4D4C004F4E4D00313130002524
      2300F3F3F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0E0E000C8C8
      C800DDDDDD00F9F9F900FDFDFD00ECECEC00A4A4A4000A0A0A00060606000B0B
      0B000C0C0C0014141400303030004C4C4C004A4A4A0037373700181818000808
      08000404040002020200010101001A1D1C003C574C003C7A60002A4A37001942
      2B0007401F0003411400013E1000013F1000014310000146110002481200024A
      130004571F000F5B28002363340036794C0077A58C00CDDDD800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8F8F800D7D7
      D700CBCBCB00E6E6E60000000000000000000000000000000000000000000000
      0000F9F9FD00979AE9001722DA000016ED000017F4000007ED000007ED000007
      ED000007EE000007EF000007EF000007EF000010F100002CF8000025F200000F
      DD007F85EA00D5D7F700F7F8FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5BBF5004C54E8000C22EA000031
      F700001AF6000008F0000008F0000008F0000008F0000008EF000008EF000008
      EF000007EF000007EF000007ED000007ED000007ED000006ED000005ED000005
      ED000005EC000008EE00000EF2000009E8003547E000D4D7F800000000000000
      000000000000000000000000000000000000847D7400ECE9E800E9E9E800E7E8
      E900E8E8E800EAE8E800DBEECB00115B1C0016623300B0B5B70086C5C30002A1
      8C000CA48B00919FA200C6C9CA00E7E7E700E8E8E800E9E9E900E5ECE800E1E0
      EA00C9BC98008EA15D001C75240008400700738D460099634400BA7E5800C98A
      5800E9A16100E5A06000DF884600E1824900D4561F00DE551E00E1672D00D967
      2E00ED956600E6AF9300E5E5E300E5EAE800E9E8E900EAE8EA00E9E9E900E9E9
      E900E9E9E900E9E9E900ECEBE900E1E5E9008BB3E9008FBBEA008BB9F200619C
      E5002559A6003C64A1005582CD006CA2E70085AFEE0086AFF10082AEF10079AD
      F10070B1ED001E49A900041B63004381CD005B9CE8004794DB005AA2EA005FA4
      EC00569FE5004997E2004F9AE300E9E6E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00F7F7
      F700A7A7A700FCFCFC00F4F4F400F3F3F2009D968F00D4BDAD00C4B5A400BFAD
      9F00AB9B9000BBA89B009489800099969600D6D6D600F2F2F200F9F9F900FCFC
      FC00FBFBFB00F7F7F700F0F0F000E5E5E500DBDBDB00D1D1D100C8C8C800C2C2
      C200BFBFBF00BBBBBB00BABABA00BABABA00BBBBBB00C1C1C100CACACA007270
      6C002221200034302F006B6464005D5A590055515100413E3D00252423009A9A
      9A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA00C7C7C700DADA
      DA00F6F6F6000000000000000000FDFDFD00E8E9E900708079000E1311000505
      0500090909000B0B0B00131313002B2B2B004545450045454500303030001616
      16000808080004040400010604000112090003291300033F1B0001380F00013E
      10000141100002481100024B1200024E13000252130002541400025615000257
      1600035A16000259160002581600045D1B001C6C3300428659005BA07C005FAD
      90005FAD91005FAC90005FAC8E005FAA8E005FAA8D005FA98D005FA98C005FA7
      8B005FA68A005FA58A005EA489005EA389005EA187005EA187005D9F850060A2
      8B0078B09F00B3CDC700EFF5F20000000000000000000000000000000000F4F4
      F400D5D5D500CFCFCF00FBFBFB00000000000000000000000000000000000000
      0000CACEF5005961E4000012E4000020F500000BEF000007EE000007EE000008
      EF000008EF000008F0000008F0000010F2000024F6000027F300000FDF007C82
      EA00D9DCF800FAFAFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B3BAF5004E57E900102BEC000032F6000026
      F800000EF200000AF100000AF100000AF100000AF0000009F0000008F0000008
      F0000008F0000008F0000008EF000008EE000007EE000007EE000006EE000006
      ED000006ED000006ED00000AEF000014F4000710E100969BEF00E9EBFB000000
      00000000000000000000000000000000000087807200ECE9E700EAE9E800E7E8
      E900E7E8E800EAEAE800E4EFDB0013601D000F5B2800A9AFAE007CBDBB0001A0
      8A000DA78F0090A0A400BFC3C400E9E9E900E9E9E900E8E8E800DFEAE200DED2
      CA00C8896300A07C46004E8D43001F6E26002C5D1F0060522D0091573800A06D
      3E00DDA26500E7A46300E89D5D00E59B5D00EB833D00E8713000D1661D00DB69
      2100DE652E00EC946600E3DDD800E3E7E900E9E9E800E9E8E900E9E9E900E9E9
      E900E9E9E900E9E9E900EDEBE800EAEBE900B8D4F600B2D2F6009CC2F20080B2
      F0006FA4E2007EADE60064A1E40072A5E90087B4F00086AEF00082ADF00078B0
      EF0071AFEE000B246E0001105300659EE6005E96E3005F9EE7005FA6EA0065A7
      ED005CA4E8004A97E4004D96E400E7E3E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F900B3B3
      B300F3F3F300FEFEFE00E9E9E900989DA100DFCCB800DCC6B400CFBBAB00C7B3
      A300C1B4A100BBA79900A8998D00B5A594008E847B0096959400DDDDDD00F0F0
      F000F3F3F300EEEEEE00E6E6E600DBDBDB00D3D3D300CBCBCB00C5C5C500C2C2
      C200BFBFBF00BDBDBD00BEBEBE00C0C0C000C5C5C500CFCFCF00959393004240
      3F00242322004D4847007E76750054515000514F4E00353433002A292900F6F6
      F600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0E0E000CCCCCC00ECEC
      EC00000000000000000000000000EBF5F2009CCABA004A9966000B431A00010F
      050004050400080808000909090011111100272727003F3F3F003E3E3E002828
      2800101311000411090001180A0000270C0001360E00013D0F0001451000014A
      1100024C1200024F130004581A0005652800066C2E00066B2B0004662300035D
      18000360190003611A0003631B0003641B0003631B0003651F00066B2A00086D
      3400096E350009743700097336000972360008703500086E3400086C3200086A
      3100086930000867300007662F0007642E0007622D0007612C00075E2B00095D
      2D00186039003F6F5500749E8200D5E4DD00FBFCFB0000000000000000000000
      0000E4E4E400CBCBCB00E4E4E40000000000000000000000000000000000F9FA
      FE008B90E9001D30E300001FF1000019F4000008EF000008F0000008F0000008
      F0000009F100000AF100000EF2000020F6000031F5000D21E600747AE800DDE0
      F900FBFBFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5BBF6004E58EA001030ED000033F600002AF9000013
      F400000CF200000CF200000CF200000BF200000BF100000AF100000AF100000A
      F100000AF100000AF1000008F0000008F0000008F0000008F0000008EF000008
      EE000007EE000006EE000008EE000013F500000CEC003747E500C1C7F6000000
      000000000000000000000000000000000000817D7900EAE9E700E9E9E800E7E8
      E900E5E8E800EAEAE900E8EAE80015661F00094E1D00A7A8A90076B2B200019F
      88000AA78C0093A1A400B5BABB00E7E7E700E8E8E800E8E8E800D2D2CA00BE9E
      85007A412200643B1F004858340031743600044005001C460D004B3116005A3C
      1D00A9754B00CB8E5700E6995C00E59B5C00F3A15600EE965100D7873F00E78D
      4500D64D1800E4723A00E6CDBB00E4E2DE00E6EAE800E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900EDEBE800E9E9E800B8D6F400B8D5F500B0D0F500A6CC
      F6009DC8F4009BC4F0006EA6E90079AAEC008BB7F00089B0F10084AEF00080B4
      EF0077AAEE0003134700000E4A0074A6EF005B92E3006C9FEC0067A9EA0063A7
      EB005DA7E9004A95E500468BDE00DDDDE3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F0F0F000BDBD
      BD00FCFCFC00E1E1E100E4E4E400B5AB9F00E9D1BD00DCC4B300DCC4B300DCC4
      B300CAB4A400C1AD9C00BFAC9C00B5A39400A8948600AB9C8D0096887D008A8B
      8B00DADADA00DBDBDB00D9D9D900D2D2D200CCCCCC00C8C8C800C4C4C400C3C3
      C300C1C1C100C2C2C200C5C5C500CACACA00D3D3D300DADADA00797471002322
      21003935340079726D005F5B5A005C595900454343002A2828008F8F8F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C5C5C500E1E1E100F8F8
      F8000000000000000000F1F7F400B3D6C30031945F0004712300035E19000131
      0D00010F05000405040007070700090909000E0E0E0024242400383838002733
      2E000E20150002220D00002D0E00003A0F0001430F0001461000024C14000A6A
      36002D794C00337C500028805000188351000F8450000E834D0010804800197E
      46001B81490009773600046C240003681E0003691F00036B2000036A20000366
      1C0003631B0003651B00036B1F00036B1F0003671D0003631B0003611A00035F
      1900025D1700025A1600025D1700025A17000259160002571500025515000252
      1400014C1200014513000F512300689D8100EEF4F00000000000000000000000
      0000F4F4F400D8D8D800CBCBCB0000000000000000000000000000000000DDDF
      F9005B60E5000019E7000027F700000DF1000009F0000009F0000009F0000009
      F100000AF100000CF200001FF6000030F700102FEC005861E700E5E7FB00FCFC
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BBC2F7004C57EB001032EE000038F700002FFA000015F600000C
      F300000CF300000CF300000CF300000BF300000BF200000BF200000BF200000B
      F200000BF100000BF1000009F1000009F0000009F0000009F0000008EF000008
      EF000007EF000007EF000008EE00000BF1000017F5000112E200979EF100F3F4
      FD00000000000000000000000000000000007B7A7D00E8E8E800E8E8E800E8E8
      E900E6E8E800EAE8EA00EDE2ED001E73250007491700A49FA20072A8A90001A1
      900006A78300969D9F00B0B3B300E2E2E200E8E7E600E5E6E700AE9990009C76
      5E00735E55006F605D0062615A0062795F001D68220004480800111C0D001C12
      0F00542F1B0083573300D98D5000E69D5E00EDA05D00EC9E5D00E6986000E79B
      6000E1672B00D6541900E3B08C00E4D3C100E2E9EA00E9E9E800E9E9E900E9E9
      E900E9E9E900EAE9E900ECEBE800E1E1E100A0C6F200B4D4F400B6D4F600AFCF
      F5009FCBF5009EC8F50090B7F90084B0ED0090B6EE008DB2F10087B0F00081B5
      F100739EE70004174A000720630073A9F1005B96E8006A9DE70066A7EB005BA3
      E70059A6E8004993E2003D81D600DDDCE3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA009E9E9E00F8F8
      F800ECECEC00F4F4F400A9ACAF00E8D0BB00DCC6B100DFC6B500D6BFAC00CAB8
      A700D0B9A700CDB7A400BCA99800B7A38F00B4A39200AC9B8B00A3908300A594
      84008F8278007C7B7A00C3C3C300C6C6C600C7C7C700C6C6C600C6C6C600C6C6
      C600C5C5C500C8C8C800CECECE00D7D7D700E9E9E9009E9B9A003D3B3A002826
      250056525000817C79005A565500555151003C38390032323100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BABABA00EEEEEE000000
      00000000000000000000D1E8DF005CAE840005762600035D1700025815000252
      1400012F0C00010F05000404040006060600070707000A0A0A001E201F00122F
      20000429110000300E00013B0F0001431000034D180010622F0031784A001E93
      6800469674004FA0830047A28300389C7A002F9773002D9771002B9972002B9B
      7500298D61000E834900087C39000677310005712800046E2200047023000473
      24000470230003681D00046D2100046F2100036A1F0003671D0003661D000362
      1B00035C170003551300036119000361190003601800035E1800025C1700025C
      1700025B1600025616000249140006522400C9D8D000F9FAFA00000000000000
      000000000000E4E4E400C1C1C10000000000000000000000000000000000A1A8
      EE003241E700001DF0000021F600000AF000000BF100000BF100000BF200000B
      F200000BF2000016F500002FF8000738F2003B43E700C6CBF600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      FE00C6CCF8004855EB000D2EEE000040F9000034FB000017F700000DF500000D
      F500000DF500000CF400000CF400000CF400000CF400000CF300000CF300000C
      F300000CF300000BF200000BF200000BF200000BF100000BF100000AF0000009
      F0000009F0000009F0000008EF000007EF000019F700000AE900676FED00D3D7
      F900000000000000000000000000000000007D7D7D00E9E9E900E9E9E900E9E9
      E900E9E9E900EBE8EA00F3E3EE00378E39000E591B00A296960074A0A10000A2
      9C0003A3730095969700AAABAB00DFDFDF00EAE8E600DEE2E60095866F00B5AB
      9900EBEAE600F7F5F600EDF0EB00DDE1D60069AF7200276D2B00042F0600091A
      0B00160F0B00331F1500CA884900E29D5800E8A06400E79F6400E79F6100E49C
      5900E28E4900D9551900D98A5E00E4BCA000E1E7EA00E9E9E700E9E9E900E9E9
      E900E9E9E900EBE9E900EBECE900D2D5D9005B8ADC0083A2D800AEC8F100B4D1
      F800A4CCF400A4CBF30089B8F6008DB7F20095B9F2008FB4F10087B1EE0076B3
      F1004A79C500031657001D4991006FAFF1005E9EEA0064A2E20065A2EC00539F
      E30056A0E6004A92E1003B80D400E9E0E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00E3E3E300BFBFBF00FCFC
      FC00F3F3F300CFD0D100A0968A00D9C1B100D0BCAB00C7B3A100C4AFA000C9B1
      A000C0AB9900BCA59300BDA79600B9A39200B0988A00A8968600AB988900A190
      8300948575009B897A006D615B007C7C7B00B8B8B800C2C2C200C5C5C500C9C9
      C900CCCCCC00D2D2D200DCDCDC00E6E6E600E2E1E10077716F00222020003E3B
      3800807C7B00645F5D005F5C5B004846450027262500A29F9E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BABABA00EEEEEE000000
      00000000000000000000B2DECD001291580004681D00025A1600025B1600025C
      17000257150001320D00010D0400030303000505050006070600040D09000123
      0C0000310E00013D0F00014310000C501E001B6E400032956D0071B08F00399C
      7A002A7F4E002D91650046A6800062B3950070B99E006EB89D005EB092003A9C
      750028723F00247B4700138A55000B874A00077E390005782B00047324000474
      2500057B290004782800036B2000046C1F00036A1F0003691F0003681E000364
      1B0003581400024A100003631A0003621A000361190003601900035F1800035F
      1800035D1700025C170002571500003B0E0087A99A00E8EFED00000000000000
      000000000000E5E5E500C2C2C200000000000000000000000000FAFAFE00606A
      E500092AE9000027F6000015F400000BF100000BF200000BF200000CF300000C
      F300000DF400002EF9000033F6002237EC008792EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F8FE00C8CE
      F9004254EB000826ED00004DFB000038FB00001AF800000EF600000DF600000D
      F600000DF600000DF500000DF500000DF500000DF500000DF400000DF400000D
      F400000DF400000FF400000FF400000EF400000CF200000BF200000BF100000B
      F100000BF100000AF0000009F0000009F0000012F4000014F3002C3CE900ABB1
      F400000000000000000000000000000000007D7D7D00E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900EAE5EC0059A75700186423008893820076A09C0000A1
      9A000299630094979400A1A1A000DEDEDE00EAE9E900DDE0E100FEFEFB00F6FE
      FD00F9FBFD00FCFCFC00FAFBFB00FBFDFD00DBE2D3008ABF8A00054C09000533
      070018110E0020131200E29A5C00EB9F6100E79F6200E79F6400E9A06300EDA1
      5F00ED9F6100D25B2A00EC7A4900F6B79200E3E5E400E9E9E900E9E9E900E9E9
      E900E9E9E900EBE9E900EDEEEB00D2D7DF000F3A9B00062689007B9DD700B6D5
      F900ADD0F600A9CEF50071A2E7009AC1F4009BC1F50094B7F4008AB1EF007FAC
      EC000C297B00010D4D004376B9005DA6E5005398E1006EACE400699EE7005FA1
      E8005EA1EA004A91DF004085D600E4DDE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB009696960000000000E8E8
      E800E0DFDF00B0B0B000DDC7B500BBAC9D00BDA99900BCA99800B7A39300AD9D
      8900B19D8E00B49F8F00B09B8A00AD988800AF998900AD978800A48F7E00A08B
      7A009C8E7E0093806F00806E5F00897767005550490086858500B6B6B600C8C8
      C800D4D4D400DEDEDE00EAEAEA00FAFAFA00989694003C3838002D2928005D5C
      590086807E005B56570056555400424040003735340000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BABABA00EEEEEE000000
      00000000000000000000ADDAC20008853D00035F1800035C1700035F1800035F
      180003601900035B170002370E00010B040002030200040A0700001E0C00002F
      0E00013D0F00014310000B4F1A00367C54005AA78E003F9572002075440063B2
      970092D7AF009CDDB400A0DEB800A5E0BA00ABE2C000B1E4C500B0E4C500ACE5
      C200A1E1B7008DC9AC0037936D00156D3A000D7A3E0009884100057B2E000476
      2600047827000582300004752700036C2100046A2000046B2000046A20000365
      1C00035B15000351110003631B0003631C0003621A0003621A00036119000361
      190003601800035E1800035A16000148100055947E00DCE9E500000000000000
      000000000000E5E5E500C3C3C300000000000000000000000000E0E2FA00494A
      E400002BEF000030F900000CF200000CF300000CF300000CF400000CF400000D
      F4000016F700003EFB000437F1005254E900EBEBFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9FE00C9CEF9004355
      ED000018EB00005CFD00003BFD00001AF900000FF800000FF800000FF800000F
      F700000FF700000FF700000FF700000FF600000FF600000EF600000EF6000011
      F7000016F700001EF900001EF800001BF7000014F500000EF300000CF300000C
      F300000CF200000BF200000BF100000BF100000DF2000022F8000015E800888D
      F000FAFAFE000000000000000000000000007D7D7D00E9E9E900E9E9E900E9E9
      E900E9E9E900E8E9E900DDE7E90074B46A001C68200052785F007796990000A0
      9C0002955700959891009D9C9900D2D2D200E3E5E500FEFEFC00FAFFFF00FEFF
      FE00F9FEFE00F9FDFE00FAFCFD00FEFEFE00F9FEFA00CBDBC20026643000013D
      030042250F0034180C00A4734200D7985C00E89D6300E79F6400EAA06300F0A0
      5F00E1A26600F69A6500E96F3400EC9A6F00E3E3E000EAE9E900E9E9E900E9E9
      E900E9E9E900EBE9E900EBECE800E0E4E4001B489C000E399B0093BDE100C4E1
      F500B7D3F700B0D4F900679CE800A5C8F200A0C4F30097BAF5008EB6F2006C9A
      DC00061E7000000D46005580BA00579EDF00468DD20072A8EE00659FEA005C9D
      E5005997E3004589D7003D7BCC00E0DDE5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB00C5C5C500F7F7F700E7E7E700F0F0
      F000DFE1E30092867D00B4A39600B7A59700B3A19300A9988A00AB988A00B09D
      8D00AC998A00AB968300AB978800AF998900A9948400A8928000A9938100A790
      7E009C88750094806E00907D6B00867263007764560085756400655950008988
      8800CDCDCD00E2E2E200F1F1F100D6D5D50075716F0021201F00403C3B008984
      83006A6564005D5B5A004B48470025252400B0AEAE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBBBBB00EEEEEE000000
      00000000000000000000ACD8BE0005813300035F180003601900036119000362
      1A0003631A0003631B00035F1900023E1000010704000010090000270D00013C
      0F00014110000144100058946A0061B08C0015865E00339D740097D8B10099DB
      B1009DDDB500B0E2C800D1EADE00E7EEEA00EEEEEE00ECEEEE00E0EDE800BEE9
      D400A7E4BE00A3E4B900A2E4BA007FC2A500337B520006682A0007843B00057D
      2C0005792A00057D2B000689380004722600046D2100046D2100046A1F00035C
      1800024A0F00034E1000024C100003631B0003661C0003641C0003621B000362
      1A0003611A0003601900035D1700014C110055967F00DCEAE600000000000000
      000000000000E5E5E500C3C3C300000000000000000000000000A4ADF1002E3C
      EA000026F3000025F800000CF400000CF400000DF500000DF500000DF500000D
      F6000036FB000038F7002542EE008D97F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C5CCF9004254ED00001A
      EC000076FF000040FD00001AF9000011F8000011F8000011F8000011F8000011
      F8000011F8000011F8000011F800000FF800000FF800000FF7000015F800002D
      FB00004FFF00004FFD000043F9000052FE00003FFD00001EF700000FF400000D
      F400000CF400000CF300000CF300000BF200000BF2000024F8000014EE006169
      EF00D2D6F9000000000000000000000000007D7D7D00E6E9E900E8E9E900E9E9
      E900E9E9E900E9E9E900E4E9EA0073B36E00207129003F6C53008B9A9F0000A4
      A800029A5C0088A29A009D9D9B00CDCDCD00EAEAEA00FEFEFE00F8FEFE00F7F9
      F500C7A18A00DBA37C00DCA57900D1A67900E3C4AD00EDDECE0072B07A002976
      33002E431500905A3A00A05F4E00C6975000E69E5F00E89E6400E79F6300E79E
      5F00E5975400EF986300E15F2200E0764B00E2DED500E5E9E900E9E7E700E9E9
      E900E9E9E900E9E9E900E9E9E900E4E7EB00AEC9EC00AEC7F300BFDAF700C2DD
      F900B7D6F800AFD3F9007AA8E800AFCDF300A5C8F20096BDF3008FB5F2007CA1
      F200195AB90007257800528ACD005A9CE1004F91DB006EA9EA0067A2E70061A1
      EC005C9EE5004B91E3005295E700D9E8E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00FCFCFC00A1A1A10000000000FBFBFB00DDDD
      DD0093909300BFAC9B00B1A19400AC9B8D00AC998800B09D9000B19F9000AD9B
      8B00AD9C8A00B59F8F00B39D8D00AC998900AF998900B39C8A00AD978400A892
      8000A7928000A38B780097836F008F7A64008E7A670089746300867265009481
      6E008B7D6F0093939300EFEFEF009694910034302F002C2C290067615E008883
      8100615E5C005653510043414000323031000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BCBCBC00EEEEEE000000
      00000000000000000000ACD9BF000583350003611A0003621A0003631C000365
      1C0003671D0003671D0003671D00035B1A00023D100000230C0000380F000140
      100001441000418462003F9676002B936F0051AE89008CD4AA009BDCB400AFE2
      C500D9EAE000E5EDE900EBEEEC00EBEEEC00D5EBE000B6E7CB00A9E4BC00A5E5
      BB00A3E4BA00A3E6BB00A4E6BB00A1E3B90088C6A50043805D00035C22000687
      3800057D2B00057E2C000684330007893D0005772C00046E220004641B000352
      12000348100002420E0002460F000358150003651D0003671E0003661C000365
      1C0003631B0003621A00035F1800024F120056977F00DCEAE600000000000000
      000000000000E6E6E600C4C4C4000000000000000000000000006573E800123B
      EE00002CF700001BF700000DF500000DF500000DF600000FF600000FF7000012
      F800004DFD000032F0005C61ED00E1E4FB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCC3F9004859EF00072EF000006D
      FD000049FE00001EFA000016F9000015F9000014F9000014F9000014F9000014
      F9000013F9000013F8000013F8000011F8000011F8000018F9000038FC000049
      FB000024F200041BE9002946EC000421EA00002CF500003AFB000023F900000D
      F600000DF500000DF500000CF400000CF400000CF300001CF7000019F2003D4F
      EF00AEB6F5000000000000000000000000007D7D7D00E7E9E900E8E9E900E9E9
      E900E9E9E900E9E9E900E9E9EC007DAE7700369645003F6846009692900000A3
      A40000A97D008BA1950098959400CACACA00F8F8F800FCFCFC00D3D4D1007065
      5E00D8966500E69A6200DD9A6200D99E6000E3995100EFAC7100A8A36900649C
      59000C46070041602200A0623400AD864A00DDA35B00E6A06000E79F6100E69F
      6100E5985400EC9D6100D7591C00E3733C00E2D2C000E2E5E600EAE9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E6E8EC00D3E6F800D1E1F900C3DFF800C3DD
      F800BDD8F900B4D4F8009ABEF100B2D3F500ABCEF4009BC0F10090B6EF004B80
      D900195EC000265BA5005B9AE100609CEA00649EE90070A4E90072ABE90060A2
      E80057A1E7004994DF004C9AE200D7E6E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00ADADAD00FEFEFE00F0F0F000DADADA00D6D9
      DA00998E8500AFA09400AD9D9200B3A19400B7A59800B8A59600B8A49400C0AB
      9B00C3AC9D00BDA59600BFA89300C4AC9900C3AC9600B9A19000BBA38F00B9A3
      8F00B4998800AC938000A88F7D00A08A770099836E0096806C00998571009C88
      7400A18D7A00B0998600867A710056555400252423004A4443008D8684006A63
      6100635F5E004B49470025252500C1C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BCBCBC00EEEEEE000000
      00000000000000000000ACDABF000585370003651C0003651C0003661D000367
      1E0003691F00046A1F00046B2000035D1A00003B0F00002C0D00013F10000143
      10000A6C3D00409677003496750046A87F008AD2A900A0DDB800BDE5D000E0EB
      E500EBEEEC00EEEEEE00E4EDE900C8E9D500AFE6C300A5E4BC00A2E4B900A3E6
      BA00A4E6BB00A5E8BD00A5E8BD00A6E9BE00A2E3BC0087C4A20046876100035F
      20000684350005802E000582310008914600078137000570250004621A000454
      1200034A100002460F0002450F000354120004661D0003691F0003681E000367
      1D0003661D0003641C0003611A000251140056988000DCEAE600000000000000
      000000000000E6E6E600C4C4C4000000000000000000000000004144E200033C
      F1000032FA000013F700000FF600000FF700000FF700000FF8000011F8000029
      FB000049FB001444F000818CF100FBFBFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5BEF9004C5DF1000C3DF2000067FC000051
      FD000025FA00001CF9000019F9000018F9000018F9000018F9000018F9000017
      F9000017F9000017F9000015F9000014F9000024FB000044FD00003FF8001634
      F0005C6FF200BEC2F800D1D7FA00A8B1F7002539ED00003CF700002FFB000013
      F700000EF600000DF600000DF500000DF500000DF4000015F6000023F7001737
      F0008896F3000000000000000000000000007B7B7B00E7E9E900E8E9E900E9E9
      E900E9E9E900E9E9E800E9E9E500BCDBB90061B56E001E5E2900607B62000FA2
      9D0000A59B0062A28E008F9A9900CCCCCC00FEFEFE00FCFCFC005C5A59004E34
      2300D79E5A00E79F5D00E69E5D00E7A06000E29A5A00E59F6100D1A05F009CA0
      5A00156D1500114F0A009F853D009B6E4400D2A15600E3A25E00E79F6200E79F
      6300E6995B00F2A35F00D8602500E36C3000E6C3B000DFE1E000EAE9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E7E9EC00DBEDF700DCE5F700D2E2FA00CEE2
      F700C6E0F600BAD9F800AECEF700B5D4F400ADCFF200A2C9F20096C0F100163A
      8A000A2E82004D80C00076ABEB006098EB0076A8EF0073A4E80078B2EC006EA5
      E7005AA2EA003A87D9002C80D400D8E2E3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F6F6F600C0C0C000F4F4F400ECECEC00E8E8E8008585
      8400B4A39600B5A59800BCAC9F00BFAC9F00C1B09F00CAB7A500D0BBA900CFB8
      A700CFB8A500D3BCA900D7BBA800D1B5A100D1B5A100D6BBA400CFB39D00C4AB
      9600C3A79300C1A59200B49C8800AD938000AB907D00A48D7700A1897400A58D
      7A00B0988600B8A088006A615E0033322F00383434006F69680097908E00625F
      5F00545150003B383A00312F2E00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00EFEFEF000000
      00000000000000000000ACDAC0000587380003671D0003681E0004681F00046A
      2000046B2000046D2100046B1F0002541800002E0E0000390E00014310000146
      1000559E77003A8C63004B9F750081CCA200A1DEB800BAE5CD00E0EBE600EEEE
      EE00EEEEEE00DAECE300BFE8CE00ABE5C000A3E5BA00A3E5BA00A3E5BB00A4E7
      BC00A5E7BD00A6E9BF00A6E9BF00A7EAC000A8EAC000A3E4BD0072BC95001578
      4600047427000582300005833100078D4100098E4900077A330005651B00045A
      1500034E1000034C1000034B10000457130004661D00046A200004691F000469
      1F0003681E0003671D0003641C000254150057998000DCEAE600000000000000
      000000000000E6E6E600C5C5C5000000000000000000E4E6FB003234E500003E
      F4000032FB000010F7000010F7000010F8000010F8000010F8000012F8000040
      FD00003BF7003C5BF100ADB6F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B3BCF8004E60F2001047F4000063FB000057FE00002F
      FB00001FFA00001FFA00001EFA00001EFA00001EFA00001EFA00001DFA00001D
      FA00001DFA00001BF900001AF900002EFC000051FE000045F800193BF1006776
      F200D2D7FB00FBFBFE0000000000F1F3FE006A79F1001746F6000034FB000020
      FA00000FF700000EF700000EF600000EF600000DF500000FF500002FFA000425
      F000757BF1000000000000000000000000007C7C7C00E6E8E800E7E8E800E9E9
      E900E9E9E900E9E9E900EAE9E800E1EFE1007AB982000E601C003B6845004DA4
      A10000A1A70025A5830077A09700CFD4D200FBFEFE00ECECEB00211919005E35
      1C00DDA15600ECA25B00ECA15D00EEA05E00E3A06400E4A16300E4A16000CBA0
      5D004C8B37000D61100066863700A17E4400BC905100DAA05D00E69E6300E69E
      6200EB9E6100F5A26200D3612C00D3552000E3B79B00DEDFE100E9E8EA00E9E9
      E900E9E9E900E9E9E900E9E9E900E6E8EC00E7F1F800DEE9F800DDE2FA00DEE3
      FA00CAE2F700BCDAF700B9D7F800B4D4F500AFD3F400A7CDF4009CC8F6000F36
      8500021049006690CC0089B4F2005B97E6007DABEF0070A6E9007AB4EE0073A9
      EC005FA4EC004184D5003C84D600DBDEE1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFA0096969600FEFEFE00FCFCFC00E0E0DF00C7C7CA00A79B
      8F00C1B3A500C1B1A500C7B5A700D0BDAF00D9C6B400D9C3B100D9C1B000E0C7
      B500E0C7B800DCC0AB00DABFA900E5C9AF00E0C3AD00D9BBA400D9BBA400DAC0
      A900D4B7A000CAAC9600C6A99400C1A58F00B4998400AC927D00AC927D00AD93
      7E00AD937E00B89F88005554530029272700514C4C009F989800756F6C006C68
      6500504E4D0029292700D1CFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00EFEFEF000000
      00000000000000000000ADDBC10006893A00046A1F00046B2000046C2100046D
      2100046E2200046F220003671D0001491400002A0E0001401000014510000D6B
      3B0051A38000479875006EB890009DDDB400B4E2C600DCEBE300EEEEEE00EEEE
      EE00DFECE600BCE8CD00A7E4BD00A3E5BA00A3E6BB00A4E7BC00A5E7BC00A6E9
      BE00A6E9BF00A7EAC100A8EAC100A9EBC200B0EDC900BFF1D500AFE4C8005BA9
      8400025919000584320006853200068839000E9858000B854200066D23000563
      1C00035412000353110003521100055D170004691E00046C2100046C2100046B
      2100046A1F0004691E0003661D000256150057998100DCEAE600000000000000
      000000000000E6E6E600C5C5C5000000000000000000C5CAF7002B33E900003F
      F6000031FB000010F8000011F8000012F8000013F9000013F9000014F9000057
      FE000031F2006875F200D9DDFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5BEF9004E61F300104DF4000063FB00005DFE000036FC000026
      FB000024FB000024FB000024FB000024FB000023FB000023FB000022FB000022
      FB000021FB000020FA000035FC00005AFE00004CF9001A41F3006979F400CDD3
      FB0000000000000000000000000000000000A7B3F7002F4BF4000037F900002E
      FC000010F8000010F8000010F800000FF700000EF700000EF6000031FB000020
      F2006165F000E7EAFC0000000000000000007D7D7D00E5E8E800E7E8E800E9E9
      E900E9E9E900E9E9E900E8E7EA00EAEAEA0096C09C00186E2400245C3100859B
      9C00049AA10003A3740067A18E00DCE1DF00F8FEFE00DEDCDD001C1111006939
      1E00E3A05B00EEA15D00EC9F6000EE9F5F00E89F6400E8A16100E7A06300E2A1
      6100899952002C83290021631800908E4500A7794B00C1925500E59F6200E79E
      6100EC9E6100EE996000CE632F00C8471700DFB28800DEDEE600E8E7E900E9E9
      E900E9E9E900E9E9E900E9E9E900E5E8EC00D1E2F900B0CDF700A9C0EF00C1CC
      F600CEDEFB00B4D4F800BFDBF700B5D5F600B0D4F500A8CFF80096BEF3004E77
      BE003B538900769EDB0083AEF1005F9BE4007EABEE0071ABEE0073B4EE0069A9
      EE005A9CE5004D90DE00579BE300E0DFE4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00E9E9E900D2D2D200FAFAFA00DADADA00D3D3D3008B898B00C6B7
      AC00C7B8AB00D1C0B300E3C9BB00E0CCBB00DFCAB800E4CDBC00ECD6C300E5CC
      B900E0C1AD00E7C9B100E8C9B700E0C3AC00DFBCAB00E3C6AC00E4C6B000DCBC
      A400DCBBA400E1BCA400D6B79F00C4AB9300C4A79000BCA18B00B1978100AD93
      7A00B3988100C0A38B0047423B003B3738007D787500A19B97006E6A68005F5C
      5B00413F3D0039393900EFEFEF00F8F8F800FDFDFD00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00EFEFEF000000
      00000000000000000000ADDBC200068C3F00046C2000046E2100046F21000470
      2200047022000471230003601C00013F110000300E0001431000014710003C97
      74002B8861005CAC89008CD1AB00A8E0BE00CBE7D700EDEDED00EEEEEE00E8EE
      EB00C2E8D100A8E5BD00A2E4BA00A4E6BB00A4E7BC00A5E8BE00A6E8BE00A7E9
      BF00A8E9C000A8EBC100ADECC600BDF0D100D2F6E200E5FAF000E2F7EC009CD0
      B5000B663500057C2B0006853400068737000F9A5B000C8E4E0007793200076D
      2700045D1700035A14000359130006672000056F2200046F2200046E2100046D
      2100046C2000046B200003671E000258150057998100DCEAE600000000000000
      000000000000E6E6E600C5C5C5000000000000000000A1ABF400213AEE00003F
      F800002EFB000012F8000013F8000014F8000016F9000016F900001BF9000067
      FE000032F000848BF300F6F7FE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BBC5FA004C60F300104EF5000068FB000063FF00003DFD00002CFB00002C
      FB00002CFB00002CFB00002BFB00002BFB00002AFB000029FB000029FB000028
      FB000028FB000039FC000062FE000055FA001942F4006A79F500CAD0FB000000
      000000000000000000000000000000000000D7DDFC004450F200003CF700003D
      FC000012F8000012F8000012F8000010F8000010F700000FF7000030FB000022
      F400545DF100D4DAFA0000000000000000007D7D7D00E6E9E900E8E9E900E9E9
      E900E9E9E900E9E9E900E6E6E700EBE7EC00C5D9C900288031000E5B20009693
      940022949E00019A63004A9E8400E9EAEC00F9FFFC00DDDBDC001A1010005C30
      1C00C5895200CF8B5200D1885300D28A5500CE845500CF8C5500CE8D5600CF8D
      5200A38C4F0055893900034B02004B6D30009D724C00A6814F00E2A05E00EB9E
      6100EC9C6000E8965D00D9793C00D0531F00E3AF7D00DDDCE700E8E7E900E9E9
      E900E9E9E900E9E8E900E9E8E900E6E8EC00BED8F9009CBFF50092B4EB00ABC3
      F200C1D4FA00A3C9F600BFDAF700B7D5F600B0D1F400A8D1F9008EB2EE0091B1
      EE0089B2F40083ADEC0073A2EC006FA2E90080ADEE0077ACF00070B4EE005DA5
      E9004D8CD8004996E5004C97DF00E4E4EA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC008E8E8E00F7F7F700E9E9E900E5E5E500C4C4C400B7AB9D00D4C3
      B700DDCDBF00E5D0C100E1D0C000E7D4C100EBD6C400E9D3BF00E5CDBB00E9D1
      BD00E8CDB800E3C7B000DFC4AD00E4C6B100E9C9B000E0C1A900DABCA500ECCC
      B300F8DFC300F3D7BB00F4D7B800DFBCA400C4A89200CDAC9400CCAC9300C7A8
      8F00CAA88F00B7977D00B4AFAF00968E8B009B9390007B777700746E6E00514F
      4E0023242400A49082009B8A7D00B8B9B900F7F7F700F9F9F900FDFDFD00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BEBEBE00EFEFEF000000
      00000000000000000000ADDCC400078F4400046F220004702200047223000473
      24000473240004742500035A1B0001370F0000370E0001461000014911006EAA
      9100247D53006AB78B009DDEB400B8E3CA00E0EBE600EDEDED00EBEEEC00D0EB
      DC00A9E5BE00A3E5BA00A4E6BB00A5E8BD00A5E8BE00A6E8BF00A7E9C000A8EA
      C100A9EBC100B0EFC900C5F3D900E2F9ED00F8FEFA0000000000F4FDF900BCE5
      D30035936E0003671E0006833400068939000B9855000C9556000A8645000977
      3400066B23000562190005641B0009742F00067328000471230004702200046F
      2200046E2100046E2100046A1F00025B1600589A8200DCEAE600000000000000
      000000000000E7E7E700C6C6C60000000000000000008694F1001A43F2000040
      FA00002CFB000015F9000016F9000018F900001AF900001BF900002BFB00006A
      FE000A42F000949DF50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9FAFF00C6CE
      FB00485FF3000D49F4000072FC00006AFF000044FE000033FC000033FC000032
      FC000032FC000032FC000031FC000031FC000030FC000030FC00002FFC000031
      FC000040FD000069FF000064FB00163DF4006879F500CDD3FC00000000000000
      000000000000000000000000000000000000F7F8FE00535BF1000042F6000048
      FC000017F9000014F9000014F8000012F8000012F8000010F800002EFC000027
      F6004A5AF300C4CCF90000000000000000007D7D7D00E6E9E900E8E9E900E9E9
      E900E9E9E900E9E9E900E7E7E700E8E7EA00E7EDEA003C944200156D1E008398
      8A006798A70002975D00109C7200E5E9EC00F9FEF900DEDEDE0014100F00391B
      1500764C2A007D512F0085512F0083502F007B46270082532E00835330008551
      300080512D005A602C000C520E00053F090092815000A07A5200D49F5B00ED9D
      6100F19F6400EBA06300E8944D00DB662B00EAAA7C00DCDCE300E9E7EB00E9E9
      E900E9E8EA00E9E7EA00E9E7EA00EAEAEC00E4EEF800E1EDF700E5EEFB00D8E8
      FB00ABD1F400A1C6F100BBDAF900B7D6F800B1D2F800A6D0F80090B5F30095B7
      F90095BAF60085B0EF00699EEA007DACEE0082AEEF0079A9EC007BB6F0005DA3
      E6004A8AD500448EDD003A82CE00E2E8E9000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00D7D7D700E1E1E100FAFAFA00E7E7E700CACACC008B898900E5D4C700E1D3
      C300E3D3C600E8D6C600EDDACA00EBD7C900E8D3C100E9D4C300EBD4C100E8D3
      C000E1C4AF00E3C7B300E7C9B300E1C3AB00EBCFB700EDCCB300B9A893007B68
      5E0049423C0027252400181819001415150011121200161616001C1C1C003433
      340047444000857B74009F949300FBF8F700FBFAFA00A8A5A100686461003837
      3A0036363300D7B79B00BDA48D00C0A58F0097897F00BBBBBB00F7F7F700F9F9
      F900FEFEFE000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00EFEFEF000000
      00000000000000000000ADDDC500089047000471230004732300047425000476
      2500047626000477270002551B0000300E00003E0F0001481100025015006EAA
      90002C926D006EC19700A3E0BA00C7E7D300EDEDED00EDEEED00E2EDE600ABE8
      C100A4E6BB00A4E6BB00A5E7BC00A6E9BE00A6E9BF00A7E9C000A8EBC100AAEB
      C300AFEFC800CBF5E000F1FDF600FDFFFE000000000000000000F8FEFC00D6EF
      E40078B39700024F1400067D3100068A39000A964F00109C60000F9257000B82
      43000A7D3B0008712C0009752F000B7F3F0006772B0004732400047223000471
      230004702200046F2200046C2000035D1700599B8200DCEBE600000000000000
      000000000000E7E7E700C7C7C70000000000000000008391F2001949F4000045
      FB00002FFC000019F900001BF900001EF9000020F9000021FA00003FFE000063
      FF001F55F300A2AEF70000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F8FF00C8D0FC00425B
      F300083FF5000081FD000070FF00004AFE00003BFD00003BFD00003BFD000039
      FD000039FD000039FD000039FD000039FD000037FD000035FD000038FD000048
      FD00006CFF000079FD001034F3006377F600D3D8FC0000000000000000000000
      000000000000000000000000000000000000000000005D6DF300044AF700004B
      FD000021FA000018F9000016F9000015F9000013F8000012F800002AFB00002C
      F9003550F400A4B1F70000000000000000007D7D7D00E6E9E900E8E9E900E9E9
      E900E9E9E900E9E9E900E5E9E900E8E7EA00F0E7E80073B2720030873000347D
      4500A991A10002A26C00009D5F00D4DED600F5FCFA00E0DFE000232525002D27
      2600352725003727250037262400372825003729220031241E00352624003626
      2400382624003E2F260033603300094E0A0073813800AA754C00BD935400E99F
      5C00EEA16500ECA36400D5833E00CE5B2100EDAA8200E4D7D800E4E7E500E8EA
      E700E9E9E900E9E9E900E9E9E900EBECED00E6EFFA00E1EDFA00DAE8F700DBE9
      F900D9E5F500D3E1F000C7E2FB00BBD8FA00B3D5FA0095C0F10078A6E80090B6
      F50089B2ED007FADEE005995E70089AEED0083AEF00083AFF0007EB7F00067A9
      EB0060A2E600609FE8006CA6E800E6E9E5000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB009C9C9C0000000000E0E0E000D1D0D000B5B8B700D4C3B900E1D4C700E9D7
      CC00EFDFD000EDDCCF00E9D7C700ECD7C700EDDAC900EBD6C400E7D0BD00E7CD
      B900E5CAB700E5C6B100E4C7AF00D7C4AC00776860002D2D2D003A3A3C005553
      4F005F5A5800615C5E006B676500726E6C0065616000413D3D002A2827002B29
      28004A4645003A363700ADA59F000000000000000000FFFEFE00A3A5A700DABC
      A300E0BDA000CAAC9200C9AB9200BDA38B00B99D8800C4A98B0083786F00C9C9
      C800F1F1F100F9F9F900FEFEFE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00EFEFEF000000
      00000000000000000000AEDEC70009924C000473250004752500047726000478
      2700057927000578290003521C00002C0D0001410F00024D13000766290056A3
      87003B9E7D0078C8A000ACE3C400D0E9DD00EDEDED00E8EEEA00CCECDB00A3E6
      BA00A4E6BB00A5E8BD00A6E9BE00A7E9BF00A8E9C000A9EBC100AAEDC300B0EF
      C900C8F6DF00F9FEFB0000000000000000000000000000000000FDFFFE00E8F9
      ED0095D3AC00013E100004782B00068A3A0009964F0018A06A00199965000D8B
      5000108F5600108D55000E8C51000A844200057A2C0004762600047425000473
      24000472230004712300046D2100036018005B9C8300DDEBE700000000000000
      000000000000E7E7E700C8C8C80000000000000000007181F0001656F700004B
      FD000031FC00001EF9000020FA000022FA000024FA000026FB000048FE000065
      FE00245BF300A6B1F70000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9FF00C9D0FC00435DF400002F
      F4000094FE000074FF00004EFE000042FE000042FE000042FE000042FE000042
      FE000042FE000042FE000042FE00003FFE00003EFE000040FE000050FE000073
      FF000181FD000A25F4005C72F500DDE2FD000000000000000000000000000000
      000000000000000000000000000000000000000000007488F6001455F900004D
      FE00002FFC00001CF900001AF9000019F9000016F9000015F900002CFC00002E
      F9003552F500A4B1F80000000000000000007D7D7D00E6E9E900E8E9E900E9E9
      E900E9E9E900E9E9E900E7E9E700EAE7E900ECEBEA009ECAA2003A8B3A001658
      22009DA198000E786A000156470096B2A700FFF9FE00F2F2F200BFBBBE00B9BA
      BC00BCBEBE00BEBEBE00C4BEC000C6BEC100C1BBBB00C3BDBA00C2BABE00C1BA
      BE00C1BDC000AAA7A900618B56001A5E1A005D6D340097734200A0683600C89B
      5D00EAA16100E4A16000C9733700BB4B1900F8A67600E8BFAD00DDE9E800E7EA
      E700E9E9E800E9E9E900E9E9E900EAEBEC00E1EAF900DDE9F900DAE8F700DEEA
      F300D4E7F700C9E1F900C6DDFA00B7D5F700B0D3F8006085C00013428D002D93
      E2002884D20064A6EA005899E10085B1F10083ADF10083B1EE007AAEED0070AE
      F20064A9EB0058A3E70063A7EB00DDE1E3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB00B0B0
      B000FBFBFB00E5E5E500E9E9E900DDDDDD0098949000F3E3D700EFE0D400EFE0
      D300ECDCCF00ECDCCD00EFDFCF00EFDCCA00E9D4C400E9D3C300ECD7C600E8CC
      B800E5C7AF00DFC6AF004A454300413F42005E5A5900615E5B006E6867007A75
      7400837E7D00807D7A007D77750072727100747271007B777500807B7A006F6C
      6B00686564007D78770086838100FEFCFB0000000000F3F2EF007E7D7A00ECC4
      A500DABB9F00D9B79B00CFAF9300CAAB9000C7A99200BCA18600B3967500C4A7
      7E007D726500D0D1D100F2F2F200FBFBFB00FEFEFE0000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000EFEFEF000000
      00000000000000000000AEDFC9000A955000047726000578270005792700057A
      2900057C2B0004732500024B1700002C0D0001431000025117000B7A45002091
      690055A88E008ACFAB00B6E5CA00DAEBE300EEEEEE00E1EDE600B0E9C900A4E6
      BD00A5E8BE00A6E9C000A7EAC100A9EAC200A9EBC200AAEDC200B0F0C800C8F6
      E000000000000000000000000000000000000000000000000000FDFFFE00EAFD
      F1009EE1BA000240100005792B00068B3B00089449002AA46F002A9D6A000D8C
      4D00169762001595600011915B00078034000579290004782700047726000476
      260004742500047325000470220003611A005B9C8600DDEBE700000000000000
      000000000000E8E8E800C9C9C9000000000000000000465BEC000A5CFA000049
      FE00002FFC000024FA000026FB000029FB00002BFB00002BFC000062FF000055
      FA004F76F600C2CBFA0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C5CEFB00425BF400002FF50000AA
      FF000077FF000052FE000049FE000049FE000049FE000049FE000049FE000049
      FE000049FE000046FE000046FE000046FE000046FE000056FE00007EFF000086
      FD000928F600556EF500ECEEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000007489F6001459F9000053
      FF000037FD000022FA000020FA00001FFA00001CF900001AF9000031FC000033
      FA003555F600A4B2F80000000000000000007F7F7F00E9E7E700E9E8E800E8E8
      E900E8E8E900E9E9E700E7E9E900E5E7E500E8E8E600C3D4C20072B17F000845
      1300377A4800334840001E3A250090978200FAFCFA00FDFEFD00F4F7F300F6F4
      F700F5F5F700F5F6F600F5F7F600F5F7F500F5F8F800F7F7F700F4F3F500F3F4
      F300F6F4F600D2D4D4001C251D00457B41000F3B0A00696C3100935C4100AE86
      5700E49F6500E89E6400D7804000C65A1F00D46D3900EEA37400E2E4D800DFE6
      E200E8E5E800E8E8E700E9E9E700E8EAEB00E3EDF600DAEAFA00D9EAF900D8E8
      F700D0E4F500C7E2F500C0D9F800B4D5F900AFD6F4008DB6EE0076ABE3000E30
      7C00041940000F2D81005488CE0085B0F20081AFF2007FADEA0083ADEE00589D
      ED003681D700449CDC006EBBF600D4DAED000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD0000000000B1B1
      B10000000000F2F2F200C6C6C60093969700E5D6CC00EDE3D400EFE0D400EDDF
      D100EFE0D300EFE0D100ECDCCC00E9D7C700EBDAC900EDD9C700E9CFC000F6E0
      C6005B5551004A4747005B585800605C5B0068646300716B6C006C6865007E78
      7500ABA7A400DCD7D600EFEDED00F7F6F700FBFCFE00FCFEFF00FCFEFF00FBFC
      FE00F7F7F800ECEBEC00D0CCC900A19B99009F9B9800858383002F2F2D002425
      2800C7B09800DFB99B00DCB89B00D7B59700CFAB8F00C9A98E00C6A78F00BC9D
      7D00B8986B00B99C6E00947E6A00D8D8D900F8F8F800FDFDFD00000000000000
      00000000000000000000000000000000000000000000C2C2C200F0F0F0000000
      00000000000000000000AFE0CB000EA06200119D6300119D64000D9A5C000B97
      56000B96540007713000023E1000002E0D0001461000035318000A7A45001D8E
      650056A88E008DD0AC00BCE6CD00DEECE600EEEEEE00DEECE300A5E6BE00A5E8
      BE00A6E9C000A8EAC100A9EAC200AAECC300AAEDC300ADEEC600BFF2D500F5FD
      F800000000000000000000000000000000000000000000000000F9FFFB00DEFC
      EC009FE1BB000241100005782900068B3C00079446002EA570002E9E6A00088B
      40000A954D000B944E0007853B00057E2D00057B2A0005792A00057828000578
      270004762600047526000471240003631C005C9E8600DDEBE700000000000000
      000000000000E8E8E800C9C9C9000000000000000000465EEC000A60FA00004E
      FE000033FC000028FB00002BFC00002DFC00002FFC000032FD000066FF000057
      FB004F78F700C2CBFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000BCC5FB004860F5000745F700009DFE00007D
      FF000056FF00004EFF00004DFF00004DFF00004DFF00004EFF00004EFF00004D
      FF00004DFF00004CFF00004CFF00004CFF00005FFF000085FF00007DFC00103C
      F8005D74F700EBEEFE00FDFDFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000007489F700145BFA000057
      FF00003BFD000026FB000024FB000023FB000020FA00001EFA000036FD000037
      FB003557F700A4B2F90000000000000000007F7F7F00EBE9E900EAE9E900E8E9
      E800E6E9E800E4E5E500DBE2E700D1DDDA00DBE3E100E2E4E900A6CAAE00126C
      25000B501B0080461D00744B1C00D0BB9200F9F5F200FFFFFF00FEFFFE00FEFE
      FF00FEFEFD00FDFDFD00FAFEFB00FAFFF900FAFFFB00F9FFFB00F7FEFD00F6FD
      FC00FAFDFE00E3E6E5001618120036622E00195E1C0021551600A2724900A964
      4A00E9A15F00EA9F6100DE8F4A00C8652600D5501A00DF693600E8CFBB00EBE3
      E000EAE9EB00EAE9E900E9E9E900E5E8EA00E1E8F600D9E5F700D6E6F700D2E3
      F900C7DEF800C3DEF800BAD5F600B2D2F900A6CBF60076A5EA0065A2EC002260
      AE004273B2006E9DDC0084AEEB0082AFF30083AEF10081AFED007FABEB00294E
      9200104093000E28530018336300D7DCEE000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA00959595000000
      0000E8E8E800CFCFCF00D7D6D600B0A9A500F6EBE100EFE3D900F2E4DA00F2E3
      D700EFE0D100ECDCCF00EDDDCF00EDDDCD00ECD9C700EDDCCC00D7C6B800423D
      3F00595351005A5655005F5A59006A6564007A747100B5B0AC00E8E7E5000000
      0000F6EDE700E8D4C100E0C0A900D3B19800D3AD9000D4AF9300D9B39600D9B4
      9600DCB99D00DCC0AC00E8D6C900FBF8F600F7F8F800C4C1C1008F8D8A007D77
      7500494A4C009F8F7E00E5BC9F00D9B49600DAB59700D7B19400CDA98D00CAA7
      8800C6A48500BB9B6F00BF9D6700B1976700A7A2960000000000FEFEFE000000
      00000000000000000000000000000000000000000000C3C3C300F0F0F0000000
      00000000000000000000AFE0CD0014A36C0027AB7E0026AB7D0025A97B0023A8
      78001AA26F000E884C000551230000300D000148110003531700087337002293
      690043A2820084CEA700BDE7CD00DFECE600E8EEEB00D0ECDD00A5E8BE00A7E9
      C000A8EAC100A9EAC200AAECC300ABEEC500ABEEC500BCF1D200E3FAEE00FEFF
      FE00000000000000000000000000000000000000000000000000F6FEF900D8FA
      E900A0E3BC000243110005772900068C3C000A99530031A879002FA06C000790
      430008964A0008964C000892460005813100057D2C0004742500036B1E00046F
      200005782700057727000474250003661D005C9E8700DDEBE700000000000000
      000000000000E8E8E800CACACA0000000000000000006073F000115DF9000055
      FE00003EFD00002FFC000032FD000035FD000037FD00003BFE00005BFF000072
      FE002A64F500A9B5F90000000000000000000000000000000000000000000000
      00000000000000000000B5C0FA004C66F6000C55F8000094FD000084FF00005C
      FF000054FF000052FF000052FF000052FF000053FF000053FF000053FF000052
      FF000052FF000052FF000052FF000068FF00008EFF000078FD00164BF9006279
      F900DEE3FD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007489F800145DFA00005D
      FF000041FE00002EFC00002CFC000029FB000026FB000023FB00003CFE00003C
      FB003559F700A4B2F90000000000000000007E7E7E00ECEAEA00EDEAE800EAE7
      E700E7E4E900E0DAD000E8CBBC00D8B49800E1C4AC00E0E0E200C1D5CB003491
      3A0002450E00A7613F009C5D3C00DFBB8A00F0DFD900FEFCFD00716B69005E5C
      5B009D816B00D5A88500EABB8C00E9BB8C00E9BA8E00E3BB8E00EDB98800F4D8
      BB00F7FCFB00E9ECEB001B1D18002A2F160029772A000A550D0097854C00A263
      3C00DC9E6200E99E6300E59B5C00DF8D4D00C84A1300D9511B00E2A98800E8D1
      D000E9E5E800EBE8E800E8E8E800E6E9EB00E1E9F600D9E5F500CAE0F600C5DF
      F900BFD9F800C0DAF800B3D1F600A5CCF50098C1F4008DB3EF008AB7F3006AA4
      E40082A9EA0061A1EC0079ACEB0084B0F00083AFF20083AFEF007FB5ED001C38
      8100021C630000072A00000C3900D3DAED000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00EEEEEE00D6D6D600EFEF
      EF00E8E8E800D7D7D7008F949600E8DDD700F2E5DA00F4E7DD00F0E4D900EFE0
      D600EFE1D400F0E1D400ECDDCD00E9D7C700F7E4D600B0A59F00302E30005F5B
      580055535100656160007D787700BBB4B100FCFCFC00F7F2EC00E3CCBC00CAA4
      8500CFA58600D7B39600D9B59800DAB59B00D7B39600D4AF9300D3AF9200D7B3
      9700DAB59800DDB79900D9AF9000CFA38100D3B39B00EDE4DA0000000000BCBB
      B80084817E0054545500A5928100E5BF9F00DAB49600D7B09300D9B79300D4B0
      9200CCA88100C9A57E00C2A17500BD875F00B57A4F00EDE1D900000000000000
      00000000000000000000000000000000000000000000C4C4C400F0F0F0000000
      00000000000000000000B0E1CE0018A5710035AE850033AE850030AD840030AD
      830029A87E001E9B6A000D623A0000300E000148110002521500045E1F003E9C
      7900319976007ACAA000B9E7CC00DAECE400E3EEE900C3ECD700A6E9BF00A8EA
      C100A9EAC200AAEBC300ABEDC400ACEFC600B0F0CB00CBF5DE00F9FEFC000000
      0000000000000000000000000000000000000000000000000000F0FDF700C6F1
      DB0085C0A200024A1200057C2D00068D3E000C9C5A0025A67600229E69000893
      490009984E0009984F0009994F00068A3E0005812F0004681E00025614000361
      1B0004772700057928000576260003681E005D9F8800DDEBE700000000000000
      000000000000E9E9E900CBCBCB0000000000000000007C8DF300185AF800005C
      FD000049FE000036FD000038FD00003CFE00003EFE000041FE00005BFF00007E
      FF001F5FF600A2AFF90000000000000000000000000000000000000000000000
      000000000000B3BEFB004E69F8001060F900008DFD00008AFF000063FF000057
      FF000057FF000058FF000059FF000059FF000059FF000059FF000059FF000059
      FF000059FF000057FF00006DFF000094FF00007AFD001957FA00677EF900D3D9
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006074F700075BFA000069
      FF000043FE000034FD000031FD00002EFC00002CFC000029FB000041FE000041
      FC00355CF800A4B3F90000000000000000007E7B7B00EDE8E900EBE9E900E4E1
      E100E4D8D600DBB99800F6B48000DF7F4C00E99A6A00DDC6AE00DAD4C000579B
      44001B742900706A3D0096624200BD9D6A00D6CCA900F8F7FA005D4E42002319
      1500582D1C00AA693D00DE9D5800E19D5900E59B5D00E29B5D00EC9C5700F6C9
      A000F6FAFA00EFF0F0001D1E1B0033180C00649245002B69200060713300AC7D
      4400C19A5500E0A25C00EEA16200EEA06200C2531900CC4A1200EB8F5E00E8AF
      A100E4E1DF00E8E7EA00E9E8E900E3E8ED00A0BEE60083B1DF00A2CCF200B8D7
      F700B6D5F600B8D5F700A8C6F1009AC3F50096C1F600A5C6F400A3CAF50096C6
      F8009ABFF4005B9EE50077ADEA008BB1F00088B2F20086B0F2007DB5F0001F42
      9B000214500000082C00000D3C00DFDFE4000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA008383830000000000F3F3
      F300D0D0D000B7B7B700B0A8A300F8F0E700F2E7DF00F0E5DC00F2E5DC00F2E5
      DA00EFE1D400EDDFD100EDDDD000F7E7D7009B938B003C3A3C00555151005A55
      5500746F6F00A8A19F00FFFEFE00FAF7F700CFB09400D6AD8D00DCB59800DAB5
      9700D6B09400D3AF9200D3AF9200D6B19300DAB59800DCB59700D6B19400D4AF
      9200D4AF9200D6B09300DCB49800DAB59700D9B39400D1AC8A00CDA88B00F4F2
      F200FBFAFA007E7878005F636100B79F8900DFB79700DDB79700D7B09200D6AF
      8E00D7B39200D4AE8D00D1A06800D49E6C00A87B5C00FFFBFA00000000000000
      00000000000000000000000000000000000000000000C4C4C400F0F0F0000000
      00000000000000000000B1E1D0001DA775003EB089003CB089003AAF88003AAF
      88003BAD880047AA87002D775400023D120001481100025314000256150048A2
      7F001F7B510072BC9000B2E7C900D4EBE000E0EEE700BDECD300A7EAC100A9EA
      C200AAECC300ABEDC400ACEFC600ADEFC800BDF3D400E0FAEC00000000000000
      00000000000000000000000000000000000000000000FEFFFE00E8FDF200ADE9
      CD005CA488000254150006833500079141001EA3680024A77800159E65000997
      51000A9A53000A9A53000A9B540008934B00067D2E00045D1800034C10000356
      1600046D2100057B2A0005772800046A20005DA08900DDEBE800000000000000
      000000000000E9E9E900CCCCCC0000000000000000008697F5001A5AF8000061
      FD000051FE00003EFE000040FE000043FE000045FE000046FE000056FF00008E
      FF000E54F50096A3F80000000000000000000000000000000000000000000000
      0000B5C0FC004E6AF8001066FA00008CFD00008FFF00006AFF00005CFF00005C
      FF00005CFF00005DFF00005EFF00005EFF00005EFF00005EFF00005EFF00005E
      FF00005EFF000072FF00009BFF00007FFD001A5DFA006982FA00CDD5FD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8FAFE005361F700005BFA000071
      FF000042FE00003CFE000039FE000035FD000031FD00002FFC00004CFE00003F
      FB004664F800BFCAFB0000000000000000007E7A7D00EAE8E800E6E7E900E2CE
      C300E5B9A000D9905C00E37B4400D6561F00E2693100E69B7000F1B8950093A1
      4E004A9B4500245B1F00826F4100A77F5300C2B88300F1F1F200B8ADA0004B35
      2E003519160073412700DB9F5B00E2A15C00E99E6200E99D6300EFA05E00F8CC
      A500F8FCFA00F3F2F3001F1C1B00441C1000A5A1600055803C002C5C19009589
      4800AD884800D1A15500F0A06100F09E6200D2713200B8461000E9683500E68F
      6700E4D5CB00E6E4E900E8E8EA00DBE1E9004C86C9003C86CD009DC8F400BDD9
      F900B2D5F800ADCEF6006C9AD6008EBBF70093BEF800B1D1F400A8CFF500A1CB
      F6009DC9F4006FA9E90084B2ED0091B5F2008EB4F20086B2F10084BCF6001942
      A30004174F0000092F00000E3F00EAE2DB000000000000000000000000000000
      0000000000000000000000000000FDFDFD00DCDCDC00EDEDED00EDEDED00CDCD
      CD00CFCDCD00A1A3A400F3EFE800F2E7DF00F3E9E000F4E9E000F3E7DD00EFE3
      D700EFE3D700F2E3D700F3E3D600948E8600474544005653510067616000756C
      6B00E5E0DF0000000000E5D7CA00EDD3C000D0AF9300D3AF9200D3AD9000D6B1
      9400D9B49700DAB49700D7B39300D3AD8F00D3AD9000D6B09300D9B49400DAB3
      9600DAB19400D4AF9000D4AF9000D4AF9000D9B39300D9B39400D9B09200D0A5
      8000E1D9CF00FFFEFE00969092004C505400D1AF9300D3AC8F00D7B09000DAB3
      9300D9B19700D4AB7100DCAD7200E1AD6F00E9D8CA0000000000000000000000
      00000000000000000000000000000000000000000000C4C4C400F0F0F0000000
      00000000000000000000B3E1D10023A97A0046B18D0044B18C0037AC84003FB0
      8A0046B08C006AB59B005093750009582A000147110002541400025715002D98
      6B00116D3B0068AF8500A6E1C000CCEBDA00E0EEE700BEECD400A8EAC100A9EB
      C200AAEDC400ACEEC600ACEFC700AEF0CA00CBF6DE00F4FDF900000000000000
      00000000000000000000000000000000000000000000F6FEFA00DAFCEA0099DF
      BB002A80540003621B00068B3D00079446003BAD7B002FA877000E9A5C000B9B
      58000B9C59000B9C59000B9C59000A9954000780370005621E00045414000357
      140004681D00057D2B0005792900046C20005DA08900DDEBE800000000000000
      000000000000E9E9E900CDCDCD0000000000000000009CAAF7002055F7000068
      FD00005DFE000044FE000047FE000049FE00004BFE00004CFE000050FF00009D
      FF00004CF6008693F800F7F9FF0000000000000000000000000000000000BBC6
      FC004C69F9001066FA000091FD000095FF000071FF000061FF000062FF000063
      FF000063FF000063FF000063FF000063FF000063FF000063FF000063FF000065
      FF000077FF0000A1FF000089FE00195DFB006A83FA00CAD3FD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2E8FE00495EF800005DFB000071
      FF000045FE000042FE000040FE00003DFD000038FD000035FC000058FE000040
      FA00546AF800D4DCFC0000000000000000007A7C7F00E5EAE700E2E3E400E8B0
      8F00E98C5A00E5894B00D2613700D7662E00D5571D00E3683A00EB7F5400D6A6
      59007B9F51000850150054733900AC6E4D00B3966900EBE7EA00F4F8F3009880
      740022151300381C1600B47A4900D2905100E99F6500E99F6400EDA05F00F6CC
      A800FBFEFB00F2F1F300241A1A005B2C1800C79F62007793500012520D00526E
      3100A36B4900C2945400ED9F6200EF9D6100EB955300C25F2600D9421400D46B
      3400EBBFA700E6D8D800E7E7E800DADDE5005B97CA0071A7DA00BDD6F800B7D2
      F6008AB7E8007EA9DD003277BF0075ADED006796E000BAD5F400AED1F600A4CD
      F3009FCDF50080B0EF008FB9F00096BAF40091B6F20083B2ED008AC0F4000B2F
      8C0005184E0000072B00000C3800E9E2D9000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C00EDEDED00E7E7E700DADA
      DA00BBBCBC00A9A19D00F6EDE300F6ECE400F3E9E100F2E7DD00F2E5DD00F3E7
      DD00F0E4DA00F0E3D600D1C7C000444142005C5858006B65630088817E00F4F2
      F000F2EFEC00E4D1C100E8D3C000E8D4C100DDB59B00D7B19400D4AF9200D0AB
      8F00D3AF9000D6B19200D9B19600D9B39600D6B19300D3AD8F00D3AC8E00D4AF
      9000D9B19400D9B39400D6B09200D3AD8E00D1AB8D00D3AD8E00D7B09000D6B1
      9200D1A48300DDCFC9000000000098969300635F5C00F0C39C00D9B19000D4AB
      8900D6AE8500DBAF7200DDB17400B78C6900FFFEFC0000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600F1F1F1000000
      00000000000000000000B5E2D30028AA7E004AB290003DAE8700249F6F0036AB
      820044B08C0068B89C0057A78C0016724C000141110002551500025A16000B7E
      41000F7F4A00479D760089CEA900C2EBD200DCEEE500C5EDD800A9EBC200AAED
      C400ACEEC600ADEFC800ADF0C800B2F2CF00D6F9E60000000000000000000000
      000000000000000000000000000000000000FDFFFE00E7FDF100BEF3D8007FC4
      9E00055A1D00057426000791430009984D0052B688003BA873000B9653000C9E
      5D000C9F5E000C9F5E000D9F5E000C9D5C000E9052000A78350006661F000565
      1F0006722900057F2D00057C2A00046E21005DA18900DDECE800000000000000
      000000000000EAEAEA00CECECE000000000000000000C1CAFA002A4BF5000070
      FC00006AFE000049FE00004BFE00004DFF00004FFF000051FF000053FF00009C
      FF000058FA007188FA00E2E6FD000000000000000000F9FAFF00C6CFFD004867
      F9000D61FB00009BFE00009AFF000076FF000067FF000067FF000067FF000068
      FF000068FF000068FF000069FF000069FF000069FF000069FF00006DFF00007D
      FF0000A8FF000099FE001658FB006882FB00CDD5FD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B6C3FC003664FB000065FD00006C
      FF00004AFE000047FE000045FE000043FE00003FFE00003CFD000063FE000043
      FA005E6FF900E2E8FD000000000000000000767F7700E4EAE800E3DED700EB98
      6400E6703500FCAA6400EBA06500EEA86400D8813D00CE511D00CA521700EA9C
      5E00AAA15F0017662600105D1B00A66E4B009D724700DDCED300ECF7F300F4EE
      DB003D2C220022131100562E1D00925B2F00CE885500D18C5500D99A6000EBCD
      B200FDFEFC00E7E9E9002D1B190080462400D89C5700A3A05A000E4F0C001C49
      10009D604C00B0825200EAA16200F1A16300F7A56200EE975300D7461300C245
      1300EEA17700E7C1B400E6E4E700E5E6E900B5DBF300B7CFF100BFD3F4009CBF
      EC00578FCE005385BE005B9DD400508DD2002760BA00C1DAF700B6D6F800ABD3
      F400A1CFF60091BBF1009DC8F30099BFF40094B8F30083B1ED007DABE700041A
      6B00020F3E0000062600000A2C00E6E1DB000000000000000000000000000000
      00000000000000000000FCFCFC00BCBCBC00FEFEFE00F8F8F800D6D6D600BCBB
      BB009B9B9B00FFFBF600F4ECE500F3EBE300F3E9E100F4EBE300F3E8DF00F0E5
      DA00EFE3D700EDE7DF002D2B2C005F5B5A006B6564008F888500FFFFFE00F0EB
      E800ECD9CA00ECDACC00E8D6C400E5D1C000D9B59C00D4B09200D9B39700D7B3
      9400D4AF9200D3AC8E00D1AD8E00D4AF9200D9B39400D9B19300D4AF9000D1AC
      8E00D1AB8E00D4AD8F00D7B19200D9B09200D4AD8E00D1AC8D00D0A88900D3A9
      8800D1AB8B00CFA38000E3DDDF000000000072747500A38B7700D3AB8A00DCB7
      9800D5A97100DBAF7500D8A96C00F6EAE0000000000000000000000000000000
      00000000000000000000000000000000000000000000C7C7C700F1F1F1000000
      00000000000000000000B6E2D4002EAC83004CB29000209D6C000F8C5200209D
      6C0040AD880050B3920047AE8D0026815D00003C100002561500025B16000464
      1D00158E5800118355005BAF8700ADE3C600CEEDDD00D3EEDF00AAEDC300ABEE
      C600ADEEC700ADEFC900AEF1C900BBF5D500DEFBEC0000000000000000000000
      0000000000000000000000000000FDFFFE00F0FEF600D0FAE30097D9B8004A8F
      6C00025A19000686360008954800179F610055B98C0038A971000B9956000DA0
      62000DA062000DA063000EA163000EA163001FA171001E905C00107A3C000A7A
      3A000B84420005802F00057D2C00047022005EA28A00DEECE800000000000000
      000000000000EAEAEA00CECECE000000000000000000DFE4FC003144F3000073
      FB000073FF00004EFF000050FF000051FF000055FF000056FF000058FF00008F
      FF000077FE00457CFB00B6C1FB0000000000F7F8FF00C8D1FD004262F8000855
      FA0000A9FE00009EFF00007AFF00006AFF00006BFF00006CFF00006CFF00006D
      FF00006DFF00006DFF00006EFF00006FFF00006FFF000072FF000081FF0000A9
      FF0000B0FF001050FC006380FB00D3DAFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000778FFB001B69FD000072FF000068
      FF00004FFF00004CFF00004AFE000048FE000045FE000045FE00006BFF000345
      F800747EF8000000000000000000000000007A7B7A00E3E5E600E6D5C400EB95
      5B00E7834700FBA56500EE9E6700E79F5D00EAA05C00E4834200C85C2100EE9F
      6400E59E6100389A44000F631F0081844A00A7724900BDAA8000EAECEC00F5F6
      F6008A7E7200402A240020150D00251C1000682A1E007C3C2300AC8B7300DED4
      CA00F8FEFA00DAD9D8004B241600A8673900EB9E6000CC9B5F003A832B001451
      0A00AB7148009E6A4100E4A46000F4A56900F6A16600EFA05F00D2531B00DA4B
      1300E2794A00EDB09200E4E5E700E5E7E7005F96E2002669D0009ABFEE00C8D7
      F100B4CDF100D6DEF400B9D9FE004776C4004F87D400C4E3F900B6D3F500B4D3
      F800A6D0F5009CC4F100AACEF3009AC0F60097BDF60084B2EE00739EE100000D
      46000006260000062A0001082900D9DCE3000000000000000000000000000000
      000000000000FEFEFE00FAFAFA00AAAAAA00F7F7F700D1D1D100CCCCCC00BCBC
      BC00ADA9A500F3E9E300F6EDE800F7EDE700F4EBE400F3E9E100F3E8E000F4E8
      E000FFF6EC006C646300645F5E00746E6B00857E7A00FFFEFE00EFECEB00EDDF
      CF00EDDDCF00ECDCCD00ECD9C900E9D6C400E0C4AF00CFA78A00D1AC8F00D6B0
      9200D7B39400D7B09400D3AD8F00D1AB8D00D0A98D00D4AF9000D7B19300D7B0
      9200D4AF9000D1AB8D00D0A98A00D1AB8B00D4AD8E00D6AF8E00D3AB8B00CFA5
      8600C9A18300C49D7B00C6A07E00F2EDEF00E5E3E0005B595900ECBB9700D1A5
      7300D8AB7200E4B17400BB977B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C8C8C800F1F1F1000000
      00000000000000000000B8E3D50035AE860051B08E000B8141000D874C000E8B
      51003CA87F0054B5940052B5940037906C00034C190002541500035C17000360
      19000B8446000B7F46003D916B0083C3A600BCE9D100D9EFE300AFEEC900ACEE
      C600ADEFC700AEF1C900AFF2CA00C4F6DA00E7FCF10000000000000000000000
      00000000000000000000FEFFFE00F1FEF800D0FCE500ADECC80069B184000660
      21000471270008964A0009984E004AB2890033A87E0014A069000EA065000FA2
      67000FA267000FA267000FA269000FA2690039A9830053A98D00379A72001894
      5F000F92540005823100057E2E00047223005EA38A00DEECE800000000000000
      000000000000EAEAEA00CFCFCF000000000000000000000000003D43F1000271
      F900007AFF000057FF000055FF000057FF000059FF00005CFF00005EFF00007C
      FF00009AFF000267FA006785F900E7EBFE00C5CFFD004365F8000045FB0000BC
      FE0000A1FF00007CFF00006FFF000070FF000071FF000071FF000071FF000074
      FF000074FF000074FF000074FF000074FF000075FF000083FF0000A4FF0001B9
      FF000A44FE005C7BFB00DDE4FE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9FAFF003960FA000173FD00007BFF000060
      FF000053FF000052FF000050FF00004DFF00004BFE000056FF000066FF001158
      F9008298F9000000000000000000000000007D7F7900DFE2DF00DABAA600F1A1
      5E00E99B5B00E9A26700ED9B6400EB9F6000E49C6300EF9D6400F59C6100E79E
      5F00F59E6400729B4E0027842E004C7030009F885300AA804100DBD8D300EEEF
      F000FAFAF300CCB3AA0022110F00221210001D1010001B100C00CFCECE00F5F9
      FA00F7FBFA00DEDCD800A0623000DF955800E7A06200E39F610069864900014C
      0400C0955200A8614100DEA15D00E89C5D00EB975C00E49C6500F3984700D851
      1700F26F3300ED9B6F00DFE1E100E5E8ED002567B4002C76B700578FCE004274
      B600527DC200D7E8F300D7D8FA00C4D8F600C0D8F700C0DBF700BCD7F900B2CD
      F4009FD3F900AACBF100B0D4F5009EC4F30097BFF1007EACE7002661AF000313
      45000005220000083000010A2E00DDE0E5000000000000000000000000000000
      000000000000FBFBFB00A0A0A00000000000EBEBEB00E3E3E300BDBDBD008685
      8500FAF6F000F6EDE800F6EFE900F4ECE500F4ECE500F6ECE400F4E9E100EDE3
      D900C4BDB8003B3A3A00746E6C006E676400F2EDEC00F0EFEC00F4E5DA00F0E3
      D700ECDDD000E9D9CA00E9D7C700EBD7C700EBD6C600D4AD9000D1AB8E00D0AB
      8D00D0AB8D00D4B09000D7B09200D7B09300D3AD8E00D0A98D00D0A98B00D3AD
      8E00D7B09000D6AF8F00D4AC8D00CFA88900D0A78800CFA88800D3A98A00D0A8
      8900CAA38300BF987700AD846100D9D0CA00FFFEFF0093929400C09C8400D8A9
      7200DAAC7500CC9B6700FBF0E900000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C8C8C800F1F1F1000000
      00000000000000000000BBE4D6003DAF8A0056B290000A7D3D000F8D57000D86
      4B0040A57D0059B6980059B6980041A985000E7F4F0001471100035F18000361
      190003631B000E8B4F000B753E003E83590097CEB600BBEED500BBEED500ADEF
      C700AEF2C900AFF2CA00B0F3CC00C4F7DB00E7FCF10000000000000000000000
      00000000000000000000F5FEFA00CDFBE500B9FAD9006AB98C00066225000365
      1F00068D420008984E000C9C5A0077C99D0037A467000D995A0011A46C0010A3
      6A0010A3690011A46B0011A46D0011A46D001FA7790074B8A00089B8A80048A5
      7E00098E48000583310005813000047325005FA38B00DEECE800000000000000
      000000000000EBEBEB00CFCFCF000000000000000000000000005D75F5000F70
      FB00007BFF000069FF000059FF00005BFF00005DFF000060FF000062FF000064
      FF0000A5FF00008BFF001457FC002E51F800244AF9000046FB0000D4FF0000A5
      FF00007DFF000075FF000076FF000076FF000077FF000078FF000078FF000078
      FF00007AFF00007AFF00007AFF00007AFF000084FF0000A8FF0000B7FF000948
      FE005576FB00ECEFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6D1FD002B48FB00007CFE00007FFF00005B
      FF000057FF000056FF000054FF000051FF00004FFF000063FF00005CFF002F64
      FB009FAFFB000000000000000000000000007A7D7D00E7E8DF00DDBD9E00EAA5
      5E00E59F6200E79F6400E69F6000EA9E6200ED9E6100E3A06100E4A06200EBA1
      6300DD9F6000B9A4600067A151000D5116004A6B29009A5C3C00BFAA8300DEDB
      DB00F3F6F500EDF0F000E6E5E500E5E4E200E2E1DF00E5E4E300F7F8F500FDFE
      FD00DED6D00098735700D58E5100EC9F6400E39C5E00E89F61008D925400267C
      2900695C2200A45C5000CD8C5100E8A26200EFA16100E29A5900EFA05B00C853
      1D00D1501B00D87D5100DFDFDD00E6E7EC00E6E5F300CEE2F3009CBCEB00B1CD
      EE00AFCAEC00DAE3F400D5EBF800D7E7F600D5E4F700C4DAF700C3DEFA00BCD9
      FC009BC2F500B5D1F600B2D1F500A6CAF2009EC5F2007AA3E2000B2776000313
      41000005230000072B00010A2E00E2DDE3000000000000000000000000000000
      0000FEFEFE00FBFBFB00C7C7C700FCFCFC00DFDFDF00B9B9B900ADAFB100C3BD
      B900EFE7E400F3EDE800F6EFE900F7EFE900F7ECE500F3EBE300F3E9E100FFFA
      F40058545100726E6B0067605E00E3E0DD00F6F6F700ECE1D900F2E5DC00F2E5
      DA00F0E1D400EDDDCF00E9D7C900E8D6C400E9D7C900D7AF9300D6B09300D4AF
      9200D0AB8E00D0AB8B00D0A98B00D3AC8E00D6AF9000D4AF8F00D1AB8D00D0A8
      8A00D0A88900D1AB8B00D6AD8E00D3AC8D00D1A88900CCA78400C9A18100C79F
      7E00C39C7B00BB977700B5906E00CCB5A300F0ECED00E3E4E50072675800DAAB
      7100E7B47600C8A88F0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C9C9C900F1F1F1000000
      00000000000000000000BFE5D80047B28E005BB694000E8C520011905A001293
      5D0046AD86005FB99B005FB89B005BB69800439C7800044F1600035F18000362
      1A0003651C00057128000B894A00117E47003B81540097CEB300B2EFCE00AEEF
      C900AFF2CA00B0F3CC00B1F4CE00C5F8DD00E8FCF2000000000000000000FEFF
      FF00FBFFFB00DDFBEC00C4FADE00B3F0CF005CAB7C0010682D0003631F000683
      350008964B000999500057B78F0032AB7D0017A16B0012A36C0014A5700012A5
      6E0011A46D0011A36B0011A46D0015A5710017A6730020A776001DA069001091
      4D00068738000685330005833200047726005FA48B00DEECE800000000000000
      000000000000EBEBEB00D0D0D0000000000000000000000000009CADF9002B70
      FB00007EFE00007FFF000060FF000062FF000064FF000066FF000068FF00006A
      FF00007FFF0000ACFF0002AEFF00058EFE00049DFE0000C7FF0000A2FF000080
      FF00007AFF000079FF00007BFF00007CFF00007DFF00007EFF00007EFF00007E
      FF00007EFF00007EFF00007FFF00008CFF0000B2FF0000AEFF001060FE005D80
      FB00EBEFFF00FDFDFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000718DFB001678FE000089FF000077FF000060
      FF00005EFF00005CFF000059FF000055FF000053FF000078FF000053FD005476
      FC00C4CDFD000000000000000000000000007A7A7D00F1E4D200EDB78D00E1A2
      5E00E4A06500E79F6400E79F6100E89F6100EA9F6100E59F6100E59F6100E89F
      6200E49F6100E8A0610099A25300196D2A0016541800A57D4400A06D3D00C9A7
      6F00F2F1EE00F3F8FB00FCFDFD00FBFEFE00FEFEFB00FEFCFB00FEFCFC00FCFC
      FC00D4BA9600DC936500EA9E5E00EC9F6200E59F6100E89F6000A79C60004D8D
      4900285510009C684D00B4794300D1935300EE9E5C00E99F5C00ED9F5C00D362
      2500D74B1900D7764900E4E1DF00E5E5EA00C5D4F400A9C4F1009CB9EF00BBD7
      F300E5EEF700EBF0F600DAEBF800DEE7F500DCE6F500D2E3F500CDE3F800BADB
      F90086B2E700B8D4F700B3D1F400ABCDF400A6C9F40083B0E00003104600010E
      380000072A0000052500000B2E00E1E0E3000000000000000000000000000000
      0000FEFEFE00FAFAFA00E1E1E100D6D6D600CDCDCD00C3C3C30089868600E9E4
      DF00ECE7E300F6EFE900F8F2EB00F6EDE800F4ECE700F6ECE500F4EBE400D9D0
      CC0047444400746E6C00A098960000000000EBE4E000F4EBE400F2E5DD00F0E3
      D900EFE0D400EDDFD100ECDDCF00EBD7C900E7D3C300D4B49C00D1A88A00D4AD
      8F00D6AF8F00D3AD8F00D0A98B00CDA78900CFA88900D1AC8D00D6AC8E00D4AD
      8E00D1AB8A00CFA58800CDA58500CFA78800D0A88800D0A88600C9A08100BF98
      7800B5906E00AD896800A78464009C785900E4DFDD0000000000676A7000DFAD
      7600B88A5D00FBF4EF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CACACA00F2F2F2000000
      00000000000000000000C1E5D9004CB4900065BB9B003DA67F001A9967003CA8
      7E005BB7950065BB9D0064BA9D0062BA9C0056B191002A8B6100014211000364
      1C0003671D000469200006772F0009833E00107A3E002973450052B08C00A7E4
      BE00AFF1CB00B1F3CE00B2F4D000C0F8DB00DCFCEC00EDFEF400E5FDF000D4FB
      E800C5FBDD00BEFADB0087CAB100438A5F0013662A0004692300068135000894
      47000D9B540034AB7E0067B89B0023A16A0015A36C0018A6740017A7730015A6
      710014A56F0013A56D0011A46D0012A36C0014A56F0018A7730015A36E000C96
      540006883A0006863600068434000578270061A58C00DEECE800000000000000
      000000000000EBEBEB00D0D0D000000000000000000000000000CFD7FC004160
      F9000078FC000092FF000065FF000066FF000068FF00006AFF00006DFF00006F
      FF000074FF000085FF000097FF0000A1FF00009FFF000094FF000084FF00007E
      FF00007EFF00007FFF000080FF000081FF000083FF000083FF000083FF000084
      FF000084FF000084FF000092FF0000BAFF0000A8FF001671FE006289FC00DEE5
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFCFF00DBE4FE00294CFB00048EFE000087FF00006DFF000065
      FF000063FF000061FF00005FFF00005BFF00005EFF000085FF000042FB007B89
      FC00EDEFFF000000000000000000000000007E7E7F00E9D7C300EFAD8100E69F
      5F00E79D6500E69F6400E79F6100E79F6100E89F6100E79F6100E79F6100E79F
      6100E69F6100E6A06200D49E5C00379040001F6D290068873400A16A4100B08E
      4E00E9B89700EAD4BA00F9FBF600F8FFFC00F9FFFE00FAFEFD00F7F3E600E5D4
      BB00E8A76E00EC9E6300DD9F5F00E49F6000EAA16300E9A06300C29D5E007291
      52000A4C0700896C3700AE714100D2955500EF9D5B00EBA25E00EB9E5A00E27A
      2F00D8542000DD825500E2DEDF00E7E6E900DEEAF600D8E3F800DAE3F600DCEC
      FB00BDD2F600A5BFF200A4C3F100D2E3F600DFE7F700DDE6F700D6E5F700B8DA
      FA0092BAF000BED7F800B4D4F500ABCEF400A5C9F100739FDB0001145B000008
      2C000008330000062600020F3A00DBDCDF000000000000000000000000000000
      0000FEFEFE00F8F8F800EDEDED00E8E8E800BFBFBF00A8A8A900C0BCB800E3DF
      DC00ECE7E400F4EFE900F7F0EB00F6F0EB00F7EDE800F3EBE500F7F0E900615E
      5B00716B6A006F686400FFFCFC00E3DDE000F6F0EB00F4ECE400F4E9E000F2E5
      DC00EFE0D600ECDFD000EBDCCD00EBDACC00EBD6C600E5D0BD00CCA38300CDA8
      8900CFA98A00D3AB8D00D3AD8F00D4AC8D00D1A98A00CDA58600CCA78800D1A8
      8900D3AB8A00D4AB8A00CFA58600CAA18300C79F7E00C79D7D00C19B7B00BC96
      7500B18B6B00A48160009C7859008A5E4200E7E1E000FAF3F600ACB0B500DCAB
      7100D9C3B1000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CBCBCB00F2F2F2000000
      00000000000000000000C3E6DA005AAA80008D8E50007C9E6A00689F6C0070AA
      820070B595006BBB9E0068BD9F0067BD9E0063BB9B0050AF8D000F774A000358
      1C0003681E00046B2000046F230005782C00067C330008783400168141003879
      4A0043A0780077BEA2009BD7B800B2EDCC00C0F9DA00C6FBDE00BCF1D60098CD
      B70072BFA100459163002A7445000E652800046F270006843800089246000B9A
      530022A871007BCAA40041A2720064A06C0069A4700051A6720041A671003FA4
      6F0040A26B004CA065005E9B5C006E94520073904B007B8A4300768A43006B85
      3900637928005E73210054711F00156D1D0063A48B00DEEDE800000000000000
      000000000000ECECEC00D1D1D100000000000000000000000000F3F5FE005B74
      F8000775FB000096FF000078FF00006CFF00006EFF000070FF000073FF000075
      FF000077FF00007BFF000083FF00008BFF000089FF000081FF000082FF000082
      FF000084FF000084FF000086FF000087FF000088FF000089FF000089FF000089
      FF00008BFF000096FF0000BEFF0000A7FF00197CFE006790FE00D3DCFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EEF2FF00658AFD000B71FE000099FF000082FF00006EFF00006B
      FF000068FF000065FF000063FF000060FF000072FF000079FF001D5AFB009EAB
      FD00FCFDFF000000000000000000000000007C7C7C00E4E0D700E7BB9B00E59D
      5E00EB9D6300E39D6000E99E6300E69F6300E69F6000E99E6100E89D6200E79E
      6300E69F6300E3A16000E39D6200749F4D003089360027692000B38155009F73
      4400D0A35C00E3B27600ECC8A100E8C6A500EAC9AB00E7C7A600ECC39300E5AF
      7600F0A05F00EB9E5F00E19C6000E49E6100EB9F6300E99F6300E0A06400A496
      5E00044405005C6A2100A56C3F00CA8C4D00EA9A5700EDA05D00ECA15B00CC66
      2800E0693900E89B7400E0E0E100E9E9E800F6FAF900FAFBFC00FAFBFB00F1F9
      FC00CCDDF600BCCFF400C1D5F600C7DCF500B4CDF30094B8EC00A2C4F0009BC8
      FA00A2C9F600BAD6F900B3D4F800AAD4F800A3CFF6003456A20009308E000006
      24000009380000052600071C4C00D9E4E1000000000000000000000000000000
      000000000000FCFCFC00F3F3F300D8D8D800D0D0D000908F8D00D3CDCA00DDD9
      D300EBE5E100F6EFEB00F8F2EC00F6EFE900F6EFE800F7EFE800FCF8F6004B46
      4700746C6B00ABA5A300FCFCFC00F7EDE800F6EFE800F4EBE500F4EBE300F3E8
      DF00F2E4DA00EDE1D400E9DACD00E9D9C700E9D6C600EDDACD00D7B39800D3AC
      8D00CFA88800CCA58800CDA58600D0A98A00D3AB8D00D3AB8D00CFA78800CDA4
      8500CCA48300CDA48400CFA58500CFA48400C49D7D00BC947400B38D6B00AD88
      6500A8846300A07D5E009D785A00885C4000EFE8E500E0D7D400EBEBEB009B77
      5900FFFEFB000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00F2F2F2000000
      00000000000000000000C5E6DB0064A27800A6621900A27230009F7938009C7F
      410097864B00948C5100939156009394590094985C0091995C00738C4D001E56
      1A00065C1900046C2100047123000472240004782900057F3000057929000469
      270009793900297F4C00408356004B8B5F004F906500508F66004B8B63003A7E
      5200247A480008682600046A220005792D0006893C0007934600129B570033AB
      770060BF94004EAE7A00759E6C00B0A27200B6A26C00A4A16700979F6300949C
      5E00929859009A935000A58E4700AD863A00AE803000B2782600AD752300A772
      1F00A36A18009F631300916112003265160066A48B00DEEDE900000000000000
      000000000000ECECEC00D3D3D3000000000000000000000000000000000090A4
      FA002777FC00008BFF000093FF000071FF000073FF000076FF000078FF00007A
      FF00007CFF00007EFF000080FF000082FF000083FF000084FF000087FF000088
      FF000089FF00008AFF00008BFF00008CFF00008DFF00008EFF00008FFF00008F
      FF00009BFF0000C1FF0000ABFF001A82FE006996FE00CDD9FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F4FF00ABC3FE00165EFE0002A7FF000095FF00007CFF000072FF000070
      FF00006DFF00006AFF000068FF000065FF00008CFF00005EFE00547FFD00C6D0
      FE000000000000000000000000000000000079797900E3EBEB00E2CEB900E79E
      5D00EDA06000E29B5E00E69F6300E89F6300E8A06200E79F5F00E79E5F00E69F
      6100E69F6300E6A16100DC9E6000B8A258005D9B45000E5C1A00A0905300A077
      4300B3935200D5A45D00E79D6200E39A6500E29F6700DE9C6200E7A05E00ECA0
      5D00EEA06200EC9F6100EA9C6200E89E6100E99E6300E89F6200ECA26500C59E
      6800094B0900265811009C673F00B47A4900E8995A00EA9F5F00F3A56400C15F
      2B00E2885B00E6B39300E2E4E500E8EBE700F8FBF900FAFCFA00F9FDFC00F5FA
      F900EDF3F800ECF1F800EFF5FD00D0E0F600B4CFF30095BAE900A4C7EE0098C9
      FC00B2D4F500B8D7FA00B3D4F900AFD8F900A9D6F900061C67000F42AA000006
      220000083500000526000E2A5C00D8E8E1000000000000000000000000000000
      000000000000FEFEFE00FBFBFB00F3F3F300DFDFDF00A09E9900D1D1CC00D9D6
      D100E8E1E000F2ECE800F6F0EB00F8F2EC00F8F2EB00F7F0E900E8E0DA00635C
      5C006E656300F8F7F300E0DDDD00FAF3EF00F8F2EC00F4EDE800F3EBE300F3E7
      DF00F2E5DA00F0E3D700EFE0D400ECDDCD00E8D6C600E7D1C000E3C9B500D0A4
      8500D3AB8D00D3A98D00CDA58800CCA38500CCA58500D1A88900D3A98900D1A7
      8800CCA48500C79F7E00C39B7A00C0997800BD977500B8927100AD8A6700A37E
      5E009B77580097725500987555008F644400F4F0EC00D7CDCA00F8F8F800D2C8
      C200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00F2F2F2000000
      00000000000000000000C7E6DC006A9F7900AB510D00AD550E00AD590F00AF5D
      1000B0611200B2671500B36E1B00B5732000B77A2600BA802D00BD843800726F
      2A00365F1C000F621D0004702300047727000476270004782700057C2B000682
      3200057C2A000470240003642000025E1E00025B1D00025A1D00025C1D000469
      220004712700057E30000587360006904000089549001FA15F0044AF7E0053B2
      8D005CB0800060996600BFA47B00D3A47300D2A16700CF9D5F00CB9A5900C796
      5200C3904B00C18B4400BE863C00BA813100B87B2800B6752200B4701C00B26A
      1700B1641400B05F1100A25C10004363150068A48B00DEEDE900000000000000
      000000000000ECECEC00D3D3D30000000000000000000000000000000000CFD8
      FC00517AFB000077FD0000A9FF000080FF000079FF00007BFF00007DFF00007F
      FF000081FF000084FF000085FF000087FF000089FF00008AFF00008CFF00008D
      FF00008EFF000090FF000091FF000092FF000094FF000094FF000096FF00009F
      FF0000C3FF0000B4FF001984FF006A98FE00CAD9FE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8FA
      FF00C8D7FF00447FFD00018BFF0000B1FF00008BFF00007BFF000077FF000075
      FF000072FF00006FFF00006FFF000076FF000094FF000150FC008CA5FD00EBEF
      FE00000000000000000000000000000000007A7A7A00E3E9E900E3D6C800DB98
      5A00E49E5B00E59E6000E4A16200E9A06200E9A16300DD9B5B00DD9C5C00E4A1
      6300E69E6000E7A16300DC9C5C00D89F6000AAA25A0016792700527B35009596
      4800A2764E00BD955600E79D6100EA9D6600E69F6200E7A06200E89F6000E99F
      6100ED9F6400EFA16600E89F6300E79F6200E79F6200E7A06100E99F5F00D1A1
      66001A6A190007480A009B654100A46F4C00EF9E5E00E89F6200E09D6800C180
      4E00DFB28F00E0CBB600E7E7E700E5EAE600F8FBF900F8FAF900F6FEFB00F4FB
      FB00EEF3F900EDF3F900F0F7FC00E1ECF800DFECF900DFEAF200DEEAF300B9DF
      FC00C0DAF300BDDAF900B8D6F900B2D6F7009DC4EA00011253000D3AA3000006
      2A0000072F0000072B000F2A6100D7E4DD000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FDFDFD00B0AEAD00D3CECA00D8D4
      CD00E3DDDA00F0EBE700F6F0EC00F7F0EB00F6EFEB00FAF3ED00A7A09C00716B
      6800938A860000000000E4E0DD00F8F3F000F7F2EC00F7F0E900F6ECE500F3E8
      E100F0E4DA00EDE1D700EDDFD300EDDFD000ECD9CC00E9D6C400E8D3C400CFAB
      8E00CDA48600D0A88900D1A98A00D1A98900CFA48600C9A18100C7A08100C9A0
      8100CAA38100C6A08000BF987800B58F6C00B0896700A8846300A5816000A07D
      5B0099745600966F5100966F50008D5F3F00F7F2EC00D4CCC900FAFAFA00C3C2
      C300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE00F3F3F3000000
      00000000000000000000CAE7DD006FA17B00AB500D00AD540E00AD580F00AF5B
      1000B0601200B2661500B36C1A00B5721F00B6782500B97F2C00BC833600BF88
      3F0089783100496523001966210005732600057C2C00057F2F00057D2E00057D
      2B00057F2D000582300005833100058332000583320005843200058433000689
      3800068E3E000690410007944700169B57002BA6690046B280005EB58F0063A6
      810062966500C9A98500D5A67D00D4A37000D1A06500CD9C5D00CA995700C694
      5000C38F4900C18A4200BD853900BA802F00B77A2700B6742100B46F1B00B269
      1600B0631300AF5F1100A25B10004463150069A58B00DFEDE900000000000000
      000000000000ECECEC00D4D4D40000000000000000000000000000000000F8FA
      FE008494FB00166DFB0000A2FF00009DFF00007EFF000081FF000083FF000085
      FF000087FF00008AFF00008BFF00008CFF00008EFF000090FF000092FF000093
      FF000095FF000096FF000097FF000098FF00009AFF00009CFF0000A4FF0000C4
      FF0000C1FF001780FF006899FE00CDDBFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8FAFF00CEDC
      FF006C9FFF000076FE0000C1FF00009AFF000085FF00007FFF00007DFF00007A
      FF000077FF000074FF000076FF000096FF00007DFF002B6CFC00BBCCFD000000
      0000000000000000000000000000000000007B7B7B00E5E9E900DCD3D0009977
      4D00AB794700E7A06400E89F6300E8A26400D38F5800AB764700AD774E00DD9F
      6700EA9F5F00D7945A00BA7E4C00B37F5100D29059003C9D4300044C12005887
      3800A1764500A7794400D5A05900E7A06000E99F5E00EBA15F00E79E5F00E89E
      6000E99D6000F2A26800E5A16100E79F6100E79F6100E6A06000ECA06200DD9F
      620040933A000A500B0098614300AA6D4B00D68E4A00D08D5300A88C6500A89B
      8300E5D9CF00E7E5E000EAE8E700E4E9E600F8FAF900F8FAFA00F5FCFA00F2F9
      FD00EDF3FA00ECF4F900F0F6FE00E1EDF900DEECF800DCE9F400DDEAF600C6E3
      F900C4DEF500BFD9F700BBD7F800AAD2F80078A3D8000B296A00092C8A000009
      370000073000010C3900051E6200D6E9DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D2CE00CFCD
      CA00DEDBD800EAE5E100F3EDEA00F8F3ED00F7F2EC00FBF4EF00716A68006863
      6100C3BCBB00F3F3F300FEFAF800F8F4F000F7F2ED00F7EFE900F6EDE500F4EB
      E400F3E7DF00EFE4DA00ECDFD400EBDDCD00E9D9CA00E9D7C700E8D4C300E8D1
      C000C99C7A00C7A08100C9A38100CDA58500CFA58800CCA48400C69D8000C099
      7800BC947400BB937200B7906E00B08B6A00A78361009D785A00987153009671
      530096715300997556009D785600966A4600F7EFEF00DAD0CD00FBFBFB00C5C5
      C400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFCFCF00F3F3F3000000
      00000000000000000000CBE8DE0073A37C00AB500D00AC540E00AD580F00AE5B
      1000AF5F1100B1651400B36B1900B4711D00B6762300B87D2A00BB823200BE86
      3D00C18C4400A8853F005E6B2C00226623000F7B2D0006833700068337000784
      3600078638000687390007883900078A3C00078C3F00078F4100079044000892
      47000E954F001B9A560020A0630034A97C005FB892005CB288004D9E700091A0
      7700DCAC8D00D8A88200D5A47600D2A36C00D1A06700CE9E6500CC9C6100C998
      5C00C7945600C5905000C28B4900BE873F00BB813700B7792B00B46F1E00B267
      1500B0621200AF5D1000A25B10004464150069A58C00DFEDE900000000000000
      000000000000EDEDED00D5D5D500000000000000000000000000000000000000
      0000C3CDFD005180FC00007AFE0000BDFF000089FF000085FF000088FF00008A
      FF00008CFF00008FFF000090FF000092FF000094FF000096FF000097FF00009A
      FF00009BFF00009BFF00009CFF00009DFF0000A0FF0000AAFF0002C3FF0000D4
      FF001179FF006497FE00D3E0FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9FBFF00D1E0FF006DA1
      FF000075FE0000BCFF0000AFFF00008CFF000086FF000084FF000081FF00007F
      FF00007DFF00007CFF000083FF0000ABFF00015BFE008CABFD00E5ECFE000000
      0000000000000000000000000000000000007D7D7D00E9E9E900C5C3C500473E
      3A0032221A00CE987300E39B6200EBAD750097654A0035242000371B1700C692
      4F00EFAA6800AA7B4D00584027004E271700A65F37009BA2540016581F000844
      120097974B00A27A4700B9944C00D7A15C00E69F6100E99F6100E79F6100EA9F
      6100EBA06200EFA16400E6A16100E79F6100E99F6100E7A06200EE9F6400E39C
      5F00679E5900105A0F008F534A00B869550062481A005A56320098948300ACA8
      A400E0E1DF00E5EAE900E5E7E700ECEAEA00F8FAFA00F7F8FA00F4F9F900F0F5
      FC00EBF1F800EEF3F900EDF5FE00DDEAFA00DDEAF900DAE8F700D9E8F800C7E1
      F900C6E0FA00BCD7F600B6D4F900A3CBF5008AB6EE003A7BCB0018357F000D1D
      4B000918410005195C0007237800D3E9E2000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0E9
      E700DBD6D200E3E1DF00EEEAE600F5EDE900F7F2ED00FEFBF60059545100645C
      5A00E5E1DF00E9E8E700FFFCFB00FAF6F300F8F3EF00F6F0EB00F4EDE500F3EB
      E400F3E8E000F2E5DD00F0E1D700ECDFD000E8D9CA00E7D4C600E5D3C100E5CF
      C000DFC7B300CAA18100C6A08100C39C7D00C39B7B00C19C7B00C09C7B00BD97
      7700B48E6E00AC886500A5835F00A17D5C00A07A5B009B77580096715300936C
      4F00946E4F0098715100A37D5900B18E6A00F4F2F000DDD6D100FAFAFA00DBDA
      DA00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFCFCF00F3F3F3000000
      00000000000000000000CDE9DF0077A57E00AA4E0C00AC520D00AD560F00AE5A
      1000AF5E1100B1641300B26A1700B46F1B00B5742100B77A2700BA802F00BD84
      3900C08A4200C28F4900BC904D008C823E00426B270018682700138240000D97
      59000B9453000A9553000A9451000C9754000E9A59000E9C5C000E9C5E00119F
      640027A87D005AB6940068B69A0040A782003E9D72007EA28000C7AF9600DDAD
      9200DCAB8900D8A87F00D6A67700D6A77800D7A87F00D9AB8A00DAAD9200DAAE
      9300D9AD9200D7AB9000D6A98C00D3A78900CFA37F00C5935F00BB7C3900B56C
      2100B0631700AE5B1000A25A1000446615006AA58C00DFEDE900000000000000
      000000000000EDEDED00D6D6D600000000000000000000000000000000000000
      0000F8F9FF008E9EFC000A61FA0000BDFF0000AAFF00008BFF00008EFF000091
      FF000093FF000095FF000096FF000097FF000099FF00009BFF00009DFF00009F
      FF0000A0FF0000A1FF0000A2FF0000A3FF0001ACFF0003C7FF0007DDFF000A70
      FF005E95FE00DDE9FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9FBFF00D4E4FF0068A1FF00007D
      FF0000B7FF0000BEFF000091FF00008FFF00008DFF00008BFF000087FF000084
      FF000081FF000087FF00009FFF000093FF001462FC00CBDBFE00000000000000
      0000000000000000000000000000000000007D7D7D00F8F8F800F8FAFA008A8A
      8C001E201F00AFAC9A00D49F6600FAF2EB00F3EFE80086847F00140F0C00A271
      3D00FFF4C700F3F3EE00B6B4AB0029181300714D2E00E69F580063A158001453
      210057883000A1A652009C6D3C00B99A4F00E09F6000E89E6000E89F6100E79F
      6100E79F6100E89F6200EAA16400E89F6100E99E6300E9A06400EFA25F00E9A2
      5E0075A25200135811007F503900894635001F482E001D724E008C8E8F00A29E
      A000E2E3E100E7E9E800E9E9E900E8E8E800F2F9FB00EEF9FA00EEF2FD00EDF0
      FB00EBF1F700EDF3FB00E5F0FA00DDEAF900DCE9F800D8E8F700D4E7F800C9E4
      F900C3DDF600BDD7F800B4D4F60093C0ED0087ADE60094B5EB008EB1F40077AC
      F3005090DE0011389000123B8700CFE5DC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFBFB00E4DAD200F0ECEA00F7F3ED00F9F7F10056514F00675E
      5C00FBF7F600E0DFDD00FBF8F700F8F6F300F8F3F000F7F0EC00F4EFE900F3EB
      E500F0E7E000EFE4DA00EDE1D700EDE0D600ECDDCD00E8D9C900E4D0C000E1CA
      BC00E0CAB900CCA99000C49C7B00C1997D00BB967400B48E6C00B18B6A00AD89
      6800AC896700A58361009F7A5A0097725400926E5000936E4F00977153009974
      54009D7755009F775500A77D5600D9C3B300EBE4E300E5E0DC00F6F6F600EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0D0D000F3F3F3000000
      00000000000000000000CFEAE0007BA78000AA4E0C00AB500D00AD540E00AD59
      0F00AE5D1000B0611200B1671600B36D1A00B5731E00B6792400B87E2B00BB82
      3600BF883F00C18D4600C4914C00C7965300C4995900AD996200738D64001677
      4F00086527000A7D41000C884E001A98660029A57C0029A47A001B9D6D001899
      68000D8C5400108A5A00449B7C009FBFB500E0D9DD00F2DCDE00EBCBC300E3B7
      A700E1B4A100E4BAA900E8C1B300EAC6B900EAC8BB00EAC9BB00EAC9BC00EAC9
      BD00EACABD00EAC9BD00EAC9BD00EAC9BB00EAC7BA00EAC7B900E6BEB000D4A5
      8700BA7D4200AE5A1000A2581000446615006AA68C00DFEDE900000000000000
      000000000000EDEDED00D6D6D600000000000000000000000000000000000000
      000000000000CBD6FE005C88FD000074FF0000DCFF000098FF000094FF000095
      FF000097FF000099FF00009BFF00009DFF00009FFF0000A1FF0000A1FF0000A3
      FF0000A5FF0000A5FF0000A6FF0000A7FF0005C4FF000CE4FF00098AFF005793
      FE00ECF3FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CADFFF004E90FF000085FF0000C5
      FF0000D2FF00009EFF000095FF000093FF000091FF00008FFF00008CFF00008A
      FF00008BFF000099FF0000B3FF00004FFF009BB9FE00EDF3FF00000000000000
      0000000000000000000000000000000000007F7F7F00F9F7F900FEFDFE009595
      95001B1B1B00A2989400DBA78500FAF8F900FAF9F70093939000181613008B5B
      3100ECD4B200F9FEF900F5F6F40020140F005F412500EDA25D00A09E64006199
      4C000D4C15004E7E3600AC854700A06F4400D2A05100DFA25C00E89F6500E79F
      6100E6A06100E7A16100E2965800EB9F5F00EA9C6100E89E6100F3A25F00F5A3
      630085975B001B621B0052574000635F51001C86730018976B008B9995009FA1
      9D00DCD9DC00E9E6E800E9E8E800DDE1E8006198D20080AEE400E2EFFA00E9F4
      F700E0EFF700DEEDF800DAE8F600DBE8F800DCE9F800D4E2F400CADCF600C4D9
      F600C1DDFA00ADCBF700A8CBF5009BBEF0009CC1F200A0C1F5009ABDF3008CB6
      F60084AEF20077A1E60079A5E600D6E7DD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFBFA00EFEAE600F1E8E4005B5453006F67
      640000000000DCDAD900FBFAF800F8F6F400F6F3F000F4F0EC00F3EDE900F3EC
      E700F0E8E100EDE5DD00ECE0D600E8DCD300E7D9CC00E5D6C700E4D3C400E0CC
      BC00DCC7B700DAC4B500B9977B00B58D6C00B18E6E00AD896800A5836100A07B
      5B0099775800997556009874560098725400966E4F00926B4E00946C4F009B71
      5100A47B5900AC845F00AC7D5100F4EFEB00DDD4D000F3EFEF00ECEBEB00F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D3D300F4F4F4000000
      00000000000000000000D1EBE0007FA88100A94C0C00AB4F0D00AC530E00AD58
      0F00AE5B1000B26C2100BA834300C4946400CFA07C00D7A99200DBAE9900DDAF
      9C00E6C4B600EACCC000EACEC300EBD0C700EBD2CA00EAD4CE00E4D3D000DBD2
      D100D9D2CF00ACBBB20099B2A70097B2A9008FB0A50089AEA30098B5AB009DB6
      AC00C4C9C000D7D2CF00DFD5D400E7D4D200EDD5D100EFD5D000EED2CC00ECCC
      C300E9C5B500E9C7B900EAC9BC00ECCABD00EDCCBF00EDCDC000EDCDC000E9C5
      B900DFB5A300D6A99000D4A88C00D3A68900D1A58600CEA48400CA9F7A00C08C
      5500B36F2600AD590F00A2570F00446615006AA78C00DFEDE900000000000000
      000000000000EEEEEE00D8D8D800000000000000000000000000000000000000
      000000000000F9FBFF00A9BDFD001162FB0000ABFF0000CEFF00009EFF00009A
      FF00009DFF00009EFF00009FFF0000A1FF0000A3FF0000A5FF0000A6FF0000A8
      FF0000A9FF0000A9FF0000ABFF0000B2FF0008CEFF0013DAFF001F78FF00ECF2
      FF00FDFEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F9FF0094C2FF00358CFF0009AAFF0000D3FF0000C7
      FF0000A6FF00009FFF00009BFF000099FF000097FF000094FF000090FF00008E
      FF00009BFF0000ADFF000686FF003C7EFE00E1EBFF00FDFEFF00000000000000
      0000000000000000000000000000000000007B7B7B00F9F9F700FEFEFD009A99
      99001E1D1D00857F7F00D5BCB000FCFDFD00FEFEFE00ABACAA00393938007742
      2700DBB29700FCFDFB00FFFFFE001A120F0055372100EBA06300E699620093A0
      5500166A2800135319008E9E4900A4864F00A1813A00BF965000E3A26200E9A0
      6100E89F6000EBA26000E69C5B00E89E5B00F3A26300EA9D5F00E8A77900F0BE
      9C0091A88600257F2C00556F5C0073898100109E950013A48300899E94009F9F
      9F00DDDBDC00E7E8E800E9E9E800E7E9E900CADDF100D4E5F5007F99C7008199
      C90080A4DC00769FDC00CCDEF800E1EDF900D3E6F600C5DDF600C0DDF900C1DC
      FD00BCD9FA00A4C8F5009EC8F3006BA3E70070A6E900A6D8F90099C2F20098B5
      F40094B6F70089B6FA008DB9FA00E0E5E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000716D6C007B6E
      6A0000000000DAD9D700FBFAF800F8F7F400F7F3F200F4F0EC00F3EDE900F0EB
      E500EFE7E100ECE4DF00ECE0D900E8DDD000E4D6CC00E1D3C600DFCDC000DCCA
      BB00DAC6B700D3BFAF00D3BFAF00A98A6C009C7B5C00A07D5E00A07B5C009C78
      590097715400906C4F00926B4E00936C4F00976F51009C7554009F775500A178
      5600A77D5600AD835B00AF83590000000000D4C7C40000000000BEBCBA00FBFB
      FB00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D3D300F4F4F4000000
      00000000000000000000D3ECE10083AA8300A94A0C00AA4E0C00AC520D00B26B
      2700C48B5F00D09D7F00D4A58B00D6AA9600DAAE9C00DDB1A300DFB3A500E1B5
      A800E3BBAF00E5BDB300E6BFB500E3BCB000E0B7A800E1B9AA00E2BBAD00E7C0
      B700EECFC700E7D7D900E4D9DF00E4DAE100E1DAE100DDD1D100DABDB000D7B6
      A600E1BBAD00E6BDB000E4BBAC00E3B9A900E2B8A600E0B69E00DFB39800E0B4
      9C00E1B5A100E5BCAD00ECCBBF00EDCEC200EECFC400ECCCC100DFB99E00CC9C
      6900C38D4C00C0874000BC823A00BB7E3600B9793100B7752D00B5702800B268
      1F00AF5F1400AD580F00A1560F00446615006CA78D00DFEDE900000000000000
      000000000000EFEFEF00DADADA00000000000000000000000000000000000000
      00000000000000000000E2E9FF0084A7FD000067FD0000D8FF0000BCFF0000A5
      FF0000A1FF0000A3FF0000A5FF0000A7FF0000A8FF0000AAFF0000AAFF0000AC
      FF0000AEFF0000AFFF0000B0FF0000B4FF000ED0FF0021DCFF001B72FF00E7EF
      FF00FDFDFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7FAFF00B5D6FF00499AFF001F9FFF0008C7FF0000D6FF0000C4FF0000AD
      FF0000A4FF0000A2FF0000A0FF00009EFF00009CFF00009AFF000097FF00009F
      FF0000AEFF0000A3FF00166EFF00C9DCFF00F9FBFF0000000000000000000000
      0000000000000000000000000000000000007C7A7D00F8F8F700FCFCFC00AAA9
      A9003735350069686800ECE7E400FDFEFE00FEFEFE00CED1CF006C6E6B005E31
      2200C79D7400FAFCFA00FCFCFD0018120F004A2C1900E3A16400E69B5E00CF9B
      59005295490020702D003D752C00819B4A00A17B4300A77D4700D49E5A00E29E
      5F00E8A06100E6A16300F09C6100EEA15B00DA874A00DC906000E2C9B900E4D9
      D10091B297003C904A0050756100829894000AA29D000DA39000869E93009F9E
      9F00DDDDDD00E8E9E900E8E8E700E9EBE900EAF1FD00EAF2FB0094B3DE00A0B6
      DE00AECAEE00B1CDED00D3E3F900B0CCEE0086ACD9007DA7E10095BDF100B9D8
      FC00BDDDFB00A2CBF00096C4F400203F8000264D9D005398DB00508FD90074A6
      E40084B1EF0096BCF5009ABEF000E2E4E2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099969600786B
      680000000000DCD7D400FCFBFB00FAF7F700F8F4F200F6F2F000F3EFEB00F0EB
      E700ECE5E100E9E3DC00E8DFD900E7DDD300E3D6CD00E0D1C600D9CABF00D6C3
      B700D1BFB100D0BBAC00CAB5A500CAB7A800A1806400906C4E00936E5300936E
      51009471530097715300946E5000946E4E00976F4F009F755300A77E5A00AF85
      5E00B4896100B3805600EFE9E400EFE8E700E1D9D30000000000ADAAAB000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4D4D400F4F4F4000000
      00000000000000000000D4EDE10087AC8400A9490B00AA4D0C00AB510D00AF5D
      1900B76D3100BC763D00BE793F00BE7C4100BF804400C1844800C3884C00C48C
      5000C6905400C7935900CA966000CA976200CA986200CC9B6600CE9F6B00D2A3
      7200D5AB7B00DBB48E00DFBAA200E3BDAB00E2BDA900DFB79A00DBAC8400DAA9
      8100DAAA8300DAA98200D8A87F00D8A77C00D6A77900D5A57300D4A26E00D3A2
      6F00D3A27000D2A37200D3A87600D7AC8400D8AF8A00D3A67900C8965A00BF87
      3F00BA803000B87B2700B5762200B4711E00B26B1800B1661500B0621200AE5E
      1000AD590F00AD550E00A1550E00446615006CA88D00DFEDE900000000000000
      000000000000EFEFEF00DADADA00000000000000000000000000000000000000
      00000000000000000000FAFBFF00D2DEFF005E8EFD000186FF0000D9FF0000BA
      FF0000A9FF0000A7FF0000A9FF0000ABFF0000ACFF0000AEFF0000AFFF0000B1
      FF0000B2FF0000B3FF0000B5FF0000B7FF000CCEFF0020EAFF0019B0FF00509A
      FF00C6DFFF00F6FAFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6FAFF00D9EAFF00A0CC
      FF0058A6FF0035A5FF0008BAFF0001D2FF0000D4FF0000C4FF0000B2FF0000AA
      FF0000A9FF0000A7FF0000A4FF0000A2FF0000A0FF00009EFF0000A4FF0000B5
      FF0000ACFF001C87FF008EB7FF00FAFBFF00FEFFFF0000000000000000000000
      0000000000000000000000000000000000007B797E00F5F5F500FBFBFB00C6C6
      C6006262610059585800FCFCFC00CCCDCD00EAEAEA00EEF0EF00999A99004727
      1D00AF8E5300F9FEFC00FAFCFC001B191500331C0F009A603B009C5B3800A15A
      370084904E0050954700145B1A0037732B00987E40009F703D00B08E4C00C799
      5600EBA15E00E8A55E00E09A5A00C67F4700DDA78300D9B39E00E2DEDC00E4E5
      E60098B89D004C935A004E775D00889D9B000CA09B0008A293008B999300A19F
      A000DCDCDC00E7E8E800E8E9E800E9ECEA00EFF2FA00EEF1F700BBD3F500CBDA
      F400DBEBF900E3EDF800DAE6F800BDD6F200A7C1E5007CABE50086B9EE00BDD5
      FC00AAC6F7005787BF005B96D1004D69A6005672BC002563B10014408B002C52
      90003F6FB5005D9EDF0068A1DA00E8E4E1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFCDCC006860
      5E0000000000D6D4D400FEFEFC00FBF8F800F7F6F400F7F3F000F4EFEC00F2EC
      E900EDE8E300EBE4DD00E5DDD700E4DAD000E1D6CC00DDD1C700DACABF00D4C4
      B800CFBFB000C9B7A900C6B4A400C1AD9F00C0AF9D00AC8F7A008F684B00926B
      4F00926C4F00986F53009C775500A17A5900A57B5800A77B5800A9805900B185
      5C00B98A6100BF96740000000000DCCFCA00F2EDED00EBE9E900EEEEEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5D5D500F5F5F5000000
      00000000000000000000D9EFE30091B68B00A65C1600A94B0C00AA4F0C00AC52
      0D00AD560E00AE590F00AE5D0F00B0611100B1661500B26B1800B4701D00B574
      2200B77A2700B97E2D00BB833400BD863B00C08A4200C28F4800C4924D00C796
      5100C8985500CC9B5C00CF9F6900D2A26F00D3A26F00D2A16B00D1A06700D2A1
      6900D2A16900D2A16900D2A06700D19F6500D09F6300CF9E6100CE9C5D00CC9B
      5A00CA995600C7965200C5934E00C6945300C6925400C28B4700BD843900BA80
      3000B87B2900B6772300B4731F00B36E1A00B1681600B0631300AF5F1000AE5B
      1000AD560F00AC530E009E530F002A6B19007BAF9500E4EFEB00000000000000
      000000000000EFEFEF00DADADA00000000000000000000000000000000000000
      0000000000000000000000000000F6F8FF00C3D3FF003174FE0006A6FF0001D2
      FF0000C2FF0000B0FF0000ADFF0000AFFF0000B0FF0000B2FF0000B5FF0000B6
      FF0000B7FF0000B8FF0000BAFF0000BBFF0004C6FF0015E0FF002FE9FF001EB6
      FF004EA9FF0077B6FF00A3CEFF00C1DDFF00D2E6FF00DCEDFF00E0EFFF00EDF4
      FF00DCEEFF00DCEEFF00CEE6FF00B6D9FF0094C8FF0074B7FF0057B1FF0034B9
      FF000EBEFF0008CFFF0001DBFF0000D5FF0000C2FF0000B4FF0000B0FF0000AE
      FF0000ADFF0000ABFF0000A8FF0000A6FF0000A4FF0000ACFF0000BEFF0000B6
      FF001E9CFF0078ACFF00E6F0FF00000000000000000000000000000000000000
      0000000000000000000000000000000000007A797C00EFEFEF00F9F9F900E5E5
      E5008E8F8E0056555500FDFCFC0079797A00C7C8C800FCFEFD00ABACAC003620
      1800A5783B00F8FEFB00FBFDFB003F3E3900281C16004D2C2200502A23004722
      190097724200969F560026752A000F631D0053712900947B4000A2824A00A98A
      4C00C0935400BB895600BA916900A1785F00D9C9C000D9D5D200E3E4E400E9E9
      E90098B79D0050905800507A5B00889E9D000FA19B0008A292008C9292009F9F
      A000DCDCDC00E7E7E700E9E9E900EAECEC00F1F4F800F0F2F700C8DBF800D9E6
      F900E6EFF900E9ECF900DFE9F900DBE7F900DCEAF8006596CF005182C900769F
      E100628AD9004372B8006699CE0092BBEF008BB0F2003265B200244D8B004762
      9E00406CB9001B559D0022528600ECE4E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB005951
      5000F8F6F400DFDDDC0000000000FCFBFA00FAF8F700F7F4F200F3F2F000F2ED
      EB00EFE9E500ECE7E100E8E1DC00E4DCD300E0D6CC00DCCFC700D7CAC000D4C7
      BB00D1C0B500CCB9AD00C6B4A500C0AD9D00BDA89800BCA79300BBA490009C6F
      5400997250009B725300A0755400A77D5900AF855E00B4896100B7896000B586
      6000AF7A4C00FCFEFE00F8F3F000D7CCC60000000000D6D3D300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4D4D400F5F5F5000000
      00000000000000000000DFF3E7009EC8A0009E814300A9490C00AA4D0C00AC50
      0D00AD540E00AE570F00AE5A0F00AF5F1100B0631300B2671500B36C1900B570
      1E00B6752300B77A2700B97F2C00BB823300BE863B00C08A4100C18D4600C491
      4A00C5934E00C7965100C9985500CA9A5700CC9A5A00CC9B5C00CD9C5D00CD9D
      5E00CD9D5E00CD9D5E00CD9C5D00CC9B5C00CC9A5B00CB9A5900CA985500C796
      5200C5944F00C4914B00C28E4700C08B4200BE873D00BC833700BB803000B87B
      2900B6772400B5731F00B46E1B00B26A1700B1651400B0601100AE5C1000AE58
      1000AD540F00A9530E008F5711000F7724009DC7B100EEF5F200000000000000
      000000000000EFEFEF00DADADA00000000000000000000000000000000000000
      000000000000000000000000000000000000F5F8FF00A2BCFE003487FF0009BC
      FF0004D7FF0003C8FF0000B6FF0000B4FF0000B5FF0000B7FF0000BAFF0000BB
      FF0000BDFF0000BEFF0000BFFF0000C0FF0000C2FF0008CDFF0025E7FF002BF2
      FF0032BEFF0033BAFF0049C1FF0059C1FF0062C1FF006BC5FF006EC6FF007BC8
      FF006BC6FF006BC6FF0060C5FF004CC0FF0031BDFF001CB9FF0012BEFF0009D5
      FF0009E7FF0008E3FF0001D0FF0000BFFF0000B8FF0000B6FF0000B4FF0000B2
      FF0000B1FF0000AFFF0000ADFF0000ABFF0000B2FF0000C5FF0000BFFF0011A2
      FF005DA7FF00D6E6FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A7A7A00E8E8E800F7F7F700F9F9
      F900ABABAB008A8A8A00FCFBFB0045414200B0B0AF00F9FEFD00AAACAB002D1B
      1400A25C2C00F6FBF700FBFDFA0098989400716F6C0075737100757271003D2D
      2700A2683E00D79B5C00699949002C8632000956150059743800A4874F008B73
      4100596F410056594F008E828300968C8D00B4B9B800C7C8C900DDDFDE00E3E5
      E30080AD8A00438A4800527B5C00859D9D000FA29B000A9F8F008C9091009DA1
      A100DFDFDF00E8E8E800E9E9E900EBECED00EFF3FA00EEF3FB00CFE2F700E3EE
      FB00EBF2FA00EAEFFB00E3EDFA00DCE3F900DCEAF3004D7EBF00274BA900144A
      AC00174AA8005278C6007592D10074A5E10075A6EC006F97D9006EA4D80093BC
      F9006F9DEF0017388400203A6B00ECE1E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B63
      6200DDD7D700E8E5E50000000000FCFCFC00FCFAFA00FAF7F400F7F4F000F3EF
      EC00EFEBE700ECE7E300EBE3DF00E7DFD900E3DAD100E0D3C900DACDC100D3C6
      BB00D3C1B700CFBFB000CDB9AC00C7B5A500C4AC9C00C0A89400BDA49200C1A7
      9000BB997D00A8805A00AC805900AD835B00B0845B00B5895F00BC8B6300B981
      4F00E0D0C400FCFBFB00D4CAC600F3F0EF0000000000CDCDCD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5D5D500F4F4F4000000
      00000000000000000000EAF8F000B6DEC30097AD8200A65B1D00A94D0E00AB4D
      0D00AC510E00AD540F00AD570F00AE5C1000AF5F1100B0631300B2671600B36C
      1A00B5701E00B6752200B77A2600B87E2C00BB813200BD843800BF883E00C08B
      4200C28D4600C4914A00C5934D00C6944F00C7955200C7975400C9975600C998
      5600C9985700C9985600C9985600C8975400C7955200C6955100C5934E00C491
      4B00C28E4800C18C4400BF894000BD863A00BB823500B97F2E00B87B2800B677
      2300B5731F00B46E1B00B26A1700B1651400AF601100AE5D1000AD590F00AD56
      0F00AB530E0099550F005C691D00248F5100CAE5D800F8FCFA00000000000000
      0000FEFEFE00EFEFEF00DCDCDC00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009BBEFE00369C
      FF0010C2FF0008D9FF0004CEFF0000BFFF0000BAFF0000BCFF0000BEFF0000C0
      FF0000C2FF0000C3FF0000C4FF0000C5FF0000C6FF0000C8FF0003CCFF0019EB
      FF0046EEFF003CF5FF002DE9FF0024D5FF0021C7FF0020C3FF0021C2FF0025BD
      FF001BC3FF001AC3FF0018CDFF0017D8FF0019E7FF001EEEFF001BECFF000BE5
      FF0000D3FF0000C3FF0000C0FF0000BFFF0000BDFF0000BBFF0000B9FF0000B6
      FF0000B5FF0000B3FF0000B1FF0000B7FF0000CDFF0000CAFF0010A7FF0050A5
      FF00B5D6FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A7A7A00E6E6E600F6F6F600FFFF
      FF00B2B2B200F0F0F000FFFDFD004C3F4000B2ABA400F7FBFB00B1B3B0002417
      120087432300F5F4EF00FAFCFD00F9FCFB00F9FDFA00FAFFFC00FDFCF9009369
      5700C5804B00E89B5F00C29C5A0075994E000F5C1E00034C1400748B42005A64
      3200004A32000748490057696F00757C7E008F979200A8A3A400C1C2C200C7CB
      C9005BA1650025782E00577A5D007FA1A0000BA197000C9D870090939400A6A8
      A800E2E3E300E8E8E800E9E9E900E8EAEB00E3EAFA00E6ECFC00D7E9F900ECF4
      FA00EDF4FB00EDF2FD00D5E2FA00B7C6ED00CCDCED0081ACE6006389D1003650
      A40032529E00224DAB00133DA5001F59B6005C90D800C1D4ED00ABCBF00087B9
      F500639AEA004F86D900699DE800ECDFDE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AEAA
      AB00B1ABA800F3F2F200F8F8F800FEFCFC00FCFBFA00FBF8F800FAF6F300F7F3
      F000F3EDEB00F0EBE500ECE5E000E9E1DC00E7DDD600E4DAD000E0D4CA00DCCD
      C100D7C6BB00D3C1B500D0BDAF00CFBBAB00CDB8A500CCB39F00C7AD9700C3A7
      9000C6A58D00CAA98F00C49D7D00BD8F6A00B9895F00B8885B00B4805000CDB4
      9F0000000000E5D9D700E3D9D60000000000CECCCB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE00F0F0F000FCFC
      FC000000000000000000FAFDFC00DFF4E900A5D5B2009F975A00A4662E00A75D
      2100A8602000A9622100AA652100AA682200AA6A2300AB6D2400AD702600AE74
      2900AF782C00B07B3000B0803300B1833700B3863B00B4883F00B58B4500B68C
      4900B8904B00B8914E00B9935100B9935300B9945400BA965500BB975600BA98
      5600BA985600BA985500B9975500B9955400B6935200B5935000B4914D00B290
      4900B18E4700AF8B4400AD893F00AB863900A8833300A67F2E00A47B2A00A378
      2500A17421009F701C009D6C19009B6715009963140098611200975D1100955A
      11008C5A12006A661E00298C4A0082BFAD00F1F8F60000000000000000000000
      0000FAFAFA00EBEBEB00E2E2E200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000099BF
      FF00369BFF0013BEFF000EE1FF0008D9FF0004C8FF0000C2FF0000C4FF0000C5
      FF0000C7FF0000C8FF0000C9FF0000CBFF0000CCFF0000CEFF0000CEFF0000CE
      FF0000D0FF0008DFFF001CEFFF0035F6FF0046F6FF004BF6FF004CF6FF0056F6
      FF003EF6FF003BF5FF002FF5FF001EF1FF000AE6FF0001D6FF0000CBFF0000CB
      FF0000C9FF0000C8FF0000C5FF0000C4FF0000C3FF0000C1FF0000BFFF0000BC
      FF0000BBFF0000BBFF0000C0FF0000D2FF0000D7FF0010AAFF0050A9FF00B7D9
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A7A7A00E9E9E900F7F7F700FFFF
      FF00B5B5B500FEFDFE00FCF8FA0048312E00AFA08C00FAFBFD00CFCDCB001715
      100053311C00F2EBE500FDFEFF00F1F2EE00E0E4DD00E7E9E800F2F4E700D6B0
      8500EDA06200E3A06700E89C6100D4A161004AA55000186723000D691E001468
      2C0003524700034E5000043F3C003D666A0072787200877E7D00919194009195
      9B0051A050000F5B16006B80630072A09C00089D8D00169F78008F9B9A00B8BA
      BA00E4E7E600E6E9E900E9E8E800DFE2E700BCCAF900C4D3FD00DAEDFB00EBF6
      FC00EEF3FA00EFF3F900A3C4F5002D69C4007FB0E5003471C60066A6ED00AFCF
      F300AED1E700619AE6004382D5002B56A4006590C900B9D6EE00B2D0F300A6CC
      F6009FC9F5009BC1F70098BFF500DBE5E3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000746D680000000000D1CFCF0000000000FEFCFB00FBFAF800FAF8F600F8F6
      F200F7F2ED00F3EFEB00F2E9E500EDE7DF00E9E0D700E5DCD400E4D7CF00E3D4
      C900E0D0C300DACCBD00D7C3B400D3BDAD00D3BCA800D3B9A500D3B7A100D0B4
      9C00CDAC9400CAA78E00C9A38600CCA78A00CCA48500C9976F00C0A48E000000
      0000EFE5E300DFD4D00000000000F2F2F200E3E3E30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDEDED00E3E3E300F5F5
      F500000000000000000000000000FAFDFB00DFF5EB00A7DFBC00A1BC9D00A4A8
      7800A5A47000A5A47100A5A47100A5A57300A4A57500A4A67500A4A77500A4A8
      7600A3A87700A3A97A00A3AA7A00A3AA7A00A2AB7B00A2AB7C00A1AB7E00A1AB
      7D00A1AB7D00A0AB7D009FAB7D009EAB7D009DAB7C009CAB7B009AAA7B0097AA
      7A0096AA790094AA750092A9750091A874008DA771008BA66E0089A46C0086A3
      680084A2660080A063007C9E5F007A9B5C0076985800729653006F944E006B90
      4800688E4200638C3D005F8938005C8534005A823200597F3100577E2E004E7D
      2E003884370033995A0081BFAC00FEFFFF000000000000000000000000000000
      0000F2F2F200E5E5E500F0F0F000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009CC4FF003793FF0019B4FF0022EFFF0014E9FF0006CCFF0000CAFF0000CB
      FF0000CDFF0000CEFF0000CFFF0000D1FF0000D2FF0000D2FF0000D4FF0000D4
      FF0000D4FF0000D6FF0000D6FF0000D6FF0000D6FF0000D6FF0000D6FF0000D6
      FF0000D6FF0000D4FF0000D4FF0000D4FF0000D3FF0000D2FF0000D1FF0000D0
      FF0000CEFF0000CDFF0000CBFF0000C9FF0000C8FF0000C5FF0000C3FF0000C1
      FF0000C2FF0000CAFF0000E4FF0000DCFF000EA2FF0057AEFF00C4E2FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A7A7A00E9E9E900F5F5F500FEFE
      FE00D2D2D200F9F9F900F8F9F7003D211B00A68C7200FCFDFE00EBEAEA001D1B
      19002B1A1000EEE6DE00F9FAFB008F8F8E00100E0C0054433E00A99B8200C69B
      7100E69E6700E7A06300F39D5700E5A25A00E1A1560062A54600166421000442
      0F00139A550006AA7B000147510000474D002F575C004F5E6200605066005E5A
      6800459D4F000B5711006C8583004E9EA700069F84001C9F7E00A3ABAC00C9CD
      CD00E8EBEA00E7EBE900E8E8E800E9EBEB00F9F0FF00D9DBF700E8F2F900EEF6
      F900EEF3FB00EEF3FB0092AFDE0079A4DD0094B5E9001747A70010369400124D
      AE002D79DB004D85D80081ADF000C2D8F600C6D8F100B1D0F100BED9F900B1D0
      F700AACDF8009FC9F800A1C8F900EDE5E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A09D9C00D6CCCA00ECEBEB00F7F7F600FFFEFE00FEFCFB00FCFAF800FAF7
      F400F8F4F000F6F0ED00F4EDE800F3EBE500EFE7E000ECE1DA00E7DDD300E7D7
      CA00E4D4C700E3D1C300E1CDBD00DDC6B700D9C0AD00D6BCA700D4B9A300D6B7
      9F00D6B59B00D3B09400CDAB8D00C7A38400C6977200C6B5A700FFFCFA00FAED
      EB00D9D0CD00FBFAF80000000000D5D5D5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADADA00ECEC
      EC00FDFDFD000000000000000000000000000000000000000000E7F8F000DDF5
      E900D9F5E800D8F4E800D8F3E700D8F3E600D7F3E600D7F3E600D7F3E600D5F2
      E400D5F2E400D4F2E400D2F2E300D1F1E300D1EFE200D0EFE100D0EFE100CFEE
      DF00CDEEDF00CBEEDD00CAEDDD00C9EDDC00C8EDDC00C7ECDC00C5EADB00C3EA
      DB00C3E9D800C2E9D700C1E8D700C0E8D600BFE7D400BEE6D400BCE5D300BBE4
      D100BAE4D000B8E3D000B7E3CF00B5E1CD00B5E1CB00B4E0CA00B4DFCA00B3DE
      C800B2DDC700B1DCC600B0DCC300AFDBC200AFDBC200AFD9C200AED8C100AED8
      C100C1E2D000EDF7F3000000000000000000000000000000000000000000FCFC
      FC00E9E9E900E3E3E30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5D5FF004596FF000F9CFF002FF6FF0035FBFF0000DAFF0000D0
      FF0000D1FF0000D2FF0000D4FF0000D5FF0000D6FF0000D8FF0000D8FF0000DA
      FF0000DAFF0000DAFF0000DAFF0000DAFF0000DAFF0000DAFF0000DAFF0000DA
      FF0000DAFF0000DAFF0000DAFF0000D9FF0000D8FF0000D7FF0000D5FF0000D5
      FF0000D3FF0000D1FF0000D1FF0000CFFF0000CEFF0000CBFF0000C9FF0000CC
      FF0000DCFF0000F3FF0000D3FF000191FF007DC3FF00DFF0FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A7A7A00E9E9E900F0F0F000FFFF
      FF00F8F8F800FAFAFA00F9F8F900635C5B00C0BCAB00FDFFFF00F9FAFA001B17
      1800311C1700EBE0D200FDFEFC00989997001D1D18002722220043413E004D42
      3A004E3C2F0077543B00EDBC9A00DEAF8C00D7A16700DEA25A0048A24C001C8E
      3300045216000957200014956900055F4300054A41000A494000336247005A8C
      56000C54170001450C00249B9D0011A99B00149C77005CA09900ADC9C500D7DE
      DB00E7EAE900E6E9E900E8E9E900EAEDEC00F6F8FB00D6E4F700E8F6FA00F0FB
      F800F7FCFA00F5F8FA00EBECF500DAE3FA00CFE1F9005A8AD500256ABC002159
      AB005495DF0016439F00193F9A002456B3002B62C200518BCF00A8D4FD00BED5
      F400B1D1F400A2CDF400A4CEF700E4E3E3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000837A770000000000B3AFAD00FBFAFB00FEFCFC00FEFBFB00FCFA
      F700FAF7F400F7F3EF00F7EFEC00F4EDE800F2E9E300F0E7E000EDE3D900EBDD
      D100E7D7CA00E4D1C400E3CFBF00E3CDBB00E1C9B500DFC3AF00D9BCA700D3B5
      9D00D3B19800D1AF9300D6AF9000C79F7E00D4D1CF00FAF2EB00F7F2E900E0D9
      D400F7F2F00000000000BBB9B900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F400DFDF
      DF00EAEAEA00FDFDFD0000000000000000000000000000000000FCFEFD00FBFE
      FD00FBFEFC00FBFEFC00FBFEFC00FBFEFC00FBFEFC00FBFEFC00FBFEFC00FAFE
      FC00FAFEFC00FAFEFC00FAFEFC00FAFDFC00FAFDFC00FAFDFC00FAFDFC00FAFD
      FC00FAFDFC00F9FDFB00F9FDFB00F9FDFB00F9FDFB00F9FDFB00F9FDFB00F8FD
      FB00F8FDFB00F8FDFB00F8FCFB00F8FCFB00F8FCFA00F8FCFA00F8FCFA00F8FC
      FA00F7FCFA00F7FCFA00F7FCFA00F7FCFA00F7FCF900F7FCF900F7FCF900F7FB
      F900F7FBF900F6FBF900F6FBF800F6FBF800F6FBF800F6FBF800F6FBF800F6FB
      F800F8FCFA00FDFEFE0000000000000000000000000000000000FCFCFC00E7E7
      E700E2E2E200F6F6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7FAFF00D2E6FF0074B8FF000A94FF0024D1FF006EFBFF0037FA
      FF000BE3FF0000DAFF0000D9FF0000DAFF0000DBFF0000DCFF0000DDFF0000DE
      FF0000DFFF0000DFFF0000DFFF0000DFFF0000DFFF0000DFFF0000DFFF0000DF
      FF0000DFFF0000DFFF0000DEFF0000DDFF0000DCFF0000DBFF0000DAFF0000D9
      FF0000D9FF0000D7FF0000D5FF0000D3FF0000D2FF0000D1FF0003DFFF0006F3
      FF0005ECFF0004B6FF001FA7FF00AAD9FF00E8F4FF00FCFDFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E7A7A00E9E9E900EAEAEA00FDFD
      FD00FFFFFF00F4F4F400C2C3C30084838300CECECB00FFFFFF00FDFEFE001615
      1900261A1600EDDEC300FCFEF700D4D5D2009C9B9300868486008B9091008B8B
      8B002522210059534E00DFD7CF00E1D9D400D5A38000F19F5D00BFAE730087AB
      71002C8037000C5B1B00055A2500045A2100158042001B8A49001E833A001A74
      270001430D000385460006A3820002A2760039AB9500AEADB300CFD9D800E4E5
      E500E8E8E800E8E9E900E9E9E900ECECEB00F4FAFD00D3DEF500F1F8FD00F8FA
      FC00FBFAFC00FBFBFC00F6F8FA00ECF0FA00EAEEF900C8D4F200B5CDF000C2CE
      E200A9C9F100356CB700184DA7002B6CB9001A50AC002053AD00274A9E00A7C7
      F100B6D3F500A7D0F600A4CDF400DAE8DA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DAD9D900BCB5B300FEFEFC00B1AFAF0000000000FCFBFA00FCFB
      F800FBF7F400FAF6F200F8F2EF00F7EFE900F3EBE400F0E7E000EFE4DA00EDE1
      D700ECDFD100E8D7CA00E4D1C100E1CCB900E0C7B400DFC4B000DFC1AC00DCBC
      A400D6B59C00D6AF9000B8A79700DDD7DA00F8F0EB00F0E9E500E5DCDA00F8F4
      F30000000000C5C3C30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00EDED
      ED00E1E1E100EAEAEA00FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00E7E7E700E2E2
      E200F0F0F000FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9FCFF00DFEEFF00A4D2FF0044B0FF001BA0FF0043EF
      FF007DF8FF0058F7FF001BECFF0000E1FF0000E0FF0000E1FF0000E1FF0000E3
      FF0000E3FF0000E5FF0000E5FF0000E5FF0000E5FF0000E5FF0000E5FF0000E5
      FF0000E5FF0000E3FF0000E3FF0000E2FF0000E1FF0000E0FF0000DFFF0000DF
      FF0000DDFF0000DBFF0000DAFF0000DEFF000AEBFF0015F4FF000FEAFF0002CC
      FF0016B5FF006DC8FF00C4E5FF00EFF8FF00FDFEFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7A7A00E9E9E900E7E7E700FEFE
      FE00FFFFFF00EDEDED0085858500B0B0B000DBDBDB00FEFEFE00FDFEFD005C50
      500067382700E2D2B800F9F8F200F1F3F300E4E7E600DFDDE000DDE2E200DCDE
      DE005A595A007B7B7B00E6E5E500E9E8E900E4CDC100EDA46F00E6C2A800CFD1
      BE0099C09300549056001B7626000B5D1A00095D22000B612500095B1D000353
      1300027E4A0002995D0001A37D0026A98B00AAC0C100CFCBCF00E5E5E600E9E8
      E800E8E8E800E9E9E900E9E9E900E6E8EA00C1DDF100AECAEC00F5F8FE00F7F9
      FC00F7FAFA00F9FAFA00F5FAFA00F2F8F900F2F6FB00EAEEFB00C2D5F0006D9E
      D800A1C3F100A8C4E7009ABBE00090B7E000729FD9002058B400041B7900B0D2
      F100B8D7F400AFD2F600ABD0F600D5E8DD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0BFBE00E5E3E300F8F7F600ABA9A800F0F0F000FEFE
      FB00FAF8F600FAF6F300F8F3F000F7F2EC00F6EDE800F3EBE300EFE4DC00EDE1
      D700ECDFD300EBDCCD00E9D7C700E5D1C000E0C9B700DDC4B000E0C3AB00DDBC
      A500C7B3A000ACABAD00E7E0DD00F7EDE800F2EBE700F2E8E500FAF6F3000000
      0000C9C9C9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00F0F0F000E5E5E500E7E7E700F4F4F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F400E5E5E500E7E7E700F2F2
      F200FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFEFF00EFF7FF00C0E0FF0082C3FF0045C1
      FF003CBFFF005BEAFF008AFAFF0089F6FF0051F5FF001DF2FF0000E6FF0000E8
      FF0000E8FF0000E9FF0000E9FF0000E9FF0000E9FF0000E9FF0000E9FF0000E9
      FF0000E9FF0000E8FF0000E8FF0000E7FF0000E6FF0000E5FF0000E3FF0000E3
      FF0002E6FF0012F1FF0022F3FF002BF5FF0019ECFF000DD6FF001CC5FF0053C9
      FF00A5DBFF00D8EFFF00FAFDFF00FEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7A7A00E9E9E900E7E7E700FEFE
      FE00FEFEFE00F3F3F300AEACAC00D9D9D900E6E6E600FCFCFC00FEFEFE00B6AE
      AA00C0A18600E3DED200F5F5F400F9FCFB00F8FCFB00FCFDFD00FCFEFE00FCFD
      FD00B3B3B300BBBBBB00E7E8E700E9E9E800E7E5E900E9BB9A00E7D9CE00E6E3
      E000DBDFD700B8C9B5007EBC84005C975D00337D3C002D7A3800428651004191
      6A0017B091001DAD8E006EC0B7008EC7C300E2D9DA00DEE2E100E6E8E700E9E9
      E800E8E8E800E9E9E900E9E9E900E8E9EB00D4E7F300CADDF400D7E6FA00CBDE
      F500D7E7F600E5EEF600F7FBFA00F8FAF800F6F9FA00E9F2F900A5BFE200276F
      BE00558AD0007594CA007BA5DA00CBDFF500B4D4F60085A2DE006F85BE00BFDC
      F300BEDAF600B0D2F800A9CEF700D6EAD7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A19F9F00E7E5E400F8F7F700ABA7A500D6D3
      D100FAFAFA00F7F6F400F8F4F000F7F2EF00F6F0E900F4ECE700F3E9E100F0E4
      DA00EDE0D600E9DACC00E9D7C700EBD4C100EBD3C000DDC6B400B4ABA7009DA1
      A300B3AFAD00F4EBE500F8F2EF00F8F6F600F4EDEB00FAFAF800FAFAFA00C6C5
      C500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00F2F2F200EAEAEA00E9E9E900EAEAEA00ECECEC00F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F1F1F100ECECEC00EAEAEA00EBEBEB00EAEAEA00F5F5F500FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFEFF00E4F2FF00ADDA
      FF0079C9FF0063CFFF0066CEFF006BDAFF007AF4FF0099FDFF008CF5FF0079F6
      FF005DF6FF002CF6FF0012F6FF0005F1FF0000EDFF0000EDFF0000EDFF0000ED
      FF0000EDFF0000ECFF0000ECFF0008F2FF0013F5FF0020F4FF0034F4FF004BF4
      FF0056F6FF0032FEFF0023EBFF001FD6FF002FD0FF005BD1FF008FD8FF00C6E9
      FF00F5FBFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007D7A7A00E8E8E800E8E8E800F3F3
      F300F3F3F300F2F2F200E3E1E100EAE9E900EAE9E900F2F2F200F4F4F400E4E4
      E000EAE8D800E8EAEB00ECEFF300EFE9E200EBDDD400F2F4F200F0F4F300F2F3
      F300E5E4E400E3E3E300E7E8E700E7E9E700E4E5F100ECD9CD00E6E8E000E7E7
      E400E7E6EA00E9E5E800D7E3D700BCD1B9009CC89E0095C59B00ABCFB200AED7
      CA0081D0CC0082D0CC00D1E0E700DBE0E400E5E9E200E8E9E700E5E8E700E9E9
      E800E8E8E800E9E9E900E9E9E900ECECEC00F8FAFB00F2F6FC00DAE8F800CDE0
      F300D8E7F700E2EDF900DEE7F900CFDDF400D7E6F500E5F0F800C1D2EA005C90
      D1002C71BB004C7CC1005E91D600D8E9F500D0E4F700D4DDF800CBE1F800C7DF
      F500C6DBF800B7D6F900ACCFF500D7E9D9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9C9C800DCD7D600FBFBFA00D7D1
      D100A5A1A000B8B4B400E9E9E900F7F7F600E9EDEF00E0E1DF00E3DDDA00E0D9
      D300D9D0CC00CCC4BF00BDBCBB00BBBDBB00C0BDC100A4A4A4007B767600C3B9
      B500F7EFEC00FCFCFC00F8F6F400F2EBE70000000000EFECEC00E9E8E8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F9F9F900F1F1F100EAEAEA00EAEAEA00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EAEAEA00EAEAEA00F2F2F200FBFBFB00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5F3FF00B1DEFF007DCBFF0065CFFF0073DCFF0091DAFF008EDCFF0096F3
      FF009DFEFF0094FFFF0083FFFF0077FBFF0072F7FF0072F7FF0070F7FF006CF7
      FF0072F7FF0072F6FF0072F6FF0071FCFF0068FFFF0059FEFF004EF8FF0055EB
      FF0056DAFF0036DFFF0048D9FF0064D1FF0091DAFF00C9ECFF00F1FAFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007D7D7D00E8E8E800E8E8E800E7E7
      E700E7E7E700E7E7E700E8E8E800E7E7E700E8E8E800E8E8E800E8E8E800E8E8
      E800E9E9E900E8E7EC00E3E7ED00E6D8CE00E2C8BB00E6E7E800E0E8E600E4E6
      E600E8E8E800E9E9E900EAE9E900E9E9E900E6E6EE00EEEBEB00E7EBE700E8EA
      E600E5E8E700E6E7E700EEE6EB00E7E5E900EBEAEB00EAEBED00ECE7EA00F0E7
      E700EEE6EC00E4E9EC00E1EBEA00E7E8E700E6ECE500E9E9E800E9E9E900E9E9
      E900E8E8E800EAE9E900E9E8E800ECEBEB00F9FBFB00F7FAFA00FBFDFC00F9FD
      FA00F8FAFC00F2F8FD00D0DCF900BACEF300C7DDF500DBE6F900D7E6F7009FBB
      EF005B97D0009FC5EB00B5D1F300DEEDF400DCE9F600D9E9F700D6E6F600CDE3
      F600CCDEF700C2DCF900B4D1F700DAE1E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8E7E700B5B2AF000000
      0000F0EDEC00D4D0CF00C6C1BF00B8B1B100B8B1AF00B8B5B400B0ADAD00ABA7
      A8009D9B9800A09B990099949200787372005D5A5900968B8900E4DFDF00FFFF
      FE00EFEBE900F2EBE800FEFEFC00EBE9E900CFCFCE00F5F4F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F8F8F800F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F8F8F800FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4FAFF00D4EEFF009DDAFF0066C7FF004FC7FF0063E2
      FF0087EDFF00B2EBFF00B3E7FF00ACE4FF00A9E3FF00A9E3FF00ABE7FF00AFF3
      FF00A9E4FF00A9E4FF00A9E4FF009FE6FF008DEAFF0072EDFF0058EAFF004FDA
      FF0054C6FF006ED0FF00ADE4FF00E7F7FF00FCFEFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000082828200E9E9E900E9E9E900E9E9
      E900E8E8E800E8E8E800EAEAEA00E9E9E900E9E9E900EAEAEA00EAEAEA00E9E9
      E900E8E8E800EAE7E900E5E8EC00F0E8E500F1EBE500E8E7EA00E7E9E900E9E9
      E900E9E9E900E9E9E900EAE8E800E9E9E900E9EDEA00EBEAEA00E9E9E900EAEA
      E900E7E9E900E7E8E800E5E8E800E9E9E900EBE9E900EBE9E900E6E9E800E1E9
      E800E4EAEA00E3EBEB00E4EBEA00E6EAEB00EAE8E900E7E9E900E9E9E900E8EA
      E900E7E9E900ECEBEB00E8E8E800EAEBEB00F5F9F900F4F7F700F5F9FA00F4F8
      F900F5F7F700F1F5F600F5F4F700FBF6F500F5F6F700CADCF400AFCDED00AABE
      E500B7CBF200E0ECF600EFF0F700E2EFF700E2E9F400DFE8F800D9E4F300D8E6
      F600D3E4F600C8DEF900BDD2FB00DDD6DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00C2C0
      BF00CCCACA0000000000F6F0F000ECEBE700E4E0DC00D7D1CF00D9D3D100E5DD
      DD00F0ECE900E8E5E400DAD4D400D7CFCD00F4EDEB00F4F0F000F3EFEC00F2ED
      EC0000000000E1E1E000D7D5D300EBEBEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFDFF00E4F6FF00B7E6
      FF0092DAFF006ED0FF0050C7FF003EC1FF0039BEFF0039BEFF0041C9FF0059E4
      FF0039C1FF0039C1FF0039C1FF0041C5FF0057CDFF007CD9FF00A8E5FF00CDF0
      FF00F6FCFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086868600E2DFDA00DEDDDB00DEDE
      DE00DEDEDE00DDDEDE00E1E0E200E1E0E200DEDEDF00E0E0E000E0DFDF00DFDD
      DB00DBD9D800DADBDA00E1DCDE00DDE1DE00DDE0DC00E3DADF00E2DEDD00E0DE
      DD00DDDDDD00DEDFDF00E0DDDC00DCDBDA00E4DFDF00E5E2DE00E1DBE100E1DF
      E000DDDEDE00D9DFE000D9D9DD00DFDCE300DFDCDE00DEDEDE00D7DCDE00D6D8
      DD00D6E1E100D2E3E000D1E3DE00D4DFE000DCDBE200DCDDDD00DEDEDE00D4DD
      DB00D6DFDE00DEE1E100DCDDDD00DBDCDC00D7DBDB00DADCDD00DCDCDF00DEDE
      D900D9D8D800CFD3DA00DBD5E100E2DBDF00DCDDDD00D4DCE300D6DDE000DADC
      DC00E3E1E000DBDEE300DCDEDF00D8E0E000DFDFDA00DCD9E400CEDBDD00DADC
      DE00D8DCE300D6DBE300D6D8E500BCC2C2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0BFBF00C9C4C200F0F0F000FAFAFA00FFFFFE00F4F2EF00E8E4
      E300E9E5E400E9E3E100E9E5E400F6F3F200FFFCFB00F8F8F800F1F3F300DEDC
      DC00C1C1C1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAEAEA009F875F00847B69008481
      7C0081807E007A7E810079768900797688007A7C8200767A7E007F7D78008D83
      6E00897F6F00857A77007F797B00787C83007E7A820087767D00887F7700877F
      76007E7E7D00787D81007E7C790087807700747474007D7D7D007F7F7F007E7E
      7E007B7B7B007777770079797900797979007A7A7A007B7B7B007D7D7D007B7B
      7B0077777700797979007A7A7A007A7A7A00818181007B7B7B007D7D7D008080
      80007F7F7F007F7F7F007E7E7E00797979007A7A7A007A7A7A007A7A7A007A7A
      7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A
      7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A
      7A007A7A7A007B7B7B007C7C7C00DDDDDD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECECEC00C5C3C100B4B3B100B9B5
      B400B8B7B500B8B5B400BCBAB700BCB9B900CECBCB00F5F5F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000020010000200100000100010000000000802800000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F00000000000000000FFFFFFFFFFFFFF
      FFFF800000000000000000000000000000000000F00000000000000000FFFFFF
      FFFFFFFFFFFF000000000000000000000000000000000000F400000000000000
      00FFFFFFFFFFFFFFFFFF000000000000000000000000000000000000FE000000
      0000000000FFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
      FE8000000000000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000FF800000000000000083FFFFFF40C440DF9F00000000000000000000
      0000000000000000FF000000000000000083FFFFFF0000408001000000000000
      000000000000000000000000FFFF000000000000008000010000000000010000
      00000000000000000000000000000000FFFFFA00000000000084000100000000
      0001000000000000000000000000000000000000FFFF32400000000000800000
      000000000001000000000000000000000000000000000000FFFFFFE000000000
      00800000000000000001000000000000000000000000000000000000FFFFFFE0
      0000000038800000000000000001000000000000000000000000000000000000
      FFFFFFE0000000F0078000000000000000010000000000000000000000000000
      00000000FFFFFFE0000000000780000000000000000100000000000000000000
      0000000000000000FFFFFFFC000003FFFF800000000000000001000000000000
      000000000000000000000000FFFFFFFC000007FFFF8000000000000000010000
      00000000000000000000000000000000FFFFFFFC000003FFFF80000000000000
      0001000000000000000000000000000000000000FFFFFFFC000003FFFF800000
      000000000001000000000000000000000000000000000000FFFFFFFC000003FF
      FF800000000000000001000000000000000000000000000000000000FFFFFFFC
      000007FFFF800000000000000001000000000000000000000000000000000000
      001FFFE0000003FFFF8000000000000000010000000000000000000000000000
      00000000001FFFE000003FFFFF80000000000000000100000000000000000000
      0000000000000000001FFFE000003FFFFF800000000000000001000000000000
      0000000000000000000000000017FF8000003FFFFF8000000000000000010000
      0000000000000000000000000000000000020E000003FFFFFF80000000000000
      000100000000000000000000000000000000000000000E000003FFFFFF800000
      00000000000100000000000000000000000000000000000000000E000003FFFF
      FF80000000000000000100000000000000000000000000000000000000000000
      000BFFFFFF800000000000000001000000000000000000000000000000000000
      00000000001FFFFFFF8000000000000000010000000000000000000000000000
      0000000000000000001FFFFFFF80000000000000000100000000000000000000
      000000000000000000000000001FBC7FFF800000000000000001000000000000
      000000000000000000000000FE0000000004007FFF8000000000000000010000
      00000000000000000000000000000000FE0000000000007FFF80000000000000
      0001000000000000000000000000000000000000FE0000000008007FFF800000
      000000000001000000000000000000000000000000000000FEFE000000000001
      FF800000000000000001000000000000000000000000000000000000FFFF0000
      00000001FF800000000000000001000000000000000000000000000000000000
      FFFF000000000001FF8000000000000000010000000000000000000000000000
      00000000FFFF0000000000001780000000000000000100000000000000000000
      0000000000000000FFFFF0000000000007800000000000000001000000000000
      000000000000000000000000FFFFF00000000000078000000000000000010000
      00000000000000000000000000000000FFFFF000000000000380000000000000
      0001000000000000000000000000000000000000FFFFF0000000000000800000
      000000000001000000000000000000000000000000000000FFFFE00000000000
      00800000000000000001000000000000000000000000000000000000FFFFE000
      0000000000800000000000000001000000000000000000000000000000000000
      FFFFE00000000000008000000000000000010000000000000000000000000000
      00000000FFFFE000000000000080000000000000000100000000000000000000
      0000000000000000FFFFE0000000000000800000000000000001000000000000
      000000000000000000000000FFFFF00000000000008000000000000000010000
      00000000000000000000000000000000FFFFFE00000000000080000000000000
      0001000000000000000000000000000000000000FFFFFE000000000000800000
      000000000001000000000000000000000000000000000000FFFFFE0000000000
      00800000000000000001000000000000000000000000000000000000FFFFFE00
      0000000000800000000000000001000000000000000000000000000000000000
      FFFFFE0000000000008080000000000000010000000000000000000000000000
      00000000FFFFFE00000000000080000000000000000100000000000000000000
      0000000000000000FFFFFE000000000000800000000000000001000000000000
      000000000000000000000000FFFFFFE000000000008000000000000000010000
      00000000000000000000000000000000FFFFFFE0000000000080000000000000
      0001000000000000000000000000000000000000FFFFFFE00000000000004000
      000000000000000000000000000000000000000000000000FFFFFFF4D0000000
      0F000000000000000000000000000000000000000000000000000000FFFFFFFF
      F000000017002000000000000000000000000000000000000000000000000000
      FFFFFFFFF0000000270020000000000000000000000000000000000000000000
      00000000FFFFFFFFF00000006700100000000000000000000000000000000000
      0000000000000000FFFFFFFFF000000E3F000000000000000000000000000000
      000000000000000000000000FFFFFFFFF000006C3F0000000000000000000000
      00000000000000000000000000000000FFFFFFFFF0000062BF00000000000000
      0000000000000000000000000000000000000000FFFFFFFFFE00007FFF000000
      000000000000000000000000000000000000000000000000FFFFFFFFFE00007F
      FF006000000000000000000000000000000000000000000000000000FFFFFFFF
      FE00007FFF008000000000000000000000000000000000000000000000000000
      FFFFFFFFFE0003FFFF0200000000000000000000000000000000000000000000
      00000000FFFFFFFFFE0003FFFF00000000000000000000000000000000000000
      0000000000000000FFFFFFFFFE0003FFFF700000000000000000000000000000
      000000000000000000000000FFFFFFFFFE0003FFFF0000000000000000000000
      00000000000000000000000000000000FFE0000000000007FFFFFFF80000000F
      FFFF800000000840000001800000000000000000FFC0000000000003FFFFFF00
      00000000FFFF400000000000000041000000000000000000FFC0000000000003
      FFFFFC00000000003FFF020000004000000000000000000000000000FFC00000
      00000003FFFFF800000000001FFF000000006400000000000000000000000000
      FFC0000000000003FFFFF000000000000FFF0000000000000000000000000000
      00000000FFC0000000000003FFFFE0000000000007FF00000000000000000000
      0000000000000000FFC0000000000003FFFFE0000000000003FF000000000000
      000000000000000000000000FFE0000000000003FFFFC0000000000003FF0001
      20000000000000000000000000000000FFE0000000000007FFFFC00000000000
      03FF00000000080C400000000000000000000000FFE0000000000007FFFFC000
      0000000003FF000000000000000000000000000000000000FFE0000000000007
      FFFFC0000000000001FF000000000000000000000000000000000000F0000000
      000000001FFF00000000000000FF000000000000000000000000000000000000
      C00000000000000001FF00000000000000FF0000000000000000000000000000
      00000000800000000000000001FF00000000000000FF00000000000000000000
      0000000000000000000000000000000000FF00000000000000FF000000000000
      000000000000000000000000000000000000000000FF00000000000000FF0040
      00000000000000000000000000000000000000000000000000FF000000000000
      00FF000000000000000000000000000000000000000000000000000000FF0000
      0000000000FF0000000000000000800000000000000000000000000000000000
      00FF00000000000000FF00000000000000000000000000000000000000000000
      0000000000FF00000000000000FF000000000000000000000000000000000000
      000000000000000000FF00000000000000FF0040000000020000000000000000
      00000000000000000000000000FF00000000000000FF00000000000400000000
      0000000000000000000000000000000000FF00000000000000FF000000000000
      001280000000000000000000000000000000000000FF00000000000000FF0000
      01000000200000000000000000000000000000000000000000FF000000000000
      00FF000000000000000000000000000000000000000000000000000000FF0000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00FF000080F8360000FF00000000000000000000000000000000000080000000
      0000000000FF00008080400000FF000000000000000000000000000000000000
      800000000000000000FF00000100000000FF0001000000000000000000000000
      00000000C00000000000000000FF00000100000000FF00000000000000000000
      0000000000000000C00000000000000001FF00000100800000FF000000000000
      000000000000000000000000C00000000000000001FF00000100400000FF0010
      04000000000000000000000000000000C00000000000000001FF000001004000
      00FF000000000000100000000000000000000000C00000000000000001FF0000
      0000400000FF000000000000000000000000000000000000C000000000000000
      03FF00000080400000FF000008000000000000000000000000000000C0000000
      0000000003FF00008080400000FF000000000000000000000000000000000000
      C00000000000000003FF00000040400000FF0000000000000000000000000000
      00000000C00000000000000003FF00000020400000FF00000000000000000000
      0000000000000000C00000000000000003FF0000000FC00000FF000008000000
      000000000000000000000000E00000000000000003FF00000000000000FF0008
      00000000000000000000000000000000E00000000000000003FF000000000000
      00FF000008000000058000000000000000000000E00000000000000003FF0000
      0000000000FF000000000000000000000000000000000000E000000000000000
      07FF00000000000000FF000000000800000000000000000000000000E0000000
      0000000007FF00000000000000FF000000000000000000000000000000000000
      F00000000000000007FF00000000100000FF0000000000000000000000000000
      00000000F00000000000000007FF00000000000000FF00000000000000000000
      0000000000000000F00000000000000007FF00000000000000FF000000010000
      000002000000000000000000F0000000000000000FFF00000000000000FF0000
      00040000000000000000000000000000F8000000000000000FFF000000000000
      00FF000000000000000000000000000000000000F8000000000000001FFF0000
      0000000000FF006008000000000000000000000000000000FFE0000000000007
      FFFF00000000000000FF000000000000000000000000000000000000FFE00000
      00000007FFFF00000000000000FF000000000000000000000000000000000000
      FFE0000000000007FFFF00000000000000FF0040000000000002000000000000
      00000000FFE0000000000007FFFF00000000000000FF00000000000000010000
      0000000000000000FFE0000000000007FFFF00000000000000FF000000100000
      000000000000000000000000FFE0000000000007FFFF00000000000000FF0000
      00000004000000000000000000000000FFE0000000000007FFFF000000000000
      01FF000000000000000000000000000000000000FFE0000000000007FFFF8000
      0000000001FF000000000004000000000000000000000000FFF000000000000F
      FFFFC0000000000001FF000000000000000000000000000000000000FFF00000
      0000000FFFFFC0000000000003FF000000000000000000000000000000000000
      FFF000000000000FFFFFE0000000000003FF0000000000000000000000000000
      00000000FFF000000000000FFFFFE0000000000007FF00000000000000000000
      0000000000000000FFF000000000000FFFFFF000000000000FFF000000000000
      000000000000000000000000FFF000000000000FFFFFF000000000000FFF0000
      00000000000000000000000000000000FFF000000000000FFFFFF80000000000
      1FFF000000000000000000000000000000000000FFF000000000000FFFFFFC00
      000000003FFF000000000000000000000000000000000000FFF000000000000F
      FFFFFE00000000007FFF000000000000000000000000000000000000FFF00000
      0000000FFFFFFFE000000007FFFF008000000000000100000000000000000000
      FFF000000000000FFFFFFFFFFFFFFFFFFFFF0040000000000000000000000000
      00000000FFF000000000000FFFFFFFFFFFFFFFFFFFFF00400100000040000000
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF002000000000
      100000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0020
      00000000000000000000000000000000800000000000000000FFFFFFFFFFFFFF
      C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFF
      FFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
      00FFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFC0000FFFFFFF00000000
      0000000000FFFFFFFFFFFFFC003FFFFFFFFFFFFFFFFFFFFFFFFC000000FFFFFF
      000000000000000000FFFFFFFFFFFFF8005FFFFFFFFFFFFFFFFFFFFFFFF00000
      001FFFFF000000000000000000FFFFFFFFFFFFF0003FFFFFFFFFFFFFFFFFFFFF
      FF8000000007FFFF000000000000000000FFFFFFFFFFFFE0001FFF07FFFFFFFF
      FFFFFFFFFF0000000003FFFF000000000000000000FFFFFFFFFFFFC0000FFE01
      FFFFFFFFFFFFFFFFFC00000000007FFF000000000000000000FFFFFFFFFFFF80
      002FFE01FFFFFFFFFFFFFFFFFC00000000007FFF000000000000000000FFFFFF
      FFFFFE00000FFC00FFFFFFFFFFFFFFFFF800000000003FFF0000000000000000
      00FFFFFFFFFFFC00001FF8007FFFFFFFFFFFFFFFF000000000001FFF00000000
      0000000000FFFFFFFFFFF800001FF0003FFFFFFFFFFFFFFFE000000000000FFF
      000000000000000000FFFFFFFFFFF000003FF0000FFFFFFFFFFFFFFFC0000000
      000007FF000000000000000000FFFFFFFFFFE000007FF00007FFFFFFFFFFFFFF
      00000000000003FF000000000000000000FFFFFFFFFFC00001FFF00000000000
      00007FFE00000000000001FF000000000000000000FFFFFC3FFF800001FFF000
      0000000000001FFC000003FF800000FF000000000000000000FFFFF80FFF0000
      03FFF00000FFFFFFFFF00FFC00003FFFC000007F000000000000000000FFFFF0
      01FE000003FFF00000E003FFFFFF0FFC00007FFFC000007F0000000000000000
      00FFFFE200F8000007FFE000000000FFFFFF07F800007FFF8000003F00000000
      0000000000FFFFE00030000007FFC0000000003FFFFFC3F00001FFFF0000003F
      000000000000000000FFFFC0000000000FFF8600000000000001E1F00003FFFE
      0000001F000000000000000000FFFFC0000000000FFF8E0000000000000071E0
      0007FFFC0000001F000000000000000000FFFF80000000001FFF8C0000000000
      000071E0000FFFF80000000F000000000000000000FFFF80000000003FFF9C00
      00000000000039E0003FFFE00000000F000000000000000000FFFF0000000000
      3FFF9C0000000000000039C0007FFFC00000000F000000000000000000FFFF20
      000000007FFF9C0000000000000039C0007FFF80000000070000000000000000
      00FFFE00000000007FFF9C0000000000000039C000FFFF800000000700000000
      0000000000FFFC4000000000FFFF9C0000000000000039C000FFFF0000000007
      000000000000000000FFFC0000000000FFFF9C0000000000000039C000FFFE00
      00000007000000000000000000FFF80000000000FFFF9C000000000000003980
      01FFFC0000020007000000000000000000FFF80000000001FFFF9C0000000000
      0000398001FFF800000F0003000000000000000000FFF000000000003FFF9C00
      000000000000398001FFF000001F0003000000000000000000FFF00000000000
      0FFF9C00000000400000398003FFC000003F0003000000000000000000FFE000
      0000000007FF9C00000000C00000398003FF8000007F80030000000000000000
      00FFE4000000018001FF9C00000003C00000398003FF000000FF800300000000
      0000000000FFC00000000080007F9C0000000FC00000398003FF000001FF8003
      000000000000000000FFA80000000000003F9C0000000FC00000398003FE0000
      01FF8003000000000000000000FF900000100000005F9C0000000FC000003980
      03FC000007FF8003000000000000000000FF000000000020003F9C0000001FC0
      0000398003F800000FFF8003000000000000000000FF200000000000003F9C00
      00003F800000398003F000001FFF0003000000000000000000FE000004000000
      007F9C0000003F800000398001E000003FFF0003000000000000000000FF0000
      00000002007F9C0000007F0000003980018000007FFF00030000000000000000
      00FC00000000000100FF9C0000007E000000398001000000FFFF000700000000
      0000000000F800000000000001FF9C0000007C00000039C000000001FFFE0007
      000000000000000000F900000000000001FF9C0000007C00000039C000000003
      FFFE0007000000000000000000F000000000000003FF9C0000006000000039C0
      00000003FFFE0007000000000000000000F000010000000043FF9C0000000000
      000039C00000000FFFF80007000000000000000000F000000000000007FF9C00
      00000000000039C00000001FFFF80007000000000000000000F8000000000000
      07FF9C0000000000000039E00000003FFFF0000F000000000000000000F80000
      000000000FFF9C0000000000000039E00000007FFFE0000F0000000000000000
      00FE0004000000000FFF9C0000000000000039E0000000FFFFC0001F00000000
      0000000000FFC000000000000FFF9C0000000000000039F0000001FFFF80001F
      000000000000000000FFE000000000000FFF9C0000000000000039F0000003FF
      FF00003F000000000000000000FFF800000000000FFF9C0000000000000039F8
      000007FFFF00003F000000000000000000FFFE08000000000FFF9C0000000000
      000039F8000007FFFC00003F000000000000000000FFFFC8000000014FFF9C00
      00000000000039FC000007FFF000007F000000000000000000FFFFC800000000
      5FFF9C0000000000000039FC000003FF8000007F000000000000000000FFFFC8
      000000021FFF9C0000000000000039FE00000000000001FF0000000000000000
      00FFFFC200000000BFFF9C0000000000000039FF00000000000003FF00000000
      0000000000FFFFE200000000BFFF9C0000000000000031FFC0000000000007FF
      000000000000000000FFFFE0000000097FFF8C0000000000000071FFE0000000
      00000FFF000000000000000000FFFFF5000000127FFF8E00000000000000F1FF
      F000000000001FFF000000000000000000FFFFF000000002FFFFC7C000000000
      0003E3FFF800000000003FFF000000000000000000FFFFFA00000005FFFFC3C0
      000000000003C3FFF800000000003FFF000000000000000000FFFFF84000000B
      FFFFC1FFFFFFFFFFFFFF83FFFC00000000007FFF000000000000000000FFFFFC
      00000017FFFFE0FFFFFFFFFFFFFF07FFFE0000000000FFFF0000000000000000
      00FFFFFE0000000FFFFFF0000000000000000FFFFF8000000007FFFF00000000
      0000000000FFFFFF0000009FFFFFF8000000000000001FFFFFF00000001FFFFF
      000000000000000000FFFFFF9000003FFFFFFF80000000000001FFFFFFFC0000
      007FFFFF000000000000000000FFFFFFC40008FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF800007FFFFFF000000000000000000FFFFFFF80007FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFF003FFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object nfe_ite: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
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
      Size = 10
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
    Database = dmDADOS.ibDB
    Transaction = IBTra
    Left = 880
    Top = 80
  end
  object fin_rec_bai: TIBDataSet
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
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
    DefaultDatabase = dmDADOS.bSHEILD
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
    Database = dmDADOS.ibDB
    Transaction = IBTra
    Left = 872
    Top = 176
  end
  object nfe_tra: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
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
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    Left = 280
    Top = 240
  end
end
