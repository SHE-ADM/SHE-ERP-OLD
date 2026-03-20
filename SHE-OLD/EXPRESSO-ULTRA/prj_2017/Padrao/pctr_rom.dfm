inherited frmctr_rom: Tfrmctr_rom
  Left = 363
  Top = 115
  Caption = 'Controle de Romaneios'
  ClientHeight = 707
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
    Top = 688
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
  inherited SBMenu: TSpeedBar
    Width = 1276
    inherited siSAIR: TSpeedItem [6]
      Left = 423
    end
    inherited siREL: TSpeedItem [7]
      Left = 339
    end
    object SICRO: TSpeedItem
      BtnCaption = 'Cancelar'
      Cursor = crHandPoint
      Hint = 'Cancelar Romaneio'
      ImageIndex = 4
      Spacing = 1
      Left = 255
      Top = 3
      Visible = True
      OnClick = SICROClick
      SectionName = 'Movimento'
    end
    object SINFE: TSpeedItem
      BtnCaption = 'Nota Fiscal'
      Cursor = crHandPoint
      Hint = 'Emiss'#227'o de Nota Fiscal'
      ImageIndex = 5
      Spacing = 1
      Left = 171
      Top = 3
      Visible = True
      OnClick = siNFEClick
      SectionName = 'Movimento'
    end
  end
  inherited pnldir: TPanel
    Left = 1275
    Width = 1
    Height = 613
  end
  inherited pnldbg: TPanel
    Width = 1275
    Height = 613
    inherited pnlbot: TPanel
      Top = 345
      Width = 1275
      Height = 268
      Visible = True
      object pcITE: TdxPageControl
        Left = 0
        Top = 0
        Width = 915
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
            Width = 915
            Height = 244
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'ID'
            ShowSummaryFooter = True
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            Color = 12513272
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
          end
        end
      end
      object pnlfoto: TPanel
        Left = 915
        Top = 0
        Width = 360
        Height = 268
        Align = alRight
        BevelOuter = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object pcIMG: TdxPageControl
          Left = 0
          Top = 0
          Width = 360
          Height = 268
          ActivePage = tsFOTO
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
          object tsFOTO: TdxTabSheet
            Caption = 'Imagem do Produto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            object writefoto: TImage
              Left = 0
              Top = 0
              Width = 360
              Height = 244
              Align = alClient
              Stretch = True
            end
          end
        end
      end
    end
    inherited gbDET: TGroupBox
      Width = 1275
      Height = 345
      inherited SBEdicao: TSpeedBar
        Width = 0
        Height = 327
        Enabled = False
        Visible = False
      end
      inherited DBGConsulta: TdxDBGrid
        Left = 2
        Width = 1271
        Height = 327
        HeaderMinRowCount = 2
        KeyField = 'ID'
        ShowSummaryFooter = True
        Color = 12513272
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
  end
  inherited Consulta: TIBQuery
    BufferChunks = 2500
    Left = 640
    Top = 0
  end
  inherited Cadastro: TIBDataSet
    AfterOpen = CadastroAfterOpen
    OnCalcFields = cadastroCalcFields
    BufferChunks = 2500
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
  inherited ILEdicao: TImageList
    Top = 374
  end
  inherited ILMenu: TImageList
    Top = 342
    Bitmap = {
      494C010106000900040030003000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C000000090000000010020000000000000B0
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F800D7D7F000D7D7F000CACAEC00CACAEC00D7D7F000D7D7F000F1F1
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFE00A7A7E2007878DC007878DC005959
      DA006666E4007575EC007575EC007C7CF0007C7CF0007575EC007575EC006666
      E4005959DA007878DC007878DC00A8A8E200FFFFFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3A18D00B3A18D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFE00A7A7E2007878DC007878DC005959
      DA006666E4007575EC007575EC007C7CF0007C7CF0007575EC007575EC006666
      E4005959DA007878DC007878DC00A8A8E200FFFFFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3A18D00B3A18D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9FB008383DA008383DA005959DC008686F6009090F9009090F9009292
      F9009191F8009090F8009090F8009090F7009090F7009090F8009090F8009191
      F8009292F9009090F9009090F9008686F6005959DC008383DA008383DA00F9F9
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00FBFBFB00DCD6D200D5C4A700C3AC8700C3AC87009E87
      7000D9D0C600FDFDFD00FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009D9D
      DF005959DD008F8FFA008F8FFA009292F9008F8FF7008F8FF7008F8FF7008F8F
      F7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8F
      F7008F8FF7008F8FF7008F8FF7008F8FF7009292F9008F8FFA008F8FFA005959
      DD009D9DDF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5F4F300CBBFB000CBBFB000D3BE9700EAD4A600E4CFA400E4CFA400AB95
      7900A08B7400E2DBD400E2DBD400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006262D3006262D3008080
      F3009393FA008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7009292
      F9009191F9008F8FF9008F8FF9008E8EF9008E8EF9008F8FF9008F8FF9009191
      F9009292F9008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7009393
      FA008080F3006262D3006262D300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDE6D800E4CC9B00E4CC9B00E7D2A600E6D1A600E8D3A800E8D3A800DAC5
      9C00B49D7A00B19F8E00B19F8E00F5F2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006262D3006262D3008080
      F3009393FA008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7009292
      F9009191F9008F8FF9008F8FF9008E8EF9008E8EF9008F8FF9008F8FF9009191
      F9009292F9008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7009393
      FA008080F3006262D3006262D300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDE6D800E4CC9B00E4CC9B00E7D2A600E6D1A600E8D3A800E8D3A800DAC5
      9C00B49D7A00B19F8E00B19F8E00F5F2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFC005555D3009090FB009090FB009090
      F7008F8FF7008F8FF7008F8FF7008F8FF7009292FA008989F7008989F7006161
      E1006363DA007E7EDD007E7EDD008989DE008A8ADE007E7EDD007E7EDD006464
      DA006161E1008989F7008989F7009292FA008F8FF7008F8FF7008F8FF7008F8F
      F7009090F7009090FB009090FB005555D300FDFDFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECDDBD00ECDDBD00E3CC9C00E5D0A400E5D0A300E5D0A300E8D3
      A500E7DABD009E8567009E856700CCC0B4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005454D3009393FC008F8FF7008F8FF7008F8F
      F7008F8FF7009292F8009292F8008585F5005B5BD8009F9FE0009F9FE000F4F4
      F900000000000000000000000000000000000000000000000000000000000000
      0000F5F5F900A0A0E000A0A0E0005C5CD8008383F4009393F9009393F9008F8F
      F7008F8FF7008F8FF7008F8FF7009393FC005555D30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3E9D600E6D4AD00E8D9B800E8D9B800E8D7
      B400E9D2A300D0BA9000D0BA9000B9A99A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006262D3006262D3009090FB008F8FF7008F8FF7008F8FF7008F8F
      F7009191F8007575E9007575E9009292DA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F9FDF005D5DDF005D5DDF009595
      FB008F8FF7008F8FF7008F8FF7008F8FF7009090FB006262D3006262D3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFDFB00FFF9F800FFF9F80000000000E6DCCA00E6D4B000E6D4B000E4D5
      B500EBDBB900D3C1A100D3C1A100A8948000F6F4F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006262D3006262D3009090FB008F8FF7008F8FF7008F8FF7008F8F
      F7009191F8007575E9007575E9009292DA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F9FDF005D5DDF005D5DDF009595
      FB008F8FF7008F8FF7008F8FF7008F8FF7009090FB006262D3006262D3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFDFB00FFF9F800FFF9F80000000000E6DCCA00E6D4B000E6D4B000E4D5
      B500EBDBB900D3C1A100D3C1A100A8948000F6F4F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009D9DDF008080F3008080F3009090F7008F8FF7008F8FF7008F8FF7008F8F
      F7008F8FF7009393FA009393FA005F5FD700FEFEFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EAEAF500EAEAF5005555
      D5009494FB008F8FF7008F8FF7008F8FF7009090F7008080F3008080F3009D9D
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFF3F200FFF3F200B8C5
      CA0080B9C4007CB5C2007CB5C2008FA4AA00ECD2A400E6D0A400E6D0A400E6D0
      A400E4CEA100EBDAB600EBDAB600937B6300B9A99900ECE8E300ECE8E300FDFD
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      FB005959DD009393FA009393FA008F8FF7008F8FF7009191F8009191F8008F8F
      F7008F8FF7008F8FF7008F8FF7009393FC005454D400FDFDFC00FDFDFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FB005555D5009595FB009595FB008F8FF7008F8FF7009393FA009393FA005959
      DD00F9F9FB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8D4DE0022939F0022939F002797
      9D007CB4C0008FC6D4008FC6D400599E9D00EED2A600EAD4A600EAD4A600E6D1
      A400E5D2AB00E8D8B700E8D8B700E7D2A500A58D6E009B856E009B856E00BCAC
      9C00D8CFC600E4DED800E4DED800FAF8F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008282
      DA008F8FFA008F8FF7008F8FF7008F8FF7009292F8007575EA007575EA009393
      FA008F8FF7008F8FF7008F8FF7008F8FF7009393FC005454D4005454D400FDFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAEAF5005D5DDF005D5DDF009393F9008F8FF7008F8FF7008F8FF7008F8F
      FA008282DA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007A99700000560200558846005588460071A1
      650038752D001B5E14001B5E14004C672B009D8F7E00C9B69E00C9B69E00E6D5
      B300ECDFC200E6CFA200E6CFA200E7D1A500EBD9B400E5D5B500E5D5B500B8A4
      8700AF9878009E866C009E866C00C8BBAE00FDFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008282
      DA008F8FFA008F8FF7008F8FF7008F8FF7009292F8007575EA007575EA009393
      FA008F8FF7008F8FF7008F8FF7008F8FF7009393FC005454D4005454D400FDFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAEAF5005D5DDF005D5DDF009393F9008F8FF7008F8FF7008F8FF7008F8F
      FA008282DA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007A99700000560200558846005588460071A1
      650038752D001B5E14001B5E14004C672B009D8F7E00C9B69E00C9B69E00E6D5
      B300ECDFC200E6CFA200E6CFA200E7D1A500EBD9B400E5D5B500E5D5B500B8A4
      8700AF9878009E866C009E866C00C8BBAE00FDFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFE00FFFFFE005959
      DC009292F9008F8FF7008F8FF7008F8FF7008585F5009292DA009292DA005F5F
      D7009494FC008F8FF7008F8FF7008F8FF7008F8FF7009393FC009393FC005454
      D400FDFDFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009F9FDF009F9FDF008282F4008F8FF7008F8FF7008F8FF7009292
      F9005959DC00FFFFFE00FFFFFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006F9D68006F9D680018814D007DCCE40000000000000000000000
      0000EACCA900F3D3AE00F3D3AE00B2BD850026731F003A6735003A673500AB91
      7700D2BC9400EAD4A700EAD4A700E6D0A300E9DBBE00E4CFA200E4CFA200E9D9
      B600EADAB700E4D0A700E4D0A70099826B00E9E4DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7A7E200A7A7E2008686
      F6008F8FF7008F8FF7008F8FF7009292FA005B5BD8000000000000000000FEFE
      FC005454D4009494FC009494FC008F8FF7008F8FF7008F8FF7008F8FF7009393
      FC005454D400FDFDFC00FDFDFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005C5CD8009292FA008F8FF7008F8FF7008F8F
      F7008686F600A7A7E200A7A7E200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FAFBFA001A5D0A001A5D0A007AEBFF00B7BABC000000000000000000F7F1
      E700E5CD9E00E7D2A600E7D2A600EDD4AA00FFDDB700ACB97F00ACB97F000C60
      0B00817C5B00C6B39B00C6B39B00EDDFC100E7D1A400E6D1A500E6D1A500E6D0
      A400E6CFA200ECE0C800ECE0C800B1987500B7A79600FAF8F700FAF8F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007878DC007878DC009090
      F9008F8FF7008F8FF7008F8FF7008989F700A0A0E00000000000000000000000
      0000FDFDFC005454D4005454D4009393FC008F8FF7008F8FF7008F8FF7008F8F
      F7009393FC005454D4005454D400FDFDFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A0A0E0008989F7008F8FF7008F8FF7008F8F
      F7009090F9007878DC007878DC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009CC39C007B8B6B007B8B6B0064ECFF00C8B8B6000000000000000000FCFA
      F600E3CC9C00E6D1A500E6D1A500E6D0A500E5CFA200F1D8B100F1D8B100F6E4
      CE00307D2C00596D3E00596D3E00B9A28700E7D1A500E7D2A700E7D2A700E6D1
      A600E6D1A500E2CEA300E2CEA300EAD8B2009D866E00ECE8E300ECE8E3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007878DC007878DC009090
      F9008F8FF7008F8FF7008F8FF7008989F700A0A0E00000000000000000000000
      0000FDFDFC005454D4005454D4009393FC008F8FF7008F8FF7008F8FF7008F8F
      F7009393FC005454D4005454D400FDFDFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A0A0E0008989F7008F8FF7008F8FF7008F8F
      F7009090F9007878DC007878DC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009CC39C007B8B6B007B8B6B0064ECFF00C8B8B6000000000000000000FCFA
      F600E3CC9C00E6D1A500E6D1A500E6D0A500E5CFA200F1D8B100F1D8B100F6E4
      CE00307D2C00596D3E00596D3E00B9A28700E7D1A500E7D2A700E7D2A700E6D1
      A600E6D1A500E2CEA300E2CEA300EAD8B2009D866E00ECE8E300ECE8E3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005959DA005959DA009292
      F9008F8FF7009292F9009292F9006161E100F5F5F90000000000000000000000
      000000000000FDFDFC00FDFDFC005454D4009494FC008F8FF7008F8FF7008F8F
      F7008F8FF7009393FC009393FC005454D400FDFDFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5F5F9006161E1009292F9009292F9008F8F
      F7009292F9005959DA005959DA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000075AA7300A2A09300A2A093006BF0FF00C0B2B0000000000000000000F4F4
      F700E6D1A700E6D0A300E6D0A300EAD3A500EFE1C600F1E0BE00F1E0BE00EFD6
      A700FFE4C700548F4400548F44004C704200B9A08300E7D2A600E7D2A600E7D2
      A700E6D1A600E3CEA200E3CEA200F0E3C7009E876B00DDD5CD00DDD5CD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F8006666E4006666E4009191
      F8008F8FF7009191F9009191F9006363DA000000000000000000000000000000
      0000000000000000000000000000FDFDFC005454D4009494FC009494FC008F8F
      F7008F8FF7008F8FF7008F8FF7009393FC005454D400FDFDFC00FDFDFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006464DA009191F9009191F9008F8F
      F7009191F8006666E4006666E400F1F1F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000077AC76009B9B8E009B9B8E008DF7FF009FACB000DDD3CF00DDD3CF00D3C3
      A800E5D3AE00EAD9B600EAD9B600B8A886009F968100998B6D00998B6D009686
      6300CBB78B00FFE6BE00FFE6BE0062974E004E6A3600BDA58700BDA58700E9D4
      A700E6D1A600E6D0A300E6D0A300EADBBA00BFA88200C1B3A500C1B3A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6D6F0007575EC007575EC009090
      F8008F8FF7008F8FF9008F8FF9007E7EDD000000000000000000000000000000
      000000000000000000000000000000000000FDFDFC005454D4005454D4009494
      FC008F8FF7008F8FF7008F8FF7008F8FF7009393FC005454D4005454D400FDFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E7EDD008F8FF9008F8FF9008F8F
      F7009090F8007575EC007575EC00D7D7F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009CC49B0075866E0075866E00C5FAFF0074B8C400DEC29900DEC29900DCC6
      9D00E3CC9C00C0B7A200C0B7A200F5F7F9000000000000000000000000000000
      0000B3B1AD008174560081745600FFE5C5004B8F47006A7349006A734900C7B1
      8E00EAD4A600E7D3AC00E7D3AC00E9DBBE00D3BD9600BBAB9C00BBAB9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6D6F0007575EC007575EC009090
      F8008F8FF7008F8FF9008F8FF9007E7EDD000000000000000000000000000000
      000000000000000000000000000000000000FDFDFC005454D4005454D4009494
      FC008F8FF7008F8FF7008F8FF7008F8FF7009393FC005454D4005454D400FDFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E7EDD008F8FF9008F8FF9008F8F
      F7009090F8007575EC007575EC00D7D7F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009CC49B0075866E0075866E00C5FAFF0074B8C400DEC29900DEC29900DCC6
      9D00E3CC9C00C0B7A200C0B7A200F5F7F9000000000000000000000000000000
      0000B3B1AD008174560081745600FFE5C5004B8F47006A7349006A734900C7B1
      8E00EAD4A600E7D3AC00E7D3AC00E9DBBE00D3BD9600BBAB9C00BBAB9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CACAEC007B7BF0007B7BF0009090
      F7008F8FF7008E8EF9008E8EF9008A8ADE000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00FDFDFC005454
      D4009494FC008F8FF7008F8FF7008F8FF7008F8FF7009393FC009393FC005454
      D400FDFDFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008989DE008E8EF9008E8EF9008F8F
      F7009090F7007B7BF0007B7BF000CACAEC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDEEDE0041713F0041713F00DDD3D60058BABA00F5D4A400F5D4A400E8D1
      A400D8CAAD000000000000000000000000000000000000000000000000000000
      000000000000F0F1F400F0F1F4007D6E5100FFEED9001F711C001F711C00958A
      7500DACAAC00EAD9B500EAD9B500E8D2A400CEB89000BEAFA200BEAFA2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CACAEC007B7BF0007B7BF0009090
      F7008F8FF7008E8EF9008E8EF9008989DE000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FC005454D4009494FC009494FC008F8FF7008F8FF7008F8FF7008F8FF7009393
      FC005454D400FDFDFC00FDFDFC00000000000000000000000000000000000000
      0000000000000000000000000000000000008A8ADE008E8EF9008E8EF9008F8F
      F7009090F7007B7BF0007B7BF000CACAEC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8EAED0016601400166014009F847400C7C1A400EAD2A500EAD2A500E3CD
      9D00F2EEE700000000000000000000000000B6AB9200DFC69200DFC69200EBDC
      BD00000000000000000000000000C8C8C800D4C3A700E9D6A800E9D6A8000F5C
      0D00B3987F00E7D1A400E7D1A400EAD5A900CAB58F00A08B7700A08B7700E3DC
      D500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6D6F0007575EC007575EC009090
      F8008F8FF7008F8FF9008F8FF9007E7EDD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFC005454D4005454D4009494FC008F8FF7008F8FF7008F8FF7008F8F
      F7009393FC005454D4005454D400FDFDFC000000000000000000000000000000
      0000000000000000000000000000000000007E7EDD008F8FF9008F8FF9008F8F
      F7009090F8007575EC007575EC00D7D7F0000000000000000000000000000000
      000000000000F1EEEC00F1EEEC00DDD6CF00E6E0DA00FDFDFE00FDFDFE00F5F2
      F000DDC1A100568C4300568C430085805D00DFC9A200EBD8B200EBD8B200E2CA
      9A00F9F9F8000000000000000000EDEEEE0086744E00BFAB8100BFAB8100B6A3
      7C00BCB19C00AD9C7800AD9C7800B39E7000D3C7AE00F6D9AE00F6D9AE0088A9
      6800536C3B00CBB59100CBB59100EBD5A900E3CEA400B39C7A00B39C7A00A692
      7E00F2EEEB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6D6F0007575EC007575EC009090
      F8008F8FF7008F8FF9008F8FF9007E7EDD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFC005454D4005454D4009494FC008F8FF7008F8FF7008F8FF7008F8F
      F7009393FC005454D4005454D400FDFDFC000000000000000000000000000000
      0000000000000000000000000000000000007E7EDD008F8FF9008F8FF9008F8F
      F7009090F8007575EC007575EC00D7D7F0000000000000000000000000000000
      000000000000F1EEEC00F1EEEC00DDD6CF00E6E0DA00FDFDFE00FDFDFE00F5F2
      F000DDC1A100568C4300568C430085805D00DFC9A200EBD8B200EBD8B200E2CA
      9A00F9F9F8000000000000000000EDEEEE0086744E00BFAB8100BFAB8100B6A3
      7C00BCB19C00AD9C7800AD9C7800B39E7000D3C7AE00F6D9AE00F6D9AE0088A9
      6800536C3B00CBB59100CBB59100EBD5A900E3CEA400B39C7A00B39C7A00A692
      7E00F2EEEB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F8006666E4006666E4009191
      F8008F8FF7009191F9009191F9006464DA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFC00FDFDFC005454D4009494FC008F8FF7008F8FF7008F8F
      F7008F8FF7009393FC009393FC005454D400FDFDFC0000000000000000000000
      0000000000000000000000000000000000006363DA009191F9009191F9008F8F
      F7009191F8006666E4006666E400F1F1F800000000000000000000000000F9F8
      F800DCD5CE00CDBCA200CDBCA200B59F7F0097806800BBAC9E00BBAC9E00E2D1
      B200ECD4A600DBCFA000DBCFA00024631F00C0AD9C00EBD4A700EBD4A700E3CC
      9C00F8F6F200000000000000000000000000E5E5E500E4E5E600E4E5E600E4E5
      E600E4E3E200E4E4E300E4E4E300ECEDEE008F8A7E00EEDAB100EEDAB100FFE0
      BA0018691600A9917800A9917800E5D0A400E8D2A600F2E2BF00F2E2BF00987F
      6300BCAC9C00F7F6F400F7F6F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005959DA005959DA009292
      F9008F8FF7009292F9009292F9006060E100F5F5FA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFC005454D4009494FC009494FC008F8F
      F7008F8FF7008F8FF7008F8FF7009393FC005454D400FDFDFC00FDFDFC000000
      0000000000000000000000000000F5F5F9006161E1009292F9009292F9008F8F
      F7009292F9005959DA005959DA000000000000000000FDFDFF00FDFDFF00DACE
      BC00B19C7E00ECD6A600ECD6A600ECD6A800E1CFAB00B2A18E00B2A18E00D1BE
      9C00E8D2A500F9DAB200F9DAB20044863600887F5F00D9C39A00D9C39A00E7D0
      A000F2EBDC00000000000000000000000000FEFEFE000000000000000000FEFE
      FF0000000000000000000000000000000000A2A09900E9D6B000E9D6B000F0DF
      C800A1B578004B6835004B683500D1B99400E9D3A500E7D7B600E7D7B600E5D3
      AC00967D6100C9BCAF00C9BCAF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007878DC007878DC009090
      F9008F8FF7008F8FF7008F8FF7008989F700A1A1E00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFC005454D4005454D4009393
      FC008F8FF7008F8FF7008F8FF7008F8FF7009393FC005454D4005454D400FDFD
      FC00000000000000000000000000A0A0E0008989F7008F8FF7008F8FF7008F8F
      F7009090F9007878DC007878DC000000000000000000EFEAE300EFEAE300E4CC
      9A00EAD4A600E7D6B200E7D6B200E6D5B100E7D1A500E9D3A600E9D3A600E5D4
      AF00E5D6B700EAD4AB00EAD4AB00E8DCBF0014601200B59D8D00B59D8D00E7D7
      B300EDE2C9000000000000000000000000008C877900D2BA8800D2BA8800EAD1
      9E00D7C5A000000000000000000000000000A8A49A00E7D2A600E7D2A600E5CF
      A400FADFBF001966180019661800B9A69800EAD9B700E7D7B600E7D7B600E8D5
      AC00D8C6A300A38E7900A38E7900F7F5F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007878DC007878DC009090
      F9008F8FF7008F8FF7008F8FF7008989F700A1A1E00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFC005454D4005454D4009393
      FC008F8FF7008F8FF7008F8FF7008F8FF7009393FC005454D4005454D400FDFD
      FC00000000000000000000000000A0A0E0008989F7008F8FF7008F8FF7008F8F
      F7009090F9007878DC007878DC000000000000000000EFEAE300EFEAE300E4CC
      9A00EAD4A600E7D6B200E7D6B200E6D5B100E7D1A500E9D3A600E9D3A600E5D4
      AF00E5D6B700EAD4AB00EAD4AB00E8DCBF0014601200B59D8D00B59D8D00E7D7
      B300EDE2C9000000000000000000000000008C877900D2BA8800D2BA8800EAD1
      9E00D7C5A000000000000000000000000000A8A49A00E7D2A600E7D2A600E5CF
      A400FADFBF001966180019661800B9A69800EAD9B700E7D7B600E7D7B600E8D5
      AC00D8C6A300A38E7900A38E7900F7F5F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7A7E200A7A7E2008686
      F6008F8FF7008F8FF7008F8FF7009292FA005C5CD80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00FDFDFC005454
      D4009494FC008F8FF7008F8FF7008F8FF7008F8FF7009393FC009393FC005454
      D400FEFEFC0000000000000000005B5BD8009292FA008F8FF7008F8FF7008F8F
      F7008686F600A7A7E200A7A7E2000000000000000000EFE3C900EFE3C900ECDB
      B700EAD9B700E5D0A500E5D0A500E7D2A500EBD5A900EBD5A900EBD5A900E7D2
      A500EAD5AA00EBD9B300EBD9B300F3D6AC0089AA69004D6A33004D6A3300C4B3
      A100E6CD9A00FBFAF800FBFAF800000000000000000081796800817968009281
      5C00D4CDBF00000000000000000000000000A89F8A00E6D5B100E6D5B100E6D1
      A700F5D8AE00578D4200578D420089856D00E5D3B000E8D7B500E8D7B500E4D5
      B600EBD8AF00A8937C00A8937C00F2F0ED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFD00FFFFFD005959
      DC009292F9008F8FF7008F8FF7008F8FF7008282F400A0A0DF00A0A0DF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FC005454D4009494FC009494FC008F8FF7008F8FF7008F8FF7008F8FF7009393
      FC005E5ED7009292DA009292DA008585F5008F8FF7008F8FF7008F8FF7009292
      F9005959DD00FFFFFD00FFFFFD000000000000000000ECEAE700ECEAE700A090
      6D00C3B08800EBD6A900EBD6A900D6C29700A4967800B8A78200B8A78200DFCB
      A000A4967700B8A78200B8A78200EAD5A900FFDDB70036802E0036802E007F7F
      6500CCB68F00E8D3A600E8D3A600000000000000000000000000000000000000
      0000000000000000000000000000EFF0F300BEAA8000EAD4A700EAD4A700E2D1
      AC00EDD7B400AAB87E00AAB87E004B6A3A00DAC19900E7D9BC00E7D9BC00E5D7
      B900E4D0A600B6A59300B6A59300FBFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008282
      DA008F8FFA008F8FF7008F8FF7008F8FF7009393F9005D5DDF005D5DDF00EAEA
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFC005454D4005454D4009494FC008F8FF7008F8FF7008F8FF7008F8F
      F7009393FA007575E9007575E9009292F8008F8FF7008F8FF7008F8FF7008F8F
      FA008282DA0000000000000000000000000000000000FDFDFE00FDFDFE000000
      0000998C6F00EAD09D00EAD09D00E9E2D50000000000A49B8800A49B8800EDDD
      BC0000000000A39A8700A39A8700E9D3A500E8D2A700F7DAB300F7DAB300186E
      1C0093846800D1BB9300D1BB9300E7D1A300F3EDDF0000000000000000000000
      000000000000EBEBEA00EBEBEA00CABA9A00EAD4A600E6D1A600E6D1A600E6D0
      A400E7D4B200D9CD9E00D9CD9E002B602000D5BC9700EAD8B500EAD8B500E2CD
      A200E3D3B400EDEAE800EDEAE800FEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008282
      DA008F8FFA008F8FF7008F8FF7008F8FF7009393F9005D5DDF005D5DDF00EAEA
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFC005454D4005454D4009494FC008F8FF7008F8FF7008F8FF7008F8F
      F7009393FA007575E9007575E9009292F8008F8FF7008F8FF7008F8FF7008F8F
      FA008282DA0000000000000000000000000000000000FDFDFE00FDFDFE000000
      0000998C6F00EAD09D00EAD09D00E9E2D50000000000A49B8800A49B8800EDDD
      BC0000000000A39A8700A39A8700E9D3A500E8D2A700F7DAB300F7DAB300186E
      1C0093846800D1BB9300D1BB9300E7D1A300F3EDDF0000000000000000000000
      000000000000EBEBEA00EBEBEA00CABA9A00EAD4A600E6D1A600E6D1A600E6D0
      A400E7D4B200D9CD9E00D9CD9E002B602000D5BC9700EAD8B500EAD8B500E2CD
      A200E3D3B400EDEAE800EDEAE800FEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      FB005959DD009393FA009393FA008F8FF7008F8FF7009595FB009595FB005656
      D600FDFDFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFC00FDFDFC005454D4009494FC008F8FF7008F8FF7008F8F
      F7008F8FF7009191F8009191F8008F8FF7008F8FF7009393FA009393FA005959
      DD00F9F9FB0000000000000000000000000000000000FBFBFB00FBFBFB000000
      0000B3B3B400E8DFCC00E8DFCC000000000000000000B6B1A500B6B1A500DAC5
      990000000000B2ADA100B2ADA100E4CD9E00ECD6A900F0D8AC00F0D8AC00ECD7
      AC001066110095846A0095846A00CEB99300E9D2A200E0C99A00E0C99A00DFCB
      A100DAC49700E1CA9900E1CA9900E6D7B900E6D0A300E6D1A600E6D1A600E7D2
      A500E5D3B000EAD4A800EAD4A800205E1800E3BC9300C1B59600C1B59600E1DE
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009D9DDF008080F3008080F3009090F7008F8FF7008F8FF7008F8FF7009494
      FB005555D500EAEAF500EAEAF500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFC005F5FD7009393FA009393FA008F8F
      F7008F8FF7008F8FF7008F8FF7008F8FF7009090F7008080F3008080F3009D9D
      DF000000000000000000000000000000000000000000FBFBFB00FBFBFB000000
      0000BDBDBE00E8E9EB00E8E9EB0000000000FEFEFF00CECDC800CECDC800C6AF
      7F0000000000D3D1CB00D3D1CB009E907300AC9F8200A2947700A2947700E8CF
      A400E5D4AC00156C1900156C1900857E5E00C6AE8D00EAD4A800EAD4A800EBD5
      A800EFD6A900ECD5A800ECD5A800E4CFA200E6D5B500E2CC9F00E2CC9F00D3BF
      9B00E8D4AE00E4E0CD00E4E0CD0033611C0067CCD6009EB9C1009EB9C1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006262D3006262D3009090FB008F8FF7008F8FF7008F8FF7008F8F
      F7009595FB005D5DDF005D5DDF00A0A0DF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009292DA007575E9007575E9009191
      F8008F8FF7008F8FF7008F8FF7008F8FF7009090FB006262D3006262D3000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE000000
      0000CECECE00F8F8F900F8F8F900E9E8E400D9D2C500F1F2F400F1F2F400AF9A
      6E00FCF8F00000000000000000000000000000000000D8D9DA00D8D9DA00C7B6
      9100EFDCBD00F5DEBC00F5DEBC002B792600596F3F00AE937C00AE937C00D0BB
      97008AA28A00AFAA8A00AFAA8A00F8D4A200F1D6AF00E9D2AC00E9D2AC00E9E4
      E20000000000B7D1B600B7D1B6003E6E450039D4F000FCEBE800FCEBE8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006262D3006262D3009090FB008F8FF7008F8FF7008F8FF7008F8F
      F7009595FB005D5DDF005D5DDF00A0A0DF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009292DA007575E9007575E9009191
      F8008F8FF7008F8FF7008F8FF7008F8FF7009090FB006262D3006262D3000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE000000
      0000CECECE00F8F8F900F8F8F900E9E8E400D9D2C500F1F2F400F1F2F400AF9A
      6E00FCF8F00000000000000000000000000000000000D8D9DA00D8D9DA00C7B6
      9100EFDCBD00F5DEBC00F5DEBC002B792600596F3F00AE937C00AE937C00D0BB
      97008AA28A00AFAA8A00AFAA8A00F8D4A200F1D6AF00E9D2AC00E9D2AC00E9E4
      E20000000000B7D1B600B7D1B6003E6E450039D4F000FCEBE800FCEBE8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005454D3009393FC008F8FF7008F8FF7008F8F
      F7008F8FF7009393F9009393F9008282F4005C5CD800A0A0E000A0A0E000F6F6
      FA00000000000000000000000000000000000000000000000000000000000000
      0000F5F5F900A0A0E000A0A0E0005B5BD8008585F5009292F8009292F8008F8F
      F7008F8FF7008F8FF7008F8FF7009393FC005454D30000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00000000000000000000000000B8AD9800F0E3C90000000000000000009887
      6100F8EFDD000000000000000000A0957C00ECDEC200E3D0A800E3D0A800EBD8
      B000E7D1A400E8D1A600E8D1A600FFDDB70078A35F00155F1800155F18005B4F
      3E00C09E84009BB1A0009BB1A00070DADB006BB9C5009BB0B8009BB0B800C0BC
      BE00BEBDCE0007570000075700001EB9CE00EDEBEC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFC005454D3009090FB009090FB009090
      F7008F8FF7008F8FF7008F8FF7008F8FF7009292FA008989F7008989F7006060
      E1006464DA007E7EDD007E7EDD008989DE008989DE007E7EDD007E7EDD006363
      DA006161E1008989F7008989F7009292FA008F8FF7008F8FF7008F8FF7008F8F
      F7009090F7009090FB009090FB005454D300FDFDFC0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB0000000000FAFBFE00FAFBFE00B5A07400EAD9B40000000000000000009F93
      7B00F0E1C2000000000000000000ACA49400B2A99600B8B5AE00B8B5AE009B90
      7900DFC99B00E6D1A500E6D1A500E5CFA200F8E0C400E1D1A200E1D1A200488B
      3A00165610006D7A63006D7A6300C9BCC300A9CCD80079CDE10079CDE1003EB2
      C000005E11007CA88A007CA88A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006262D3006262D3008080
      F3009393FA008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7009292
      F9009191F9008F8FF9008F8FF9008E8EF9008E8EF9008F8FF9008F8FF9009191
      F9009292F9008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7009393
      FA008080F3006262D3006262D300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB0000000000CBCAC700CBCAC700F3EBDC00EAE1CF000000000000000000C0C1
      C500F0E9DD00000000000000000000000000000000000000000000000000DADB
      DC00D8CDB500E8D4AA00E8D4AA00E5D4B100E7D6B200E8D0A300E8D0A300F4D4
      AB00C9BFAA008FBE91008FBE91003E843C0031742A003172250031722500508B
      4200DBE2D5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006262D3006262D3008080
      F3009393FA008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7009292
      F9009191F9008F8FF9008F8FF9008E8EF9008E8EF9008F8FF9008F8FF9009191
      F9009292F9008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7009393
      FA008080F3006262D3006262D300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB0000000000CBCAC700CBCAC700F3EBDC00EAE1CF000000000000000000C0C1
      C500F0E9DD00000000000000000000000000000000000000000000000000DADB
      DC00D8CDB500E8D4AA00E8D4AA00E5D4B100E7D6B200E8D0A300E8D0A300F4D4
      AB00C9BFAA008FBE91008FBE91003E843C0031742A003172250031722500508B
      4200DBE2D5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009D9D
      DF005959DD008F8FFA008F8FFA009292F9008F8FF7008F8FF7008F8FF7008F8F
      F7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8F
      F7008F8FF7008F8FF7008F8FF7008F8FF7009292F9008F8FFA008F8FFA005959
      DD009D9DDF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8F800FEFEFF00FEFEFF000000000000000000F9F9F900F9F9F9000000
      0000E5D6B900DBC18C00DBC18C00DDC59400D4BD8E0097816B0097816B00F3F0
      EE00000000000000000000000000FCFCFE0000000000EFE0C200EFE0C200CCB8
      9800E1D9D4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9FB008282DA008282DA005959DD008686F6009090F9009090F9009292
      F9009191F8009090F8009090F8009090F7009090F7009090F8009090F8009191
      F8009292F9009090F9009090F9008686F6005959DC008282DA008282DA00F9F9
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2ECDF00F3EDE200F3EDE200ECDCBB00E5CE9D00C8BBAF00C8BBAF00FAF9
      F8000000000000000000000000000000000000000000FEFDFD00FEFDFD00F2ED
      E300FCFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFD00A7A7E2007878DC007878DC005959
      DA006666E4007575EC007575EC007C7CF0007C7CF0007575EC007575EC006666
      E4005959DA007878DC007878DC00A7A7E200FFFFFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F1EB00FCFBFB00FCFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFD00A7A7E2007878DC007878DC005959
      DA006666E4007575EC007575EC007C7CF0007C7CF0007575EC007575EC006666
      E4005959DA007878DC007878DC00A7A7E200FFFFFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F1EB00FCFBFB00FCFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F800D6D6F000D6D6F000CACAEC00CACAEC00D6D6F000D6D6F000F1F1
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      28000000C0000000900000000100010000000000800D00000000000000000000
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
      00000000000000000000000000000000FFFFF00FFFFFFFFFFFFFFFFF00000000
      0000000000000000FFFE00007FFFFFFFFF9FFFFF000000000000000000000000
      FFFE00007FFFFFFFFF9FFFFF000000000000000000000000FFF000000FFFFFFF
      F801FFFF000000000000000000000000FFE0000007FFFFFFF001FFFF00000000
      0000000000000000FF80000001FFFFFFF000FFFF000000000000000000000000
      FF80000001FFFFFFF000FFFF000000000000000000000000FE000000007FFFFF
      F800FFFF000000000000000000000000FE000FF0007FFFFFFE00FFFF00000000
      0000000000000000F800FFFF001FFFFFF1007FFF000000000000000000000000
      F800FFFF001FFFFFF1007FFF000000000000000000000000F0007FFF800FFFFF
      80000FFF000000000000000000000000E0001FFFE007FFFF000000FF00000000
      0000000000000000E0000FFFF007FFFE0000007F000000000000000000000000
      E0000FFFF007FFFE0000007F000000000000000000000000800007FFF801FFF8
      7000007F000000000000000000000000806001FFFE01FFF06000001F00000000
      0000000000000000807000FFFE01FFF06000001F000000000000000000000000
      807000FFFE01FFF06000001F0000000000000000000000008078007FFE01FFF0
      6000001F00000000000000000000000000FE001FFF00FFF00000001F00000000
      000000000000000000FF000FFF00FFF000F0001F000000000000000000000000
      00FF000FFF00FFF000F0001F00000000000000000000000000FF8007FF00FFF0
      07F8001F00000000000000000000000000FFE001FF00FFF0070E000F00000000
      000000000000000000FFF000FF00F80006000007000000000000000000000000
      00FFF000FF00F8000600000700000000000000000000000000FFF8007F00E000
      07000001000000000000000000000000807FFE001E018000076F000100000000
      0000000000000000807FFF000E01800007070000000000000000000000000000
      807FFF000E01800007070000000000000000000000000000807FFF8006018000
      01870000000000000000000000000000801FFFE00001800001FE000000000000
      0000000000000000E00FFFF00007908800780000000000000000000000000000
      E00FFFF00007908800780000000000000000000000000000E007FFF800079188
      0000000F000000000000000000000000F001FFFE000F91080000001F00000000
      0000000000000000F800FFFF001F90078000081F000000000000000000000000
      F800FFFF001F90078000081F000000000000000000000000FE000FF0007FEE66
      0000007F000000000000000000000000FE000000007FE866000001FF00000000
      0000000000000000FF80000001FFE867E00007FF000000000000000000000000
      FF80000001FFE867E00007FF000000000000000000000000FFE0000007FFF190
      0E87FFFF000000000000000000000000FFF000000FFFFFF00F87FFFF00000000
      0000000000000000FFFE00007FFFFFFF1FFFFFFF000000000000000000000000
      FFFE00007FFFFFFF1FFFFFFF000000000000000000000000FFFFF00FFFFFFFFF
      FFFFFFFF000000000000000000000000FF800000000FFFFFFFFFFFFFFF800000
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
  object rom_ite: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = TEdicao
    AutoCalcFields = False
    AfterScroll = rom_iteAfterScroll
    BufferChunks = 2500
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
      DisplayFormat = '#,0.00###'
    end
    object rom_iteROM_PREC: TFloatField
      FieldName = 'ROM_PREC'
      Origin = '"ROM_ITE_003"."ROM_PREC"'
      DisplayFormat = '#,0.00###'
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
  object SQLFKConsulta: TIBSQL
    Database = dmDADOS.ibDB
    Transaction = TEdicao
    Left = 96
    Top = 240
  end
end
