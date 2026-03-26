inherited frmctr_rom: Tfrmctr_rom
  Left = 415
  Top = 93
  Caption = 'Controle de Romaneios'
  ClientHeight = 689
  ClientWidth = 1276
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object Label23: TLabel [0]
    Left = 240
    Top = 272
    Width = 56
    Height = 14
    Caption = 'ROM_CCLI'
  end
  inherited sbMSG: TStatusBar
    Top = 670
    Width = 1276
    Panels = <
      item
        Text = 'Consulta'
        Width = 80
      end
      item
        Text = '0'
        Width = 20
      end
      item
        Width = 50
      end>
  end
  inherited pnldir: TPanel
    Left = 1275
    Width = 1
    Height = 605
  end
  inherited pnldbg: TPanel
    Width = 1275
    Height = 605
    inherited pnlbot: TPanel
      Top = 337
      Width = 1275
      Height = 268
      Visible = True
      object pcITE: TdxPageControl
        Left = 0
        Top = 0
        Width = 1275
        Height = 268
        ActivePage = tsITE
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
        object tsITE: TdxTabSheet
          Caption = 'Itens'
          object dbgite: TdxDBGrid
            Left = 0
            Top = 0
            Width = 1275
            Height = 244
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
            Color = clHighlightText
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            OnDblClick = DBGConsultaDblClick
            OnKeyDown = DBGConsultaKeyDown
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            DataSource = dtsrom_ite
            Filter.Active = True
            Filter.Criteria = {00000000}
            GridLineColor = clSilver
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
            OnBackgroundDrawEvent = DBGConsultaBackgroundDrawEvent
            object dbgiteROM_ITEM: TdxDBGridMaskColumn
              Width = 40
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_ITEM'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
              DisableFilter = True
            end
            object dbgitePRO_CPRO: TdxDBGridMaskColumn
              Width = 110
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PRO_CPRO'
              DisableFilter = True
            end
            object dbgiteROM_DCOR: TdxDBGridMaskColumn
              Tag = 100
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DCOR'
            end
            object dbgiteROM_DPRO: TdxDBGridMaskColumn
              Tag = 200
              Width = 200
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DPRO'
              DisableFilter = True
            end
            object dbgiteROM_DUNI: TdxDBGridMaskColumn
              Width = 40
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DUNI'
            end
            object dbgiteROM_QTDE: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_QTDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_QTDE'
              SummaryFooterFormat = '#,0.00'
              DisableFilter = True
            end
            object dbgiteROM_UNIT: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 58
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_UNIT'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'ROM_UNIT'
              SummaryFooterFormat = '#,0.00'
              DisableFilter = True
            end
            object dbgiteROM_TOTA: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_TOTA'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_TOTA'
              SummaryFooterFormat = '#,0.00'
              DisableFilter = True
            end
            object dbgiteROM_CDET: TdxDBGridMaskColumn
              Width = 74
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_CDET'
              DisableFilter = True
            end
          end
        end
      end
    end
    inherited gbDET: TGroupBox
      Width = 1221
      Height = 337
      inherited DBGConsulta: TdxDBGrid
        Width = 1217
        Height = 316
        HeaderMinRowCount = 2
        KeyField = 'ID'
        ShowSummaryFooter = True
        Color = clHighlightText
        Filter.Active = True
        Filter.Criteria = {00000000}
        OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
        ShowRowFooter = True
        OnCustomDrawCell = dbgConsultaCustomDrawCell
        object dbgConsultaROM_CDBX: TdxDBGridMaskColumn
          Visible = False
          Width = 66
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_CDBX'
        end
        object dbgConsultaID: TdxDBGridMaskColumn
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ID'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object dbgConsultaROM_DERO: TdxDBGridMaskColumn
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_DERO'
        end
        object dbgConsultaROM_DROM: TdxDBGridDateColumn
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_DROM'
        end
        object dbgConsultaROM_CDNF: TdxDBGridMaskColumn
          Color = clMedGray
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 57
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_CDNF'
        end
        object dbgConsultaROM_DNFS: TdxDBGridDateColumn
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_DNFS'
        end
        object dbgConsultaCLI_FANT: TdxDBGridMaskColumn
          Width = 180
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLI_FANT'
        end
        object dbgConsultaUSU_DUSU: TdxDBGridMaskColumn
          Width = 85
          BandIndex = 0
          RowIndex = 0
          FieldName = 'USU_DUSU'
        end
        object dbgConsultaREP_FANT: TdxDBGridMaskColumn
          Width = 131
          BandIndex = 0
          RowIndex = 0
          FieldName = 'REP_FANT'
        end
        object dbgConsultaPAG_DPAG: TdxDBGridMaskColumn
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PAG_DPAG'
        end
        object dbgConsultaROM_TSDE: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 95
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_TSDE'
          SummaryFooterType = cstSum
          SummaryFooterField = 'ROM_TSDE'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaROM_DESC: TdxDBGridColumn
          HeaderAlignment = taRightJustify
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_DESC'
          DisableFilter = True
        end
        object dbgConsultaROM_TCDE: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 95
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_TCDE'
          SummaryFooterType = cstSum
          SummaryFooterField = 'ROM_TCDE'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaROM_TOTA: TdxDBGridColumn
          HeaderAlignment = taRightJustify
          Width = 95
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_TOTA'
          SummaryFooterType = cstSum
          SummaryFooterField = 'ROM_TOTA'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaROM_STPD: TdxDBGridMaskColumn
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_STPD'
        end
        object dbgConsultaROM_CTNR: TdxDBGridMaskColumn
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_CTNR'
        end
        object dbgConsultaROM_DTRA: TdxDBGridMaskColumn
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_DTRA'
        end
      end
    end
    inherited GBMenuEdicao: TGroupBox
      Height = 337
      inherited SBMenuEdicao: TSpeedBar
        Height = 316
      end
    end
  end
  inherited SBMenuPrincipal: TSpeedBar
    Width = 1276
    inherited siREL: TSpeedItem
      Left = 325
    end
    inherited siSAIR: TSpeedItem
      Left = 405
    end
    object siCRO: TSpeedItem
      BtnCaption = 'Cancelar'
      Cursor = crHandPoint
      Hint = 'Cancelar Romaneio'
      ImageIndex = 4
      Spacing = 1
      Left = 165
      Top = 5
      Visible = True
      OnClick = siCROClick
      SectionName = 'Menu Principal'
    end
    object siNFE: TSpeedItem
      BtnCaption = 'Nota Fiscal'
      Cursor = crHandPoint
      Hint = 'Emiss'#227'o de Nota Fiscal'
      ImageIndex = 5
      Spacing = 1
      Left = 245
      Top = 5
      Visible = True
      OnClick = siNFEClick
      SectionName = 'Menu Principal'
    end
  end
  inherited Consulta: TIBQuery
    Left = 640
    Top = 0
  end
  inherited Cadastro: TIBDataSet
    AfterOpen = CadastroAfterOpen
    OnCalcFields = cadastroCalcFields
    DeleteSQL.Strings = (
      'delete from ROM_CAB'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into ROM_CAB'
      '  (ID, ROM_ADSC, ROM_CBAI, ROM_CCLI, ROM_CDBX, '
      
        '   ROM_CDCX, ROM_CDNF, ROM_CDOC, ROM_CDPD, ROM_CDPR, ROM_CDRD, R' +
        'OM_CDRO, '
      
        '   ROM_CDSC, ROM_CEXP, ROM_COMI, ROM_CONC, ROM_CPAG, ROM_CREP, R' +
        'OM_CTNR, '
      
        '   ROM_CVEN, ROM_DBAI, ROM_DCAN, ROM_DDES, ROM_DEMB, ROM_DERO, R' +
        'OM_DEXP, '
      
        '   ROM_DNFS, ROM_DPRD, ROM_DROM, ROM_DTRA, ROM_HEXP, ROM_HROM, R' +
        'OM_OBSE, '
      
        '   ROM_PDSC, ROM_PPRN, ROM_QTPD, ROM_QTSP, ROM_QTVE, ROM_RLVE, R' +
        'OM_STA, '
      
        '   ROM_STCO, ROM_STFI, ROM_STPD, ROM_TBAI, ROM_TCDE, ROM_TDSC, R' +
        'OM_TPRN, '
      '   ROM_TSDE, ROM_UPRN, ROM_VFRT)'
      'values'
      '  (:ID, :ROM_ADSC, :ROM_CBAI, :ROM_CCLI, '
      
        '   :ROM_CDBX, :ROM_CDCX, :ROM_CDNF, :ROM_CDOC, :ROM_CDPD, :ROM_C' +
        'DPR, :ROM_CDRD, '
      
        '   :ROM_CDRO, :ROM_CDSC, :ROM_CEXP, :ROM_COMI, :ROM_CONC, :ROM_C' +
        'PAG, :ROM_CREP, '
      
        '   :ROM_CTNR, :ROM_CVEN, :ROM_DBAI, :ROM_DCAN, :ROM_DDES, :ROM_D' +
        'EMB, :ROM_DERO, '
      
        '   :ROM_DEXP, :ROM_DNFS, :ROM_DPRD, :ROM_DROM, :ROM_DTRA, :ROM_H' +
        'EXP, :ROM_HROM, '
      
        '   :ROM_OBSE, :ROM_PDSC, :ROM_PPRN, :ROM_QTPD, :ROM_QTSP, :ROM_Q' +
        'TVE, :ROM_RLVE, '
      
        '   :ROM_STA, :ROM_STCO, :ROM_STFI, :ROM_STPD, :ROM_TBAI, :ROM_TC' +
        'DE, :ROM_TDSC, '
      '   :ROM_TPRN, :ROM_TSDE, :ROM_UPRN, :ROM_VFRT)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ROM_CDOC,'
      '  ROM_CDPR,'
      '  ROM_CDPD,'
      '  ROM_CDRO,'
      '  ROM_CDRD,'
      '  ROM_CDNF,'
      '  ROM_CDBX,'
      '  ROM_CDCX,'
      '  ROM_DERO,'
      '  ROM_STPD,'
      '  ROM_STCO,'
      '  ROM_STFI,'
      '  ROM_DROM,'
      '  ROM_HROM,'
      '  ROM_DBAI,'
      '  ROM_DCAN,'
      '  ROM_DNFS,'
      '  ROM_DEXP,'
      '  ROM_HEXP,'
      '  ROM_CEXP,'
      '  ROM_CCLI,'
      '  ROM_CVEN,'
      '  ROM_CREP,'
      '  ROM_CPAG,'
      '  ROM_QTVE,'
      '  ROM_QTSP,'
      '  ROM_QTPD,'
      '  ROM_RLVE,'
      '  ROM_TSDE,'
      '  ROM_TDSC,'
      '  ROM_PDSC,'
      '  ROM_CDSC,'
      '  ROM_ADSC,'
      '  ROM_TCDE,'
      '  ROM_CONC,'
      '  ROM_OBSE,'
      '  ROM_STA,'
      '  ROM_COMI,'
      '  ROM_DPRD,'
      '  ROM_CTNR,'
      '  ROM_DEMB,'
      '  ROM_DDES,'
      '  ROM_CBAI,'
      '  ROM_TBAI,'
      '  ROM_UPRN,'
      '  ROM_PPRN,'
      '  ROM_TPRN,'
      '  ROM_VFRT,'
      '  ROM_DTRA'
      'from ROM_CAB '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'SELECT ROM_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_F' +
        'ANT,PAG_DPAG'
      'FROM   ROM_CAB,CAD_CLI,CAD_USU,CAD_REP,TAB_PAG'
      'WHERE  ROM_CAB.ROM_CCLI = CAD_CLI.ID'
      'AND    ROM_CAB.ROM_CVEN = CAD_USU.USU_CUSU'
      'AND    ROM_CAB.ROM_CREP = CAD_REP.ID'
      'AND    ROM_CAB.ROM_CPAG = TAB_PAG.ID'
      'ORDER BY ID DESC')
    ModifySQL.Strings = (
      'update ROM_CAB'
      'set'
      '  ID = :ID,'
      '  ROM_ADSC = :ROM_ADSC,'
      '  ROM_CBAI = :ROM_CBAI,'
      '  ROM_CCLI = :ROM_CCLI,'
      '  ROM_CDBX = :ROM_CDBX,'
      '  ROM_CDCX = :ROM_CDCX,'
      '  ROM_CDNF = :ROM_CDNF,'
      '  ROM_CDOC = :ROM_CDOC,'
      '  ROM_CDPD = :ROM_CDPD,'
      '  ROM_CDPR = :ROM_CDPR,'
      '  ROM_CDRD = :ROM_CDRD,'
      '  ROM_CDRO = :ROM_CDRO,'
      '  ROM_CDSC = :ROM_CDSC,'
      '  ROM_CEXP = :ROM_CEXP,'
      '  ROM_COMI = :ROM_COMI,'
      '  ROM_CONC = :ROM_CONC,'
      '  ROM_CPAG = :ROM_CPAG,'
      '  ROM_CREP = :ROM_CREP,'
      '  ROM_CTNR = :ROM_CTNR,'
      '  ROM_CVEN = :ROM_CVEN,'
      '  ROM_DBAI = :ROM_DBAI,'
      '  ROM_DCAN = :ROM_DCAN,'
      '  ROM_DDES = :ROM_DDES,'
      '  ROM_DEMB = :ROM_DEMB,'
      '  ROM_DERO = :ROM_DERO,'
      '  ROM_DEXP = :ROM_DEXP,'
      '  ROM_DNFS = :ROM_DNFS,'
      '  ROM_DPRD = :ROM_DPRD,'
      '  ROM_DROM = :ROM_DROM,'
      '  ROM_DTRA = :ROM_DTRA,'
      '  ROM_HEXP = :ROM_HEXP,'
      '  ROM_HROM = :ROM_HROM,'
      '  ROM_OBSE = :ROM_OBSE,'
      '  ROM_PDSC = :ROM_PDSC,'
      '  ROM_PPRN = :ROM_PPRN,'
      '  ROM_QTPD = :ROM_QTPD,'
      '  ROM_QTSP = :ROM_QTSP,'
      '  ROM_QTVE = :ROM_QTVE,'
      '  ROM_RLVE = :ROM_RLVE,'
      '  ROM_STA = :ROM_STA,'
      '  ROM_STCO = :ROM_STCO,'
      '  ROM_STFI = :ROM_STFI,'
      '  ROM_STPD = :ROM_STPD,'
      '  ROM_TBAI = :ROM_TBAI,'
      '  ROM_TCDE = :ROM_TCDE,'
      '  ROM_TDSC = :ROM_TDSC,'
      '  ROM_TPRN = :ROM_TPRN,'
      '  ROM_TSDE = :ROM_TSDE,'
      '  ROM_UPRN = :ROM_UPRN,'
      '  ROM_VFRT = :ROM_VFRT'
      'where'
      '  ID = :OLD_ID')
    Left = 608
    Top = 32
    object cadastroID: TIntegerField
      DisplayLabel = 'N'#250'mero Romaneio'
      FieldName = 'ID'
      Origin = '"PED_OCA_CAB"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroROM_CDOC: TIntegerField
      FieldName = 'ROM_CDOC'
      Origin = '"PED_OCA_CAB"."ROM_CDOC"'
    end
    object cadastroROM_CDPR: TIntegerField
      FieldName = 'ROM_CDPR'
      Origin = '"PED_OCA_CAB"."ROM_CDPR"'
    end
    object cadastroROM_CDPD: TIntegerField
      FieldName = 'ROM_CDPD'
      Origin = '"PED_OCA_CAB"."ROM_CDPD"'
    end
    object cadastroROM_CDRO: TIntegerField
      FieldName = 'ROM_CDRO'
      Origin = '"PED_OCA_CAB"."ROM_CDRO"'
    end
    object cadastroROM_CDNF: TIntegerField
      DisplayLabel = 'NF'
      FieldName = 'ROM_CDNF'
      Origin = '"PED_OCA_CAB"."ROM_CDNF"'
    end
    object cadastroROM_CDBX: TIntegerField
      FieldName = 'ROM_CDBX'
      Origin = '"PED_OCA_CAB"."ROM_CDBX"'
    end
    object cadastroROM_DERO: TIBStringField
      DisplayLabel = 'N'#250'mero Pedido'
      FieldName = 'ROM_DERO'
      Origin = '"PED_OCA_CAB"."ROM_DERO"'
    end
    object cadastroROM_STPD: TIBStringField
      DisplayLabel = 'Tipo de Pedido'
      FieldName = 'ROM_STPD'
      Origin = '"PED_OCA_CAB"."ROM_STPD"'
    end
    object cadastroROM_STCO: TIBStringField
      DisplayLabel = 'Tipo de Cobran'#231'a'
      FieldName = 'ROM_STCO'
      Origin = '"PED_OCA_CAB"."ROM_STCO"'
    end
    object cadastroROM_STFI: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'ROM_STFI'
      Origin = '"PED_OCA_CAB"."ROM_STFI"'
    end
    object cadastroROM_DROM: TDateField
      DisplayLabel = 'Dt Lancto'
      FieldName = 'ROM_DROM'
      Origin = '"PED_OCA_CAB"."ROM_DROM"'
    end
    object cadastroROM_HROM: TTimeField
      FieldName = 'ROM_HROM'
      Origin = '"PED_OCA_CAB"."ROM_HROM"'
    end
    object cadastroROM_DEXP: TDateField
      FieldName = 'ROM_DEXP'
      Origin = '"PED_OCA_CAB"."ROM_DEXP"'
    end
    object cadastroROM_HEXP: TTimeField
      FieldName = 'ROM_HEXP'
      Origin = '"PED_OCA_CAB"."ROM_HEXP"'
    end
    object cadastroROM_CEXP: TIntegerField
      FieldName = 'ROM_CEXP'
      Origin = '"PED_OCA_CAB"."ROM_CEXP"'
    end
    object cadastroROM_DBAI: TDateField
      FieldName = 'ROM_DBAI'
      Origin = '"PED_OCA_CAB"."ROM_DBAI"'
    end
    object cadastroROM_DCAN: TDateField
      FieldName = 'ROM_DCAN'
      Origin = '"PED_OCA_CAB"."ROM_DCAN"'
    end
    object cadastroROM_DNFS: TDateField
      DisplayLabel = 'Dt Emiss'#227'o'
      FieldName = 'ROM_DNFS'
      Origin = '"PED_OCA_CAB"."ROM_DNFS"'
    end
    object cadastroROM_CCLI: TIntegerField
      FieldName = 'ROM_CCLI'
      Origin = '"PED_OCA_CAB"."ROM_CCLI"'
    end
    object cadastroROM_PDSC: TIBBCDField
      FieldName = 'ROM_PDSC'
      Origin = '"PED_OCA_CAB"."ROM_PDSC"'
      Precision = 18
      Size = 2
    end
    object cadastroROM_CDSC: TIBBCDField
      FieldName = 'ROM_CDSC'
      Origin = '"PED_OCA_CAB"."ROM_CDSC"'
      Precision = 9
      Size = 2
    end
    object cadastroROM_OBSE: TMemoField
      FieldName = 'ROM_OBSE'
      Origin = '"PED_OCA_CAB"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroROM_STA: TIBStringField
      FieldName = 'ROM_STA'
      Origin = '"PED_OCA_CAB"."ROM_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroROM_CVEN: TIntegerField
      FieldName = 'ROM_CVEN'
      Origin = '"PED_OCA_CAB"."ROM_CVEN"'
    end
    object cadastroROM_CREP: TIntegerField
      FieldName = 'ROM_CREP'
      Origin = '"PED_OCA_CAB"."ROM_CREP"'
    end
    object cadastroROM_CPAG: TIntegerField
      FieldName = 'ROM_CPAG'
      Origin = '"PED_OCA_CAB"."ROM_CPAG"'
    end
    object cadastroROM_RLVE: TIntegerField
      DisplayLabel = 'Itens'
      FieldName = 'ROM_RLVE'
      Origin = '"PED_OCA_CAB"."ROM_RLVE"'
      DisplayFormat = '0'
    end
    object cadastroROM_QTVE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'ROM_QTVE'
      Origin = '"PED_OCA_CAB"."ROM_QTVE"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
    object cadastroROM_TSDE: TIBBCDField
      DisplayLabel = 'Sub Total'
      FieldName = 'ROM_TSDE'
      Origin = '"PED_OCA_CAB"."ROM_TSDE"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroROM_TDSC: TIBStringField
      FieldName = 'ROM_TDSC'
      Origin = '"PED_OCA_CAB"."ROM_TDSC"'
      FixedChar = True
      Size = 1
    end
    object cadastroROM_TCDE: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'ROM_TCDE'
      Origin = '"PED_OCA_CAB"."ROM_TCDE"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroROM_CONC: TSmallintField
      FieldName = 'ROM_CONC'
      Origin = '"PED_OCA_CAB"."ROM_CONC"'
    end
    object cadastroROM_DESC: TStringField
      DisplayLabel = 'Desc (%)'
      FieldKind = fkCalculated
      FieldName = 'ROM_DESC'
      Calculated = True
    end
    object cadastroCLI_FANT: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLI_FANT'
      Origin = '"CAD_CLI"."CLI_FANT"'
      Size = 40
    end
    object cadastroREP_FANT: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'REP_FANT'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 40
    end
    object cadastroPAG_DPAG: TIBStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'PAG_DPAG'
      Origin = '"TAB_PAG"."PAG_DPAG"'
      Size = 50
    end
    object cadastroROM_ADSC: TIBBCDField
      FieldName = 'ROM_ADSC'
      Origin = '"PED_VEN_CAB"."ROM_ADSC"'
      Precision = 9
      Size = 2
    end
    object cadastroROM_CDRD: TIntegerField
      FieldName = 'ROM_CDRD'
      Origin = '"ROM_CAB_004"."ROM_CDRD"'
    end
    object cadastroROM_CDCX: TIntegerField
      FieldName = 'ROM_CDCX'
      Origin = '"ROM_CAB_004"."ROM_CDCX"'
    end
    object cadastroROM_QTSP: TIBBCDField
      FieldName = 'ROM_QTSP'
      Origin = '"ROM_CAB_004"."ROM_QTSP"'
      Precision = 18
      Size = 4
    end
    object cadastroROM_QTPD: TIBBCDField
      FieldName = 'ROM_QTPD'
      Origin = '"ROM_CAB_004"."ROM_QTPD"'
      Precision = 18
      Size = 4
    end
    object cadastroROM_COMI: TIBBCDField
      FieldName = 'ROM_COMI'
      Origin = '"ROM_CAB"."ROM_COMI"'
      Precision = 9
      Size = 2
    end
    object cadastroUSU_DUSU: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'USU_DUSU'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object cadastroROM_DPRD: TDateField
      FieldName = 'ROM_DPRD'
      Origin = '"ROM_CAB"."ROM_DPRD"'
    end
    object cadastroROM_CTNR: TIBStringField
      DisplayLabel = 'Container'
      FieldName = 'ROM_CTNR'
      Origin = '"ROM_CAB"."ROM_CTNR"'
    end
    object cadastroROM_DEMB: TDateField
      FieldName = 'ROM_DEMB'
      Origin = '"ROM_CAB"."ROM_DEMB"'
    end
    object cadastroROM_DDES: TDateField
      FieldName = 'ROM_DDES'
      Origin = '"ROM_CAB"."ROM_DDES"'
    end
    object cadastroROM_TOTA: TCurrencyField
      DisplayLabel = 'Faturado'
      FieldKind = fkCalculated
      FieldName = 'ROM_TOTA'
      DisplayFormat = '#,0.00'
      Calculated = True
    end
    object cadastroROM_CBAI: TIntegerField
      FieldName = 'ROM_CBAI'
      Origin = '"ROM_CAB"."ROM_CBAI"'
    end
    object cadastroROM_TBAI: TDateTimeField
      FieldName = 'ROM_TBAI'
      Origin = '"ROM_CAB"."ROM_TBAI"'
    end
    object cadastroROM_UPRN: TIntegerField
      FieldName = 'ROM_UPRN'
      Origin = '"ROM_CAB"."ROM_UPRN"'
    end
    object cadastroROM_PPRN: TSmallintField
      FieldName = 'ROM_PPRN'
      Origin = '"ROM_CAB"."ROM_PPRN"'
    end
    object cadastroROM_TPRN: TDateTimeField
      FieldName = 'ROM_TPRN'
      Origin = '"ROM_CAB"."ROM_TPRN"'
    end
    object cadastroROM_VFRT: TIBBCDField
      FieldName = 'ROM_VFRT'
      Origin = '"ROM_CAB"."ROM_VFRT"'
      Precision = 18
      Size = 2
    end
    object cadastroROM_DTRA: TIBStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'ROM_DTRA'
      Origin = '"ROM_CAB"."ROM_DTRA"'
      Size = 40
    end
  end
  inherited DTSCadastro: TDataSource
    OnDataChange = dtscadastroDataChange
    Left = 640
    Top = 32
  end
  inherited IBTra: TIBTransaction
    Left = 728
    Top = 40
  end
  inherited ibSP: TIBStoredProc
    Left = 696
    Top = 40
  end
  inherited ILMenuPrincipal: TImageList
    Left = 104
    Top = 312
    Bitmap = {
      494C01010600090004003E002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000F80000006000000001002000000000000074
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F0FFF6F6F1FFFCFCF2FFFFFF
      F3FFF7F8F1FFF2F3EFFFF3F4EFFFF2F3EFFFF7F8F1FFFFFFF3FFFCFCF2FFF6F6
      F1FFF1F1F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE0000000000FAF9F900E9E4E000FCFBFA0000000000FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF1F1F0FFFBFAF2FFFAFBF2FFDFE1EEFFA7ABE2FF7D7E
      DBFF5C5FDCFF4B50DBFF4D51DBFF4B50DBFF5C5FDCFF7B7DDCFFA7ABE3FFE2E3
      F0FFFCFCF4FFFBFBF3FFF1F1F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFDFE00E2DACF00B4A08800D5CCC4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFEFEFF0FFF7F6F2FFFFFFF9FFCACCEAFF6B6EDBFF2429D9FF0205DCFF0000
      DEFF0000E0FF0000E1FF0000E1FF0000E0FF0000DFFF0000DDFF0204DCFF2327
      D8FF6F72DFFFCDCFEDFFFFFFF5FFF6F6F1FFEFEFF0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFF00EDEB
      EA00D4C9BB00E0CCA600BFA98200A08D7800DDD5CD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFFBFBF2FFECEEF3FF7A7FDFFF0C12D9FF0000E1FF0000E6FF0000E4FF0000
      E3FF0000E2FF0000E2FF0000E2FF0000E2FF0000E1FF0000E2FF0000E4FF0000
      E4FF0000E0FF0F12DAFF747ADFFFEEF0F6FFFDFCF3FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F6F400D9C9
      B000DCC69A00EBD5A700DEC9A000B49D7B00A9958000EEEAE600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFCFC
      F2FFCFD1EAFF3C41D9FF0000E1FF0000E9FF0000E5FF0000E4FF0000E4FF0000
      E5FF0000E5FF0000E7FF0000E7FF0000E6FF0000E5FF0000E4FF0000E4FF0000
      E4FF0000E4FF0000E7FF0000E0FF3B40DCFFCFD1ECFFFDFDF2FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAF7F100E9D7
      B200E5CC9C00E6D0A400E7D2A500EBD6AB00B09B8000BDAE9E00FBFAF9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0EFFFFEFEF3FFC3C6
      E8FF252ADBFF0000E8FF0000E9FF0000E6FF0000E7FF0000E8FF0000EBFF0000
      EBFF0000E9FF0004EAFF0004EAFF0003EAFF0000E9FF0000EBFF0000E8FF0000
      E7FF0000E6FF0000E5FF0000E8FF0000E7FF282EE0FFC9CCEDFFFCFBF1FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFD
      F800EEE0C200E6D1A700E7D6B100EBD8B200DCC89F00B19D8300EDEAE7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFEFF0F0FFFCFCF4FFDADAF1FF252D
      DDFF0000EBFF0000EAFF0001E9FF0001EAFF0003EDFF0002EDFF0312E8FF3743
      E7FF7379E8FF8792E6FF8893E8FF8892E6FF6F75E6FF2833E8FF0009EEFF0002
      EAFF0001E9FF0001E9FF0000E8FF0000E9FF0000EAFF2A30E3FFD6D8EFFFFBFA
      F1FFEFEFF0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFF8F500FFF3
      F200FFF4F200E9DDC900E5D5B400E9D7B100E3CEA300B29D8100DDD6D1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF5F4F0FFF1F2F2FF4552E2FF0000
      ECFF0003ECFF0004EBFF0003EBFF0008F0FF000EECFF4A57E8FFBABDECFFECED
      EFFFFEFEF3FFFFFEF1FFFEFDF1FFFFFEF1FFFFFFF3FFCAC9EFFF0C1EEAFF0004
      EEFF0003EBFF0004EBFF0003EBFF0002EAFF0001EAFF0000EAFF454BE4FFF8F8
      F6FFF4F4F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFDFF00CBE1EB0095CDDB0088C7
      D50092BEC400E5D1AA00E8D1A200E5D1A900EAD9B600BFAB8E00A7948200E0D9
      D400FBF9F8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFFEFDF2FF8E93E9FF0008EAFF0006
      EFFF0006EDFF0005EEFF000DF2FF061BEBFF8D93ECFFF9F9F5FFFFFFF2FFF4F4
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F4F0FFFCFAF2FF838DEFFF0318F0FF0006
      F0FF0007EFFF0007EEFF0006EEFF0006EDFF0005EBFF0003EEFF0000E9FF8C92
      ECFFFFFFF4FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0EAE90074A092001B7C6800388F830066AA
      B000739B9600DDC59F00F0D6A900E9D3A600EAD9B600E7D3AB00C0A88200A994
      7800B6A59500CEC3B900DFD8D200FAFAF9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F6F0FFDEDEF0FF2438E8FF0006F2FF0007
      EFFF0006F0FF0010F3FF0724EEFF9EA2F0FFFFFFF7FFF4F4F0FFEFEFF0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF4F4EFFFFBF9F2FF8894F2FF0529F3FF000FF4FF0007
      F1FF0009F1FF0009F0FF0008F0FF0007EFFF0007EFFF0006EDFF0001F0FF1D2B
      EAFFDDDFF4FFF7F7F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CDD9C900327B4000478D6300A1C0A10098A87E005F7C
      3B005174320072805C00B6A99000E8D1B300EBD9B200E9D2A300EBD8B200DECE
      AE00C9B79900C0AA8700A8927700D2C8BF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFEF2FF8D95EDFF0013EFFF0008F2FF0007
      F1FF000DF3FF0022F3FF808DEEFFFFFFF4FFF3F3F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF4F4F0FFFFFEF7FF8998F3FF0230F5FF0013F6FF000AF4FF000C
      F3FF000CF3FF000AF3FF0007F2FF0007F1FF0008F1FF0008F0FF0007F1FF0004
      EFFF8D93F1FFFFFEF4FFF0F0EFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F3EB003D84430043ABA400CFE4EE0000000000EDD9B900EBD1
      A500D4CB9A0073995700457339007F815A00D7BB9800EBD6AB00EAD9B600E9D4
      AA00E8D4AB00EBDAB500D2BF9B00A8958000F0ECE80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F1EFFF3F55ECFF000FF4FF000AF3FF0009
      F3FF001CF7FF3759F0FFEDEBF2FFF6F6EFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF4F3EFFFFFFBF4FF8A9BF7FF0038F6FF0019F9FF000CF6FF000FF6FF000E
      F5FF000CF5FF0011F6FF0019F6FF0018F6FF000EF3FF0009F2FF0009F1FF0004
      F2FF3F51F0FFEEEEF2FFF4F4F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000098BA9000679E800078D4E400EBDDDE0000000000E9D5AF00E7D0
      A200EED4AB00FEDDB400C2C48E00568949005B744600C8B39D00E9D5AC00E8D2
      A500E6D0A500E6D1A500E7D7B600B49D7B00C8BBAF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D8D7EFFF0E34EFFF0012F6FF000BF5FF0011
      F7FF0130F6FF9BA8F2FFFFFEF1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F4
      EFFFFAF5F2FF899BF5FF0045F8FF0023FAFF0010F8FF0013F8FF0013F8FF000D
      F7FF0018F9FF0032F8FF4968F6FF415DF4FF0025F7FF000FF5FF000BF4FF000C
      F5FF0F29F2FFCCCEF4FFF8F8F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006B9B62008DB3A80077D3E400ECDBD90000000000E9DABE00E7D1
      A400EAD4A800E9D6AF00FFE5C600EFDFB700759E61004A6E3B00C0A98C00E9D2
      A700E8D3A800E6D0A400ECDAB300D0BB9500B5A49300FAF9F900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADB6EEFF0028F5FF0012F8FF000CF7FF001D
      F9FF1A52F5FFDBDAF4FFF7F7F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F3EFFFFBF6
      F2FF889EF7FF0352FAFF0030FAFF001BF9FF001EF9FF001DF9FF0018F9FF0025
      FAFF0035F8FF6E84F4FFFAF7F4FFDEDEF4FF1947F5FF0018F9FF000BF6FF000C
      F6FF011EF5FF9DA9F2FFFDFBF0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006B99630092B3A60083DAE600CDC5C800E0D9D200E6D5B600E5D1
      AA00D1BF9C00CBC0AA00C7B79500C9B18A00EBD0A4008AAB6B00486B3500C2AA
      8A00EAD4A900E7D1A500E9D4AB00DBCBAC00B29E8400EBE6E300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008F9FECFF0027F7FF0012F8FF0012F8FF002E
      FAFF4676F7FFEEECF2FFF4F3F0FFF0F0F0FFF0F0F0FFF4F4F0FFFFFAF6FF899F
      F8FF025EFBFF0040FCFF002BFAFF002EFAFF002DFAFF0027F9FF0036FBFF0043
      FAFF6F86F6FFF4F1F2FFFBF9EFFFF3F1F1FF4C6FF7FF0020F9FF000FF7FF000E
      F7FF001BF7FF8390F1FFFFFDF0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000070A16B009AAE9E0099E7F700A7B9B000DCBE9700E2CB9A00D3C3
      A300D1CCC000D4D3D000D1D1D000BDBAB100AC9E8900D6BC960082A76B00536F
      3C00CFB59300EBD5A700E9D7B200E7D5B200BAA58700E1DBD700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008795ECFF002FF8FF001AF8FF001DF9FF003B
      FAFF6A89F8FFFAF7F3FFF1F1EFFFF0F0F0FFF4F3EFFFFFF8F4FF8AA2FAFF0066
      FBFF0050FEFF003BFCFF003FFCFF003FFCFF003AFCFF004AFDFF004FFBFF6E87
      F8FFF7F3F3FFF6F6EFFFF1F0F0FFFBF8F2FF6883F8FF002DFAFF0016F8FF0013
      F8FF001EF8FF7786F6FFFDFCF2FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009CC49E0086957B009AC6D000A4C6AC00FAD59E00DECDA700F0EF
      ED0000000000000000000000000000000000EAEBED00ACA39500D0BF9F006797
      5900737E5600E3CBB000ECDAB200E7D2A600BAA58900E2DDD900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008897EEFF003AFAFF0026FAFF002CFBFF0049
      FBFF6E8EF8FFFBF7F3FFF0F0EFFFF4F4EFFFFAF3F2FF89A3F8FF0070FCFF005F
      FEFF0048FDFF004DFDFF004DFDFF0049FDFF0059FEFF0060FCFF6E8AF9FFFCF7
      F5FFF6F6F0FFEFF0F0FFF0F0EFFFFEFBF2FF718CF9FF003BFBFF0022FAFF001D
      F9FF0025F9FF6B81F8FFFBF9F2FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFF00CCD1C100436B3500A5978200DACFAA00E8CFA000E7DBC1000000
      0000F5F4F400C4B59900E2CA9800F5ECDA00FFFDF700DBD6CC00D4C1AA00D5CF
      9E0045773500A1967500ECD3A900E9D4A600B09A7B00BCADA000F9F9F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000889DEFFF0048FBFF0036FCFF003CFCFF0056
      FDFF5E8DFBFFF5F1F2FFF6F5EEFFFBF3F2FF88A5F9FF037BFDFF006AFFFF0055
      FFFF005AFFFF005AFFFF0056FFFF0068FFFF006DFDFF6E8FFAFFF5F0F3FFF6F5
      EEFFEFEFF0FFF0F0F0FFF2F2F0FFF7F3F1FF5E85FBFF0046FDFF0032FBFF002A
      FAFF0033FBFF7E90F6FFFFFCF0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F3F200D1C7BF00CCC0B500ECE9
      E700F3ECE200E2C8A6005784400099906800ECD5B200E7D2A800EDE3CE000000
      0000EBEBE900A5987D00C3B29100C0B6A100BEB5A100BEB19600BCB29C00F6D7
      B2009CB0700051713A00D1B79400EFD9AC00D8C29900A28B7100CEC4B9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099AEF2FF0058FDFF0049FDFF0048FCFF0062
      FFFF3081FCFFF0EAF4FFFFFCF6FF89A6FAFF0284FDFF0077FFFF0061FFFF0065
      FFFF0066FFFF0063FFFF0077FFFF0079FEFF6F92FAFFF3EEF3FFF7F5EFFFEFF0
      F0FFF0F0F0FFF0F0F0FFF5F4F0FFEBE7F3FF3378FCFF0054FEFF0040FCFF003C
      FCFF0047FCFF89A0F5FFFFFBEFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFF00DED7D200CDBDA500D4BF9700B69F7E00A592
      8100D1BFA200F8DCAC00B2BA8200476F3900D5B99D00E9D2A200ECE0C6000000
      0000FBFBFB00E5E5E400E2E3E300E0E0E000E2E1DE00E4E3E200ABA9A400D8C6
      AA00F4E1BD00568443008D8B6400EAD0A600EFDBB100D2BD9B00A08A7300DCD4
      CD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C1C6F4FF0365FCFF005BFEFF0054FEFF0068
      FFFF087DFCFFA3AEFCFF8BA9FCFF008DFDFF0080FFFF006BFFFF0071FFFF0072
      FFFF006FFFFF0083FFFF0085FEFF6E93FCFFF7F0F3FFF6F5EFFFEFF0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFFBF9EEFFC9CCF7FF0A6CFEFF005EFEFF004CFDFF004C
      FDFF0655FDFFB2BEF7FFFBF9EFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFEAE100DAC59E00D7C29700ECD7AC00E7D4AE00D5C3
      A300D7C5A400EDD8B100EBD7AD005F8D4F0082835D00E8CBA400EDDEBD000000
      0000FBFBFD00D1CDC400F0E5CC00FAEED700F8F5EE0000000000C8C6C100CEBE
      9B00FBDEBC009EB482005E784700D3BE9D00EBD7B000EEDEBA00C4AF8A00AD9A
      8600F7F5F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8E1F2FF2074FAFF006DFFFF0061FFFF0067
      FFFF0086FFFF038AFEFF0093FEFF008CFFFF0075FFFF007CFFFF007DFFFF007B
      FFFF0090FFFF0096FFFF6E9AFCFFFCF3F5FFF6F6EFFFEFF0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF1F1EFFFFFF9F3FF6697FAFF0075FFFF005FFFFF0057FEFF005C
      FFFF1F69FDFFDFDDF8FFF7F6EFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFEFE00EEE2C700ECD7AA00EAD8B100E6D2AB00ECD6A900EFD9
      AB00E8D3A700E9D9B200FCE2C000BEC4920042723600B5A69000EDD9B600F9F4
      E700FEFFFF00C1BEB5009E8C6700C0AA7C00ECE6DB0000000000C4C1B900D2C1
      9F00EBD4A800E9D3A60046793A00B4A89000EDDCBC00E7D7B300E2D0A800B7A3
      8800E7E2DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAF4F1FF5F92FAFF007CFEFF006EFFFF0073
      FFFF0078FFFF008AFFFF0088FFFF0080FFFF0085FFFF0089FFFF0087FFFF009C
      FFFF00AFFFFF6EA9FDFFF5EDF3FFF6F5EEFFEFEFF0FFF0F0F0FFF0F0F0FFF0F0
      F0FFEFEFEFFFFFFAF0FFC7CEFBFF0A84FFFF007FFFFF0068FFFF0064FFFF0068
      FEFF6190FDFFF8F5F4FFF2F1EFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFEFE00DDD4C000B8A68100E1CCA000E5CFA200C0AD8600C6B4
      8C00DECA9E00B9A78000D2BF9400FCDDB5008BA7670052734300C9AE8C00EEDC
      B700FCFAF500FDFFFF00D1D0CD00D4D0C900FEFFFF00FEFFFF00C4BAA400DBC6
      9A00E5D3AD00F2DAB2006991510090906C00E8D6B500E9DBBD00E2CFA700C2B0
      9500ECE8E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDF9F0FFB3BDF8FF0583FEFF0087FFFF007C
      FFFF0084FFFF0086FFFF008AFFFF0090FFFF0093FFFF0093FFFF00A8FFFF00BA
      FFFF6FB3FDFFF3ECF3FFF7F5EFFFEFF0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEF
      F0FFFDF9F1FFEAE7FBFF3B99FEFF0098FFFF007BFFFF0073FFFF0079FFFF0277
      FEFFB5C2FBFFFCF9F1FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F7F6F400C9C5BD00CAB68B00E7D5B000E7E5E000BBB2
      9F00DECFAE00ECEAE600B1A38500EAD2A600F4DAB0006893510066784D00D2B4
      9000EEDDB900FBF6EC000000000000000000F8F6F200DFDBCF00D8C49B00E8D2
      A300E4D1A900EFD9B40099AB71006B7C4A00ECCFA800E7D3AB00E1CFAA00E1D8
      CB00FCFBFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F2EFFFF5EDF4FF4D95FDFF009DFFFF008A
      FFFF0090FFFF0095FFFF0099FFFF009DFFFF009FFFFF00ADFFFF03C2FFFF6FB7
      FEFFF7EDF3FFF6F4EFFFEFF0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF2F1EFFFFFF7
      EEFFE8E6FAFF4CADFFFF00ACFFFF0090FFFF0084FFFF0080FFFF0089FFFF4791
      FEFFF6F1F6FFF3F2EFFFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE0000000000F1F2F400BFB9AA00F0E9DA0000000000D4CF
      C400CEBE9D0000000000AFA58F00DEC79600EDD2A500EAD7A900578944006977
      4B00D2B59200E9D2A400E9D8B400E7D8B800DFCCA700DDCAA400E8D4AD00E7D2
      A600E7D1A300EDD6AE00A8B27D0064793E00D2BF9D00CDCABC00F6F5F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFFDF9F1FFC5CBFCFF0C97FEFF00AF
      FFFF009AFFFF00A1FFFF00A6FFFF00A9FFFF00AAFFFF00C8FFFF35B6FFFFFFED
      FAFFFFF9EEFFF5F2EFFFF5F2EFFFF5F2EFFFF7F3EFFFFEF5F0FFFBF2F5FFB7CF
      F9FF32B1FFFF00BBFFFF00A8FFFF0095FFFF0091FFFF009BFFFF0C92FFFFCDD8
      FFFFFDFAF2FFEFEFF0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00F5F6F600B8B9BC00FEFFFF00F7F7F700DEDB
      D400B7A68300FFFCF300D0CCC400C5BAA300C2B9A400CDB69400E6D5AA005C8F
      50005C734200C2AA8A00EBD1A500EDD6A700EBD4A500ECD1A300ECD4AD00E4CE
      A300D9C5A200F8E7CF00AFBA93005089620079BFCA00E1E6E900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF1F0EFFFFFF8F4FF8CB3FFFF00B0
      FFFF00BCFFFF00ABFFFF00B1FFFF00B5FFFF00B6FFFF01CBFFFF28D1FFFF97C8
      FEFFD5E1F8FFE2E4F3FFE3E5F4FFE3E4F3FFD7E2F7FFA7D4FCFF5DC4FFFF08C0
      FFFF00C8FFFF00B3FFFF00A7FFFF00A1FFFF00A9FFFF00A4FFFF8EBDFDFFFFFB
      F4FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00F8F7F700DBDBDB00ECEBE800DAD4C600E3E0
      DA00B2A38100FCF5E400F7F7F800EAE8E500F1EEE800BDB09300F2DAB900ECD9
      B200749A57004A71380092876800AE9E88009EA58D00C3C7A100D7D3B000D6C5
      AC00EBDBD600FEF6F800639463002A9C9C00A7E4F300FFFCFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF4F3EFFFFAF1F5FF6BAC
      FDFF00C0FFFF00CBFFFF00BAFFFF00C0FFFF00C4FFFF00C5FFFF0EDCFFFF21D8
      FFFF48C7FFFF57CFFFFF53D5FFFF4CD0FFFF38CAFFFF0DD4FFFF00D4FFFF00CE
      FFFF00BDFFFF00B7FFFF00B2FFFF00BCFFFF00B4FFFF71B9FEFFF5F0F2FFF3F1
      EEFFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00FDFDFD0000000000D4CDBE00D3C19B00EFED
      EA00B7A98A00F5E9D300E7E7E700A79A7F00CEBE9C00CCBC9B00DBC69B00EED5
      A900F4D9AF00A9B9820044743600455B2F008C876B009AC4CC0086D3E8008CC4
      DA0095C2D7005C8976002E7A4E009BDFE900FFFDFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFEFF0F0FFF6F4EFFFF1EA
      F1FF76B7FDFF0BCBFFFF07DCFFFF00CEFFFF00CEFFFF00D2FFFF00D2FFFF01DB
      FFFF0CE0FFFF0BE8FFFF08EAFFFF06E7FFFF05DEFFFF00D8FFFF00CFFFFF00CA
      FFFF00C6FFFF00C5FFFF00D0FFFF00C6FFFF75C2FEFFF4EFF2FFF6F3EFFFEFF0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD0000000000F3F3F300CDC3B000E3CEA600F4F2
      EF00C8C3B800E7DECD00FBFBFC00D0CCC400D6D4CF00CBC9C400B2A38300EAD4
      A500E5D0A600F9DCBB00E2D2A10088A36500578050005F835500608E66004191
      70001584580052936700D7E1D900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFEFF0F0FFF6F3
      EFFFFDF4F5FF9ECEFFFF37CBFFFF28E6FFFF1AE6FFFF00E0FFFF00E0FFFF00E1
      FFFF00E0FFFF00E0FFFF00DFFFFF00E0FFFF00DEFFFF00DCFFFF00DBFFFF00DA
      FFFF00DEFFFF00DEFFFF1CCCFFFF9CD5FFFFFEF6F7FFF5F2EEFFEFF0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC00F2F1F100EEECE900FCF9F300F9F9
      F800F1F3F600E5DBC900E7D8B900F7EACF00D6CAB700DED8D400EAE9E700F7EF
      DF00F1E9DC00F0EADC00F1D8B000DDBFA500DCE1D600C1DBC200BBD1B700BECE
      B100C9D5B900FAF9F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF3F2EFFFFFF7F4FFCFE1FAFF7BCFFEFF5CDEFFFF55ECFFFF44F3FFFF25F4
      FFFF19F0FFFF0EF0FFFF0CF0FFFF0BEFFFFF12EEFFFF14F0FFFF17F0FFFF18EA
      FFFF1EDFFFFF63D7FFFFD1E5F9FFFFF8F4FFF3F1F0FFEFF0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0E6D100E8D7B400EAD4A600C2AC8900D8D0CA00000000000000
      00000000000000000000F3EBDB00E5DDCF00FFFDFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0EFFFF9F4EFFFF4F0F1FFC6E2F7FFA1DDFEFF8EE3FFFF83E1
      FFFF85F3FFFF83FAFFFF78FAFFFF6AFAFFFF63F2FFFF5DE3FFFF61E5FFFF8DE1
      FEFFC9E7F8FFF8F1F3FFFAF3F0FFF0EFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFC000000000000000000F8F2E800F0EADE00FAF8F900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF2F1F0FFF8F2EFFFF9F3F1FFE7EBF1FFD8E9
      F5FFCAEBF7FFC5E9F7FFC5EAF7FFC2EAF7FFC9ECF7FFDAEBF5FFECECF1FFFDF3
      F1FFFAF2EFFFF2F0EFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E8E8E800E4E4E400E1E1E100DEDEDE00D5D5D500CDCDCD00C6C6C600C4C4
      C400DDDDDD00F2F2F200F2F2F200000000000000000000000000F1F1F1000000
      0000E8E8E800D2D2D200CBCACB00C9C7C900C5C4C500C5C5C500DDDDDD00EEEE
      EE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00F7F7F700FFFFFF00FFFFFF00FCFFFC00EFF3EF00F0EF
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100EBEBEB00E5E5E500E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E5E5E500EAEAEA00F2F2F200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000335912003554
      1800355519003555190035551900355519003555190035551900355519003555
      1900355519003555190035551900355519003555190035551900355519003555
      1900355519003555190035551900355519003555190035551900355519003555
      19003354190037571B00455E20005E682C006A6E350000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100DCDCDC00BCBCBC00B5B5B500B6B6B600B6B6B600B7B7B700B8B8B800B7B7
      B700B8B8B800D2D2D200EFEFEF00F6F6F600F6F7F700F9F9F900FBFCFC00D6D6
      D600ACABAC00B7B0B900BAB3BB00B0ADB100B1ABB100B0A8B100A09DA000B3B4
      B300E9E9E900F2F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF00F2F2F200FAFAFA00FAFAFA009D9D9C0071717100D9CADA00FFE9FF00EFF3
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F1F1F100EDEDED00D5D5D500CFCFCF00D0D0D000D2D2
      D200D3D3D300D4D4D400D6D6D600D7D7D700D8D8D800D9D9D900D9D9D900D9D9
      D900D9D9D900D8D8D800D7D7D700D6D6D600D5D5D500D3D3D300D2D2D200CFCF
      CF00CFCFCF00D8D8D800EEEEEE00F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000766B3000005400000051
      0000005300000053000000530000005300000053000000530000005300000053
      0000005300000053000000530000005300000053000000530000005300000053
      0000005300000053000000530000005300000053000000530000005300000053
      0000005300000053000000520000004F00000056000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100F1F1F100E2E2E200C8C8C800BCBBBC00BFBEBF00C1C1C100C2C3C300C3C4
      C400C1C2C200BBBCBD00C5C6C700DBDDDE00D9DADB00CACBCC00AEAEAD00AFAB
      AF00C3BEC300729B6E002F8D250023931A002A8F21005E925900B7B9B500CCC6
      CD00E8E8E800F2F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00F2F2
      F200FCFCFC00F2F2F200C4C4C400323131000000000012031200AA9AAA00FAFF
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00E3E3E300E4E4E400E3E3E300E6E6
      E600E8E8E800EAEAEA00ECECEC00EEEEEE0000000000F1F1F100F2F2F200F2F2
      F200F1F1F10000000000EEEEEE00ECECEC00EAEAEA00E8E8E800E6E6E600E3E3
      E300E3E3E300E2E2E200EDEDED00F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B633800025D0700469C
      4F0053A455004BA156004CA155004CA155004CA155004CA155004CA155004CA1
      55004CA155004CA155004CA155004CA155004CA155004CA155004CA155004CA1
      55004CA155004CA155004CA155004CA155004CA155004CA155004CA155004CA1
      55004CA155004CA1550053A55C00308A3A000056000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F2F500FBF6FA00FDF5
      FD00FFF5FF00FFF6FF00F2E5F100C7BFC700A9A6A9009F989E008C8B8C007E7C
      7B00726E6C0066615E005D5550005E534D0062554C005B4B3F006E5E5900A3A2
      A400368030000A8800004EA7400072AC68005AA94E00149D02001D7D16009CA9
      9C00DAD5DB00F3F4F30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF00F3F3F300FBFB
      FB00E9E9E900C8C8C800757474001917170027262500080B07009C779C00FFFC
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100E5E5E500E1E1E100DFDFDF00E3E3
      E300E5E5E500E7E7E700EAEAEA00EDEDED00EFEFEF0000000000F1F1F100F1F1
      F100F1F1F100EFEFEF00EDEDED00EAEAEA00E8E8E800E6E6E600E3E3E300E0E0
      E000E2E2E200E5E5E500F1F1F100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007660330010781C004595
      4B002A7D2E0028812E0028812E0028812E0028812E0028812E0028812E002881
      2E0028812E0028812E0028812E0028812E0028812E0028812E0028812E002881
      2E0028812E0028812E0028812E0028812E0028812E0028812E0028812E002881
      2E0028812E0028802E00348B3F0070BB8A000059000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFF0F000F6F5F600E8E8E900BBC8BC00A2C4
      A4008FC6940073BA780055AB5B0037A041001C8B28003C593300684D4B006551
      490069574E00736055007C685C007F6B6000877164009A827500A3989C00417E
      3E00117F0300A1B59800C3B1C200AAA9AA0075BC720030CB1B000E9600002373
      1800A2A2A100E4E1E400F4F4F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEF00F8F8F800FBFBFB00E4E4
      E400BEBEBE009E9E9E003B3A3900272424002220200045454500F7E7F700F6F5
      F600EFF0EF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F2F200F3F3F300F5F5F500E6E6E600D9D9D900DADADA00DDDD
      DD00E0E0E000E3E3E300E6E6E600E8E8E800EBEBEB00ECECEC00EDEDED00ECEC
      EC00ECECEC00ECECEC00E9E9E900E7E7E700E4E4E400E0E0E000DDDDDD00DADA
      DA00D9D9D900E4E4E400F5F5F500F3F3F300F2F2F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108214001770
      1600004D00000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      00000052000000500000005C00004FB16400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBF4FA00B4DCB90029B1370016BC230011CA
      1C000BCB160008C4130006B7120006A712000497120005831000628B5600BA9B
      9100A58A7E00927E6F008C786A00957F7000AB928100AB8E8200818C81000060
      00008FB18300C9C6C70050BD430038DC340030E1260030BE1A00799F68001670
      08005B7F5800CBC4CC00F6F6F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00F7F7F700FAFAFA00E0E0E000BABA
      BA00A9A9A90072717000242322003C3B39001B1A1A00B1B1B100FFFFFF00EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF00F8F8F800F4F4F400EAEAEA00ECECEC00E5E5E500C7C7C700C3C3C300C5C5
      C500C8C8C800CCCCCC00CECECE00D0D0D000D3D3D300D4D4D400D4D4D400D4D4
      D400D4D4D400D3D3D300D1D1D100CFCFCF00CCCCCC00C9C9C900C6C6C600C4C4
      C400C5C5C500DFDFDF00EDEDED00EAEBEB00F4F4F400F8F8F800EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D00005400000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005800000059000000590000005900000059
      00000059000000570000066308004DB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFF5FE008FD0980000B3080016DB24001DDE
      290021D72E0024CC310020BD2E0018AD2700109B1D00057F1200006607004072
      3400D2CCC200EDE0E300E5DDDF00F3EEF000FFFBFC00BEABA900617F5F004C88
      4400E6E1E500A1C198002DB616002BCA150028C0100073AC6400CAB0C900758E
      6C0040723B00BAB6BB00F6F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F3F3F300F4F4F400F6F6F600F1F1F100EFEFEF000000
      00000000000000000000EFEFEF00F6F6F600F9F9F900DEDEDE00BBBBBB00A9AA
      AA009E9D9D003E3C3C003936360034333100504F4F00F7F7F700F3F3F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F300DEDEDF009E9E9E007F7E7D007B7A7A007A7A7A0092939300A0A0A0009F9F
      9F00A1A1A100A4A4A400A6A6A600A8A8A800AAAAAA00ABABAB00ABABAB00ABAB
      AB00ABABAB00A9A9A900A8A8A800A6A6A600A4A4A400A2A2A200A0A0A0009F9F
      9F00969696007C7C7C007B7B7B00807F7F009A9A9A00D8D8D800F5F5F5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D00005400000056000000540000005400000054000000540000005500000058
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A000000570000005000000058000000590000005900000059
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDF4FD00A3D9AA0001A90F0011B21E001FBB
      2D002AC0390024B7330018AA25000FA31B000BA116000B981600046F10000048
      00002C693700A2BEAA009CB5A200819B88006D816E0069706200607E5D008EAA
      8900FFFFFF00D4DACF00349B190023A70400299F090085A37400CABFC9008092
      7A004B744600B9B7B900F6F5F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F4F4F400DFDFE000CDCDCD00D2D1D100F0F1F200F9F9FA00F1F1
      F100EFEFEF00EFEFEF00F7F7F700F8F8F800DEDEDE00BFBFBF00AEAEAE00B1B2
      B200797878002D2A2A00534F4E0028262600B1B0B000FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F900B0AFAE0066636100716D6A00514F4D001B1B1B004A4A4A00656565006464
      6400676767006B6B6B007070700075757500797979007B7B7B007C7C7C007C7C
      7C007B7B7B007878790075757500717171006C6C6C0068686800646464006565
      65004E4E4E001B1B1A0044424100716E6B0065615F009A999900F5F5F5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D0000520000096307000D6B10000C690E000C690E000C6A100009670B00015B
      0000005800000059000000590000005900000059000000590000005900000059
      00000059000000550000146B18005BAD70000E66120000550000005900000059
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F300F4EEF0006BA65F0001950C00038C
      0F0005950F00069D0F0008A0110009A113000AA314000AA615000FA51A000B74
      16000032000000260000001A0000000F00000006000010271500778A78002369
      1B00D0DBCB006FAB5C00218B00002A930300278E03008DB57C00DCD6D9001967
      0C00547A5300CFC9D000F8F8F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F100ECECEC00D7D7D700D6D6D600A79B9100AEA7A000D4D3D200F0F1
      F300F8F8F900FCFCFC00F6F6F600DEDEDE00C5C5C500B7B7B700B6B6B600B4B4
      B300444140004B474600434140005C5C5B00F7F7F700F2F2F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800A8A6A4007673700087838100524F4E0005040400161515001C1B1B001B1B
      1A001C1B1B001D1C1B001D1C1C001E1D1D001F1E1E001F1E1E001F1F1E001F1E
      1E001F1E1E001F1E1E001E1D1D001D1D1C001D1C1B001C1B1B001B1B1A001C1B
      1B0017161600040404003C3A390086838000797572008E8C8A00EDEDED000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004C000078BB8800D2F6EE00C0F2E600C0F2E600C7F3EC00A0E0B6000E6A
      0500005400000059000000590000005900000059000000590000005900000059
      000000590000004F0000367E3B00E2FFFF0021782A0000510000004F0000004F
      0000004E000000520000066409004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100FFEAF70092BE7D000DD41B000FB3
      1A00089B12000CA2150011B21A0011B01A0011B01A0010AF1A000FB0180018BD
      24001B8D2A000A410E000B3F1100094410000049060000540A0081978900437A
      3E003F862D003E8B23005C9E41009FC18F00CADBC100FEF6FF0088B17D00216D
      1500959E9600E9E6E900F3F3F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3F3F300DBDBDB00EBEDEE00D1CCC600D5BEAB00C0AC9C00A9998C00AFA7
      A000D5D4D400F2F4F500E4E4E400CBCBCB00BFBFBF00BCBCBC00D0D0D0008C8B
      8A003633310065605F0033313000BCBCBB00FDFDFD00EFEFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700ADABAB007C7A77008B888600504F4E000F0E0E0016151500141413001414
      1300141413001413130014131200131312001313120013131200131312001313
      1200131312001313120013131200141312001414130014141300141413001414
      130015151400100F0F003B393900898684007E7C790097959400EEEDEE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007DC6A000E9FFFF00D9FFFF00D9FFFF00E1FFFF00BEEED000146B
      0900005300000059000000590000005900000059000000590000005900000059
      00000059000000500000307D3900D5FFFF001F712400025F0600349154003F98
      6000479961001C742600035E04004EB16400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F200FDEBF60085BB730003D718001CDD
      320025CA38001DB02C0016AD220019B324001BB626001DB726001EBA28001CC8
      320023D9420033CE4D002BC8480012C1310025B8330084BF7700C4BAB100868C
      82003A79340056974700A9C5A100E6E8E700DFE6DE0098BD9000387C2E00748C
      7300E0DBE100F5F5F50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200E6E6E600DCDDDD00E1E2E200CEBDAD00DAC2AF00CDB7A500C0AB9800AB97
      86009C8C7F009D958E00B0AFAF00C6C8C900CACBCB00D4D4D400D9D9D8004946
      45005C5755004E4A490065646400F6F7F700F2F2F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700B1AFAE0082807E00918F8C0052505000100E0E0019171700191717001917
      1700191718001917180019171800191718001917180019171800191718001917
      1800191718001917180019171800191718001917180019171800191717001917
      170019171700100F0F003C3B3B008D8A8800817E7D009D9B9A00EEEEEE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA00156A
      0900005400000059000000590000005900000059000000590000005900000059
      00000059000000500000307E3C00D8FFFF00116315000B6F0D00CAFCEA00EAFF
      FF00F8FFFF0062A66E00005200004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F200F3EDEF00B9B99A006A9242004A89
      2D004CB24B003EBD4E0028AC3A001FA7310020AA320024B4390028C446002CCD
      4F002ACB4C0019C43D0023C5460073CB7E00C7BCA800D5ACA400D9C5BB00D8D1
      D2009EA5A1005F835E0060905C00699A64005F925B00548455008C9D9000E4DE
      E300F3F3F300F0F1F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100D6D6D600E9EAEC00C2BBB600B9A59500B29F9000AF9B8B00AF9A8A00AC96
      8600A5907F00917D6B0078685A00867E7800B7B6B500F5F7F700969493003D39
      3800716D6B003B393800C0BFBF00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F700B6B5B4008986840097949200565453000E0E0E0018171700181717001717
      1700171717001717170017171700171717001717170017171700171717001717
      1700171717001717170017171700171717001717170017171700171717001717
      1700181717000F0F0F003C3A3900AAA8A600ADABAA00A2A09E00EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA00156A
      0900005400000059000000590000005900000059000000590000005900000059
      0000005900000051000026782D00DCFFFD0069B17F00157E1E00ABE2C3005CAD
      68004FA252001E751F00035C04004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F200EDEDEB00DABDB400CD826B009F47
      200099512A00864F2600A3A37E00A9E0B9007BD5910059D17A0040CA670033C7
      5C0031C65A006ED48900D0E9D700FDF2FC00F3EFF400DBD3CC00F2F7FA00EEF1
      F300F0EFF300D8D9DD00B2BBB8009EA79D00A4A9A100BAACA200CBA89300F1EF
      ED00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F3F300E2E2
      E200E3E4E400D7D7D700A5988E00AF9D8F00B4A19200B8A49400BBA49300BAA3
      9000B59E8A00AA9380009A836F008B74610098857500A9A19900434141006B65
      6300514D4C006C6B6B00FAFAFA00F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F600BCBBBA00928F8D009F9D9B005C5B5A001515150020202000202020002121
      2100222221002323220023232300242423002424240025242400252424002524
      2400252424002424240024242400232323002323220023222200222222002121
      2100202020001717170046444300A7A4A300A19F9E00ABAAA800F1F1F1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA00156A
      0900005300000055000000580000005800000058000000580000005800000058
      0000005800000056000002580000469B5600D9FFFE00BAE6CB009CDCC2000063
      0F00004C000000540000066409004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F200EFEEEC00DAC4B500B67959007E26
      01008129080075130000CAA09200FFFFFF00FDF9FF00F0F4F500DAEEE200B4D4
      B100BAE2C700F4F1F400F9F1F700ECEAE900E7E2DE00D7C6BA00E5DDD800E1D7
      D000DED2CA00DCCFC800DDCDC600C9AA9900E6CCC100CBA58700B4855F00EFED
      EC00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F100EFEFEF00DADA
      DA00ECEDEE00B2ACA800BCAA9D00CFBBAC00D9C4B100DDC3B100DDC2AC00DEC0
      A900DDC0A800DBBBA400CBAD9600BA9E8700C2A38A007263560045424300807A
      78003E3D3D00CACBCC00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F300D3D2D100B6B4B300C3C2C0007C7B7A002B2B2B00393939003C3C3C00403F
      3F004343420045454500484847004A4A4A004C4C4C004D4D4D004E4E4E004F4E
      4E004E4D4D004D4D4D004C4C4C0049494A004747460045454400424242003F3F
      3F003C3B3B002E2E2F0066666500C5C2C100B3B2B100C8C7C700F2F2F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA00156A
      080000530000086F100000540000005300000053000000530000005300000053
      0000005500000053000000500000004800006AC18700EEFFFF00B4EFE4000A68
      17000053000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F200EFEDEC00DDC7B800BD805F008C39
      110093431C008D3B1500C8A18900F0E5DD00E9D8CC00E8D4CA00E8D1C700E5BF
      B200E8CBC200E0CBC000DFCEC100DDCCC000DBC6B800CEB3A000D7C4B600D7C3
      B700D8C7BA00D9CAC000DCD1CB00C7AC9B00DEC5B800C9A58900B4886400EEED
      EC00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400DEDEDD00E3E4
      E400CBCBCB00C4B7AB00E4D1C200E9D5C400EAD4C100E9CEB900EFD0B800E9CA
      B200CBB09A00AD978400947F6F00816D5E008D7663009C8D8400AFABAA006765
      650061585000CCBFB400E1E0E000F4F6F900F4F5F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F4
      F400D8D6D600B0AFAD00BBB9B80081807F0027272700302F2F00302F2F002F2E
      2E002E2E2E002D2D2D002C2C2C002C2B2B002B2B2B002B2A2A002A2A2A002A29
      2900292828002828280027272700272727002626260025252500252524002424
      2400242424001818180061606000BEBDBB00AEADAC00CCCBCA00F5F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA000C64
      0200297F3900A3D8B20071BA6A0070BA6A0070BA6A0070BA6A0071BA6B0075BA
      6C002B8835005BAF620072B969005BA858007DC49200E5FFFF00A9E5D200035E
      08000056000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F200EFEEED00DCC7B700CC926F00A85A
      2E00A85D32009D4E2200CFA68C00F4E9DF00F0E4DC00EFE6E000E9E2DC00E3D1
      C300E9E3DE00EDEAE700F1EFED00F1F2F200EFEFEE00E1D7CE00F2F4F600F0F3
      F500EFF2F500EEF2F400F1F8FC00D4C0B300DEC5B700C9A48900B2856100EEEC
      EC00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F100ECECEC00D8D8D800DEDF
      E000C2BCB600ECDCCE00EEDDCF00ECD9C800F1DBC800EBD0BA00B19C8C006F66
      5F0056535000605F610063666800545759004B4D500097959500F3F5F600A29A
      9200D0AE9100C8A88C00B29A8400BEB3A500E0DFDE00F4F6F900F1F1F1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F4
      F400D9D8D800A5A3A100ACAAA8008B8A88003D3D3C00403F3F003F3F3F003F3E
      3D003D3D3C003C3C3B003B3B3A003A3939003938380038373700373636003535
      34003434330033333200323232003232310031303000302F2F002F2E2E002E2D
      2D002D2D2C00232322006E6D6B00AFADAC00A3A2A000CAC9C800F4F5F5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA000B63
      02002A872E00ACEECE0096DFCB0096DEC80096DEC80096DEC80096DEC9009CDE
      CC003E9B610077CDB200B0ECDF00E2FFFF00DCFFFF00E6FFFF006CB377000049
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100EFEEED00E3CCBD00BF825F008630
      050089360E007E240000C8A69400FBFFFF00F3F7FB00F3F7FA00F3F6F900EBE0
      D600F5F7F900F7FBFD00F4F8FA00F2F5F700EFF0EE00E1D7CD00EFEFF000ECEA
      E900EBE7E400E8E4E100E8E5E100D1B9A900E1C8BB00C8A48900B1825E00EEEC
      EB00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F400D9D9D900E2E2E200C4C3
      C300E1D5CB00F4E6D900EDDED000F6E4D300DDCBBB00716760004A4849008281
      8200B5B0AD00D9CABF00E2CEBF00E4CFBF00E4D0C000DACABE00CDC8C4008182
      820092827300DEB89900D5AF9200BF9C7800B3966F00CABCAB00F0F1F200F1F1
      F100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F4
      F400E1E1E100A9A7A500ADACAA009B9998005352520051505000505050005050
      4F004F4E4E004E4D4D004D4C4C004B4B4B004A4A490049494800484848004847
      4700464646004545450044444400434242004241410041414100404040003F3F
      3E003E3E3D003636360086848300B1AFAE00A9A8A600D5D5D400F4F4F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA001568
      0800005D00001D8C280002691B00036819000369190003691900036919000469
      190001610600005D120033954E00D4FFF900D4FFFB00C8F5EC002D8833000C6A
      0A00005A000000560000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100EFEEED00E5CEC000C4876400913C
      0F0096471B00903C1200CEA89000F3F0ED00EEE4DD00F1E7DE00EFE1D800E7CD
      BC00EAD9CD00E9D7C900E6D4C500E5D0C200E1CCBC00D9BCA800DECABB00DDC7
      B800DCC4B500DAC3B400DAC6B800CDAE9800E4CDC000C8A58A00B0815B00EEEC
      EB00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200E8E8E800D9D9D900D5D6D700C6C2
      BE00F8EBE200F0E3D900F9E9DB00D3C6B90055504E0065626400C7C3C100E8D3
      C100E2BFA400DAB39500D7B09100D7AE8F00D8B09000DBB29200DDB99B00E4CF
      BE00A8AAAC0099887B00DFB69500D8B39400CFA27000C79B7300EEEEF000F1F2
      F200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F300E7E7E600B4B2B100AFADAC00A8A7A5006A6A6A0063626200646463006362
      62006161610060605F005F5E5E005E5D5D005C5C5C005C5B5B005A5A5A005959
      5800585757005756560056565600555455005353530052535200525252005150
      50004F4F4E004C4C4C009A989700B3B1B000ADABAA00E0DFDF00F4F4F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA00156A
      0900005100000054000000540000005400000054000000540000005400000054
      000000560000004C00002B832F00D7FFFF00E4FFFF0078B98E000E670F00A7EA
      C60016711A0000510000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100F0EEED00E5CEC000D49A7600B061
      3300AF643800A6592D00D4AA9000F0E4D900EDDCD000ECDED200EBDDD200E9D2
      C200EBE0D800F0E7DF00F0E9E300F1EAE700EFE9E500E4D7CB00F1F0ED00F0F0
      EF00F0F1F200F0F1F200F2F7F900DCC7B800E2CCBD00C8A48A00AE7E5A00EEEC
      EB00F1F3F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200D9D9D900E1E1E200BCBBBA00E8E1
      D900F6ECE300F8ECE100E4D9CE005C5856007D797900EAE2DE00F5E3D300DAB6
      9A00D2AC8D00D6B09200D5B09200D6AF9200D5AF9100D5AF9100D4AD8D00D5A9
      8600E6C9B400AEB0B300B0957E00DEB48D00D8A86B00E6D3C000F2F5F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F200EDEDEC00C0BFBE00B0AEAD00B1B0AE0083828200797978007A7A7A007979
      7800787777007776760076757400747373007372710071707000706F6F006E6E
      6D006D6C6C006C6A6A006A6A6900696868006867670067656500656464006363
      63006160600064636300A8A6A500B5B3B100B6B4B200E8E7E700F3F3F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA00156A
      090000530000005A000000590000005900000059000000590000005900000059
      000000590000004E000024802900BBF1DB00D6FFFE0097D9C30088CFB5008AD3
      B600095C0B0000540000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100F0EEED00EAD4C600C88B6600973E
      0D00984115008B310500CEAC9900FAFFFF00F4F8FA00F4F8FC00F5F9FB00F0E7
      DE00F3F6F800F6FAFD00F5F8FC00F4F8FB00F3F4F500E9E0D900F4F6F800F2F3
      F300F1F1F200EFEFEF00F1F2F300DDC5B500E5CDBF00C6A38900AB7A5700EEEC
      EB00F1F3F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F3F3F300E1E1E100DEDEDE00CBCBCC00C6C2BF00FBF3
      EC00F5ECE400FBF1E800847E7B0074706F00F2EDE900F6E7D900EBD9C900DFC2
      AC00D2AB8D00D4AE9000D4AE9000D4AD8F00D3AD8F00D3AC8E00D2AB8C00D1A9
      8A00C6997600DCCDC100B3ABA800D1A06A00DBB58B00F0F1F400F0F1F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F4F400C9C8C600B3B1B000B7B5B40094949300898989008B8A8A008989
      8900888989008888880087878700868686008585850084848400838383008282
      820081818100807F80007E7E7E007D7C7C007C7C7C007B7A7A00797979007878
      7800747474007B7A7A00B3B2B000B5B2B100C3C1C000EDEDED00F1F1F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39C00E3FFFF00D4FFFF00D4FFFF00DCFFFF00BBEBCB00156A
      0900005400000059000000590000005900000059000000590000005900000059
      000000570000025A02006AB57900A3E0B200BCE9CF00DCFDF800C7F7EB00207A
      23000050000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100F0EFEE00ECD6C700CD906B00A14C
      1A00A65326009F491C00D5AE9600F6F0EC00F0E5DD00EFE3DB00EDE1D800EDD7
      C500ECDDD200EADDD200EADACF00E8D9CD00E6D6CA00E5CDBA00EAD8CD00E8D4
      C800E6D0C200E2CDBE00E1CCBD00D8B69F00EAD7CB00C5A28800A8765100EEEC
      EB00F2F3F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F2F2F200E8E8E800D9D9D900B1B0B000E5DFDB00FAF2
      EC00FCF3ED00CDC6C100635F5D00DAD6D500FBF1E900F0E1D500ECDDCF00E4CB
      B800D1AA8B00D2AC8D00D2AB8C00D1AB8C00D2AB8C00D2AA8B00D0A88800CAA2
      8200B48D6B00BB9D8500CDCDCE00BA936700ECDBCD00F3F5F900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3F3F300DAD9D800B8B7B500B8B6B5009F9E9D0094939400939393009292
      910091919100908F8F008F8E8E008D8D8C008C8C8C008B8A8A008A8A8A008989
      8800888787008887870087878700868686008686850085858500858584008484
      8300828282008C8B8B00B7B6B500B6B4B300CECCCC00F4F5F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E000081C89F00EEFFFF00DEFFFF00DEFFFF00E6FFFF00C2F1D100166B
      0900005400000059000000590000005900000059000000590000005900000059
      00000055000001610700B6F1E600E7FFFF002C833100116511000C670F000055
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100F0EEED00EBD5C600DAA17D00BF70
      3F00BE744500B7693800E0B49800F7EBE000F5E6DA00F1E4D900EBDFD500EDD8
      C600ECE0D600ECE2DA00ECE3DC00EDE5DF00EDE6DF00E8DACD00EDE8E500F1EE
      EC00F2EFED00F0EFED00F2F3F400E3CDBD00EAD8CD00C29F8600A4714C00EDEC
      EB00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F4F400D2D2D200B6B4B100EDE8E300F8F1
      EC00FFFCF5009993900099949300FEF9F600F5ECE400F1E4DA00ECDED000EAD7
      C700D5B29600CFA68700D0A88A00D0A88A00D1A88800CEA58400C79E7E00B792
      7000A07B5A009E7B6000E1DBD900D1C2B400F1F1F100F0F1F100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F100EFEFEF00D0D0CF00C9C8C700AEADAC008C8C8B00989898009999
      99009A9A9A009B9B9B009B9C9B009C9C9C009E9D9D009E9E9D009E9D9D009D9D
      9D009C9C9B009B9A9A0098989800969696009494940093929200919191008F8F
      8F00828181009E9D9C00C9C9C800CCCAC900E8E8E800F2F2F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D00004F0000479646007FBF8B0074B8820074B8820078BC880061AC63000762
      0200005600000059000000590000005900000059000000590000005900000059
      0000005700000159020081C28E00AADFB7000B650D00004F0000005400000058
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100F0EFEE00F0DACB00CE916B00A34A
      1400A44E1C00993E0B00D3B09C00F9FFFF00F4F8FB00F4F8FB00F4F8FA00F3E9
      E100F3F7F900F4FAFE00F4F9FD00F3F9FE00F5F8FB00ECE8E100F5FBFF00F9FE
      FF00F8FEFF00F8FEFF00FAFFFF00E8D5C800EBD8CE00BF9C8400A06D4700EDEC
      EB00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200EBEBEB00CECBC700DFDBD600F8F2
      ED00F6F0EA008A838000CFCCCA00FDF9F500F7EFE800F2E7DE00EEE0D400EBDB
      CC00E0C5B000CCA38300CEA68700CEA48600C8A08000C0987700B18B6900A07C
      5B00936D4D00A17D6000E8E1DE00E2E3E400F0F1F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1F1F100F2F2F200F9F9F900D1D0CF008E8D8B00B6B6B600BBBB
      BB00C0C0C000C5C5C500CBCBCB00D0D0D100D6D6D700DADADA00DCDCDC00DDDD
      DD00DADADA00D7D7D700D1D1D100CCCCCC00C6C6C600C1C1C100BCBCBC00B7B7
      B800908E8D00BFBEBD00F9F9F900F2F2F200F1F2F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D00005500000056000000520000005200000052000000520000005200000058
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000055000003600100086901000058000000590000005900000059
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F100F1EFEE00F1DBCC00D2967000AD55
      2000AF5C2A00A84F1D00DDB8A300FFFFFF00FBFAF800F9F8F600F9F7F300F6E6
      D800F8F1EA00F7F0E900F5EDE400F3E8DD00EFE0D300EAD3BF00ECDBCD00EBD5
      C500E8CFC000E3CAB900DFC1AF00DDB59D00EFE0D700BE9B80009D684100EDEC
      EA00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F2F200F0EFEF00E6E4E200F1EC
      E900E6E1DC007C757300ECE9E900FCF9F600F5EFEA00F2E9E200EFE2D700EADB
      CC00E7D4C500D2B19800C2987800BE987700B38E6E00A68261009A755500936E
      5000956C4A00BA9B7E00EFEBEA00EDEEEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5F5F500D6D5D500AAA9A800D3D4D400D7D7
      D700DCDCDC00E0E0E000E5E5E500E9E9E900ECECEC00EFEFEF00000000000000
      0000EFEFEF00ECECEC00E9E9E900E5E5E500E1E1E100DCDCDC00D8D8D800D3D4
      D400AAA9A800C7C6C500F5F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D00005400000059000000580000005800000058000000580000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A000000560000005500000059000000590000005900000059
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F100F1EFEE00F0DACB00DCA37E00C473
      4200C6784A00C5764700D1916800CA8B6300C5835B00BF7A5300B8724C00C17D
      5300AD633C00A65B3300A1562E009F532900A0582B00B06D42009A532700954D
      220091471D008C4319007F340A00B0714F00F9EEE600BC977F009A633D00EDEC
      EA00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F100F1F2F200F3F2
      F200E0DEDD008B848200E8E6E500FAF8F600F4EFEC00EFE9E300EBE1D900E6D8
      CC00DFCEC000D7C2B300B6977B009E79580099755700936F5100936C4E009B73
      5300A5774E00D6C0AD00E5E4E500E9E9EA00F2F2F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F4F400DBDADA00BCBBBA00E4E4E400E5E5
      E500E9E9E900EDEDED0000000000F4F4F400F6F6F600F8F8F800FAFAFA00F9F9
      F900F9F9F900F7F7F700F5F5F500F1F1F100EEEEEE00EAEAEA00E6E6E600E3E3
      E300BAB9B900CECDCC00F4F4F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D00005400000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F100F0EFEE00F2DED000D6987100B258
      2000B25C2600AE5A2600B56634009F4611009D4411009942100097401000AA5C
      2E009342160092451900964A1F00964D210097512400A76439008E471C008D46
      1C008A441B0087411A007D350D00B1755200F8ECE800BA937F0098613C00EDEC
      EA00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100EFF0F000A8A3A200E1DFDE00FBFAF900F6F2EF00EEE9E500E7E0D900E0D5
      CB00D6C7BC00CEBCAF00C1AE9E00A2856D00916A4C00956E4E00A1795600AA7C
      5300C1997500EBE3E000E2E0E000E8E9E900F1F2F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100EAEAEA00E2E1E100E5E5E500E8E8
      E800EDEDED00EFEFEF00F2F2F200F5F5F500F8F8F800FAFAFA00FBFBFB00FBFB
      FB00FAFAFA00F8F8F800F6F6F600F3F3F30000000000EDEDED00E9E9E900E4E4
      E400E0E0E000E7E7E700F1F1F100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000078623600108114001D75
      1D00005400000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F100F0EFEE00F2E3D700DCA27D00C06C
      3600BF6E3B00BA6D3800C3794800B3653100B3643100AF623100AD623100BC75
      4600AA603000A65E2D00A35B2B009E5627009F572900AD693C00974E2200964E
      2100934D2100924A2000873E1200B8805500F7D0E800BB7A80009A6A3E00EDEC
      EA00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F8F800BBB8B700D9D6D600FDFDFD00FAF7F500F2EEEA00EAE4DF00E2D9
      D000D9CCC100D0BFB300C8B5A600C4AE9B00B8987F00B1886600B3855A00B786
      5A00E2D2C600EBE9E900E4E4E400F1F2F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F10000000000E3E3E300E6E6
      E600EBEBEB00EEEEEE0000000000F3F3F300F6F6F600F7F7F700F9F9F900F9F9
      F900F7F7F700F6F6F600F4F4F400F1F1F100EEEEEE00EBEBEB00E7E7E700E4E4
      E40000000000F1F1F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000776135000F8114001D75
      1D00005400000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000570000066308004CB36300005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F100F1F0EE00F0E0D100EAC2A600E3AE
      8A00E5B29100E3B39400E5B79900E2B39300E3B49500E3B59600E3B59800E7B9
      9D00E4B69A00E4B79B00E4B89D00E3B99D00E4B99E00E6BDA300E3BAA100E4BC
      A200E4BEA400E5BDA500E3BDA400E6C5AD00F2E8E000C2A08600A4714B00EDEC
      EB00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F4F400DBDADA00C3BFBD00F7F6F600FFFFFD00F8F4F100F3ECE700EBE3
      DC00E5D8CE00DFCEC000D8C3B200D4BAA600D3B49D00CEA88A00C49B7800DDC9
      BA00EEEAEA00E6E4E400ECEDED00F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECECEC00E2E2E200E5E5
      E500E8E8E800EBEBEB00EEEEEE0000000000F2F2F200F4F4F400F4F4F400F4F4
      F400F4F4F400F3F3F300F1F1F100EFEFEF00ECECEC00E8E8E800E5E5E500E2E2
      E200ECECEC00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F653800128215001A6E
      1500004B00000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      00000052000000500000005B000055AC6800005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100F1F0ED00F0DCCD00F4E8E000F4ED
      E500F4ECE500F6EAE600F5E9E500F5EBE400F4EAE300F4E9E200F4EAE100F4E8
      E000F4E8E200F4E9E200F4E8E100F3E7E100F2E6DE00F0E3DC00F1E5DD00F0E4
      DC00EFE3DC00EFE1DC00F0E2DC00EDDED700EFE4DD00CDAD9200B6896500EEED
      EC00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F3F300CFCCCC00D7D5D300F1F0F000FFFFFC00FAF4F000F4EB
      E500EEE3D900EADACC00E6CFBC00E3C6B000D7B59B00CAAE9700E5D9D000F6F2
      F000E4E2E200E5E6E600F2F2F200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBEBEB00DEDEDE00E2E2
      E200E5E5E500E7E7E700EAEAEA00EDEDED00EEEEEE00EFEFEF00000000000000
      000000000000EFEFEF00EDEDED00EAEAEA00E7E7E700E5E5E500E3E3E300E0E0
      E000EAEAEA00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F7141000F771B00439C
      5C002D873C002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B
      40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B
      40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B
      40002F8B40002D893E003D96520083BA8A000056010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F0EE00F0DBCE00F4E5DC00F2E6
      DE00F0E7DE00F0E6DE00F2E5DE00F2E4DE00F1E4DB00EFE3D900EFE2D900EFE2
      D900EFE2D900EFE2D800EFE2D800F0E1D800F0E1D700EDDFD600EEDED400EDDD
      D400ECDCD300ECDCD300ECDBD300EBD9D200F0E4DE00DCBEA400CBA48100EFED
      EC00F1F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F2F200EEEEEE00D5D5D400D7D5D400E3E1DF00F1EEEB00F3EE
      EA00EBE2DB00E2D5CA00DBCBBC00C2B0A400BDB2AB00EBE7E500FAF5F400ECEA
      EA00E6E6E600F2F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBEBEB00E1E1E100E5E5
      E500E7E7E700E8E8E800EAEAEA00EDEDED00EEEEEE0000000000000000000000
      000000000000EEEEEE00EDEDED00EBEBEB00E8E8E800E7E7E700E5E5E500E1E1
      E100EAEAEA00EEEEEE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0885700005A0500308D
      3F003D983F003C9640003C9640003C9640003C9640003C9640003C9640003C96
      40003C9640003C9640003C9640003C9640003C9640003C9640003C9640003C96
      40003C9640003C9640003C9640003C9640003C9640003C9640003C9640003C96
      40003C9640003B963F003F9948002E7E2B000056000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F1F100F0E2DA00F2E0D400F4E5
      DC00F1E4DB00EFE4DB00F0E4DA00F1E2DA00F1E1DB00F0E1D800F0E0D600EFDF
      D600EFDFD600EFDFD600EFE0D600EFDFD500EFDED400EEDDD400ECDCD200ECDA
      D100ECDBD000EBDACF00EAD9D000EADAD100E2CCC000CBA38000DDC4AB00F1F3
      F400F0F0F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F2F2F200EEEEEE00E3E2E100D2CFCE00D6D3D100D4D2
      D000CFCAC900C7C2C000ADA9A900B9B5B500E9E7E700F3F1EF00E9E9E800EFEF
      EF00F1F1F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDEDED00E8E8E800E9E9
      E900EAEAEA00EBEBEB00EBEBEB00ECECEC00ECECEC00EDEDED00EDEDED00EDED
      ED00EDEDED00ECECEC00ECECEC00EBEBEB00EBEBEB00EAEAEA00E9E9E900E8E8
      E800ECECEC00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009B8C5600004E00000050
      0000005100000051000000510000005100000051000000510000005100000051
      0000005100000051000000510000005100000051000000510000005100000051
      0000005100000051000000510000005100000051000000510000005100000051
      0000005100000051000000500000005000000057000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF00F1EDEB00F1EE
      EB00F1EDEA00F1EDEB00F1EDEA00F1EDE900F1ECE800F1ECE900F0ECE800F0EB
      E800F0EBE800F0EBE800F0E9E700EFEAE600EFE9E600EFE8E500EEE9E500EEE8
      E400EEE7E300EEE7E300EDE7E300EEE8E300D5C6BB00CDBBAC00EEEDEC00F1F2
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100F2F2F200EAEAEA00E7E6E600EAE9
      E700D1CDCC00D0CDCB00D9D5D400F8F7F600E9EAEA00EAEAEA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7AE980076673C00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766D3E00766D3E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000F8000000600000000100010000000000000C00000000000000000000
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
      00000000000000000000000000000000FFFE00000001FFFFFFFC0008800FFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFFFFF0FFFFFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFFFFC07FFFFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFFFFC03FFFFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFFFFC01FFFFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFFFFE01FFFFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFFFFC01FFFFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFFFF0007FFFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFFFE0000FFFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFFFC0000FFFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFFF840007FFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFFF840007FFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFFF840003FFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFFF800003FFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFFF800003FFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFFF80F003FFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFFF010001FFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFF0010001FFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFC0010000FFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFC00104007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800004007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800030007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFA2400001FFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFC0000003FFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFC0000003FFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFC8000007FFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFD000001FFFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFE000003FFFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFFF83C7FFFFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFFF63FFFFFFFF0
      00000000000000000000000000000000FFFE00000001FFFFFFFFFFFFFFFFFFF0
      00000000000000000000000000000000FFFFF001D00FFFFFFFFFFFFFF80FFFFF
      FFFE000001FFFFFFFFC00000007FFF00FFFFE0000003FFFFFFFFFFFFE00FFFFF
      FFFC000000FFFFFFFF800000007FFF00FFFFE0000003FFFFFFFFFFFFC00FFFFF
      FFFE008400FFFFFFFF800000007FFF00FFFF80000003FFFFFFFFFFFF800FFFFF
      FFFE004001FFFFFFFF800000007FFF00FFFE00000001FFFFFFFFFFFF0007FFFF
      FFF80000007FFFFFFF800000007FFF00FFFE00000001FFFFFFFFFFFE000FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFFFFC1C001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFFFF800003FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFFFF000003FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFFFF000003FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000003FFFFFFFFE000007FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000003FFFFFFFFE00000FFFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFFC00000FFFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFF800001FFFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFF8000007FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFF0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFF0000000FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFE0000000FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFC0000001FFFFF
      FFF00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFC0000003FFFFF
      FFF00000003FFFFFFF800000007FFF00FFFE00000007FFFFFFFE0000003FFFFF
      FFF00000003FFFFFFF800000007FFF00FFFE00000007FFFFFFFE0000007FFFFF
      FFF80000007FFFFFFF800000007FFF00FFFE00000007FFFFFFFF000000FFFFFF
      FFFE003001FFFFFFFF800000007FFF00FFFE00000007FFFFFFFF8000007FFFFF
      FFFE020001FFFFFFFF800000007FFF00FFFE00000007FFFFFFFFE000007FFFFF
      FFFE000081FFFFFFFF800000007FFF00FFFE00000007FFFFFFFFF00000FFFFFF
      FFFF42000BFFFFFFFF800000007FFF00FFFE00000007FFFFFFFFF00000FFFFFF
      FFFF810003FFFFFFFF800000007FFF00FFFE00000007FFFFFFFFF80001FFFFFF
      FFFF803803FFFFFFFF800000007FFF00FFFF00000007FFFFFFFFF80003FFFFFF
      FFFF807803FFFFFFFF800000007FFF00FFFF00000007FFFFFFFFFC0007FFFFFF
      FFFF800003FFFFFFFF800000007FFF00FFFF8000000FFFFFFFFFFE003FFFFFFF
      FFFFFFFFFFFFFFFFFF800000007FFF0000000000000000000000000000000000
      000000000000}
  end
  inherited ILMenuEdicao: TImageList
    Left = 136
    Top = 312
  end
  object rom_ite: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    AutoCalcFields = False
    DataSource = DTSCadastro
    SQL.Strings = (
      
        'SELECT   ROM_ITE.*,CAD_PRO.ID,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,' +
        'CAD_PRO.PRO_CCOR,'
      '         CAD_PRO.PRO_RCOR,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,'
      
        '         CAD_PRO.PRO_CBAR,CAD_PRO.PRO_PPRO,CAD_PRO.PRO_CEMB,CAD_' +
        'PRO.PRO_GRAD,'
      '         CAD_PRO.PRO_PIPI,CAD_PRO.PRO_REPR,CAD_PRO_IMG.PRO_FOTO'
      'FROM     CAD_PRO_IMG,CAD_PRO,rom_ite_003 "ROM_ITE"'
      'WHERE    ROM_ITE.ROM_CPRO     = CAD_PRO.ID'
      'AND      CAD_PRO_IMG.PRO_CART = CAD_PRO.PRO_CART'
      'AND      ROM_ITE.ROM_CCAB = :ID'
      'ORDER BY ROM_ITE.ROM_ITEM')
    Left = 608
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object rom_iteID: TIntegerField
      FieldName = 'ID'
      Origin = '"PED_OCA_ITE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object rom_iteROM_CDOC: TIntegerField
      FieldName = 'ROM_CDOC'
      Origin = '"PED_OCA_ITE"."ROM_CDOC"'
    end
    object rom_iteROM_ITEM: TIBStringField
      DisplayLabel = 'Item'
      FieldName = 'ROM_ITEM'
      Origin = '"PED_OCA_ITE"."ROM_ITEM"'
      Size = 4
    end
    object rom_iteROM_CPRO: TIntegerField
      FieldName = 'ROM_CPRO'
      Origin = '"PED_OCA_ITE"."ROM_CPRO"'
    end
    object rom_iteROM_CPR2: TIntegerField
      FieldName = 'ROM_CPR2'
      Origin = '"PED_OCA_ITE"."ROM_CPR2"'
    end
    object rom_iteROM_CDET: TIBStringField
      DisplayLabel = 'Etiqueta No'
      FieldName = 'ROM_CDET'
      Origin = '"PED_OCA_ITE"."ROM_CDET"'
      Size = 10
    end
    object rom_iteROM_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'ROM_QTDE'
      Origin = '"PED_OCA_ITE"."ROM_QTDE"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
    object rom_iteROM_VDSC: TIBBCDField
      DisplayLabel = 'Desc (%)'
      FieldName = 'ROM_VDSC'
      Origin = '"PED_OCA_ITE"."ROM_VDSC"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object rom_iteROM_TOTA: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'ROM_TOTA'
      Origin = '"PED_OCA_ITE"."ROM_TOTA"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object rom_iteID1: TIntegerField
      FieldName = 'ID1'
      Origin = '"CAD_PRO"."ID"'
      Required = True
    end
    object rom_itePRO_CART: TIBStringField
      DisplayLabel = 'Referencia'
      FieldName = 'PRO_CART'
      Origin = '"CAD_PRO"."PRO_CART"'
    end
    object rom_itePRO_CPRO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_CPRO'
      Origin = '"CAD_PRO"."PRO_CPRO"'
    end
    object rom_itePRO_CCOR: TIntegerField
      FieldName = 'PRO_CCOR'
      Origin = '"CAD_PRO"."PRO_CCOR"'
    end
    object rom_itePRO_RCOR: TIBStringField
      FieldName = 'PRO_RCOR'
      Origin = '"CAD_PRO"."PRO_RCOR"'
      Size = 3
    end
    object rom_itePRO_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'PRO_DCOR'
      Origin = '"CAD_PRO"."PRO_DCOR"'
      Size = 30
    end
    object rom_itePRO_DUNI: TIBStringField
      DisplayLabel = 'UN'
      FieldName = 'PRO_DUNI'
      Origin = '"CAD_PRO"."PRO_DUNI"'
      Size = 3
    end
    object rom_itePRO_FOTO: TBlobField
      FieldName = 'PRO_FOTO'
      Origin = '"CAD_PRO_IMG"."PRO_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_itePRO_CBAR: TIBStringField
      FieldName = 'PRO_CBAR'
      Origin = '"CAD_PRO"."PRO_CBAR"'
    end
    object rom_itePRO_CEMB: TIntegerField
      FieldName = 'PRO_CEMB'
      Origin = '"CAD_PRO"."PRO_CEMB"'
    end
    object rom_itePRO_GRAD: TIBStringField
      FieldName = 'PRO_GRAD'
      Origin = '"CAD_PRO"."PRO_GRAD"'
      Size = 3
    end
    object rom_itePRO_PIPI: TSmallintField
      FieldName = 'PRO_PIPI'
      Origin = '"CAD_PRO"."PRO_PIPI"'
    end
    object rom_iteROM_CCAB: TIntegerField
      FieldName = 'ROM_CCAB'
      Origin = '"PED_VEN_ITE"."ROM_CCAB"'
    end
    object rom_iteROM_CDPR: TIntegerField
      FieldName = 'ROM_CDPR'
      Origin = '"PED_VEN_ITE"."ROM_CDPR"'
    end
    object rom_iteROM_CDPD: TIntegerField
      FieldName = 'ROM_CDPD'
      Origin = '"PED_VEN_ITE"."ROM_CDPD"'
    end
    object rom_iteROM_CDRO: TIntegerField
      FieldName = 'ROM_CDRO'
      Origin = '"PED_VEN_ITE"."ROM_CDRO"'
    end
    object rom_iteROM_CDRD: TIntegerField
      FieldName = 'ROM_CDRD'
      Origin = '"PED_VEN_ITE"."ROM_CDRD"'
    end
    object rom_iteROM_CDNF: TIntegerField
      FieldName = 'ROM_CDNF'
      Origin = '"PED_VEN_ITE"."ROM_CDNF"'
    end
    object rom_iteROM_QTSP: TIBBCDField
      FieldName = 'ROM_QTSP'
      Origin = '"PED_VEN_ITE"."ROM_QTSP"'
      Precision = 18
      Size = 4
    end
    object rom_iteROM_QTPD: TIBBCDField
      DisplayLabel = 'Quantidade Separado'
      FieldName = 'ROM_QTPD'
      Origin = '"PED_VEN_ITE"."ROM_QTPD"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
    object rom_iteROM_QTRL: TIntegerField
      FieldName = 'ROM_QTRL'
      Origin = '"PED_VEN_ITE"."ROM_QTRL"'
    end
    object rom_iteROM_RLSP: TIntegerField
      FieldName = 'ROM_RLSP'
      Origin = '"PED_VEN_ITE"."ROM_RLSP"'
    end
    object rom_iteROM_RLPD: TIntegerField
      FieldName = 'ROM_RLPD'
      Origin = '"PED_VEN_ITE"."ROM_RLPD"'
    end
    object rom_iteROM_FLAG: TIBStringField
      FieldName = 'ROM_FLAG'
      Origin = '"PED_VEN_ITE"."ROM_FLAG"'
      FixedChar = True
      Size = 1
    end
    object rom_iteROM_DPRO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ROM_DPRO'
      Origin = '"PED_VEN_ITE"."ROM_DPRO"'
      Size = 120
    end
    object rom_itePRO_REPR: TIBStringField
      FieldName = 'PRO_REPR'
      Origin = '"CAD_PRO"."PRO_REPR"'
      FixedChar = True
      Size = 1
    end
    object rom_iteROM_COMI: TIBBCDField
      FieldName = 'ROM_COMI'
      Origin = '"ROM_ITE_003"."ROM_COMI"'
      Precision = 9
      Size = 2
    end
    object rom_iteROM_TPRC: TIBStringField
      FieldName = 'ROM_TPRC'
      Origin = '"ROM_ITE_003"."ROM_TPRC"'
      FixedChar = True
      Size = 1
    end
    object rom_iteROM_ABCD: TIBStringField
      FieldName = 'ROM_ABCD'
      Origin = '"ROM_ITE_003"."ROM_ABCD"'
      FixedChar = True
      Size = 1
    end
    object rom_iteROM_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'ROM_DCOR'
      Origin = '"ROM_ITE_003"."ROM_DCOR"'
      Size = 30
    end
    object rom_iteROM_PCOR: TIBStringField
      FieldName = 'ROM_PCOR'
      Origin = '"ROM_ITE_003"."ROM_PCOR"'
      Size = 30
    end
    object rom_iteROM_DCO2: TIBStringField
      FieldName = 'ROM_DCO2'
      Origin = '"ROM_ITE_003"."ROM_DCO2"'
      Size = 30
    end
    object rom_iteROM_PCO2: TIBStringField
      FieldName = 'ROM_PCO2'
      Origin = '"ROM_ITE_003"."ROM_PCO2"'
      Size = 30
    end
    object rom_iteROM_UNIT: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'ROM_UNIT'
      Origin = '"ROM_ITE_003"."ROM_UNIT"'
      DisplayFormat = '#,0.00#######'
    end
    object rom_iteROM_PREC: TFloatField
      FieldName = 'ROM_PREC'
      Origin = '"ROM_ITE_003"."ROM_PREC"'
    end
    object rom_itePRO_PPRO: TFloatField
      FieldName = 'PRO_PPRO'
      Origin = '"CAD_PRO"."PRO_PPRO"'
    end
    object rom_iteROM_DSEP: TIBStringField
      DisplayLabel = 'Separador'
      FieldName = 'ROM_DSEP'
      Origin = '"ROM_ITE_003"."ROM_DSEP"'
      Size = 15
    end
    object rom_iteROM_DUNI: TIBStringField
      DisplayLabel = 'UN'
      FieldName = 'ROM_DUNI'
      Origin = '"ROM_ITE_003"."ROM_DUNI"'
      Size = 3
    end
  end
  object dtsrom_ite: TDataSource
    DataSet = rom_ite
    OnDataChange = dtsrom_iteDataChange
    Left = 640
    Top = 64
  end
  object SQLConsulta: TIBSQL
    Database = dmDADOS.ibDB
    Transaction = IBTra
    Left = 648
    Top = 200
  end
end
