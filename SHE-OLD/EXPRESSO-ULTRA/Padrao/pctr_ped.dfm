inherited frmctr_ped: Tfrmctr_ped
  Left = 268
  Top = 34
  HelpType = htKeyword
  Caption = 'Controle de Pedidos'
  ClientHeight = 828
  ClientWidth = 1510
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label23: TLabel [0]
    Left = 223
    Top = 253
    Width = 52
    Height = 13
    Caption = 'ROM_CCLI'
  end
  inherited sbMSG: TStatusBar
    Top = 809
    Width = 1510
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
    Left = 1509
    Width = 1
    Height = 734
    Caption = 'd'
  end
  inherited SBMenu: TSpeedBar
    Width = 1510
    inherited siREF: TSpeedItem
      Visible = False
    end
    inherited siPSQ: TSpeedItem
      Left = 3
    end
    object SIEstoque: TSpeedItem [6]
      BtnCaption = 'Estoque'
      Cursor = crHandPoint
      Hint = 'Consulta Estoque'
      ImageIndex = 13
      Spacing = 1
      Left = 591
      Top = 3
      Visible = True
      OnClick = SIEstoqueClick
      SectionName = 'Movimento'
    end
    object SINovo: TSpeedItem [7]
      BtnCaption = '[Ins] Novo'
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de Pedido'
      ImageIndex = 4
      Spacing = 1
      Left = 87
      Top = 3
      Visible = True
      OnClick = SINovoClick
      SectionName = 'Movimento'
    end
    object SIARO: TSpeedItem [8]
      BtnCaption = 'Alterar'
      Cursor = crHandPoint
      Hint = 'Altera'#231#227'o de Pedido'
      ImageIndex = 5
      Spacing = 1
      Left = 171
      Top = 3
      Visible = True
      OnClick = siAROClick
      SectionName = 'Movimento'
    end
    object SICRO: TSpeedItem [9]
      BtnCaption = 'Cancelar'
      Cursor = crHandPoint
      Hint = 'Cancelamento de Pedido'
      ImageIndex = 6
      Spacing = 1
      Left = 255
      Top = 3
      Visible = True
      OnClick = siCROClick
      SectionName = 'Movimento'
    end
    object SICLI: TSpeedItem [10]
      BtnCaption = 'Cad. Cliente'
      Cursor = crHandPoint
      Hint = 'Cadastro de Clientes'
      ImageIndex = 7
      Spacing = 1
      Left = 339
      Top = 3
      Visible = True
      OnClick = siCLIClick
      SectionName = 'Movimento'
    end
    object SIINF: TSpeedItem [11]
      BtnCaption = 'Info. Cliente'
      Cursor = crHandPoint
      Hint = 'Informa'#231#245'es Comerciais do Cliente'
      ImageIndex = 8
      Spacing = 1
      Left = 423
      Top = 3
      Visible = True
      OnClick = siINFClick
      SectionName = 'Movimento'
    end
    object SIEXP: TSpeedItem [12]
      BtnCaption = 'Expedi'#231#227'o'
      Cursor = crHandPoint
      Hint = 'Separa'#231#227'o de Pedidos'
      ImageIndex = 9
      Spacing = 1
      Left = 675
      Top = 3
      Visible = True
      OnClick = SIEXPClick
      SectionName = 'Movimento'
    end
    object SIROM: TSpeedItem [13]
      BtnCaption = 'Romaneios'
      Cursor = crHandPoint
      Hint = 'Romaneios de Vendas'
      ImageIndex = 10
      Spacing = 1
      Left = 759
      Top = 3
      Visible = True
      OnClick = SIROMClick
      SectionName = 'Movimento'
    end
    object SIFIN: TSpeedItem [14]
      BtnCaption = 'Finalizar'
      Cursor = crHandPoint
      Hint = 'Finaliza venda e baixa o pedido'
      ImageIndex = 11
      Spacing = 1
      Left = 927
      Top = 3
      Visible = True
      OnClick = SIFINClick
      SectionName = 'Movimento'
    end
    inherited siREL: TSpeedItem
      Left = 843
    end
    object SIFCP: TSpeedItem [16]
      BtnCaption = 'Ficha T'#233'cnica'
      Cursor = crHandPoint
      Hint = 'Ficha T'#233'cnica de Produtos'
      ImageIndex = 12
      Spacing = 1
      Left = 507
      Top = 3
      Visible = True
      OnClick = SIFCPClick
      SectionName = 'Movimento'
    end
    inherited siSAIR: TSpeedItem
      Left = 1011
    end
  end
  inherited pnlpri: TPanel
    Width = 1509
    Height = 734
    inherited pnlbot: TPanel
      Top = 484
      Width = 1509
      Height = 250
      Visible = True
      object DBGFKConsulta: TdxDBGrid
        Left = 0
        Top = 0
        Width = 1289
        Height = 250
        Bands = <
          item
            Caption = 'Produtos'
          end
          item
            Caption = 'Pronta Entrega'
            Width = 86
          end
          item
            Caption = 'Pedido'
          end
          item
            Caption = 'Expedi'#231#227'o'
          end
          item
            Caption = 'Descontos'
          end
          item
            Caption = 'Sum'#225'rio'
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'ID'
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        BorderStyle = bsNone
        Color = 13421258
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnKeyDown = DBGConsultaKeyDown
        AutoSearchColor = 9395
        AutoSearchTextColor = clWhite
        BandColor = clGray
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWhite
        BandFont.Height = -12
        BandFont.Name = 'Segoe UI Semibold'
        BandFont.Style = [fsBold, fsItalic]
        DataSource = dtsrom_ite
        Filter.Active = True
        Filter.Criteria = {00000000}
        GridLineColor = clSilver
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -12
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
        OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -12
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        ShowBands = True
        ShowGrid = False
        OnCustomDrawCell = DBGFKConsultaCustomDrawCell
        object DBGFKConsultaITEM: TdxDBGridMaskColumn
          Color = clGray
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          MinWidth = 40
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
          DisableFilter = True
        end
        object DBGFKConsultaSKU: TdxDBGridMaskColumn
          Color = clGray
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          MinWidth = 50
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SKU'
        end
        object DBGFKConsultaDGCP: TdxDBGridMaskColumn
          Tag = 290
          Color = clHighlightText
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          MinWidth = 60
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DGCP'
        end
        object DBGFKConsultaDECP: TdxDBGridMaskColumn
          Tag = 150
          Color = clHighlightText
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          MinWidth = 100
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DECP'
        end
        object DBGFKConsultaUCOM: TdxDBGridMaskColumn
          Color = clHighlightText
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UCOM'
        end
        object DBGFKConsultaEPE_QTDE: TdxDBGridMaskColumn
          Color = clHighlightText
          HeaderAlignment = taRightJustify
          MinWidth = 90
          Width = 90
          BandIndex = 1
          RowIndex = 0
          FieldName = 'EPE_QTDE'
          DisableFilter = True
        end
        object DBGFKConsultaQTDE: TdxDBGridMaskColumn
          Color = clHighlightText
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 71
          BandIndex = 2
          RowIndex = 0
          FieldName = 'QTDE'
          SummaryFooterType = cstSum
          SummaryFooterField = 'QTDE'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object DBGFKConsultaVPRC_COM: TdxDBGridMaskColumn
          Color = clHighlightText
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          MinWidth = 60
          Width = 60
          BandIndex = 2
          RowIndex = 0
          FieldName = 'VPRC_COM'
          SummaryFooterType = cstAvg
          SummaryFooterField = 'VPRC_COM'
          SummaryFooterFormat = 'R$ #,0.00'
          DisableFilter = True
        end
        object DBGFKConsultaQTSP: TdxDBGridMaskColumn
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clBtnHighlight
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 70
          BandIndex = 3
          RowIndex = 0
          FieldName = 'QTSP'
          SummaryFooterType = cstSum
          SummaryFooterField = 'QTSP'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object DBGFKConsultaVTSP: TdxDBGridMaskColumn
          Color = clWindowText
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlightText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 80
          BandIndex = 3
          RowIndex = 0
          FieldName = 'VTSP'
          SummaryFooterType = cstSum
          SummaryFooterField = 'VTSP'
          SummaryFooterFormat = 'R$ #,0.00'
          DisableFilter = True
        end
        object DBGFKConsultaDESP: TdxDBGridMaskColumn
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clBtnHighlight
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 78
          BandIndex = 3
          RowIndex = 0
          FieldName = 'DESP'
        end
        object DBGFKConsultaDTSP: TdxDBGridDateColumn
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clBtnHighlight
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 92
          BandIndex = 3
          RowIndex = 0
          FieldName = 'DTSP'
        end
        object DBGFKConsultaPDSC: TdxDBGridMaskColumn
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          MinWidth = 55
          Width = 55
          BandIndex = 4
          RowIndex = 0
          FieldName = 'PDSC'
          SummaryFooterType = cstAvg
          SummaryFooterField = 'PDSC'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object DBGFKConsultaVDSC: TdxDBGridMaskColumn
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          MinWidth = 55
          Width = 70
          BandIndex = 4
          RowIndex = 0
          FieldName = 'VDSC'
          SummaryFooterType = cstSum
          SummaryFooterField = 'VDSC'
          SummaryFooterFormat = 'R$ #,0.00'
          DisableFilter = True
        end
        object DBGFKConsultaTSDE: TdxDBGridMaskColumn
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          MinWidth = 65
          Width = 80
          BandIndex = 5
          RowIndex = 0
          FieldName = 'TSDE'
          SummaryFooterType = cstSum
          SummaryFooterField = 'TSDE'
          SummaryFooterFormat = 'R$ #,0.00'
          DisableFilter = True
        end
        object DBGFKConsultaTCDE: TdxDBGridMaskColumn
          Color = 13078815
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HeaderAlignment = taRightJustify
          MinWidth = 65
          Width = 80
          BandIndex = 5
          RowIndex = 0
          FieldName = 'TCDE'
          SummaryFooterType = cstSum
          SummaryFooterField = 'TCDE'
          SummaryFooterFormat = 'R$ #,0.00'
          DisableFilter = True
        end
      end
      object PNLAmostras: TPanel
        Left = 1289
        Top = 0
        Width = 220
        Height = 250
        Cursor = crHandPoint
        Align = alRight
        BevelOuter = bvNone
        Color = clGray
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object PCAmostras: TdxPageControl
          Left = 0
          Top = 0
          Width = 220
          Height = 250
          Cursor = crHandPoint
          ActivePage = TSIMG_PAD
          Align = alClient
          HideButtons = False
          HotTrack = False
          MultiLine = True
          OwnerDraw = False
          ParentShowHint = False
          RaggedRight = False
          ScrollOpposite = False
          ShowHint = True
          TabHeight = 0
          TabOrder = 0
          TabPosition = dxtpBottom
          TabWidth = 0
          object TSIMG_PAD: TdxTabSheet
            Caption = 'Amostra'
            ParentShowHint = False
            ShowHint = True
            object EDIMG_PAD: TdxEdit
              Tag = 2
              Left = 6
              Top = 179
              Width = 199
              Color = clGray
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              Style.BorderColor = clGray
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Shadow = False
              TabOrder = 1
              Alignment = taCenter
              AutoSelect = False
              AutoSize = False
              MaxLength = 120
              ReadOnly = True
              Height = 16
              StoredValues = 67
            end
            object PNLIMG_PAD: TPanel
              Left = 10
              Top = 10
              Width = 200
              Height = 208
              Cursor = crHandPoint
              Hint = 'Click na imagem para ver em tamanho maior'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = IMG_PADClick
              object IMG_PAD: TImage
                Left = 10
                Top = 10
                Width = 179
                Height = 188
                Cursor = crHandPoint
                Hint = 'Click na imagem para ver em tamanho maior'
                Center = True
                ParentShowHint = False
                ShowHint = True
                Stretch = True
                OnClick = IMG_PADClick
              end
            end
          end
          object TSILA: TdxTabSheet
            Hint = 'Deixe a seta sob a imagem para visualizar instru'#231#227'o'
            Caption = 'Instru'#231#245'es de Lavagem'
            object PNLILA_BMP: TPanel
              Left = 10
              Top = 10
              Width = 200
              Height = 208
              Hint = 'Deixe a seta sob a imagem para visualizar instru'#231#227'o'
              TabOrder = 0
              object BILA_BMP1: TBevel
                Left = 4
                Top = 18
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP2: TBevel
                Left = 42
                Top = 18
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP3: TBevel
                Left = 80
                Top = 18
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP4: TBevel
                Left = 118
                Top = 18
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP5: TBevel
                Left = 156
                Top = 18
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP6: TBevel
                Left = 4
                Top = 84
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP7: TBevel
                Left = 42
                Top = 84
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP8: TBevel
                Left = 4
                Top = 150
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object DBILA_BMP1: TDBImage
                Left = 6
                Top = 20
                Width = 32
                Height = 32
                Cursor = crHandPoint
                DataField = 'IMG_ILA_BMP1'
                DataSource = DTSCAD_PRO_IMG_CDN
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsItalic]
                ParentFont = False
                Stretch = True
                TabOrder = 0
              end
              object DBILA_BMP2: TDBImage
                Left = 44
                Top = 20
                Width = 32
                Height = 32
                Cursor = crHandPoint
                DataField = 'IMG_ILA_BMP2'
                DataSource = DTSCAD_PRO_IMG_CDN
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsItalic]
                ParentFont = False
                Stretch = True
                TabOrder = 1
              end
              object DBILA_BMP3: TDBImage
                Left = 82
                Top = 20
                Width = 32
                Height = 32
                Cursor = crHandPoint
                DataField = 'IMG_ILA_BMP3'
                DataSource = DTSCAD_PRO_IMG_CDN
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsItalic]
                ParentFont = False
                Stretch = True
                TabOrder = 2
              end
              object DBILA_BMP4: TDBImage
                Left = 120
                Top = 20
                Width = 32
                Height = 32
                Cursor = crHandPoint
                DataField = 'IMG_ILA_BMP4'
                DataSource = DTSCAD_PRO_IMG_CDN
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsItalic]
                ParentFont = False
                Stretch = True
                TabOrder = 3
              end
              object DBILA_BMP5: TDBImage
                Left = 158
                Top = 20
                Width = 32
                Height = 32
                Cursor = crHandPoint
                DataField = 'IMG_ILA_BMP5'
                DataSource = DTSCAD_PRO_IMG_CDN
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsItalic]
                ParentFont = False
                Stretch = True
                TabOrder = 4
              end
              object DBILA_BMP6: TDBImage
                Left = 6
                Top = 86
                Width = 32
                Height = 32
                Cursor = crHandPoint
                DataField = 'IMG_ILA_BMP6'
                DataSource = DTSCAD_PRO_IMG_CDN
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsItalic]
                ParentFont = False
                Stretch = True
                TabOrder = 5
              end
              object DBILA_BMP7: TDBImage
                Left = 44
                Top = 86
                Width = 32
                Height = 32
                Cursor = crHandPoint
                DataField = 'IMG_ILA_BMP7'
                DataSource = DTSCAD_PRO_IMG_CDN
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsItalic]
                ParentFont = False
                Stretch = True
                TabOrder = 6
              end
              object DBILA_BMP8: TDBImage
                Left = 6
                Top = 152
                Width = 32
                Height = 32
                Cursor = crHandPoint
                DataField = 'IMG_ILA_BMP8'
                DataSource = DTSCAD_PRO_IMG_CDN
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsItalic]
                ParentFont = False
                Stretch = True
                TabOrder = 7
              end
            end
          end
        end
      end
    end
    inherited pnldbg: TPanel
      Width = 1509
      Height = 484
      inherited gbDET: TGroupBox
        Width = 1509
        Height = 484
        inherited SBEdicao: TSpeedBar
          Width = 0
          Height = 467
          Enabled = False
          Visible = False
          inherited siDEL: TSpeedItem
            Top = 65
          end
          inherited siSAV: TSpeedItem
            Top = 101
          end
          inherited siCAN: TSpeedItem
            Top = 137
          end
        end
        inherited DBGConsulta: TdxDBGrid
          Left = 2
          Width = 1505
          Height = 467
          Bands = <
            item
              Caption = 'Pedidos'
            end
            item
              Caption = 'Notas Fiscais'
            end
            item
              Caption = 'Clientes'
            end
            item
              Caption = 'Vendedores'
            end
            item
              Caption = 'Descontos'
            end
            item
              Caption = 'Sum'#225'rio'
            end
            item
              Caption = 'Cobran'#231'a'
            end
            item
              Caption = 'Situa'#231#227'o'
            end
            item
              Caption = 'Frete'
            end>
          DefaultLayout = False
          KeyField = 'ID'
          ShowSummaryFooter = True
          ParentFont = False
          BandColor = clGray
          BandFont.Color = clWhite
          BandFont.Height = -12
          BandFont.Name = 'Segoe UI Semibold'
          BandFont.Style = [fsBold, fsItalic]
          Filter.Active = True
          Filter.Criteria = {00000000}
          HideSelectionColor = clHighlight
          HighlightColor = clHighlight
          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
          ShowBands = True
          ShowGrid = False
          ShowRowFooter = True
          OnCustomDrawCell = dbgConsultaCustomDrawCell
          object dbgConsultaID: TdxDBGridMaskColumn
            Visible = False
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID'
            DisableFilter = True
          end
          object dbgConsultaDEPK: TdxDBGridMaskColumn
            Color = clGray
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MinWidth = 60
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEPK'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
          end
          object dbgConsultaDTPK: TdxDBGridDateColumn
            Color = clGray
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 61
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DTPK'
          end
          object DBGConsultaHTPK: TdxDBGridTimeColumn
            Color = clGray
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 46
            BandIndex = 0
            RowIndex = 0
            FieldName = 'HTPK'
          end
          object dbgConsultaSTPD: TdxDBGridMaskColumn
            Color = clGray
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'STPD'
          end
          object dbgConsultaCDNF: TdxDBGridMaskColumn
            MinWidth = 60
            Width = 60
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CDNF'
          end
          object dbgConsultaDTNF: TdxDBGridDateColumn
            Width = 61
            BandIndex = 1
            RowIndex = 0
            FieldName = 'DTNF'
          end
          object dbgConsultaDECD: TdxDBGridMaskColumn
            Width = 150
            BandIndex = 2
            RowIndex = 0
            FieldName = 'DECD'
          end
          object DBGConsultaCD_DEGP: TdxDBGridMaskColumn
            MinWidth = 60
            Visible = False
            Width = 60
            BandIndex = 2
            RowIndex = 0
            FieldName = 'CD_DEGP'
          end
          object DBGConsultaCD_UF: TdxDBGridMaskColumn
            Width = 35
            BandIndex = 2
            RowIndex = 0
            FieldName = 'CD_UF'
          end
          object dbgConsultaDECV: TdxDBGridMaskColumn
            MinWidth = 70
            Width = 70
            BandIndex = 3
            RowIndex = 0
            FieldName = 'DECV'
          end
          object dbgConsultaDECR: TdxDBGridMaskColumn
            MinWidth = 70
            Width = 70
            BandIndex = 3
            RowIndex = 0
            FieldName = 'DECR'
          end
          object dbgConsultaPDSC: TdxDBGridColumn
            HeaderAlignment = taRightJustify
            Width = 36
            BandIndex = 4
            RowIndex = 0
            FieldName = 'PDSC'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'PDSC'
            SummaryFooterFormat = '#,0.00'
            DisableFilter = True
          end
          object DBGConsultaVDSC: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            MinWidth = 70
            Width = 80
            BandIndex = 4
            RowIndex = 0
            FieldName = 'VDSC'
            SummaryFooterType = cstSum
            SummaryFooterField = 'VDSC'
            SummaryFooterFormat = 'R$ #,0.00'
            DisableFilter = True
          end
          object dbgConsultaTSDE: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            MinWidth = 80
            Width = 95
            BandIndex = 5
            RowIndex = 0
            FieldName = 'TSDE'
            SummaryFooterType = cstSum
            SummaryFooterField = 'TSDE'
            SummaryFooterFormat = 'R$ #,0.00'
            DisableFilter = True
          end
          object dbgConsultaTCDE: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            MinWidth = 80
            Width = 95
            BandIndex = 5
            RowIndex = 0
            FieldName = 'TCDE'
            SummaryFooterType = cstSum
            SummaryFooterField = 'TCDE'
            SummaryFooterFormat = 'R$ #,0.00'
            DisableFilter = True
          end
          object dbgConsultaSTCO: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 100
            BandIndex = 6
            RowIndex = 0
            FieldName = 'STCO'
          end
          object DBGConsultaTPCO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TPCO'
          end
          object DBGConsultaRECO: TdxDBGridMaskColumn
            Alignment = taCenter
            Width = 30
            BandIndex = 6
            RowIndex = 0
            FieldName = 'RECO'
          end
          object dbgConsultaDEPG: TdxDBGridMaskColumn
            Width = 100
            BandIndex = 6
            RowIndex = 0
            FieldName = 'DEPG'
          end
          object dbgConsultaDEST: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 100
            BandIndex = 7
            RowIndex = 0
            FieldName = 'DEST'
          end
          object dbgConsultaDTBX: TdxDBGridDateColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 60
            BandIndex = 7
            RowIndex = 0
            FieldName = 'DTBX'
          end
          object dbgConsultaDECT: TdxDBGridMaskColumn
            Width = 85
            BandIndex = 8
            RowIndex = 0
            FieldName = 'DECT'
          end
          object DBGConsultaCT_UF: TdxDBGridMaskColumn
            Width = 35
            BandIndex = 8
            RowIndex = 0
            FieldName = 'CT_UF'
          end
          object DBGConsultaD_MFRT: TdxDBGridMaskColumn
            Width = 94
            BandIndex = 8
            RowIndex = 0
            FieldName = 'D_MFRT'
          end
          object DBGConsultaVFRT: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 73
            BandIndex = 8
            RowIndex = 0
            FieldName = 'VFRT'
            SummaryFooterType = cstSum
            SummaryFooterField = 'VFRT'
            SummaryFooterFormat = 'R$ #,0.00'
            DisableFilter = True
          end
          object DBGConsultaPSBR: TdxDBGridColumn
            HeaderAlignment = taRightJustify
            Width = 70
            BandIndex = 8
            RowIndex = 0
            FieldName = 'PSBR'
            SummaryFooterType = cstSum
            SummaryFooterField = 'PSBR'
            SummaryFooterFormat = '#,0.00'
            DisableFilter = True
          end
          object DBGConsultaPSLQ: TdxDBGridColumn
            HeaderAlignment = taRightJustify
            Width = 70
            BandIndex = 8
            RowIndex = 0
            FieldName = 'PSLQ'
            SummaryFooterType = cstSum
            SummaryFooterField = 'PSLQ'
            SummaryFooterFormat = '#,0.00'
            DisableFilter = True
          end
        end
        object PNLINFADCAD: TPanel
          Left = 2
          Top = 482
          Width = 1505
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
          object DBINFADCAD: TdxDBMemo
            Left = 2
            Top = 2
            Width = 1501
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
            Height = 46
            StoredValues = 64
          end
        end
      end
    end
  end
  inherited Consulta: TIBQuery
    Top = 168
  end
  inherited DTSCadastro: TDataSource
    OnDataChange = dtscadastroDataChange
    Top = 200
  end
  inherited Cadastro: TIBQuery
    AfterScroll = CadastroAfterScroll
    BeforeOpen = CadastroBeforeOpen
    BeforeScroll = CadastroBeforeScroll
    BufferChunks = 4500
    SQL.Strings = (
      'SELECT PK.*'
      'FROM   VW_PED_VEN_CAB AS PK'
      'WHERE  PK.IDEP = '#39'1'#39
      
        'AND   (PK.DTPK BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DAT' +
        'E) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD' +
        '(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DA' +
        'TE))) OR'
      
        '       PK.DTST BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DAT' +
        'E) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD' +
        '(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DA' +
        'TE))) OR'
      
        '       PK.DTSP BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DAT' +
        'E) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD' +
        '(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DA' +
        'TE))) OR'
      
        '       PK.DTRO BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DAT' +
        'E) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD' +
        '(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DA' +
        'TE))) OR'
      
        '       PK.DTNF BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DAT' +
        'E) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD' +
        '(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DA' +
        'TE))) OR'
      
        '       PK.DTBX BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DAT' +
        'E) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD' +
        '(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DA' +
        'TE))) OR'
      
        '       PK.CDST = 15 OR PK.CDST = 16 OR PK.CDST = 116 OR PK.CDST ' +
        '= 149)'
      'ORDER BY PK.DTCA DESC')
    Top = 200
    object CadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"VW_PED_VEN_CAB"."ID"'
    end
    object CadastroIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"VW_PED_VEN_CAB"."IDPK"'
    end
    object CadastroIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"VW_PED_VEN_CAB"."IDEP"'
    end
    object CadastroDEEP: TIBStringField
      FieldName = 'DEEP'
      Origin = '"VW_PED_VEN_CAB"."DEEP"'
      Size = 60
    end
    object CadastroIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"VW_PED_VEN_CAB"."IDCA"'
    end
    object CadastroDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"VW_PED_VEN_CAB"."DTCA"'
    end
    object CadastroIDED: TSmallintField
      FieldName = 'IDED'
      Origin = '"VW_PED_VEN_CAB"."IDED"'
    end
    object CadastroDTED: TDateTimeField
      FieldName = 'DTED'
      Origin = '"VW_PED_VEN_CAB"."DTED"'
    end
    object CadastroIDST: TSmallintField
      FieldName = 'IDST'
      Origin = '"VW_PED_VEN_CAB"."IDST"'
    end
    object CadastroDTST: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'DTST'
      Origin = '"VW_PED_VEN_CAB"."DTST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"VW_PED_VEN_CAB"."CDST"'
    end
    object CadastroDEST: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'DEST'
      Origin = '"VW_PED_VEN_CAB"."DEST"'
      Size = 60
    end
    object CadastroREST: TIBStringField
      FieldName = 'REST'
      Origin = '"VW_PED_VEN_CAB"."REST"'
      Size = 10
    end
    object CadastroDEPK: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'DEPK'
      Origin = '"VW_PED_VEN_CAB"."DEPK"'
      Size = 30
    end
    object CadastroDTPK: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTPK'
      Origin = '"VW_PED_VEN_CAB"."DTPK"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object CadastroHTPK: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HTPK'
      Origin = '"VW_PED_VEN_CAB"."HTPK"'
      DisplayFormat = 'hh:mm'
    end
    object CadastroCTNR: TIBStringField
      FieldName = 'CTNR'
      Origin = '"VW_PED_VEN_CAB"."CTNR"'
    end
    object CadastroCDSP: TLargeintField
      FieldName = 'CDSP'
      Origin = '"VW_PED_VEN_CAB"."CDSP"'
    end
    object CadastroIDSP: TSmallintField
      FieldName = 'IDSP'
      Origin = '"VW_PED_VEN_CAB"."IDSP"'
    end
    object CadastroDTSP: TDateTimeField
      FieldName = 'DTSP'
      Origin = '"VW_PED_VEN_CAB"."DTSP"'
    end
    object CadastroDESP: TIBStringField
      FieldName = 'DESP'
      Origin = '"VW_PED_VEN_CAB"."DESP"'
      Size = 30
    end
    object CadastroCDRO: TLargeintField
      FieldName = 'CDRO'
      Origin = '"VW_PED_VEN_CAB"."CDRO"'
    end
    object CadastroDTRO: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'DTRO'
      Origin = '"VW_PED_VEN_CAB"."DTRO"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroCDNF: TLargeintField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CDNF'
      Origin = '"VW_PED_VEN_CAB"."CDNF"'
      DisplayFormat = '0'
    end
    object CadastroDTNF: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTNF'
      Origin = '"VW_PED_VEN_CAB"."DTNF"'
      DisplayFormat = 'dd/mm/yy'
    end
    object CadastroVNF: TIBBCDField
      FieldName = 'VNF'
      Origin = '"VW_PED_VEN_CAB"."VNF"'
      Precision = 18
      Size = 2
    end
    object CadastroVIPI: TIBBCDField
      FieldName = 'VIPI'
      Origin = '"VW_PED_VEN_CAB"."VIPI"'
      Precision = 18
      Size = 2
    end
    object CadastroVST: TIBBCDField
      FieldName = 'VST'
      Origin = '"VW_PED_VEN_CAB"."VST"'
      Precision = 18
      Size = 2
    end
    object CadastroCDBX: TLargeintField
      FieldName = 'CDBX'
      Origin = '"VW_PED_VEN_CAB"."CDBX"'
    end
    object CadastroDTBX: TDateTimeField
      DisplayLabel = 'Baixa'
      FieldName = 'DTBX'
      Origin = '"VW_PED_VEN_CAB"."DTBX"'
      DisplayFormat = 'dd/mm/yy'
    end
    object CadastroCDCX: TLargeintField
      FieldName = 'CDCX'
      Origin = '"VW_PED_VEN_CAB"."CDCX"'
    end
    object CadastroIDCD: TIntegerField
      FieldName = 'IDCD'
      Origin = '"VW_PED_VEN_CAB"."IDCD"'
    end
    object CadastroDECD: TIBStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'DECD'
      Origin = '"VW_PED_VEN_CAB"."DECD"'
      Size = 60
    end
    object CadastroRZCD: TIBStringField
      FieldName = 'RZCD'
      Origin = '"VW_PED_VEN_CAB"."RZCD"'
      Size = 60
    end
    object CadastroCD_DEGP: TIBStringField
      DisplayLabel = 'Grupo'
      FieldName = 'CD_DEGP'
      Origin = '"VW_PED_VEN_CAB"."CD_DEGP"'
      Size = 60
    end
    object CadastroCD_CNPJ: TIBStringField
      FieldName = 'CD_CNPJ'
      Origin = '"VW_PED_VEN_CAB"."CD_CNPJ"'
      Size = 14
    end
    object CadastroCD_LOC_NO: TIBStringField
      FieldName = 'CD_LOC_NO'
      Origin = '"VW_PED_VEN_CAB"."CD_LOC_NO"'
      Size = 72
    end
    object CadastroCD_UF: TIBStringField
      DisplayLabel = 'UF'
      FieldName = 'CD_UF'
      Origin = '"VW_PED_VEN_CAB"."CD_UF"'
      FixedChar = True
      Size = 2
    end
    object CadastroIDCV: TSmallintField
      FieldName = 'IDCV'
      Origin = '"VW_PED_VEN_CAB"."IDCV"'
    end
    object CadastroDECV: TIBStringField
      DisplayLabel = 'Interno'
      FieldName = 'DECV'
      Origin = '"VW_PED_VEN_CAB"."DECV"'
      Size = 30
    end
    object CadastroIDCR: TSmallintField
      FieldName = 'IDCR'
      Origin = '"VW_PED_VEN_CAB"."IDCR"'
    end
    object CadastroDECR: TIBStringField
      DisplayLabel = 'Externo'
      FieldName = 'DECR'
      Origin = '"VW_PED_VEN_CAB"."DECR"'
      Size = 60
    end
    object CadastroQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = '"VW_PED_VEN_CAB"."QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroQTRL: TIntegerField
      FieldName = 'QTRL'
      Origin = '"VW_PED_VEN_CAB"."QTRL"'
    end
    object CadastroQTSP: TIBBCDField
      FieldName = 'QTSP'
      Origin = '"VW_PED_VEN_CAB"."QTSP"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroRLSP: TIntegerField
      FieldName = 'RLSP'
      Origin = '"VW_PED_VEN_CAB"."RLSP"'
    end
    object CadastroTDSC: TIBStringField
      FieldName = 'TDSC'
      Origin = '"VW_PED_VEN_CAB"."TDSC"'
      FixedChar = True
      Size = 1
    end
    object CadastroPDSC: TIBBCDField
      DisplayLabel = '%'
      FieldName = 'PDSC'
      Origin = '"VW_PED_VEN_CAB"."PDSC"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object CadastroVDSC: TIBBCDField
      DisplayLabel = '$'
      FieldName = 'VDSC'
      Origin = '"VW_PED_VEN_CAB"."VDSC"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroTSDE: TIBBCDField
      DisplayLabel = 'Sub Total'
      FieldName = 'TSDE'
      Origin = '"VW_PED_VEN_CAB"."TSDE"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroD_TSDE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'D_TSDE'
      Origin = '"VW_PED_VEN_CAB"."D_TSDE"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroVTSP: TIBBCDField
      FieldName = 'VTSP'
      Origin = '"VW_PED_VEN_CAB"."VTSP"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroTCDE: TIBBCDField
      DisplayLabel = 'Total Geral'
      FieldName = 'TCDE'
      Origin = '"VW_PED_VEN_CAB"."TCDE"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroD_TCDE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'D_TCDE'
      Origin = '"VW_PED_VEN_CAB"."D_TCDE"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroVTFA: TIBBCDField
      FieldName = 'VTFA'
      Origin = '"VW_PED_VEN_CAB"."VTFA"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroPCOM: TIBBCDField
      FieldName = 'PCOM'
      Origin = '"VW_PED_VEN_CAB"."PCOM"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object CadastroVCOM: TIBBCDField
      FieldName = 'VCOM'
      Origin = '"VW_PED_VEN_CAB"."VCOM"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroCDPD: TSmallintField
      FieldName = 'CDPD'
      Origin = '"VW_PED_VEN_CAB"."CDPD"'
    end
    object CadastroSTPD: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'STPD'
      Origin = '"VW_PED_VEN_CAB"."STPD"'
      Size = 60
    end
    object CadastroFAPD: TSmallintField
      FieldName = 'FAPD'
      Origin = '"VW_PED_VEN_CAB"."FAPD"'
    end
    object CadastroCSPD: TSmallintField
      FieldName = 'CSPD'
      Origin = '"VW_PED_VEN_CAB"."CSPD"'
    end
    object CadastroSVPD: TSmallintField
      FieldName = 'SVPD'
      Origin = '"VW_PED_VEN_CAB"."SVPD"'
    end
    object CadastroBQPD: TSmallintField
      FieldName = 'BQPD'
      Origin = '"VW_PED_VEN_CAB"."BQPD"'
    end
    object CadastroCDCO: TSmallintField
      FieldName = 'CDCO'
      Origin = '"VW_PED_VEN_CAB"."CDCO"'
    end
    object CadastroSTCO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'STCO'
      Origin = '"VW_PED_VEN_CAB"."STCO"'
      Size = 60
    end
    object CadastroD_STCO: TIBStringField
      FieldName = 'D_STCO'
      Origin = '"VW_PED_VEN_CAB"."D_STCO"'
      Size = 74
    end
    object CadastroTPCO: TSmallintField
      FieldName = 'TPCO'
      Origin = '"VW_PED_VEN_CAB"."TPCO"'
    end
    object CadastroRECO: TIBStringField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'RECO'
      Origin = '"VW_PED_VEN_CAB"."RECO"'
      Size = 3
    end
    object CadastroCDPG: TSmallintField
      FieldName = 'CDPG'
      Origin = '"VW_PED_VEN_CAB"."CDPG"'
    end
    object CadastroDEPG: TIBStringField
      DisplayLabel = 'Prazo'
      FieldName = 'DEPG'
      Origin = '"VW_PED_VEN_CAB"."DEPG"'
      Size = 60
    end
    object CadastroPRZ_QTPZ: TSmallintField
      FieldName = 'PRZ_QTPZ'
      Origin = '"VW_PED_VEN_CAB"."PRZ_QTPZ"'
    end
    object CadastroPRZ_QTMD: TSmallintField
      FieldName = 'PRZ_QTMD'
      Origin = '"VW_PED_VEN_CAB"."PRZ_QTMD"'
    end
    object CadastroPRZ_QTFN: TSmallintField
      FieldName = 'PRZ_QTFN'
      Origin = '"VW_PED_VEN_CAB"."PRZ_QTFN"'
    end
    object CadastroIDCT: TSmallintField
      FieldName = 'IDCT'
      Origin = '"VW_PED_VEN_CAB"."IDCT"'
    end
    object CadastroDECT: TIBStringField
      DisplayLabel = 'Transporte'
      FieldName = 'DECT'
      Origin = '"VW_PED_VEN_CAB"."DECT"'
      Size = 60
    end
    object CadastroDTSA: TDateTimeField
      FieldName = 'DTSA'
      Origin = '"VW_PED_VEN_CAB"."DTSA"'
    end
    object CadastroCT_UF: TIBStringField
      DisplayLabel = 'UF'
      FieldName = 'CT_UF'
      Origin = '"VW_PED_VEN_CAB"."CT_UF"'
      FixedChar = True
      Size = 2
    end
    object CadastroMFRT: TSmallintField
      FieldName = 'MFRT'
      Origin = '"VW_PED_VEN_CAB"."MFRT"'
    end
    object CadastroD_MFRT: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'D_MFRT'
      Origin = '"VW_PED_VEN_CAB"."D_MFRT"'
      Size = 24
    end
    object CadastroVFRT: TIBBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'VFRT'
      Origin = '"VW_PED_VEN_CAB"."VFRT"'
      DisplayFormat = 'R$ #,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroPSBR: TIBBCDField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PSBR'
      Origin = '"VW_PED_VEN_CAB"."PSBR"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 3
    end
    object CadastroPSLQ: TIBBCDField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'PSLQ'
      Origin = '"VW_PED_VEN_CAB"."PSLQ"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 3
    end
    object CadastroINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_PED_VEN_CAB"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 1064
    end
    object CadastroLOG_PRN_IDEV: TSmallintField
      FieldName = 'LOG_PRN_IDEV'
      Origin = '"VW_PED_VEN_CAB"."LOG_PRN_IDEV"'
    end
    object CadastroLOG_PRN_DEEV: TIBStringField
      FieldName = 'LOG_PRN_DEEV'
      Origin = '"VW_PED_VEN_CAB"."LOG_PRN_DEEV"'
      Size = 30
    end
    object CadastroLOG_PRN_CDEV: TSmallintField
      FieldName = 'LOG_PRN_CDEV'
      Origin = '"VW_PED_VEN_CAB"."LOG_PRN_CDEV"'
    end
    object CadastroLOG_PRN_REEV: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'LOG_PRN_REEV'
      Origin = '"VW_PED_VEN_CAB"."LOG_PRN_REEV"'
      ProviderFlags = []
      ReadOnly = True
      Size = 33
    end
    object CadastroLOG_PRN_DTEV: TDateTimeField
      FieldName = 'LOG_PRN_DTEV'
      Origin = '"VW_PED_VEN_CAB"."LOG_PRN_DTEV"'
    end
    object CadastroLOG_PRN_QTEV: TSmallintField
      FieldName = 'LOG_PRN_QTEV'
      Origin = '"VW_PED_VEN_CAB"."LOG_PRN_QTEV"'
    end
    object CadastroLOG_PRN_LGEV: TIBStringField
      FieldName = 'LOG_PRN_LGEV'
      Origin = '"VW_PED_VEN_CAB"."LOG_PRN_LGEV"'
      Size = 30
    end
    object CadastroLOG_PRN_IP: TIBStringField
      FieldName = 'LOG_PRN_IP'
      Origin = '"VW_PED_VEN_CAB"."LOG_PRN_IP"'
      Size = 30
    end
    object CadastroLOG_PRN_HOST: TIBStringField
      FieldName = 'LOG_PRN_HOST'
      Origin = '"VW_PED_VEN_CAB"."LOG_PRN_HOST"'
      Size = 30
    end
    object CadastroIDEV: TLargeintField
      FieldName = 'IDEV'
      Origin = '"VW_PED_VEN_CAB"."IDEV"'
    end
    object CadastroIP: TIBStringField
      FieldName = 'IP'
      Origin = '"VW_PED_VEN_CAB"."IP"'
      Size = 30
    end
    object CadastroHOST: TIBStringField
      FieldName = 'HOST'
      Origin = '"VW_PED_VEN_CAB"."HOST"'
      Size = 30
    end
  end
  inherited ILMenu: TImageList
    Top = 318
    Bitmap = {
      494C01010E001300040030003000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C0000000F0000000010020000000000000D0
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
      00000000000000000000000000000000000000000000535254002E2D30002A29
      2C0029282B0029282B0029282B0029282B0029282B0029282B0029282B002928
      2B0029282B0029282B0029282B0029282B0029282B0029282B0029282B002928
      2B0029282B0029282B0029282B0029282B0029282B0029282B0029282B002928
      2B0029282B0029282B0029282B0029282B0029282B0029282B0029282B002928
      2B0029282B0029282B0029282B0029282B0029282B0029282B0029282B002A29
      2C002E2D300053525400000000000000000000000000A2502000973D07009C46
      14009D4816009D4816009D4816009D4815009D4715009D4715009D4715009D47
      15009D4715009D4715009D4715009D4715009D4715009D4715009D4715009D47
      15009D4715009D4715009D4715009D4715009D4715009D4715009D4715009D47
      15009D4715009D4715009D4715009D4715009D4715009D4715009D4715009D47
      15009D4715009D4715009D4715009D4815009D4815009D4816009D4816009D48
      16009C461400973C0600A5562800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A494C00242326003C3B3E009292
      9300939294009291930092919300929193009291930092919300929193009291
      9300929193009291930092919300929193009291930092919300929193009291
      9300929193009291930092919300929193009291930092919300929193009291
      9300929193009291930092919300929193009291930092919300929193009291
      9300929193009291930092919300929193009291930092919300939294009292
      93003C3B3E00242326004A494C0000000000DDD3CF00CEC5C300D4CCCC00D5CE
      CE00D5CFCF00D7CFD000D8D1D000D8D2D200DAD3D200DBD3D300DBD4D400DCD6
      D600DCD5D500DCD5D500DCD5D600DCD6D600DCD5D500DCD5D500DCD6D600DCD6
      D600DCD6D500DCD6D600DCD5D500DCD5D500DCD5D600DCD5D500DCD5D500DCD6
      D600DCD5D500DCD5D500DCD6D600DFDCDE00DDD8D900DCD5D500DCD6D600DCD5
      D500DCD5D500DBD4D400DAD4D200D9D2D200D8D1D100D7CFCF00D6D0CF00D5CE
      CE00D4CDCD00D3CCCB00CCC4C200E0D6D2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E2D300044434600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00444446002E2D300000000000D3D2D100D6D7D500D9D8D800DAD9
      D800DBDBD900DCDBDA00DDDCDB00DEDEDE00DFDFDD00E0E0E000E1E2E200E1E2
      E300E2E5E600E3E6E600E2E4E500DFDEDD00E1E1E100E1E2E100E2E4E400DFDE
      DE00E1E2E200DFDFDE00E4E8EA00E2E2E200E2E4E500E2E3E200E4E8EA00E0E0
      E000E4E8EA00E3E6E700E3E7E900C09B8500D3C4BB00E5ECEE00E0E0E000E4E8
      E900E1E4E400DEDDDC00DEDFDD00DEDFDE00DCDDDC00DDDCDB00DADBD900D9DA
      DA00D9D8D800D7D7D600D6D7D600D3D0CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282C009D9D9E00FFFFFF00FCFC
      FC00DDDDDD00DADADB00DADADB00E2E2E200E0E0E000DADADB00DAD9DA00E3E3
      E400DEDEDE00DADADB00D9D9DA00E8E8E800D9D9DA00DADADB00D9D9DA00E8E8
      E800D9D9DA00DADADB00D9D9DA00E8E8E800D9D9DA00DADADB00D9D9DA00E8E8
      E800D9D9DA00DADADB00D9D9DA00E8E8E800D9D9DA00DADADB00D9D9DA00E8E8
      E800D9D9DA00DADADB00D9D9DA00E8E8E800D9D9DA00DADADB00DDDDDD00FCFC
      FC00FFFFFF009D9D9E0029282C0000000000D4D2D100D6D5D300D8D5D500D9D6
      D600DAD9D600DAD8D700DCDBDA00DCDBDB00DEDDDB00DFDEDE00E0E0DF00B177
      5600BD937C00D7CCC600B8896F00CBB0A100DFDDDC00E5E9EB00B5816500CEB7
      A900D0BCB200C8A99800C19B8600DFDCDC00C19B8600E5EAEC00B6846800C4A1
      8D00C7A79600D3C2B800BD917800B8876C00E0DFDE00BB8D7400C29D8900CCB2
      A400BF978100C8AA9900DAD3D000DEDEDC00DCDCDB00DCD9D800DBD8D800D8D8
      D700D9D7D600D7D5D400D6D5D300D2CCCA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00F7F7
      F700F0F0F000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0F000F7F7
      F700FFFFFF009A9A9B0029282B0000000000D4D2D100D7D5D400D7D5D400D9D8
      D700D9D9D600DCD9D900DBDAD900DEDDDB00DFDCDB00E0DFDE00E0DEDD00BE94
      7B00EAF4FA00BC8F7700BA8D7400C9AC9B00E5E6E700EAEFF000B6816400D0B5
      A500F5FBFE00C0927800D7BEB000EFECEC00CAA79300DECDC400D5BEB100F4FF
      FF00BC8C7000BC8E7400EDF5FA00E2E0DF00C4A08C00BC907900ECF8FE00BB8C
      7200C0998500C3A28E00DEDCDB00DEDDDB00DDDCDB00DCD9D800DBD8D800DAD9
      D700D9D6D600D8D6D500D6D5D300D2CDCB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00F7F7
      F700F0F0F000F7F7F800F6F6F700FDFDFD00FBFBFB00F6F6F70000000000FEFE
      FE00F9F9F900F6F6F70000000000FFFFFF0000000000F7F7F70000000000FFFF
      FF0000000000F7F7F70000000000FFFFFF0000000000F7F7F70000000000FFFF
      FF0000000000F7F7F70000000000FFFFFF0000000000F7F7F70000000000FFFF
      FF0000000000F7F7F70000000000FFFFFF0000000000F7F7F800F0F0F000F7F7
      F700FFFFFF009A9A9B0029282B0000000000D4D3D100D7D4D400D8D6D500D8D8
      D700DAD9D700DCD9D900DCDBDA00DEDDDA00DFDCDC00E0E0DF00E1DFDE00B989
      6F00D3C4BB00C5A18D00BC8E7600E9EAEB00EAEAE900F2F6F800BB8A6F00F6FB
      FF00CDA99400DAC1B500F3F1F000ECE3E000C69C8600F1EEED00BD8B6F00EDEA
      E800BD8E7300CDAC9A00DAC8BE00CAA99700D6C3B800B98A6F00ECF5F900BA8A
      6E00BF957F00DCDBDB00DFDCDB00DEDDDB00DDDCDB00DCDAD900DBD8D700DAD9
      D700D9D6D600D8D6D500D6D5D300D2CDCB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FFFF
      FF00E3E3E300E3E3E400E3E3E400E5E5E500E5E5E500E3E3E400E3E3E400E5E5
      E600E4E4E400E3E3E400E3E3E400E7E6E700E3E3E400E3E3E400E3E3E400E7E6
      E700E3E3E400E3E3E400E3E3E400E7E6E700E3E3E400E3E3E400E3E3E400E7E6
      E700E3E3E400E3E3E400E3E3E400E7E6E700E3E3E400E3E3E400E3E3E400E7E6
      E700E3E3E400E3E3E400E3E3E400E7E6E700E3E3E400E3E3E400E3E3E300FFFF
      FF00FFFFFF009A9A9B0029282B0000000000D4D3D100D7D4D400D9D7D600D8D8
      D700DBD9D800DCD9D800DDDCDB00DEDDDA00DFDEDD00E0DFDE00E3E2E200CCB1
      A100D1BBAF00EAF0F300D7C6BC00CEB2A100E8E7E600EEEFF000DCC8BE00D6BB
      AB00F7FAFC00DAC2B400EADFD800DFC7B900DCC1B200EFEAE700EBE4E000D5B8
      A700F2F4F600F2F6F800D5BEB100D7C6BC00EBF0F100D9CBC300E6E8E900D8CB
      C400D9CDC600C9AB9A00DBD7D400DFDDDD00DCDCDB00DCDBDA00DBD8D700DAD9
      D700D9D6D600D8D6D500D6D5D300D2CDCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00FFFFFF009A9A9B0029282B0000000000D4D3D100D7D4D400D9D7D600D8D8
      D700DBD9D800DCD9D800DDDCDB00DEDDDA00DFDEDD00DFDFDE00E2E0DF00E4E6
      E600E6EAEC00E8EBEC00E8EBEC00EBEFF100EBF0F100EDEFEF00F2F4F400F4F7
      FA00F6F8F800FBFFFF00FCFFFF000000000000000000FBFEFF00F8FCFE00F7FA
      FC00F3F6F800EFF4F500EDEFF000ECF0F200E9EBEC00E8EAEB00E7EAEB00E6E8
      E900E3E2E200E3E5E500DFDEDE00DFDDDC00DCDCDB00DCDBDA00DBD8D700DAD9
      D700D9D6D600D8D6D500D6D5D300D2CDCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00FCFDFF00C6C0A700C9C4AC00C9C4AD00C9C4
      AD00C9C4AC00C5BFA600F9FAFD00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FFFF
      FF00E6DECC00E2D1A400E2D2A800E2D2A800E2D2A800E2D1A400E6DECC00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00BDCFA800BDD0A700BDD1
      A800BDD1A800BDD0A700BED0AB00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B0000000000D4D3D100D7D4D400D9D7D600D8D8
      D700DBD9D800DCD9D800DCDBDA00DEDDDA00DFDDDC00DFDEDD00E0DFDE00E3E5
      E500CFB8AB00BF988200D4C3B900D4C1B600C0978100D1BAAE00E0D8D400D9CA
      C200DDD2CC00D2B9AB00EBE8E800D6BFB200EDECEC00D6C1B500D9C7BD00DFD7
      D200C6A28D00C1978100E3E3E300CBAFA000C39E8A00D6C8C100BF957E00D2BE
      B300E2E3E300E0DFDE00DEDDDC00DFDDDB00DCDCDB00DCDBDA00DBD8D700DAD9
      D700D9D6D600D8D6D500D6D5D300D2CDCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00B5AB84007B620000826A0100826A0100826A
      0100826A01007C620000AEA47800FFFFFF00FEFEFE00FEFEFE00FEFEFE00FBFF
      FF00DB950000F1AB0000F0AA0000F0AA0000F0AA0000F1AB0000DB940000FBFF
      FF00FEFEFE00FEFEFE00FEFEFE00FFFFFF00A0C07D00429E00004CA200004CA2
      00004CA200004CA20000419D0000AAC58C00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B0000000000D4D3D100D7D4D400D9D7D600D8D8
      D700DAD9D700DBD9D800DBDAD900DDDCDB00DEDCDB00DEDDDC00DFDEDD00DFDF
      DE00B5806300E7EFF200E2E5E700B5836700EAF6FC00BB8F7600CFBDB300CEBA
      AE00AF755500C3A08C00DEDDDC00BF978100E0E0E100BA8D7600B8886E00CCB4
      A700CEB8AC00E5EDF000B8886C00BE968100E5EAEC00D3C1B500C4A29000DFDD
      DD00DFDFDE00DEDDDC00DEDCDA00DDDCDA00DCDBDA00DCDAD900DBD8D700DAD9
      D700D9D6D600D8D6D500D6D5D300D2CDCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00B8AE8800836C05008A7414008A7414008A74
      14008A741400846D0600B2A87D00FFFFFF00FEFEFE00FEFEFE00FEFEFE00F8FF
      FF00E09D0000F0AF0000EFAF0000EFAF0000EFAF0000F0AF0000E09D0000F8FF
      FF00FEFEFE00FEFEFE00FEFEFE00FFFFFF009ABF710050A4000059A8000059A8
      000059A8000059A800004FA40000A3C37F00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B0000000000D4D2D100D7D5D400D7D5D400D9D8
      D700D9D9D600DAD8D700DCD9D800DCDCDB00DEDDDA00DDDCDA00DFDDDC00DFDF
      DF00B7846800E7EEF200E2E4E500B7846800EAF6FB00BC917800D1C0B800A762
      3C00D5CAC300C29E8A00E0E2E300C19C8700E1E2E400BB8C7100BC907800C8AC
      9C00D1BFB600E6EEF200B8886D00BE978100E2E3E500D2C1B600BF967D00DCD7
      D400DFDFDF00DFDCDB00DDDDDA00DCDCDB00DBDAD900DCDAD900DBD8D800DAD9
      D700D9D6D600D8D6D500D6D5D300D2CDCB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00B8AF8900836C05008A7414008A7414008A74
      14008A741400846D0600B2A87D00FFFFFF00FEFEFE00FEFEFE00FEFEFE00F8FF
      FF00E09D0000F0AF0000EFAF0000EFAF0000EFAF0000F0AF0000E09D0000F8FF
      FF00FEFEFE00FEFEFE00FEFEFE00FFFFFF009BC0730050A4000059A8000059A8
      000059A8000059A800004FA40000A4C48100FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B0000000000D4D2D100D6D5D300D8D5D400D9D7
      D600DAD9D600DBD8D800DCD9D800DDDCDB00DEDDDA00DEDCDB00DFDDDC00E1E3
      E300CDB6AA00BF967F00D2C0B600CEB8AC00C0988200C9AD9E00DBD5D100BF96
      7E00E3E6E800CBB1A300C5A59300BA8A7000D7CCC700BC917800C19B8600E5EB
      EE00BF968000BD927B00DBD5D100C7A99900E2E2E300D8CDC500BC907700D1C0
      B700E0E1E100DFDCDB00DDDDDA00DCDCDB00DBD9D800DAD8D700DBD9D800D9D8
      D700D9D7D600D7D5D400D6D5D300D2CDCB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00B8AF8900836C05008A7414008A7414008A74
      14008A741400846D0600B2A87D00FFFFFF00FEFEFE00FEFEFE00FEFEFE00F8FF
      FF00E09D0000F0AF0000EFAF0000EFAF0000EFAF0000F0AF0000E09D0000F8FF
      FF00FEFEFE00FEFEFE00FEFEFE00FFFFFF009BC0730050A4000059A8000059A8
      000059A8000059A800004FA40000A4C48100FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B0000000000D5D3D200D5D5D200D8D6D500D9D6
      D500DAD9D700DBD8D800DCD9D800DDDCDB00DEDDDA00DFDDDC00DFDEDD00E0DF
      DE00E2E4E400E4E6E700E3E4E400E4E6E600E5E8E900E5E7E800E4E4E400E8EB
      EC00E5E4E300E7E9EA00E8EBEC00EAEDEF00E7E8E800E9EDEE00E8EBEC00E5E4
      E300E7EAEB00E7E9EA00E4E4E400E4E6E700E2E1E000E3E3E300E4E8E900E2E2
      E200E0DFDE00DEDDDC00DEDDDB00DDDCDB00DBDAD900DBD9D800DAD9D700D8D8
      D700D8D6D500D6D4D300D6D5D300D2CDCB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00B8AE8800836C05008A7414008A7414008A74
      14008A741400846D0600B2A87D00FFFFFF00FEFEFE00FEFEFE00FEFEFE00F8FF
      FF00E09D0000F0AF0000EFAF0000EFAF0000EFAF0000F0AF0000E09D0000F8FF
      FF00FEFEFE00FEFEFE00FEFEFE00FFFFFF009BC0730050A4000059A8000059A8
      000059A8000059A800004FA40000A4C38100FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B0000000000D5D5D600D6D9D700DADCDE00DCDE
      DF00DCDFE000DEE0E100DFE1E200DFE3E400E1E4E400E2E4E600E2E6E700E4E8
      E900E5E7E900E5E9EA00E7EAEC00E9ECED00E8ECED00EAEEEF00EBEFF000ECF0
      F100EEF2F300EFF2F400F0F3F400F0F4F500F0F4F500F0F3F400EFF2F400EDF1
      F200ECEFF100EBEEEF00E9ECEE00E8ECED00E8ECED00E6E9EB00E5E8EA00E5E7
      E900E3E6E700E2E5E700E1E4E500E0E3E400DFE2E300DEE0E100DCE0E000DBDE
      DF00DADDDE00D9DCDC00D5D8D800D4D0D0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00B4AA81008169000088710D0088710D008871
      0D0088710D00826A0000AEA47500FFFFFF00FEFEFE00FEFEFE00FEFEFE00F7FF
      FF00E19A0000F2AF0000F0AE0000F0AE0000F0AE0000F2AF0000E19A0000F7FF
      FF00FEFEFE00FEFEFE00FEFEFE00FFFFFF0096BC6B004BA3000055A7000055A7
      000055A7000055A700004AA200009FC07900FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B0000000000AB6C4900D7C8C300BE998500C29E
      8C00C29F8C00C39F8D00C3A08D00C3A08E00C4A18F00C5A18F00C5A29000C6A3
      9000C7A39100C7A39100C7A49100C8A59200C8A59300C9A59300C9A69400C9A6
      9400CAA79400CAA79500CBA89500CBA89500CBA89500CAA79500CAA79500CAA6
      9400C9A69400C9A69300C9A59300C8A59300C8A49200C7A49200C7A39100C6A3
      9100C6A39000C5A29000C4A18E00C4A18F00C39F8D00C39F8D00C39F8D00C29E
      8C00C19E8B00BE998500D6C8C200AF704E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00DCDACE00877528008E7D34008E7D34008E7D
      34008E7D340087752800D7D3C500FFFFFF00FEFEFE00FEFEFE00FEFEFE00FFFF
      FF00D3AC4500DBA92000DAAA2500DAAA2500DAAA2500DBA92000D3AC4500FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FFFFFF00E3E8DE0063A11E0068A4240069A4
      250069A4250068A4240064A11F00E9EBE600FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009D4B1700D5AA9B009B451100A04E
      1C00A04E1C00A04E1C00A04E1C00A04D1C00A04D1C009F4D1C009F4D1C009F4D
      1C009F4D1C00A04F1E00A04F1E009F4D1B009F4D1C009F4D1B009F4D1B009F4D
      1B009F4D1B009F4D1B009F4C1B009D4917009E4B19009D4A18009F4D1B009F4D
      1B009F4D1B009F4D1B009F4D1C009F4D1C009F4D1C009F4D1C009F4D1C009F4D
      1C009F4D1C009F4D1C009F4D1C00A04D1C00A04E1C00A04E1C00A04E1C00A04E
      1C00A04E1C009B451000D6AF9C00A15121000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A4572900A457
      2900A3562800A4572900A3562800A4572900A4572900A4572900A4572900A356
      2800A15323009D4B1A0099441100AC673D00A85F3400A75D30009A4411009E4D
      1D00A2542500A4572900A4572900A4572900A4572900A4572900A4572900A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A4572900A457
      2900A4572900A3562800A4572900A4572900A3562800A15223009D4B1A009841
      0E00AC663C00D4B09B00FDFBFA0000000000AF6C440000000000F3E9E300CB9F
      8400A4572800994310009E4D1C00A2542500A4572900A4572900A4572900A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A4572900A457
      2900A4572900A3562800A15222009D4A190098410D00AE6A4100D7B6A200FCFA
      F900000000000000000000000000FEFEFD00AD683E0000000000000000000000
      000000000000F5EDE800CEA48C00A5592C0099430F009E4C1B00A2532400A356
      2800A4572900A4572900A4572900A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F6F6F700636264006F6E70007A797B00FFFFFF00FEFEFE00FFFF
      FF006F6F7100706F710071717300717173007171730071717300717173007171
      7300717173007171730071717300717173007171730071717300717173007171
      7300717173007171730071717300717173007171730071717300717173007171
      730071717300717173007171730069696B00B4B4B500FFFFFF00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A4572900A356
      28009D4A190099431000B16F4800DBBCAA00FDFBFB0000000000000000000000
      0000000000000000000000000000FEFEFD00AD683E0000000000000000000000
      000000000000000000000000000000000000F5EDE800D1AA9300A85F33009944
      11009E4D1D00A4572900A4572900A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F0F0F10005040800171619002A282C00FFFFFF00FEFEFE00FFFF
      FF0019181C0019181B001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D000F0D110087878800FFFFFF00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A35628009F4F
      1F00DDC0AE00FDFCFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFD00AD683E0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6EF
      EA00CDA38A009F4D1D00A4572900A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00FCFCFC00C0BFC000C5C5C600C9C8C900FFFFFF00FEFEFE00FFFF
      FF00C4C4C500C6C6C600C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6
      C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6
      C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6
      C700C6C6C700C6C6C700C6C6C700C3C2C300E1E1E100FFFFFF00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A35627009E4C
      1B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFD00AD683E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3ECE6009B461400A4572900A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A35627009E4C
      1B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFD00AD683E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0E5DD009B461400A4572900A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FDFDFD00D8D8D800DCDCDC00DDDDDE00FFFFFF00FEFEFE00FFFF
      FF00DBDADB00DCDCDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DADADA00ECECED00FFFFFF00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A35627009E4C
      1B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFD00AD683E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0E5DD009B461400A4572900A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F0F0F10005040800171619002A282C00FFFFFF00FEFEFE00FFFF
      FF0019181C0019181B001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D000F0D110087878800FFFFFF00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A35627009E4C
      1B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFDFD00AC673D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0E5DD009B461400A4572900A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F4F5F5004B4A4D0058575A0065646700FFFFFF00FEFEFE00FFFF
      FF0059585B0059595B005B5A5D005B5A5D005B5A5D005B5A5D005B5A5D005B5A
      5D005B5A5D005B5A5D005B5A5D005B5A5D005B5A5D005B5A5D005B5A5D005B5A
      5D005B5A5D005B5A5D005B5A5D005B5A5D005B5A5D005B5A5D005B5A5D005B5A
      5D005B5A5D005B5A5D005B5A5D0052515400A9A9AA00FFFFFF00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A35627009E4C
      1B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFDFD00AD673D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0E5DD009B461400A4572900A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A35627009E4C
      1B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFD00AD683E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0E5DD009B461400A4572900A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A35627009E4C
      1B00000000000000000000000000000000000000000000000000000000000000
      0000DBBDAB00BA805D0000000000FEFEFE00AD673D0000000000F2E7E000B97E
      5C00EBDAD0000000000000000000000000000000000000000000000000000000
      0000F0E5DD009B461400A4572900A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F4F4F5003E3D40004D4C4E005B5A5C00FFFFFF00FEFEFE00FFFF
      FF004E4D50004E4D5000504F5100504F5100504F5100504F5100504F5100504F
      5100504F5100504F5100504F5100504F5100504F5100504F5100504F5100504F
      5100504F5100504F5100504F5100504F5100504F5100504F5100504F5100504F
      5100504F5100504F5100504F510046454800A3A3A400FFFFFF00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A35627009E4C
      1B000000000000000000000000000000000000000000DABBA800B5765100BD85
      6400E9D7CD00E6D2C500CFA68E0000000000AD683E0000000000B3724D00FEFE
      FE00D8B8A500B5775100BD856400E9D7CC000000000000000000000000000000
      0000F0E5DD009B461400A4572900A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F0F0F10005040800171619002A282C00FFFFFF00FEFEFE00FFFF
      FF0019181C0019181B001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D000F0D110087878800FFFFFF00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A35627009E4C
      1B000000000000000000D8B7A400B5775200BE876600E8D5C900000000000000
      00000000000000000000BA805E00FAF6F400B4744E00DEC3B300DDC0AF000000
      0000000000000000000000000000D9B9A500B67A5600BD856400E7D3C8000000
      0000F5EFEA009B461400A4572900A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00E4E4E400E7E7E800E8E8E800FFFFFF00FEFEFE00FFFF
      FF00E6E6E600E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E6E6E600F2F2F200FFFFFF00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A35628009F4E1D009944
      1100B87D5900BE896800E8D5CA00000000000000000000000000000000000000
      00000000000000000000FEFEFE00B5775200AE6B4200BF896800000000000000
      0000000000000000000000000000000000000000000000000000DBBDAA00BB82
      5F00B77B570098420E00A1522200A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A3562800A0502000CA9E8400EFE2
      DA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DFC4B40098410D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6D2C500B97D5A00A1522200A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F4F4F5004544470053525400605F6200FFFFFF00FEFEFE00FFFF
      FF00545355005453550055555700555557005555570055555700555557005555
      570055555700555557005555570055555700555557005554570045444700FFFF
      FF00C5BEC60093826A008E7B4F008F7D53008E7C53008F7D5300917F52008E7C
      53008D7B54008D7B54008C794F008E7E7600FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A45628009D4B1A00DCBFAE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F1EE00CFA68E00B16F4800A1522300BA805D00DCBFAE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B3744E00A1522300A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F0F0F10005040800171619002A282C00FFFFFF00FEFEFE00FFFF
      FF0019181C0019181B001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001A191D0006050800FFFF
      FF00ADA4B100B3A46600836B000088710A008973090081690300624809008D77
      060088710A0088710A008871020074604400FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A35526009E4C1C000000
      0000000000000000000000000000000000000000000000000000F7F0EB00D0A8
      9100AE6A41009A4512009E4C1B00A1532300A3562800A05021009C4917009C49
      1700B97E5B00DCBFAD0000000000000000000000000000000000000000000000
      000000000000EAD9CE009A451200A3562800A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00DEDEDE00E2E2E200E3E2E300FFFFFF00FEFEFE00FFFF
      FF00E0E0E100E2E2E200E2E2E300E2E2E300E2E2E300E2E2E300E2E2E300E2E2
      E300E2E2E300E2E2E300E2E2E300E2E2E300E2E2E300E2E2E300DEDEDE00FFFF
      FF00B0A7B400B2A36900856E09008B7513007F680E0077657000CBC5DA005B42
      14008D7711008A7414008A730B0077644A00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A45729009D4B1900CFA8
      9000000000000000000000000000F6EEEA00D2AC9600AD683E009A4512009E4C
      1B00A1522300A3562800A4572900A4572900A4572900A4572900A4572900A356
      2700A05021009C4917009C491700B97F5C00DCBFAE0000000000000000000000
      000000000000A9613600A1532300A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B0A7B400B2A36900856E09008C7612005E440C00FFFFFF00FFFFFF009889
      8500877007008A7414008A730B0077644A00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A35527009E4C
      1B00F6EFEB00D5B19D00AC653C009A4512009E4C1B00A1522300A3562800A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A4572900A457
      2900A4572900A4572900A3562700A05021009C4917009C491700B87D5A00E2CA
      BB00E0C6B7009B471500A3562800A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F3F3F40038373A004746490055545700FFFFFF00FEFEFE00FFFF
      FF0048474A0048474A004A494B004A494B004A494B004A494B004A494B004A49
      4B004A494B004A494B004A494B004A494B004A494B0049484B0039373A00FFFF
      FF00B0A7B400B1A36900856E09008B751300735A0300DEDBE800FFFFFF007E6A
      460089730C008A7414008A730B0077644A00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A4572900A051
      2100953B0600953D07009D4B1A00A2542600A4572900A4572900A4572900A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A4572900A457
      2900A4572900A4572900A4572900A4572900A3562800A15223009B4614009339
      03009B471400A1532400A4572900A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F0F0F10005040800171619002A282C00FFFFFF00FEFEFE00FFFF
      FF0019181C0019181B001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001A191D0006050800FFFF
      FF00B0A7B400B1A36900856E09008A741300846C0000B7ADBB00FFFFFF00644B
      0F008C7611008A7414008A730B0077644A00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A04F2000A960
      350000000000E7D4C800BF8A6A00A15222009A4512009F4E1E00A2542600A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A4572900A457
      2900A4572900A3562800A25324009E4C1B0099430F00AA623800CEA58C00F9F6
      F30000000000A1512100A1522300A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FFFFFF00F3F3F30000000000F5F5F500FFFFFF00FEFEFE00FFFF
      FF00F4F4F40000000000F6F6F700F6F6F700F6F6F700F6F6F700F6F6F700F6F6
      F700F6F6F700F6F6F700F6F6F700F6F6F700F6F6F70000000000F3F3F300FFFF
      FF00B0A7B400AEA06200856E0A008A7513008C76000084736B00CBC4D4007259
      00008E780F008A7413008A730B0077644A00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A1512200A35527000000
      000000000000000000000000000000000000EDDED600C5967800A25324009944
      11009E4D1C00A2542500A3562800A4572900A4572900A4572900A3562800A253
      25009E4C1B0099431000A75E3100CFA78F00F8F3F10000000000000000000000
      000000000000FFFFFE009D4A1900A2532400A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00FCFCFC00BFBFC000C5C5C600C8C8C900FFFFFF00FEFEFE00FFFF
      FF00C4C4C500C6C6C600C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6
      C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700C6C6C700BFBFC000FFFF
      FF00B1A7B500A999570087700A00836C0A0043293A00BDB4BC00FCFBFD005C46
      5100604824008E780F008A730B0077634A00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A2542500A1522300000000000000
      000000000000000000000000000000000000000000000000000000000000F4EA
      E500CCA18800A5592B009A4411009E4D1C00A35527009E4C1B009A441100A65C
      3000D0A89100F9F5F20000000000000000000000000000000000000000000000
      0000000000000000000000000000A1512200A3552600A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F0F0F10005040800171619002A282C00FFFFFF00FEFEFE00FFFF
      FF0019181C0019181B001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A
      1D001B1A1D001B1A1D001B1A1D001B1A1D001B1A1D001A191D0006050800FFFF
      FF00B0A7B500AA9A5700897100006B554B00FFFFFF0095868D008E7F8600F9F9
      FB00C6BFD0006F5600008B750A0078644900FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A35628009E4C1B00E9D7CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAF6F300D4B19C00A04F1F00D7B5A000F9F4F1000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBF9F700C6957800A0502000A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FFFFFF00F6F6F70068676900737274007E7D7F00FFFFFF00FEFEFE00FFFF
      FF00747375007473750075757700757577007575770075757700757577007575
      770075757700757577007575770075757700757577007574770068676900FFFF
      FF00ADA3B000B8AB6A005D420100F5F5FF00FFFFFF00998B92009A8C9300DEDA
      DC00FFFFFF007C696900897100006F593E00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A35628009C481600A1522200BF88
      6800E6D0C4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B67954009B471500D6B4A000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F5
      F200CFA78F00A960350099441000A0502000A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0088777A005F495400FFFFFF008E7F8600FFFFFF00FFFFFF00B4A9
      AE00CEC7CA00ABA0AA007A675C00C7BFC600FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009F4F1E00D6AEA0009F4E1D00A457
      2900A4572900A4572900A4572900A4572900A4572900A4562800A2552600A04F
      1F009B4715009F4D1C00B77B5800DDC0AF000000000000000000000000000000
      00000000000000000000B87E5B009D4B1900A356280099441100D4B09A000000
      000000000000000000000000000000000000FAF6F400D1AA9300AC663D009A44
      11009E4C1B00A2532400A3562800A4572900A4572900A4572900A4572900A457
      2900A45729009E4D1C00D6B2A100A35527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282B009A9A9B00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00644F5900BDB5B900B3A9AE00B2A8AD00BCB3
      B70085747C00B8AFB300FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009A9A9B0029282B00000000009E4F1E00D6AEA1009E4D1C00A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A4572900A457
      2900A4572900A3552700A05121009C4917009B481600B3724D00D4B09A00F9F5
      F20000000000C08C6C009C481600A4572900A4572900A356280099431000D7B6
      A30000000000FBF8F700D3AE9800B06D45009A4512009E4C1B00A1532300A356
      2800A4572900A4572900A4572900A4572900A4572900A4572900A4572900A457
      2900A45729009E4C1B00D7B3A200A35526000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029282C009D9D9E00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FFFFFF009D9D9E0029282C00000000009E4D1C00D6B3A2009E4C1D00A356
      2800A4572900A4572900A4572900A4572900A4572900A4572900A4572900A457
      2900A4572900A4572900A4572900A4572900A3562800A15122009D4B1A009B47
      1500AB6439009E4D1C00A3562800A4572900A4572900A4572900A35628009D4B
      1A00B3734D009B4715009D4B1A00A1522300A3562800A4572900A4572900A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A4572900A457
      2900A3562700A1502300D3AD9B00A25526000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E2D300044444600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00444446002E2D300000000000AB633900AE694300CC9F8A009C4A
      1800A3562800A4572900A4572900A4572900A4572900A4572900A4572900A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A4572900A356
      2800A2542500A3562800A4572900A4572900A4572900A4572900A4572900A356
      2800A1522300A3562800A4572900A4572900A4572900A4572900A4572900A457
      2900A4572900A4572900A4572900A4572900A4572900A4572900A4572900A356
      28009C491600D1A79400A9613800AE6B43000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A494C00242326003C3B3E009292
      9300939294009291930092919300929193009291930092919300929193009291
      9300929193009291930092919300929193009291930092919300929193009291
      9300929193009291930092919300929193009291930092919300929193009291
      9300929193009291930092919300929193009291930092919300929193009291
      9300929193009291930092919300929193009291930092919300939294009292
      93003C3B3E00242326004A494C0000000000D3AE9900953D0700D0A49200C28C
      71009C4815009F4E1D009F4E1D009F4E1D009F4E1D009F4E1D009F4E1D009F4E
      1D009F4E1D009F4E1D009F4E1D009F4E1D009F4E1D009F4E1D009F4E1D009F4E
      1D009F4E1D009F4E1D009F4E1D009F4E1D009F4E1D009F4E1D009F4E1D009F4E
      1D009F4E1D009F4E1D009F4E1D009F4E1D009F4E1D009F4E1D009F4E1D009F4E
      1D009F4E1D009F4E1D009F4E1D009F4E1D009F4E1D009F4E1D009F4E1D009B48
      1500C5937900CC9E8800953C0600D8B6A3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000535254002E2D30002A29
      2C0029282B0029282B0029282B0029282B0029282B0029282B0029282B002928
      2B0029282B0029282B0029282B0029282B0029282B0029282B0029282B002928
      2B0029282B0029282B0029282B0029282B0029282B0029282B0029282B002928
      2B0029282B0029282B0029282B0029282B0029282B0029282B0029282B002928
      2B0029282B0029282B0029282B0029282B0029282B0029282B0029282B002A29
      2C002E2D300053525400000000000000000000000000B06E470093380100B87B
      5A00D7B1A300D2AB9800D2A99700D2A99700D2A99700D2A99700D2A99700D2A9
      9700D2A99700D2A99700D2A99700D2A99700D2A99700D2A99700D2A99700D2A9
      9700D2A99700D2A99700D2A99700D2A99700D2A99700D2A99700D2A99700D2A9
      9700D2A99700D2A99700D2A99700D2A99700D2A99700D2A99700D2A99700D2A9
      9700D2A99700D2A99700D2A99700D2A99700D2A99700D2A99700D2AA9800D7B2
      A300B576540093380100B4755000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009F9EA200A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600A6A6A600A6A5A8009B9C9A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F0
      EF00EFEEEE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000999899009D9D9D009D9D9D009D9D9D009D9D9D009D9D9D009D9D
      9E009D9D9E009C9B9F009B9D9A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000958F8A004B4038004438
      300044393100493E36008E888300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CAAC6D0000000000D9C29400C8A8
      6600C29F5700ECE2CC00B9913E00D7C09000C09B5000D1B67F00CBAC6F000000
      0000C8A96700CDAF7300CCAF7300DFCBA400F6F0E600CAAA6A00F3EDE000DFCD
      A700CEB07600C4A25C00E7DABE00CDAF7300E0CFAB00F4EEE100B88F3B00D7C0
      9000BB954500BC96460000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F8FE00789BFB004D7B
      F9003065F900215DF8002F64F9004A7AF9007B9DFB00BACCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000999899009D9D9D009D9D9D009D9D9D009D9D9D009D9D9D009D9D
      9E009D9D9E009C9B9F009B9D9A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000524841004C413A004B403800493D
      3400483C33004B4038004D423B0050453E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9AA6A00E5D5B700CFB37A00CDAF
      7400BB944400D3BA850000000000C29D540000000000C7A56100C7A563000000
      0000CCAF7200CDB07600C6A56000DCC79C00FAF8F200C5A45F00F8F4EC00D1B5
      7E00B1842600CEB17700D8C19300CBAC6E00E0CFAB00F1E9D900D0B37A00D9C2
      950000000000DECCA500E7DBC000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4DEFD001555F8005A86
      FA007C9EFB008EA9FB007EA0FB005E88FA002B65F9000032F700001BF600205C
      F800ADC1FC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003D3E3D00474748004948
      4B0049484B004B484E004B484E004B484E004B484E004B494E004B494E004B49
      4E004B494E004B484E004B494E004B484E004B484E004B484E0049484E00494A
      4B00494A4B0050505100515151005151510051515100515151004F4F4F004F4F
      4F004F4F4F004F504F004F4F50004B484E004B484E004B484D004B484E004B48
      4E004B484E004A484D004A484D004B474E004A484D004B484D0048484C004748
      490047484900444444005A5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000726A63004F453D004C413900D1C9C200FDFF
      FF00FCFFFF00D4CDC6004C41390050463F00675E570000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7A86500E8DBC000EDE2CC00C5A3
      5D00DDCAA200C19C5200BF984B00C7A5620000000000D0B57D00CCAF7200C3A1
      5900DFCDA700C3A05800E7D9BD00E5D5B500BD964800BF9A4D00B9913E00F8F5
      EE00CFB47B00BF9A4D00F8F5ED00B88F3B00BC944400F1E9D900A6710600DAC4
      9700BD974900C09A500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000E4EAFE007196
      FA00002CF7000032F700A2BBFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000044454400575757005556
      5400555654005555550055555500555555005555550055555500555555005555
      5500555555005555550055555500555555005555550056555500545555005454
      5600545456005555550055555500555555005555550055555500545454005454
      5400545454005455530054535600555554005555540055555400555554005555
      5400555554005555540055555400555554005555540055555400535456005455
      5300545553005656560057575700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7E6E40043372F00473C3400F0EAE40099BFE100598F
      BF005A8FBF0093BBDE00F7F2ED00463B330045393200DBD9D700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2D1AF00C09B4F00D9C397000000
      000000000000E1D0AB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DECAA2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFE00000000000000
      00000000000096B1FC000025F6001251F800FFFFFE0000000000000000000000
      0000000000000000000000000000000000000000000046454800595959007676
      7600767676007374740073747400737474007374740073747400737474007374
      7400737474007474740075757500757575007575750075757500757575007575
      7500757575007474740074747400757575007575750075757500757575007575
      7500757575007575750075757500757575007575750075757500757575007575
      7500757575007575750075757500757575007474740073737300747474007474
      7400747474005353530058585800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AAA5A200493F3700796F6600D5EAFD005C91BF006D9C
      C6006D9CC6005D91C000CEE5FA0080766D004A3F3700A49F9B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003269F9000020F600D3DEFD00000000000000
      0000000000000000000000000000000000000000000048454900595959007979
      7900797979007676760076767600767676007676760076767600777777007777
      770077777700717171006C6C6C006C6C6C006C6C6C006C6C6C006C6C6C006C6C
      6C006C6C6C006C6C6C006C6C6C006C6C6C006C6C6C006C6C6C006C6C6C006C6C
      6C006C6C6C006C6C6C006C6C6C006C6C6C006C6C6C006C6C6C006C6C6C006C6C
      6C006C6C6C006C6C6C006C6C6C006B6B6B007272720077777700767676007777
      7700777777005353530057575700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009F999500483E3600968B8300B0CFEA006596C2006D9C
      C6006D9CC6006597C300A8C9E7009D938B004B403900867F7A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EEECE000BAAF8000BBB08200BBB08200BBB0
      8200BBB08200BBB08200BBB08200BBB08200BBB08200BBB08200BBB08200BBB0
      8200BBB08200BBB08200BBB08200BBB08200BBB08200BBB08200BBB08200BBB0
      8200BBB08200BBB08200BBB08200BAAF8000F7F6F20000000000000000000000
      0000000000000000000000000000000000007EA0FB000015F600C3D3FD000000
      0000000000000000000000000000000000000000000047464800595959007979
      7900797979007676760076767600767676007676760076767600747474007474
      7400747474006262620065656500656565006565650065656500656565006565
      6500656565006565650065656500656565006565650065656500656565006565
      6500656565006565650065656500656565006565650065656500656565006565
      6500656565006565650065656500656565006363630076767600767676007777
      7700777777005353530057575700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B4B0AD004A3F3700685E5500ECFBFF00578DBD006B9A
      C5006B9AC500588DBE00E9F9FF006C615900554B440051463F00473C34006B62
      5C00A59F9B00DEDCDB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C4BB9400836F1B00B2A77300AEA26B00AEA2
      6B00AEA26B00AEA26B00AEA26B00AEA26B00AEA26B00AEA26B00AEA26B00AEA2
      6B00AEA26B00AEA26B00AEA26B00AEA26B00AEA26B00AEA26B00AEA26B00AEA2
      6B00AEA26B00AEA26B00B3A8740079640800D9D4BB0000000000000000000000
      000000000000000000000000000000000000000000008FADFB000017F600E1E9
      FE00000000000000000000000000000000000000000047464800575758007979
      7900797979007676760076767600717171006B6B6B006C6C6C00686868006868
      680068686800595959005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005D5D5D005D5D
      5D005D5D5D006565650066666600666666006464640076767600767676007777
      7700777777005353530057575700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F7F70041362D00493E3600C6BEB700D0E7FC006A9C
      C900689BC800CBE4F900D0C9C100493E3600574D46004C413900483D35004B40
      38004B403800473C34004A3F37007B736D00B4AFAC00EDECEB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C5BD97009F904F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000088752400DCD8C10000000000000000000000
      0000000000000000000000000000000000000000000000000000608AFA00002D
      F600000000000000000000000000000000000000000047464800575758007979
      7900797979007676760076767600717171006B6B6B006C6C6C00686868006868
      680068686800595959005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005D5D5D005D5D
      5D005D5D5D006565650066666600666666006464640076767600767676007777
      7700777777005353530057575700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099928E0050453E00473C3400988F8700E7E1
      DB00E7E1DB009D948C00463A3300574D46004F443B0000000000EDE8E300B5AD
      A500766B62004B3F3600493E36004B4038004A403800463B330051463F008A84
      7E00C3BFBC00FBFBFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8ECF400DADFE900D6DA
      E400D6DBE500D6DBE500D6DBE500D6DBE500D6DBE500D6DBE500D6DBE500D6DB
      E500D6DBE500D6DBE500D6DBE500D6DBE500D6DBE500D6DBE500D6DBE500D6DB
      E500D6DBE500D6DBE500D6DBE500D6DBE500D6DBE500D8DCE500D9DCE300D9DA
      DA00DBDBDB00F6F6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6BD97009C8D4A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000088752400D2CCAE00F8F6F200F4F2EA00F3F1
      E900FDFCFB000000000000000000000000000000000000000000000000000045
      F8004A7AFA000000000000000000000000000000000047474900575758007979
      790079797900767676007070700097979700CECECE00CACACA00C9C9C900C9C9
      C900C9C9C900C3C3C300C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C7C7C700ADADAD00ADAD
      AD00ADADAD005C5C5C0065656500666666006464640076767600767676007777
      7700777777005353530055555600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000045393100584E47004C413900493D
      3600483D36004C413900584E4700524841008F847B00A8C2DB004372A10087A7
      C600C8DAED00FAFDFF00E3DCD500A59B9300655A5100483C34004A3F38004B40
      38004A3F3700463B3300605750009A949000D2CFCD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8EAEF008B8982008F6F2500936400009364
      0000936400009364000093640000936400009364000093640000936400009364
      0000936400009364000093640000936400009364000093630000936300009364
      0000936400009364000093640000936400009363000093650000907331008587
      8800838488007F7F7F00B7B7B700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6BD97009C8D4A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000917F350076610400725C0000725C0000725C
      000089762700000000000000000000000000000000000000000000000000E0E7
      FE000016F600E6ECFE0000000000000000000000000047464800575758007878
      780078787800757575006A6A6A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008787870061616100666666006464640076767600767676007878
      7800787878005353530056565600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DDDBD900493E3600544A4200817A74005147
      3F005248400081797400594F47004C413A00CDC5BD006D93B9004C77A3004B77
      A20045729F003D6D9C005782AD0097B4D000D9E8F700FCFBF900D5CCC500958B
      8300574A4200463A32004A4038004A403800493E3600453A320071686200A8A3
      9F00E2E0DF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000089867D00A0630000A9700000C9A35600CBA6
      5C00CBA55B00CBA65B00CBA65A00CBA65A00CBA55900CBA65900CBA65900CBA6
      5900CBA65A00CBA75A00CBA65A00CBA75A00CCA75B00CCA75B00CCA75B00CCA7
      5B00CCA75B00CCA75B00CCA75B00CCA75B00CCA85D00C7A04F00A66B0000A26A
      00008D8D8C0087888A007C7C7C00D2D2D2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6BD97009C8D4A0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B58A
      5A009A5F1E009D6325009D6325009D6325009D6325009D6325009D6325009D63
      25009D6325009D632500A165290089772700E3E0CE000000000000000000E6E2
      D200867320000000000000000000000000000000000000000000000000000000
      00002D64F9004073F90000000000000000000000000047464800575758007878
      780078787800757575006D6D6D00FFFFFF00FFFFFF00FEFFFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFF00FFFF
      FF00FFFFFF00FDFEFD00FDFEFD00FEFEFE00FFFEFE00FFFEFF00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00FFFDFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008D8D8D0060606000666666006464640076767600767676007878
      7800787878005353530054545500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A39E9B004A3F380071696300000000000000
      0000000000000000000045393100473B3300FBF9F7003E6E9D00517BA500527C
      A600527CA600527CA6004F7AA4004A76A10044719E003D6D9D00678EB500A7C1
      DA00E9F4FF00F8F4F000C4BBB4007D756E00574D4600584E47004E433C004A3F
      3800473C340041352D00E7E5E400000000000000000000000000000000000000
      00000000000000000000F4F8FF008F6B1B00AB73000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A76D
      0000997D390081858D007E7E7E009E9E9E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6BD97009C8D4A0000000000000000000000
      00000000000000000000EEE3D800EFE6DD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000087742300DAD6BE000000000000000000DED9
      C300867321000000000000000000000000000000000000000000000000000000
      0000C0D0FD00001FF60000000000000000000000000047454800575758007979
      790079797900757575006C6C6C00FFFFFF00FFFFFF00FFFFFF00F0F1EA00F0F1
      EA00F0F1EA00EDEAE600EBEAE300EBEAE300EBEAE300ECECE500F4F5F200FFFF
      FF00FFFFFF00FFFEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFFFF00EEEE
      E700EEEEE700EDE9E500EBE9E400F2EEED00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640076767600767676007878
      7800787878005353530055555600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006C635D004A3F3800AAA6A100000000000000
      000000000000BBB8B5004A3F380062564E00DEEBF80043719E00527CA600527C
      A600527CA600527CA600527CA600527CA600527CA600527BA5004E79A4004874
      A100416F9D004574A2006F94BA00000000005D534B0051463F008B847F007068
      6200463A3300372B2300CECAC900000000000000000000000000000000000000
      00000000000000000000F0F4FE00915E0000D5B8700000000000000000000000
      000044B2FF000A95FF00B4E3FF000000000000000000E0F5FF00179BFF0026A4
      FF00F3FBFF0000000000000000005FBEFF000491FF0096D7FF00000000000000
      0000BEE7FF000894FF003BAEFF0000000000000000000000000000000000CAA6
      54009D6D0A007E848F007C7C7C00989898000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6BD97009C8D4A0000000000000000000000
      000000000000D9C3AB00A5713800A36D3200D6BDA3000000000000000000C8A8
      85009E662900A26C3200A26C3200A26C3200A26C3200A16C3100A16A2F00A26C
      3100995D1B00000000000000000086732100DAD6BE000000000000000000DED9
      C300867321000000000000000000000000000000000000000000000000000000
      000000000000002AF600ACC2FC00000000000000000047464800575758007979
      790079797900757575006C6C6C00FFFFFF00FFFFFF00FFFFFF00B4AC8F00B4AC
      8F00B4AC8F00D8CFBB00E3DBCC00E2D9CA00E2DCCD00CDC3AC00CCC4AE00FFFF
      FF00FFFFFF00F4F3F000D9D7CB00DDDACF00DDDACF00DAD6CB00FFFFFF00CFCC
      BC00CFCCBC00E4EBE400F2F0EB00D1CDBA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640076767600767676007878
      7800787878005353530054545400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000453A3200463A3300E4E2E100000000000000
      000000000000847C77004A3F38009F968E009EB9D4004975A100527CA600527C
      A600527CA600527CA600527CA600527CA600527CA600527CA600527CA600527C
      A600527CA600507BA5003D6D9D00F7F3F000473B330042372F00000000000000
      000000000000EAE9E80000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00925C0000D8C0830000000000000000007ECA
      FF000081FF00008AFF000085FF0000000000000000000D99FF000088FF000085
      FF003BAEFF0000000000ABDEFF00007EFF00008CFF00007CFF00F3FDFF000000
      00000089FF00008AFF000081FF007FCBFF00000000000000000000000000CDAC
      64009E6C01007F848F007B7B7B00999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6BD97009C8D4A0000000000000000000000
      0000955714008C490000AD7D4A00B38656008C490000BF9A7100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000086732100DAD6BE000000000000000000DED9
      C300867321000000000000000000000000000000000000000000000000000000
      0000000000002C65F9005F88FA00000000000000000046464800575758007979
      790079797900757575006C6C6C00FFFFFF00FFFFFF00FFFFFF00BBB09500BBB0
      9500BBB09500EEE8DC00FFFDF700FEFAF400FFFDFA00DDD6C300CEC6B400FFFF
      FF00FFFFFF00F5F3EF00DFD6C900E2D8CD00E1D9CB00DCD5C900FFFFFF00E3D7
      CE00E3D7CE006DE6DB007DE8DF00E2D6C700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640076767600767676007878
      7800787878005353530053535300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CDCAC800493E36004E443C0000000000000000000000
      00000000000050463E004A3F3700DED6CF005C86AF004F79A400527CA600527C
      A600527CA600527CA600527CA600527CA600527CA600527CA600527CA600527C
      A600527CA6004D78A300769ABE00C4BBB3004A3F380063595300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00925C0000D8BF8100000000000000000088CE
      FF000080FF000088FF000089FF000000000000000000189FFF000086FF000083
      FF004AB4FF0000000000B5E2FF00007DFF00008AFF00007FFF00F9FFFF000000
      0000008DFF000088FF000080FF008CD0FF00000000000000000000000000CCAA
      61009E6C02007E838F0079797900979797000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6BD97009C8D4A0000000000000000000000
      0000E7D9C90000000000DCC8B100E8DACB00D4BBA10093530E0000000000D3BA
      9E00B2855500B58A5C00B58A5C00B58A5C00B2865600D5B89900F6F9FC008D8D
      8D0094959500000000000000000086732100DAD6BE000000000000000000DED9
      C300867321000000000000000000000000000000000000000000000000000000
      0000000000006990FA00255DF800000000000000000046464800575758007979
      790079797900757575006C6C6C00FFFFFF00FFFFFF00FFFFFF00BBB09500BBB0
      9500BBB09500EEE8DC00FFFDF700FEFAF400FFFDFA00DDD6C300CEC6B400FFFF
      FF00FFFFFF00F5F3EF00DFD6C900E2D8CD00E1D9CB00DCD5C900FFFFFF00E3D7
      CE00E3D7CE006DE6DB007DE8DF00E2D6C700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640076767600767676007878
      7800787878005353530053535300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000968F8B004A3F3800817A750000000000000000000000
      0000E7E5E400463B3300463A3100FCFFFF003E6D9D00527CA500527CA600527C
      A600527CA600527CA600527CA600527CA600527CA600527CA600527CA600527C
      A600527CA6004773A000B8CFE300857A72004A3F38009B959000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00925C0000D8BE810000000000000000000000
      000061BFFF0025A3FF00CFEDFF000000000000000000F1FBFF0030A8FF0045B2
      FF000000000000000000000000007ECCFF001CA0FF00B7E4FF00000000000000
      0000D6F0FF0023A3FF005EBDFF0000000000000000000000000000000000CCAB
      62009E6C02007D828D0079797900969696000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6BD97009C8D4A0000000000000000000000
      00000000000000000000D0B49600B18453008E4C0500B082500000000000FBF9
      F600F8F4F000F9F5F200F9F5F200F9F5F200FFFBF500E1E2E4008A8A8A009696
      960090919100BFBEBC000000000088762500DAD6BE000000000000000000DED9
      C300867321000000000000000000000000000000000000000000000000000000
      00000000000091ACFC000043F700000000000000000046464800575758007979
      790079797900757575006C6C6C00FFFFFF00FFFFFF00FFFFFF00BDB29800BDB2
      9800BDB29800CFC6B500ECE6DC00DFDBCE00EFEBDF00C0B9A300D0C9B600FFFF
      FF00FFFFFF00EDFAFD00BBEEFC00C3EFFD00C3EFFE00BCECFB00FFFFFF00D4D1
      C200D4D1C200FFFFFF00D5F5EE00D7D0BE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640076767600767676007777
      7700777777005353530053535300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005D534C004A3F3800B9B5B20000000000000000000000
      0000ADA8A5004A3F380072675F00CBDDEE0045729F00527CA600527CA600527C
      A600527CA600527CA600527CA600527CA600527CA600527CA600527CA600527C
      A600517BA500406F9D00F3FBFF004E423900493E3600D3D1CE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00925C0000D8BF810000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CDAA
      62009C6C02007C818C0077777700959595000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6BD97009C8D4A0000000000000000000000
      0000F1EAE1009455110088420000995D1C00C4A27D000000000000000000D4BA
      9F00B3875600B68C5D00B78C5E00C296660091714E008F919400979797009898
      9800989898008D8F9100C4A386008F7E3000DAD6BE000000000000000000DED9
      C300867321000000000000000000000000000000000000000000000000000000
      00000000000099B4FC00003EF700000000000000000046464700575758007979
      790079797900757575006C6C6C00FFFFFF00FFFFFF00FFFFFF00BFB59C00BFB5
      9C00BFB59C00BDB49900E9E3D800FFFDFA00DAD3BF00BEB59900D1CAB800FFFF
      FF00FFFFFF00E8F8FB00B5E8FE00B9EEFE00BAEEFF00B3EAFD00FAFFFF00ECE6
      E200ECE6E200E4E3D700E8E3D800EBEAE500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640076767600767676007777
      7700777777005353530053535300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F6F600453A320043373000F5F5F40000000000000000000000
      0000746C66004A3F3800B1A7A0008BABCA004B76A200527CA600527CA600527C
      A600527CA600527CA600527CA600527CA600527CA600527CA600527CA600527C
      A600507BA5004A78A500F0EAE300483D3500463A320000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00925C0000D7BF810000000000000000000000
      000056BAFF00179CFF00C4EBFF000000000000000000EDFBFF0023A3FF0033AB
      FF00FEFFFF00000000000000000071C6FF00119AFF00A8DFFF00000000000000
      0000D1F0FF00159CFF004BB5FF0000000000000000000000000000000000CCAB
      63009D6C03007B808A0076767600949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6BD97009C8D4A0000000000000000000000
      0000A7733B00A5713800D2B89B00E0CEBA000000000000000000000000000000
      0000000000000000000000000000B9BDC2009296990098989800989898009898
      98009898980095969600ACB1BD008E7A2500DBD6BE000000000000000000DED9
      C300867321000000000000000000000000000000000000000000000000000000
      0000000000008BA8FC000246F700000000000000000046464700575758007979
      790079797900757575006C6C6C00FFFFFF00FFFFFF00FFFFFF00BFB59B00BFB5
      9B00BFB59B00BBB49C00F9F6EA00FFFDFB00E9E4D800BFB49900D0CAB800FFFF
      FF00FFFFFF00F8F5EF00DBD6C400E4D8C400E1D8C500E2D7C700DBD5C500DDD9
      C700DDD9C700DED8CB00DCD6C900E8E4DA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640076767600767676007878
      7800787878005353530053535300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFBBB8004A3F3700564B44000000000000000000000000000000
      0000473C3400493E3600ECE5E0004776A400507AA500527CA600527CA600527C
      A600527CA600527CA600527CA600527CA600527CA600527CA600527CA600527C
      A6004B77A20088A8C700B3AAA2004A3F38007068620000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00905C0000D8BF8100000000000000000082CC
      FF000080FF000089FF000085FF000000000000000000139CFF000087FF000084
      FF003EB0FF0000000000AFE0FF00007EFF00008BFF00007BFF00F8FEFF000000
      0000008AFF000089FF000080FF0083CDFF00000000000000000000000000CCAB
      62009D6C02007B808B0074747400939393000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6BD97009C8D4A0000000000000000000000
      0000A8763E00B2845400E3D2C000DECAB400D5BEA300F5EFE90000000000C9AA
      8800A56D3200A66E33008B7E7100939596009898980098989800989898009898
      9800989898009898980096989C0083794A00DCD6B8000000000000000000DED9
      C300867321000000000000000000000000000000000000000000000000000000
      0000000000005E89FA002C63F900000000000000000046464600575758007979
      790079797900757575006C6C6C00FFFFFF00FFFFFF00FFFFFF00BDB19300BDB1
      9300BDB19300C2B59900C4B79F00D8D0BA00BEB49900BDB79300CDC8B100FFFF
      FF00FFFFFF00F8F7F600E7E3DC00E8E5DF00E7E6DD00E7E6DE00E7E6DE00E7E6
      DE00E7E6DE00E7E6DE00E6E5DC00EEEAE600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640076767600767676007878
      7800787878005353530052525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000087807A004A3F380090898500000000000000000000000000D8D5
      D400483D35004E433A00000000006A91B8004170A00042709E004774A0004774
      A0004774A0004774A0004774A0004774A0004774A0004774A0004774A0004774
      A0003B6B9A00C6D9EB006C60570041352D00A8A39E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00925C0000D7BE8100000000000000000082CB
      FF000080FF000089FF000087FF000000000000000000119BFF000086FF000084
      FF0043B0FF0000000000AEDFFF00007EFF00008AFF00007DFF00F5FEFF000000
      0000008BFF000089FF000080FF0084CDFF00000000000000000000000000CDAB
      62009D6C0200797E8A0074747400929292000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6BD97009C8D4A0000000000000000000000
      0000F5EFE8008E4B03008A4600008944000086400000D7C0A700000000000000
      0000000000009CA1A70096979900989898009898980098989800979797009798
      990098989800989898009898980090919500E0DDCF000000000000000000DED9
      C300867321000000000000000000000000000000000000000000000000000000
      0000000000001D5AF8006990FA00000000000000000046464600565657007878
      780078787800757575006C6C6C00FFFFFF00FFFFFF00FFFFFF00E2E1D700E2E1
      D700E2E1D700E3E0D400E2DFD400E0DDD200E3DFD600E2DED500EAEBE300FFFF
      FF00FFFFFF00FCFBFC00F4F4EF00F6F5F200F6F5F100F6F4F200F6F5F100F6F4
      F200F6F4F200F6F4F200F5F4F100F7F6F300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640076767600767676007878
      7800787878005353530052525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004D423B00493E3700C8C5C2000000000000000000000000009F99
      94004F443D00574D460081797200C7BFB700FAF6F200E4F1FD00A6BDD400B2C9
      E100B2C9E100B2C9E100B2C9E100B2C9E100B2C9E100B2C9E100B2C9E100B2C9
      E100A9C3DC0000000000AAA5A100ADA8A500FCFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00925C0000D8BF820000000000000000000000
      000051B8FF001A9FFF00C0E7FF000000000000000000E4F5FF0028A5FF0039AD
      FF00F8FEFF0000000000000000006CC5FF00119CFF00A5DBFF00000000000000
      0000C6E9FF00199FFF004EB7FF0000000000000000000000000000000000CDAB
      62009D6C0300787D880072727200919191000000000000000000000000000000
      0000000000000000000000000000000000000949F8001E5AF800658DFA00A8BD
      FC00E8EEFE000000000000000000C6BD97009C8D4A0000000000000000000000
      00000000000000000000D1B79B00D5BCA200000000000000000000000000C6B2
      9C008C8D8D00969696009898980098989800989898009696960091908F00958A
      7F00969798009898980098989800959595009F9FA1000000000000000000DED9
      C300867321000000000000000000000000000000000000000000000000000000
      0000000000000022F600BCCDFD00000000000000000046464A00565656007878
      780078787800757575006C6C6C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640076767600767676007878
      7800787878005353530051515100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9E8E700463B3400463C330000000000000000000000000000000000655C
      5500554B44004D423B004A3F38004A3F3800483C340052463C00EEEBE600675C
      500072675C006F655A006F655A006F655A006F655A006F655A006F655A006F65
      5A006F655A00665E55006E6760006E68600067605700635C5400635C5400635C
      5300857F79000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00915C0000D8BF810000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CDAB
      63009D6B0200787D890071727200919191000000000000000000000000000000
      000000000000000000000000000000000000FBFBFE00B7CAFC007A9CFB004072
      F9000043F7000025F60000000000C9C097009C8D4A0000000000000000000000
      0000000000000000000000000000000000000000000000000000D2D2D2008C8E
      9000979797009898980098989800989898009596970097999B00FEFFFF000000
      00008E9092009797970098989800989898008F8F8F00CACACA0000000000DED9
      C3008673210000000000D6E0FE00376BF9000000000000000000000000000000
      0000A6BEFC000027F60000000000000000000000000046464A00565656007878
      780078787800757575006C6C6C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640076767600767676007878
      7800787878005353530051515100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AFAAA7004A3F3800665C5500000000000000000000000000000000004136
      2E004B403800C9C4C000A99F9800675C5300473B33003D312900D8D7D5004037
      2D00645C5400756E6600726B6400726B6400726B6400726B6400726B6400726B
      6400726B6400726B6400726B6400726B6400726B6400726B640076706800524A
      4100726B63000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00925C0000D8BF81000000000000000000F9F5
      E400F3E9CC00ECDDB700E3D1A400DEC99400DBC48500D9BE7900D4B67100CDAB
      6400C8A45700CEAD6600C9A55A00C8A35600CBA75B00D0AF6200D7BF7C00DEC9
      9400E2CFA000E4D1A500EFE1BF00F6F1DA00000000000000000000000000CDAB
      61009D6B0300777C870071717100909090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000043F7000347F700B6CCFF00D0C598009C8D4A0000000000000000000000
      0000000000000000000000000000000000000000000000000000828282009797
      970098989800989898009797970093949500958F8700E9DAC900E9DBCB00ECDE
      CD00BDB2A400919294009898980098989800979797008A8A8A00FDFEFF00E1DB
      C6008673210000000000E0E7FE000015F600FCFCFF0000000000000000000000
      0000084AF8005C87FA0000000000000000000000000046454900565656007878
      780078787800757575006C6C6C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640076767600767676007878
      7800787878005454540051515100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000776F69004A3F38009E999500000000000000000000000000C7C4C1004A3F
      3700594D4400ECF7FF0089A9C900D8E7F600FDFCFC00CFC5BD00E7E5E3003A30
      2600B7B4B0000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000716A
      6300716A63000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00915C0000D8BF81000000000000000000A36B
      00009A5F00009C6200009D6400009E6500009E6500009E6600009B620000BB92
      3600E1CD940093550000D5B97000E6D7AC00E6D8AE00EEE5C400B1811A009455
      0000904F0000D3B67000BA902D00904F0000FEFCF0000000000000000000CDAB
      62009C6B0200767C870070707000909090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001050
      F8008BA9FB0096B0FB006892FF00D7CA98009C8D4A0000000000000000000000
      0000000000000000000000000000000000000000000000000000C1C1C1009090
      900098989800979797008E8E8E00B2B2B200CCA67E00C29D7600C19C7500C19C
      7500CAA37900A3A4A40095959500989898009898980095959500A4A5A800EBE5
      CF00867321000000000000000000002DF700A8BFFC000000000000000000B7C9
      FC00001CF600FEFEFE0000000000000000000000000046444900565656007878
      780078787800757575006C6C6C00FFFFFF00FFFFFF00FEFEFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFA00FFFFFF00FFFF
      FF00FFFFFF00BBBBBB00CCCCCC00FFFFFF00FCFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFEFE00FFFEFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640076767600767676007878
      7800787878005454540050505000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000493E3600483D3500D9D6D4000000000000000000000000008E8883004A3F
      3800958A8200A7C1DA00406F9D0044719E003E6E9E005E88B300E9EDF0003A30
      2500AFABA80000000000EBF2EC00FAF6F500FDF7F600F9F6F400F9F6F400FFFE
      FC00FFFEFC00FFFEFC00FFFEFC00FFFEFC00FFFEFC00FFFEFC00000000006D67
      5F00716A63000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00925C0000D8BF820000000000FFFFFE009E64
      0000A46F0000A5700000A5700000A5700000A5700000A5700000A0680000CBAB
      6800FFFFFC00985B0000BB91320000000000E2CD9600C7A34E00B98F2700E6D5
      A400E3D19D00FFFFFC00FDF9EA00A1680000F0E4C6000000000000000000CCAB
      62009D6B0300767B8600707070008F8F8F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A0B8FC00094B
      F80000000000C9D7FD001959FF00DFD098009C8D4A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009797
      9700959595008A8A8A00C8C8C800000000000000000000000000000000000000
      000000000000FAFAFB008B8B8B0097979700989898009898980092939600ADA7
      90008C78240000000000000000002E66F9005985FA000000000000000000002C
      F600779BFB000000000000000000000000000000000046464A00565656007979
      790079797900757575006C6C6C00FFFFFF00FFFFFF00FFFFFF005A58D9005A58
      D9005A58D9004A46DB005C59D8005350D7003732D5009EA0E700FFFFFF00FFFF
      FF00FFFFFF00BEBEBE002323230081818100FFFFFF0068CF950018B15E004FC2
      81004FC2810033B96F0018B2590082D0A600FFFFFF00FFFEFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640076767600767676007878
      780078787800535353004F4F4F00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DBD9
      D700473C3500493E360000000000000000000000000000000000594F48004A3F
      3700D3CAC300678EB5004E79A400527CA600517BA500406F9E00DAE0E7003C31
      2600B3ACAA00EDFBF30022BE7C0037C48800FFFBFE00FDF8F700FFFCFB00B2AC
      A800B5B0AC00B6B1AC00B6B1AC00B6B1AC00B5B0AC00B0ABA500000000006E67
      6000716A63000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00925C0000D8BF810000000000FFFCEF009B60
      0000A46F0000A5700000A5700000A5700000A5700000A47000009C620000C9A8
      6300FFFDF2009B6100009D640000BF973E0000000000BA8E2D00A26A00000000
      0000D3B46C00F6EEDA00ECDDB8009C620000E8D9B4000000000000000000CDAB
      62009D6B0200757A8600707070008F8F8F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000002CF600E3EA
      FE0000000000000000000029FF00DCCE97009E8F4C0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDED
      ED0081818100DEDEDE0000000000000000000000000000000000000000000000
      00000000000000000000CCCCCC00909091009898980098989800989898009394
      9A0092813800000000000000000083A3FB000648F800000000001E5BF8000649
      F800000000000000000000000000000000000000000047474700565656007979
      790079797900757575006C6C6C00FFFFFF00FFFFFF00FFFFFD007D7EE6007D7E
      E6007D7EE6005855E100595BD9005D60E000494BDD00575ADB00FFFFFF00FCFF
      FD00FCFFFD00FFFFFF00FFFFFF00A09FA000654E5B0035AA660026C06A0052C4
      830052C4830057C9890022B96700A5E1BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640076767600767676007878
      780078787800545454004F505000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009F9A
      96004A3F3800756D6700000000000000000000000000F2F2F100453931004539
      3100FCFBFB0041709F00517BA500527CA600527CA6004472A000DCE2E8003C31
      2600B5ADAB00C7F1DE00E0F0E700B2E4CD0027C07F00FCF7F600FFFDFC00928D
      870099948E009A948F009A948F009A948F0099948F00918B8500000000006E68
      6000716A63000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00925C0000D8BF810000000000FEFDEF009B61
      0000A46F0000A5700000A5700000A5700000A4700000A1690000CCA95700C8A7
      5D00FEFCF2009B6100009F68000096590000B4851A0000000000A9750100C19A
      3E00FDFAF000EFE0BB00D3B5700096580000E9DAB7000000000000000000CCAA
      62009D6C0200757B86006F6F6F008F8F8F000000000000000000000000000000
      00000000000000000000000000000000000000000000B1C5FC001755F8000000
      000000000000000000000045FF00AAAA97009D8B4200F3F1E800EBE7DA00EBE7
      DA00EBE7DA00EBE7D900E9E6D700000000000000000000000000000000000000
      000000000000000000000000000000000000C7A6820000000000000000000000
      0000000000000000000000000000989893009697980098989800989898009697
      98009A9892000000000000000000D9E1FE00002BF6004D7DFA000037F7000000
      0000000000000000000000000000000000000000000046474600565656007979
      790079797900757575006C6C6C00FFFFFF00FFFFFF00FFFFFF00C0BFEB00C0BF
      EB00C0BFEB002320E0003334E0003633DE003232E400291AD8009EC7EE00FFFF
      FE00FFFFFE00FFFFFD00FFFFFF00FFFFFF007BDDB0002F724900297E4C0022BB
      640022BB64001EBA60000CB05100E7F5ED00FFFFFF00FEFFFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640076767600767676007878
      780078787800545454004F4F4F00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000675E
      57004A3F3800AEA9A500000000000000000000000000B8B4B1004A3F3700685C
      5300D7E6F50044719F00527CA600527CA600527CA6004472A000DCE2E8003C31
      2600AFABA80000000000FFF8F700FFFBFE00B3E4CD00E9F2EB00FCF7F6000000
      0000000000000000000000000000000000000000000000000000000000006D67
      5F00716A63000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00925C0000D8BF810000000000FFFFFB009D63
      0000A46F0000A5700000A5700000A5700000A47000009E650000E3CE9C000000
      0000FAF6E70096580000D5BB7A00FDF9EB00A36B000000000000C0993F00975A
      0000E1CD970000000000D5B7720096590000F0E4C6000000000000000000CCAC
      62009D6B0200757B85006E6E6E008E8E8E000000000000000000000000000000
      000000000000000000000000000000000000000000003D70F9009DB6FC000000
      0000000000000000000000000000CBC198007A650A00816E18007B660C007B66
      0C007B660C007C670E00715B0000C8BF9A000000000000000000000000000000
      000000000000000000000000000000000000833A000000000000000000000000
      000000000000000000000000000093823D0094969D0098989800989898009898
      98008F8F9000D4D4D4000000000000000000002BF600002BF70086A3FB00DEE6
      FE00000000000000000000000000000000000000000046474800565656007979
      790079797900757575006C6C6C00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFF
      FE00FFFFFE00282AD5003933E2003637E1003E2AD6001F83EF0000BAFF0028C3
      F90028C3F90087DEFA0091DAC3002FBC970011B68E0024C57B002CB563002A94
      58002A9458001DB363003CBC7000FFFFFF00FDFFFD00FDFFFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640076767600767676007878
      780078787800545454004E4E4E00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000473B
      3400453A3200E9E7E600000000000000000000000000807772004A3F3800A49B
      930097B4D0004A76A100527CA600527CA600527CA6004472A000DCE2E8003C31
      2600AFABA80000000000FFFAFB00FFF9F900FFF9F900FCF7F600FAF7F500F9F6
      F400F9F6F400F9F6F400F9F6F400F9F6F400F9F6F400F9F6F400000000006D67
      5F00716A63000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00925C0000D8BF81000000000000000000A167
      00009C6300009E6500009F6700009F670000A0680000A069000096580000C9A6
      5300F3E7C600985C0000A0660000E5D5AA00FFFDF100DFCB97009A5E00009E66
      000096590000F2E5C500C9A5520091510000FDF9EC000000000000000000CDAB
      62009D6C0200747985006F6F6F008E8E8E000000000000000000000000000000
      000000000000000000000000000000000000000000000031F700F6F8FE000000
      0000000000000000000000000000F3F1E900705A0000E5E1CF00000000000000
      00000000000000000000A3945500C6BE98000000000000000000000000000000
      000000000000FCFBF900D6BFA500DECCB8008E4C0400E0CEBB00D6BFA500FEFE
      FE000000000000000000000000008C782500A59F870094949700989898009898
      9800979797008C8C8C000000000000000000ACC2FC005A85FA001854F8000024
      F600001CF6000035F7002B62F8007C9FFB000000000046474800565656007979
      790079797900757575006C6C6C00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFF
      FE00FFFFFE00282AD5003933E2003637E1003E2AD6001F83EF0000BAFF0028C3
      F90028C3F90087DEFA0091DAC3002FBC970011B68E0024C57B002CB563002A94
      58002A9458001DB363003CBC7000FFFFFF00FDFFFD00FDFFFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640076767600767676007878
      780078787800545454004E4E4E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBC7C500493E
      36004D423B00000000000000000000000000000000004D433B00493E3700E4DC
      D5005782AC004F7AA400527CA600527CA600527CA6004472A000DCE2E8003C31
      2600AFABA800000000007FD7B000B6E5CE00FFFBFE00F9F6F400FAF7F5000000
      0000000000000000000000000000000000000000000000000000000000006D67
      5F00716A63000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00915C0000D8BF82000000000000000000EADC
      B900DCC79800DAC38400D4B77200CEAC6700C9A75C00C5A15100C39E4C00BC94
      3C00B88E2F00BF994300BF984100BA903300B98F3200BD953D00C8A55900CDAC
      6700D2B37300D0B36600D7C18C00E4D1A600000000000000000000000000CDAB
      62009E6C0100747985006E6F6E00949494000000000000000000000000000000
      000000000000000000000000000000000000000000000027F600000000000000
      000000000000000000000000000000000000E8E4D400664E0000EBE8DB000000
      000000000000000000009F8F4E00C7BE98000000000000000000000000000000
      000000000000F8F4F000A26B3100AC7D480093530F00AD7D4A00A26D3200FDFB
      FB0000000000000000000000000087732200E7E2C900A1A1A400959595009898
      98009898980094949400A6A6A600000000000000000000000000000000000000
      0000F4F7FE00BCCBFD007398FB006890FA000000000047474700565656007979
      790079797900757575006C6C6C00FFFFFF00FFFFFF00FDFEFD00FFFFFD00FFFF
      FD00FFFFFD00A2A2E7002024DD003E28D9002383EC0000C3FF0000B7FF0000B4
      FF0000B4FF0000B6FE0015B4800018B98E001FB9900020BA930028BD7A0024BD
      610024BD61000EB15000CCEEDA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640076767600767676007878
      780078787800555555004E4E4E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000928B87004A3F
      3800857E7900000000000000000000000000E1E0DF00473C3400493C3300F7FD
      FF00316396004875A1004E79A400517BA500527CA6004472A000DCE2E8003C31
      2600B8AEAD00A4E8CA0062CF9F0033C38500BBE6D100FFFAFC00000000004239
      2F004B4239004B4339004B4339004B4339004B4339003D342A00000000006F68
      6100716A63000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00925C0000D8BE800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CDAB
      62009E6C0200737884006D6D6D00949494000000000000000000000000000000
      000000000000000000000000000000000000ECF1FE00003CF700000000000000
      00000000000000000000000000000000000000000000D2CBAE006C540000FAF9
      F70000000000000000009F8F4E00C7BE98000000000000000000000000000000
      0000000000000000000000000000000000008740000000000000000000000000
      000000000000000000000000000086732100DDD9C100F9FAFD008A8A8A009797
      970098989800989898008D8D8D00D8D8D8000000000000000000000000000000
      0000000000000000000000000000000000000000000047474700565656007979
      790079797900757575006D6D6D00FFFFFF00FFFFFF00FEFEFE00FBFFFF00FBFF
      FF00FBFFFF00FFFFFF005F51D6000C7BEE0000C3FF0002B7FD0000B6FF0000B6
      FF0000B6FF0009BAFE0022B887001DB9900020BA91001FB990001CB9940018B5
      6C0018B56C0078D19D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000666666006464640077777700767676007878
      780078787800555555004D4D4D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000584E47004A3F
      3700BDB9B600000000000000000000000000A5A09C004C423A0062585000FAFA
      F900E3EFFA00A6BFD900638CB300416F9E0043719E003C6C9C00DBE1E7003C31
      2600B0ACA80000000000FFFAFD00FFFAFC0023BF7D00E2F0E700FFF9F800FFFF
      FD00FFFEFD00FFFFFD00FFFFFD00FFFFFD00FFFFFD00FFFEFD00000000006D67
      5F00716A63000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00925C0000D8BF81000000000000000000D5BA
      7900C29C3E00C49E4000C39D3D00C39C3900C39B3900C29B3800C29A3900C297
      3400C3983300C1953000C1942E00C0932C00BF912A00BE902900BD8E2600BD8E
      2600BB8B2200BB8B2100B9891E00B6871C00FDF9F1000000000000000000CCAB
      62009E6C0200747984006D6D6D00939393000000000000000000000000000000
      000000000000000000000000000000000000E9EFFE00003FF700000000000000
      0000000000000000000000000000000000000000000000000000BAB082007761
      040000000000000000009F8F4E00C7BE98000000000000000000000000000000
      000000000000000000000000000000000000975A190000000000000000000000
      000000000000000000000000000086732100DAD6BE0000000000C3C3C3009090
      90009898980098989800979797008E8E8E000000000000000000000000000000
      0000000000000000000000000000000000000000000047474700555555007777
      770077777700757575006C6C6C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFEFF00FFFFFD0034C9FB0000B0FC0000B7FD0000B6FF0000B6
      FF0000B6FF0009BAFE0022B887001FB9900020BA910018BA8C0009B0820071D0
      B80071D0B800FFFFFF00FBFFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008C8C8C0060606000656565006464640076767600767676007777
      770077777700555555004D4D4D00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F5F50045393200453A
      3300F5F5F5000000000000000000000000007A726C00493E360053494200453A
      32005D514800988E8600D6CDC600FDFEFE00D6E5F50088A9CA00DCE2E9003B31
      2500AFABA80000000000FCF7F600FDF8F700FFFAFB00FDF7F600FAF7F500FAF7
      F500FBF7F500FBF7F500FBF7F500FBF7F500FBF7F500FAF7F500000000006D67
      5F00716A63000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00915C0000D8BE81000000000000000000A976
      03009B6900009B711A009A721E00987426009874270098752700987528009877
      29009776290097772B0097782C0098772D0098782E0098782F00987931009878
      3100977A3300987A340099772600985B0000F2E7CA000000000000000000CDAB
      61009E6C0200737883006D6D6D00959595000000000000000000000000000000
      000000000000000000000000000000000000FCFDFE00002FF700000000000000
      000000000000000000000000000000000000000000000000000000000000A495
      57008673200000000000A0905000C7BE98000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000086732100DAD6BE0000000000000000009A9A
      9B0096969600989898009898980093939300ABABAB0000000000000000000000
      0000000000000000000000000000000000000000000048484800575757005454
      5400545454005353530049494900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FCFEFC00FCFDFD00FFFFFD0094DFF90000B3F80000B0FF0000B2
      FF0000B2FF0000B7FE0019B582000DB68A000AB1850020B88F00BEE9DD00FFFF
      FF00FFFFFF00FCFFFE00FDFDFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007A7A7A00464646004D4D4D004A4B4B0054555400575757005656
      560056565600585858004C4C4C00000000000000000000000000B2ADAA00CECB
      C9000000000000000000000000000000000000000000BAB5B2004B403800594F
      480000000000000000000000000000000000F5F4F40097918C00635953004237
      2F004A3F37004A3F38004A3F380044382F00695E5500A69C9500F4F3F1003930
      2500AFABA80000000000F4F5F100FFF8F900FCF7F600FAF7F500FAF7F500FFFD
      FC00FFFEFC00FFFEFC00FFFEFC00FFFEFC00FFFEFC00FFFDFB00000000006D67
      5F00716A63000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00915C0000D8BF81000000000000000000AF7B
      0800967E43008C97AD00918C81009D6F09009A6C05009A6C05009A6C05009A6C
      06009A6C05009A6C05009A6C05009A6C05009A6B05009A6B05009B6C05009A6C
      06009E710D009F7514008E9193009D5F0000F4E9CE000000000000000000CCAB
      62009E6C0200747984006D6D6D00929292000000000000000000000000000000
      000000000000000000000000000000000000000000000026F600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E7D3000A3955800AB9E6500CAC29E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000087742300DAD6BE000000000000000000E1DF
      D400909195009898980098989800989898008C8C8C00DDDDDD00000000000000
      0000000000000000000000000000000000000000000046464600464646004848
      480048484800474747003D3D3D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFEFF00FFFFFF00FEFFFE00FFFFFE00FFFFFE00B8E8F9006FD6
      FA006FD6FA0057CDF70065CEAC0084D9C300D0EDE700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B797D0047444A004D4A50004C4A4F004C494F004F4D52004C4A
      4F004C4A4F0048474C0048464D000000000000000000BEBAB700392D2500493E
      3600473B34006E665F00A7A29E00E3E2E000C9C7C4004F453D004C4139009B95
      910000000000000000000000000000000000000000000000000000000000FEFE
      FE00C1BEBA008B837E00544A4200463B33004A3F38003D312900D9D7D5003C33
      2800B3ACAA00F5FEF80022BE7C0041C68E00FFFCFF00FCF7F600FFFCFA00BCB8
      B300BDB9B500BEBAB500BEBAB500BEBAB500BEB9B500B9B4B000000000006E67
      6000716A63000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00925C0000D8BF82000000000000000000AF7B
      0800977D3E008E939B00A1670000BC902F00D3B97600D1B56F00D1B57000D1B5
      6F00D1B56F00D1B56F00D1B56E00D1B56F00D1B56F00D1B57000D1B46C00D3B9
      7200B7881F00A16C00008F9091009D5E0000F3E9CE000000000000000000CDAB
      63009D6C0200737883006F6F6F008E8E8E000000000000000000000000000000
      000000000000000000000000000000000000000000001B57F800C0CFFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000083701B007A650A00B3A77300D9D4BA00D2CBAD00D2CBAD00D2CB
      AD00D2CBAD00D2CBAD00D2CBAD00D2CBAD00D2CBAD00D2CBAD00D2CBAD00D2CB
      AD00D2CBAD00D2CBAD00DAD4BB00806C1500D9D5BC000000000000000000E0D9
      BD00847B520097989C009898980098989800979797008F8F8F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFF00FFFFFD00FFFFFC00FFFF
      FE00FFFFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00959581006D6D4C00757556007C7C5C0076755700000000000000
      00000000000000000000000000000000000000000000FBFBFB00766E6800473C
      3400483D35004B4038004B403800483D35004A3F38004D423B00524840000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECEBEA00B3AFAB006D655E00D8D6D4003B32
      2800B6ADAB00BFEFD900D5EDE0009EDEC10036C38700FFF9F900FFFEFD00847E
      76008C857D008C857E008C857E008C857E008C857E00837C7400000000006E68
      6000716A63000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4FE00925C0000D8C080000000000000000000AF7B
      0800977E430094886B00A0600000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5831700977A360090908E009D5E0000F3E9CE000000000000000000CEAC
      64009D6C0200737984006E6E6E008F8F8F000000000000000000000000000000
      0000000000000000000000000000000000000000000086A5FB004878FA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFD00988842007E6A12007C670E009B8B4800918035009180
      3500918035009180350091803500918035009180350091803500918035009180
      3500918035009180350091803500917F3500EEECE0000000000000000000DED9
      C3008D792400A2A4AC0096969600989898009898980093939300AFAFAF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFF00FFFFFD00FFFFFC00FFFF
      FE00FFFFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00959581006D6D4C00757556007C7C5C0076755700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCDAD800A39D99006A625B00493E36004D433B008E878200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB00372E
      2300AFABA80000000000FFF8F800FFFCFF00A1DFC300E5F1E900FCF8F6000000
      0000000000000000000000000000000000000000000000000000000000006D67
      5F00716A63000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F5FF0091630000C59F44000000000000000000AF7B
      0900977D4100908D82009D5F0000F5ECD3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A36500009485620090908B009D5E0000F4E9D1000000000000000000BC8F
      28009D731800737781006C6C6C008E8E8E000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000020F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFAF900755F0200CFC8A700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DED9
      C4008A772500F8FAFF008A8A8A009797970098989800979797008B8B8B00E1E1
      E100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FDFDFD00FFFEFF00FFFFFF00FAFCFB00FFFF
      FF00FFFFFF00FFFEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009D9B800077754D00807D580088856200807D5B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700372E
      2300AFABA80000000000F9F6F400F9F6F400FFF9F900FCF7F600F9F6F400F9F6
      F400F9F6F400F9F6F400F9F6F400F9F6F400F9F6F400F9F6F400000000006D67
      5F00716A63000000000000000000000000000000000000000000000000000000
      00000000000000000000F2F4FB008A723C009F5E0000E0C9930000000000B07C
      0B00977D3D008D96A9009D690000CDAC5E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A368000096804D008F908F009D5F0000FAF0D40000000000D8BC77009F5F
      000097865C0083868B007B7B7B00A0A0A0000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005784FA005783
      FA00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F4EE006B530000CDC5A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E5E1
      D0008672200000000000BBBBBB00919191009898980098989800969696008F8F
      8F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E6E6E600B1B1B100C8C8C800C3C3C300D2D2
      D200D2D2D200B9B9B900B5B5B500C2C2C200E6E6E600AAAAAA00C1C1C100F4F4
      F400F4F4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009C9B7F0075744C007D7C5700858361007E7C5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700372E
      2300AFABA8000000000000000000FAF7F500FFFFFE0000000000F9F5F3000000
      0000FFFEFC00FBF8F50000000000FCF9F700FFFCFB0000000000000000006D67
      5F00716A63000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999EA80095711F009E5F00009A5A0000A566
      0000987E3D008E94A300977F4600A26700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0B064009D6200008F8F8900A76A00009F6000009D5D00009F6100009D7F
      3900848892007475750064646400E0E0E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000023
      F600D8E1FD000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0EFE5006E5700006F59
      0000705900007059000070590000705900007059000070590000705900007059
      0000705900007059000070590000705900007059000070590000705900007059
      00008B782A000000000000000000939393009696960098989800949494008D8D
      8D00FDFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E0E0E000C6C6C600B6B6B600FFFFFF00C6C6
      C600C6C6C600FFFFFF00D8D8D800B1B1B100B5B5B500C4C4C400C2C2C200FDFD
      FD00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009C9B7F0075744C007D7C5800858361007E7C5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700372E
      2300B5B2AE00000000007B756D0000000000C8C6C4009D989400000000009590
      8A00D1CFCD00000000007770690000000000DFDEDC0086807900000000006F68
      6100716A63000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5AAB4008A8780008F826000907F
      57008A8A87008D8F93008F8C83009B5C0000F4ECCD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AA7300009D751C00928A720095865E00948765008E8D89007378
      81005757580066666600D4D4D400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D2DD
      FD00001FF600FEFEFE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFA
      F800FCFBF900FCFBF900FCFBF900FCFBF900FCFBF900FCFBF900FCFBF900FCFB
      F900FCFBF900FCFBF900FCFBF900FCFBF900FCFBF900FCFBF900FCFBF900FBFB
      F800000000000000000000000000E8E8E8008A8A8A00919191009B9B9B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D7D7D700C2C2C20000000000B7B7B700E0E0
      E000E0E0E000B9B9B900C1C1C100D3D3D300BFBFBF00CBCBCB00C2C2C200F6F6
      F600F6F6F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009A997D0074734C007D7C5700858360007D7B5900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F7003B32
      280097928C00A29C96003A312700C0BDB900746C640049403700E0DDDA00443B
      31007D766F00B8B4B0003C322800ABA6A20088837C00392F2500D4D2CF00655E
      5600736C65000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8EBF4008E774100A26700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E1CC9900A1670000686C76003F41470034363A00E8E9EB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A9C0FC000022F600EDF1FE0000000000FFFFFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7B7B700A8A8A800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFE
      FF00FFFEFF00FFFEFF00FFFEFE00FFFEFF00FFFEFF00FFFEFF00FFFFFF00FFFF
      FF00FFFFFF00ADAD9400707045007E7D59008483600078765500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F5F4F4003026
      1B003E352B00443B3100574F46003D3329004D443B00534B4200382E2300554D
      44004A41370040372C00574F460041382E0049403600574F4600393025003D33
      2900696259000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A8ABAF0099610000D8BD7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C8A44D009E6D0400838891007475750068686800F8F8F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFCFFC00001DF6008CAAFB000000000000000000FFFFFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00FEFF
      FF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFF
      FF00FEFFFF00FEFFFF00FEFEFF00FEFFFF00FEFFFF00FEFEFF00FFFFFF00FFFF
      FF00FFFFFF00F9FAF900676A4600817C53007D79530088885D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E5E3
      E200F0EFEE00ABA7A200332A1F00E6E5E300756E67004F463D0000000000372E
      2300908B8500CCC9C600352C2100CBC8C500928C8600342B2000F4F3F200E8E7
      E600ECEBEA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E1E5ED008F6D2000A2670000B07D0C00B3800E00B37F0D00B27F0D00B37F
      0E00B37F0F00B37F0F00B5831300B5831300B5821300B4821200B4821200B582
      1200B7841500A062000096865B00808288007676760085858500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFE001A58F8000034F70099B3FB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00FEFF
      FF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFF
      FF00FEFFFF00FEFFFF00FEFEFF00FEFFFF00FEFFFF00FEFEFF00FFFFFF00FFFF
      FF00FFFFFF00F9FAF900676A4600817C53007D79530088885D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F4F4F300938E880000000000CECBC800B6B3AF0000000000A5A0
      9C00E0DEDD00000000008C86810000000000E6E4E3009F9A9500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADAFB3008D7F5C00987A3200967833009577320095763100957731009576
      3100947631009576310094763200957631009576310095763100957631009576
      310095763000977D3F00797D86005555550050505000D8D8D800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2DDFD00366BF9000021F6000F4E
      F8004E7DFA006D94FA007297FB005885FA001452F800F2F5FE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B8B89500B6B9960000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CFDB
      FD0095B0FC007699FB007295FB008BA8FB00BCCCFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1F1F100F2F2F200E8E8E800DDDDDD00D6D6D600D2D2D200D2D2
      D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2
      D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2
      D200D2D2D200D3D3D300E3E3E300E5E5E500ECECEC0000000000F2F2F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCEEFC00FCEEFC00000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000F1F1F100F2F2F200F5F4
      F500F0EEF000E3DFE300D6D4D600CBC9CB00C0BEC000C3C1C200A7A8A8009E9B
      9E00A19FA1009D9D9D00A2A1A200DADADA00F5F5F50000000000C5C6C500BDBE
      BD00D2D2D200E7E6E70000000000F3F3F3000000000000000000000000000000
      0000F1F1F100F6F6F600BABABA008F8F8F00ADADAD00C0C0C000C7C7C700C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600CACACA00C3C3C300A3A3A300C3C3C300C3C3C300DEDEDE00F6F6
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCEEFC00FCEEFC00000000000000000000000000000000000000
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
      00000000000000000000F1F1F100F4F4F400F5F3F500EDEBED00DFDEDF00C9C5
      C900AFA8AD007D777D00565355004147410031333000364337001A2E1D000F13
      0E0010190F000C120B00111010005C5E5D0000000000D8D8D700474F48002431
      24004C534C00827D8300C3C1C30000000000000000000000000000000000F1F1
      F100F5F5F500A2A2A2009B9B9B00ECECEC00F1F1F100EDEDED00EAEAEA00EBEB
      EB00EBEBEB00ECECEC00ECECEC00EBEBEB00ECECEC00ECECEC00ECECEC00ECEC
      EC00EDEDED00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EBEBEB00CFCFCF0094949400B7B7B700A3A3A300CECE
      CE00F4F4F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCECCC00CCECCC009CA49C009CA49C00D7EFD500EAFEE200EAFE
      E200E6E2DF00E6E2DF00DFDFDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DFE2DF00DFE2DF00E5F6E500E5F6E500E9F7E900F5FFF500F5FF
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFE00A7A7E2007878DC007878DC005959
      DA006666E4007575EC007575EC007C7CF0007C7CF0007575EC007575EC006666
      E4005959DA007878DC007878DC00A8A8E200FFFFFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F300F7F7F700FCF8FC00F8F2F800DED8DE00B1AAB00077767700495149003A47
      3A00304232001F392000143B1700124516000D3E11000C4512000C4A13000936
      0D0006300A00041F0100000A0000131614006A736C00797C79001C251C000016
      01000E240F001F271F00353A35005D595E00000000000000000000000000F1F1
      F100A7A7A700AFAFAF00FFFFFF00E8E8E800E3E3E300E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E6E6E600E7E7E700E7E7E700E9E9E900E9E9E900E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E9E9E900F1F1F100C1C1C100A4A4A400C1C1C1009D9D
      9D00C6C6C600F9F9F90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006570650065706500110B0600110B0600485E760075B0E10075B0
      E100C1DBE500C1DBE500F1EAE400F3EAE400F3EAE400E8E6E500E8E6E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E4E4
      E400E4E4E400E5E5E500E5E5E500E0E0E000E0E0E000C9C9C900D0D2D000D0D2
      D000EEF1EE00EEF1EE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9FB008383DA008383DA005959DC008686F6009090F9009090F9009292
      F9009191F8009090F8009090F8009090F7009090F7009090F8009090F8009191
      F8009292F9009090F9009090F9008686F6005959DC008383DA008383DA00F9F9
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F100F6F5F600DEDB
      DE00A8A8A8008E918E005C705E00143F17000B48110007510F00085511000D5C
      160011641900186C20001C7225001D7325001D7125001D712600196922001564
      1F00115D1B000B491400052B090000070100111F1400030C0300021F05000427
      0600052508000B2E09000D380A000C310C0000000000EFEFEF00F5F5F500C4C4
      C400A2A2A200EFEFEF00E8E8E800E5E5E500E5E5E500E6E6E600E5E5E500E6E6
      E600E7E7E700E7E7E700E9E9E900E9E9E900E9E9E900E8E8E800E8E8E800E9E9
      E900EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EBEBEB00E6E6E600A8A8A800C4C4C400BFBF
      BF009C9C9C00CDCDCD00F6F6F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006570650065706500110B0600110B0600485E760075B0E10075B0
      E100C1DBE500C1DBE500F1EAE400F3EAE400F3EAE400E8E6E500E8E6E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E4E4
      E400E4E4E400E5E5E500E5E5E500E0E0E000E0E0E000C9C9C900D0D2D000D0D2
      D000EEF1EE00EEF1EE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009D9D
      DF005959DD008F8FFA008F8FFA009292F9008F8FF7008F8FF7008F8FF7008F8F
      F7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8F
      F7008F8FF7008F8FF7008F8FF7008F8FF7009292F9008F8FFA008F8FFA005959
      DD009D9DDF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F200EEEEEE00929493004752
      470013491700165E1B00187220001D80240021802B0024802B00278030002884
      320026823200278133002A8732002B873400288533002984320025812F001F73
      27001A6C230012651C000C4C1300041206000E16110003210700093F0E000A3B
      0F0008330E000A330F000E4113001D6021000000000000000000F4F4F400A0A0
      A000D7D7D700F1F1F100E4E4E400E5E5E500E5E5E500E6E6E600E7E7E700E8E8
      E800E9E9E900E9E9E900E9E9E900E9E9E900EAEAEA00EBEBEB00EBEBEB00EBEB
      EB00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00EFEFEF00C4C4C400AEAEAE00E2E2
      E200C0C0C0009B9B9B00D3D3D300F4F4F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000868F8300868F8300020C1100020C11000561AB000479FF000479
      FF000F77FA000F77FA002E98F70082C8F60082C8F600EEF1F200EEF1F200F9F5
      F500F9F5F500F4F3F400F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F3F3F300F3F3F300DEDEDE00C3C3C300C3C3
      C300C8CAC800C8CAC800EAFFEA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006262D3006262D3008080
      F3009393FA008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7009292
      F9009191F9008F8FF9008F8FF9008E8EF9008E8EF9008F8FF9008F8FF9009191
      F9009292F9008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7009393
      FA008080F3006262D3006262D300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F1F1F100F2F2F200F8F7F700D4D7D500143C16000A54
      1200207D29002A8634002E8D3900399B45003EA748003CAA4A003CB64E003ABE
      4C0039B8480039B247003BB6470041B3480040B44C003CB0470038A946003499
      3B002E903700288C32002081290007240A0006110700186620001E8029001970
      2300145F1D00134F1B000B4313000F57190000000000F3F3F300D7D7D700ABAB
      AB00E8E8E800E9E9E900E5E5E500E6E6E600E6E6E600E9E9E900E8E8E800E8E8
      E800E9E9E900E9E9E900EAEAEA00EBEBEB00EBEBEB00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00ECECEC00ECECEC0000000000CACACA00B3B3B300ECEC
      EC00DBDBDB00B2B2B200A5A5A500ECECEC00F2F2F200EFEFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000868F8300868F8300020C1100020C11000561AB000479FF000479
      FF000F77FA000F77FA002E98F70082C8F60082C8F600EEF1F200EEF1F200F9F5
      F500F9F5F500F4F3F400F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F3F3F300F3F3F300DEDEDE00C3C3C300C3C3
      C300C8CAC800C8CAC800EAFFEA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006262D3006262D3008080
      F3009393FA008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7009292
      F9009191F9008F8FF9008F8FF9008E8EF9008E8EF9008F8FF9008F8FF9009191
      F9009292F9008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7009393
      FA008080F3006262D3006262D300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1F1F100F1F1F1009F9C9F009B999A00AAA9A8001B5720001D7C
      26002E8F3800349A3F0038A3450042B04D0040B149003AAF4A0037B3430038B4
      44003AB6460037B4440034AF410036B0420038B2440036B0450033AD3F0030A2
      37002B9834002B9C36002EA5390014551700103A120034B53D0037C2430030B1
      3E00238A2E001D75270011551900145B1B0000000000F4F4F400C4C4C400BBBB
      BB00F2F2F200E7E7E700E7E7E700E9E9E900E9E9E900E9E9E900E9E9E900EBEB
      EB00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00ECECEC00EBEBEB00EBEBEB00EEEEEE00D6D6D600BEBEBE00E8E8
      E800E9E9E900D9D9D900B3B3B300BEBEBE0000000000F1F1F100EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9EFE700E9EFE7009EE2FF009EE2FF0030B6FF000F9BFC000F9B
      FC000277FE000277FE00005DFD00004CFF00004CFF0009909A0009909A00C0E5
      CB00C0E5CB00F5F5F500F6F5F500F6F5F500F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F5F5F500F5F5F500EFEFEF00D3D3D300D3D3
      D300DADADA00DADADA00CBD9CB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFC005555D3009090FB009090FB009090
      F7008F8FF7008F8FF7008F8FF7008F8FF7009292FA008989F7008989F7006161
      E1006363DA007E7EDD007E7EDD008989DE008A8ADE007E7EDD007E7EDD006464
      DA006161E1008989F7008989F7009292FA008F8FF7008F8FF7008F8FF7008F8F
      F7009090F7009090FB009090FB005555D300FDFDFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100F2F2F200FAFAFB00CCCCCA0037363700323333004750460019592000207C
      29002B913400319E3A0034A53E0038B447003AB346003AB845003CBA49003FBA
      4C0043BE4F0042BE4F0042B950003FBE4E003EC14F003EBF4F0038B6450032AE
      3E002DA038002EA1370032AE3D00279433002E8C37004BD75C0050E4610045CF
      55002E9F3A0027872F0015661E0016661F0000000000F4F4F400C5C5C500BABA
      BA00F1F1F100E9E9E900E9E9E900E8E8E800E9E9E900EBEBEB00EBEBEB00ECEC
      EC00ECECEC00ECECEC00EBEBEB00EBEBEB00EBEBEB00EBEBEB00ECECEC00EDED
      ED00EDEDED00ECECEC00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EDEDED00EDEDED00EDEDED00EFEFEF00D9D9D900B9B9B900E4E4
      E400EDEDED00E7E7E700D9D9D900B0B0B000D5D5D500F2F2F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9EFE700E9EFE7009EE2FF009EE2FF0030B6FF000F9BFC000F9B
      FC000277FE000277FE00005DFD00004CFF00004CFF0009909A0009909A00C0E5
      CB00C0E5CB00F5F5F500F6F5F500F6F5F500F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F5F5F500F5F5F500EFEFEF00D3D3D300D3D3
      D300DADADA00DADADA00CBD9CB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005454D3009393FC008F8FF7008F8FF7008F8F
      F7008F8FF7009292F8009292F8008585F5005B5BD8009F9FE0009F9FE000F4F4
      F900000000000000000000000000000000000000000000000000000000000000
      0000F5F5F900A0A0E000A0A0E0005C5CD8008383F4009393F9009393F9008F8F
      F7008F8FF7008F8FF7008F8FF7009393FC005555D30000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF0000000000F1F1F100F2F2F300F4F5F500F5F6F600F5F7F800F3F6F800EAEE
      F000E3E5EA00D8D9DD0080888300000F000000000000010E03001A661F002891
      300030A53C0039B4470040C14E0050CF5D0057D8670059D768005BD96C0061DE
      700066DE730069DC720064DE6F005FDB6C0059DB680054DD640052D7600047CE
      56003EC44C003EC24A0040C74D0045D2520057DF68006DE9800072E885005FD7
      700044B7510037AA4500207927001D78250000000000F4F4F400C5C5C500BABA
      BA0000000000E9E9E900E8E8E800E8E8E800EBEBEB00ECECEC00ECECEC00ECEC
      EC00EBEBEB00EBEBEB00ECECEC00EBEBEB00EDEDED00EDEDED00EDEDED00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00ECECEC00B7B7B700CCCC
      CC0000000000EFEFEF00E8E8E800D2D2D200C3C3C300ECECEC00000000000000
      000000000000000000000000000000000000000000000000000000000000E9FF
      E900E9FFE900E3E1E100E3E1E100D7F0F900D7F0F90082D5FF0030B2FD0030B2
      FD00119AFC00119AFC000A89FE00077EF500077EF50036B57A0036B57A0043B5
      770043B57700A7D8C000F3F2F400F3F2F400F6F5F500F6F5F500F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F2F2F200DFDFDF00DFDF
      DF00E9E9E900E9E9E900D8D8D800D7F3D700D7F3D70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006262D3006262D3009090FB008F8FF7008F8FF7008F8FF7008F8F
      F7009191F8007575E9007575E9009292DA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F9FDF005D5DDF005D5DDF009595
      FB008F8FF7008F8FF7008F8FF7008F8FF7009090FB006262D3006262D3000000
      000000000000000000000000000000000000000000000000000000000000F6F7
      F800F3F4F600EDEEF100E3E5E800C9C7C800ADA4A100978D8E007E6E6E007861
      5D00715347006F3F25002422110001400F0006200800031105002079280031A9
      3D0041C54E0049D2570055DA63006DF07E0077EF84007AED870079EB85007AE9
      880079EB89007EEE8C007CEF90007AF08D0078EF8B0075EE890067EC7B005BE5
      6E0051DB600047D3560049D45A004FD963005FE9700071EC83006CE483005ED7
      720052D160003DC44D002A96330025942E0000000000F4F4F400C6C6C600BCBC
      BC00F1F1F100EAEAEA00EAEAEA00ECECEC00ECECEC00ECECEC00EBEBEB00EBEB
      EB00ECECEC00EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE0000000000E1E1E100C4C4
      C400BFBFBF00CCCCCC00DFDFDF00E8E8E800D2D2D200DCDCDC00F3F3F300EFEF
      EF0000000000000000000000000000000000000000000000000000000000E9FA
      E900E9FAE900E4E2E200E4E2E200E4F0F500E4F0F500B9EBFF006ECFFF006ECF
      FF002AACFF002AACFF0023ABE50024AB900024AB90004DC786004DC786002FB1
      6B002FB16B002AA06200A0D4BE00A0D4BE00FFFFFF00FFFFFF00F8F7F700F6F6
      F600F6F6F600F6F6F600F6F6F600F7F7F700F7F7F700F5F5F500E4E4E400E4E4
      E400E4E4E400E4E4E400EFEFEF00D7D8D700D7D8D700ECFFEC00ECFFEC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006262D3006262D3009090FB008F8FF7008F8FF7008F8FF7008F8F
      F7009191F8007575E9007575E9009292DA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F9FDF005D5DDF005D5DDF009595
      FB008F8FF7008F8FF7008F8FF7008F8FF7009090FB006262D3006262D3000000
      00000000000000000000000000000000000000000000F3F3F300F5F5F600D8D8
      DB00AAA09100907B630084614D00814B2B0082410800803D00008C450000984C
      0000A3540000BC6300003B2200000250160018651F0015471800279132003CBA
      48004DD05E0056DB690064E577007AF68C008AF0970089F393008DF1960092F1
      9B0091F39E008DF29D0085F3A1008BF4A1008DF9A1008CFB9D0082F292006EEB
      830066E8780057E0690051DD640051DC66005CE46D0060E9730061E475005DD9
      6F004ED661003AC149002EA43900289B320000000000F4F4F400C7C7C700BFBF
      BF00F1F1F100EBEBEB00EBEBEB00ECECEC00EFEFEF00EFEFEF00000000000000
      0000F2F2F200F2F2F200F1F1F100EFEFEF00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDED
      ED00E3E3E300B7B7B700A9A9A900CFCFCF00E4E4E400E0E0E000000000000000
      000000000000000000000000000000000000000000000000000000000000E9FA
      E900E9FAE900E4E2E200E4E2E200E4F0F500E4F0F500B9EBFF006ECFFF006ECF
      FF002AACFF002AACFF0023ABE50024AB900024AB90004DC786004DC786002FB1
      6B002FB16B002AA06200A0D4BE00A0D4BE00FFFFFF00FFFFFF00F8F7F700F6F6
      F600F6F6F600F6F6F600F6F6F600F7F7F700F7F7F700F5F5F500E4E4E400E4E4
      E400E4E4E400E4E4E400EFEFEF00D7D8D700D7D8D700ECFFEC00ECFFEC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009D9DDF008080F3008080F3009090F7008F8FF7008F8FF7008F8FF7008F8F
      F7008F8FF7009393FA009393FA005F5FD700FEFEFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EAEAF500EAEAF5005555
      D5009494FB008F8FF7008F8FF7008F8FF7009090F7008080F3008080F3009D9D
      DF0000000000000000000000000000000000F2F2F200DFE2E300948C8E006F47
      32008A4C0A00AE620000B1610000AF5E0000B3650000B8700000B66F0100B46E
      0200B5700200C57702005B380000084D1200228C2E002A9534002EA43B0046C2
      520055D767005FE170006EEA7D0081F08E008DF69B0088F79A008EF69B008FF3
      9D008FF59E008EF79B008EF79C0094F7A00098F8A60098F9A60097FBA00087F6
      99007DED910075E6850066E2730050E064005CDD6C0059DD670057DA6A0059D9
      6A0045D153003BC147002DB0380026A7330000000000F4F4F400C9C9C900C0C0
      C000F3F3F300EDEDED00ECECEC00EDEDED00CACACA00CBCBCB00CECECE00CFCF
      CF00CFCFCF00CECECE00CCCCCC00E4E4E400EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE0000000000F2F2F200DCDCDC00AAAAAA00B7B7B700E1E1E10000000000F1F1
      F100EFEFEF00000000000000000000000000000000000000000000000000E9FB
      E900E9FBE900E5E4E400E5E4E400F2F5F600F2F5F600CFEEFC00B1EAFF00B1EA
      FF005CCCE6005CCCE60031B17F00169749001697490018985100189851002FB1
      6D002FB16D0016995100007C3400007C3400A4CEBA00A4CEBA00FEFCFE00F9F8
      F900F9F8F900F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F3F3F300F3F3
      F300E7E7E700E7E7E700DCDCDC00DFDFDF00DFDFDF00E9F4E900E9F4E9000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      FB005959DD009393FA009393FA008F8FF7008F8FF7009191F8009191F8008F8F
      F7008F8FF7008F8FF7008F8FF7009393FC005454D400FDFDFC00FDFDFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FB005555D5009595FB009595FB008F8FF7008F8FF7009393FA009393FA005959
      DD00F9F9FB00000000000000000000000000FFFFFF00B6B2B2006B4035008239
      0000AD630000C9820000CB880100C5890200C48A0300C78F0300C58B0300C189
      0300C28A0300D19003007C510000083F0D001D8228002CA035002FA73B0046C4
      54005AD86A0064E475006FEA810081EF8D008AF99A008AF99D0092F49E0090F4
      9C0091F59E0090F79C0092F8A00097F8A80096F8A9009AF7A9009EFBA70092FA
      9F008AF3990087EF940079EC85005CE26F005EDA70005BDA6A0059D5670055D4
      660042CD4E003FC64A002BB0360023AC2F0000000000F4F4F400C9C9C900C0C0
      C000F3F3F300EDEDED00ECECEC00EDEDED009F9F9F009B9B9B009E9E9E00A1A1
      A100A1A1A1009D9D9D009E9E9E00D6D6D600EDEDED00EEEEEE00EEEEEE00EEEE
      EE00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00F3F3F300DADADA00A4A4A400BEBEBE0000000000F2F2
      F200EFEFEF00000000000000000000000000000000000000000000000000E9FB
      E900E9FBE900E5E4E400E5E4E400F2F5F600F2F5F600CFEEFC00B1EAFF00B1EA
      FF005CCCE6005CCCE60031B17F00169749001697490018985100189851002FB1
      6D002FB16D0016995100007C3400007C3400A4CEBA00A4CEBA00FEFCFE00F9F8
      F900F9F8F900F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F3F3F300F3F3
      F300E7E7E700E7E7E700DCDCDC00DFDFDF00DFDFDF00E9F4E900E9F4E9000000
      0000000000000000000000000000000000000000000000000000000000008282
      DA008F8FFA008F8FF7008F8FF7008F8FF7009292F8007575EA007575EA009393
      FA008F8FF7008F8FF7008F8FF7008F8FF7009393FC005454D4005454D400FDFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAEAF5005D5DDF005D5DDF009393F9008F8FF7008F8FF7008F8FF7008F8F
      FA008282DA000000000000000000000000009CA9B00086747200883C0A00B167
      0000C0820300C68B0100C78F0000C9900100CB970100CE990100CE950100CC93
      0200C78E0300D49403009F63000005260600106B19002C9E34002EAA3B0047C6
      56005CD96D0064E6740070E97E0081F3950089F99C0093F7A30093F6A00090F5
      A10092F5A1008FF3A10091F8A60094F8AB0097F8A90098F8AC0098F9AC0096F9
      A90092F7A0008DF599008AF595007EEF8A0069E2780066E1770065DA75005CD4
      6A0043CA520044C9510027B2330018A5240000000000F4F4F400C9C9C900C0C0
      C000F3F3F300ECECEC00EBEBEB00EEEEEE00EBEBEB00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00EBEBEB00EDEDED00EEEEEE00EDEDED00EDEDED00EDED
      ED00EDEDED00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EDEDED00EDEDED00EDEDED00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00F1F1F100DDDDDD00ACACAC00BCBCBC00ECEC
      EC00F1F1F100000000000000000000000000000000000000000000000000EAFC
      EA00EAFCEA00E6E6E600E6E6E600FCF8F700FCF8F700BEE7F10077D0C30077D0
      C3005BCEA0005BCEA0003CB8760011924800119248000D8C43000D8C4300128F
      4800128F480020A45E000881370008813700016424000164240098C4AE00FDFB
      FD00FDFBFD00FAF8F900FAF8F900F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F3F3F300D8D8D800D8D8D800D6E0D600D6E0D6000000
      0000000000000000000000000000000000000000000000000000000000008282
      DA008F8FFA008F8FF7008F8FF7008F8FF7009292F8007575EA007575EA009393
      FA008F8FF7008F8FF7008F8FF7008F8FF7009393FC005454D4005454D400FDFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAEAF5005D5DDF005D5DDF009393F9008F8FF7008F8FF7008F8FF7008F8F
      FA008282DA000000000000000000000000000E000100451C05009A500000B66E
      0200C88C0100D2A00200D7A70200D8A90100DAAC0100DEB70100E0BA0200DFB7
      0100DBB00200E3B00000CB9701000813010002390A002999330033B83F0050CB
      5F005FDA700068DD770078E8870081F290008DF2990092F79F0092F79D0098FA
      A30098F9A50098F9A20099FAA6009DFAA900A2F9A900A0FBAA0098FBA8009DF9
      A60098FAA80092F5A60090F7A3008CF69B0081EE900079E684007BE7880067E2
      74004DDD5C003FCE4C001EB22B0006820D0000000000F4F4F400CACACA00C3C3
      C300F4F4F400EDEDED00EEEEEE00EEEEEE00EEEEEE00EFEFEF00EFEFEF00EEEE
      EE00EEEEEE00EFEFEF00EEEEEE00EEEEEE00EDEDED00EEEEEE00EFEFEF00EFEF
      EF00EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100EFEFEF00EFEFEF00EEEEEE00EDED
      ED00EDEDED00EDEDED00EEEEEE00EEEEEE00F3F3F300CDCDCD008E8E8E00D9D9
      D900F3F3F300000000000000000000000000000000000000000000000000EAFB
      EA00EAFBEA00E5E5E500E5E5E500FBF8F800FBF8F800DDEEEF004CBB91004CBB
      910011984B0011984B0044C1800026A8620026A8620009863E0009863E00077E
      3700077E37000D853C00189A5000189A500000601800006018000B622D0097C3
      B00097C3B000FBFAFA00FBFAFA00F8F8F800F8F8F800F6F6F600F6F6F600F6F6
      F600F7F7F700F7F7F700F8F8F800FBFBFB00FBFBFB00D0D4D000D0D4D000DFD6
      DF00DFD6DF0000000000000000000000000000000000FFFFFE00FFFFFE005959
      DC009292F9008F8FF7008F8FF7008F8FF7008585F5009292DA009292DA005F5F
      D7009494FC008F8FF7008F8FF7008F8FF7008F8FF7009393FC009393FC005454
      D400FDFDFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009F9FDF009F9FDF008282F4008F8FF7008F8FF7008F8FF7009292
      F9005959DC00FFFFFE00FFFFFE000000000013000000381C0000A35C0200C685
      0300DAAD0000EACB0500F0D60800EFD40500EFD30400F2D70600F0D70600EDD3
      0400EDD10300F4D90500E9C902002E1F0300010F03001F80280038C248004AC8
      590058D66A006FE07C0077EB880081EB8D008CEE99008EF69D0094F7A60094F6
      A60092F6A50098FAA9009AF9A70099FAAC0099F7B00098F5AD0098F6A9009EF9
      AD009EF7AD009EFAA80097F8A10090F89F008EF5A10086EF940080E88D0065E5
      740053E3640034C74100169D200005650B0000000000F4F4F400CBCBCB00C3C3
      C300F3F3F300EFEFEF00EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EDEDED00EDEDED00EEEEEE000000000000000000F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100000000000000
      0000EEEEEE00EDEDED00EDEDED00EDEDED00EFEFEF00ECECEC00A2A2A200CFCF
      CF00F3F3F300000000000000000000000000000000000000000000000000EAFB
      EA00EAFBEA00E5E5E500E5E5E500FBF8F800FBF8F800DDEEEF004CBB91004CBB
      910011984B0011984B0044C1800026A8620026A8620009863E0009863E00077E
      3700077E37000D853C00189A5000189A500000601800006018000B622D0097C3
      B00097C3B000FBFAFA00FBFAFA00F8F8F800F8F8F800F6F6F600F6F6F600F6F6
      F600F7F7F700F7F7F700F8F8F800FBFBFB00FBFBFB00D0D4D000D0D4D000DFD6
      DF00DFD6DF0000000000000000000000000000000000A7A7E200A7A7E2008686
      F6008F8FF7008F8FF7008F8FF7009292FA005B5BD8000000000000000000FEFE
      FC005454D4009494FC009494FC008F8FF7008F8FF7008F8FF7008F8FF7009393
      FC005454D400FDFDFC00FDFDFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005C5CD8009292FA008F8FF7008F8FF7008F8F
      F7008686F600A7A7E200A7A7E20000000000561A00006D370100AA640300CD93
      0300DFB90100F0D60400F9E10700F6E40400F7DE0200FAE10700F6DD0500F2DA
      0200F4DB0300FCE30800F9E504006A550200030602000E52140038C6490040C4
      4F004ECE5C006CE07A0077E883007FEA8D008CEF9A0092F69C0094F7A3009BF3
      A9009EF6AA00A8FAAD00A2F8AF00A4F9B400A9F9B600A7F7B500A6FBB900A9FC
      BF00A7FBB700A2FBB0009CFBA7009CF8A90091F7A1008AF2990074EB84005DE8
      6C0050DD5E0024BA33000F871800195C1D0000000000F4F4F400CCCCCC00C4C4
      C400F3F3F300EFEFEF00EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDED
      ED00EDEDED00EEEEEE000000000000000000F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F10000000000EFEFEF00EEEEEE00EEEEEE00EEEEEE00EEEEEE00B0B0B000D3D3
      D300F3F3F300000000000000000000000000000000000000000000000000EAFC
      EA00EAFCEA00E5E5E500E5E5E500F8F7F700F8F7F700FBF8F900D0ECEB00D0EC
      EB0029A2720029A2720008863F0034B2710034B271001C9E58001C9E58000579
      2F0005792F000067200000651F0000651F000C823A000C823A00005616000258
      270002582700ACCBBE00ACCBBE00FFFBFD00FFFBFD00F8F8F800F8F8F800F8F8
      F800F6F6F600F6F6F600F7F7F700F8F8F800F8F8F800EBEBEB00EBEBEB00D2E7
      D200D2E7D200000000000000000000000000000000007878DC007878DC009090
      F9008F8FF7008F8FF7008F8FF7008989F700A0A0E00000000000000000000000
      0000FDFDFC005454D4005454D4009393FC008F8FF7008F8FF7008F8FF7008F8F
      F7009393FC005454D4005454D400FDFDFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A0A0E0008989F7008F8FF7008F8FF7008F8F
      F7009090F9007878DC007878DC000000000091390000A9550100AF680300CE96
      0300E0B90200EED00200F6D80200F6E00200F8E10200FDE30300F7E00300F4DC
      0200F5DC0200F9E00500FFE90100957F02000F0C0200062F0A0032BA3F0042C8
      510047CA570064DC730074E680007EED8E008DEE980090F69E009EF8A400AAF8
      B400AFFAB700A6FBAE0093FAA60097F9A400A2F9AD00ACFBBC00B1FEC600ADFD
      BF00A9FDB500A4F9AF0098FBA4009AFAA4008FF79D008AF0990066EB760058EA
      680046D5550017AF2400097110003D68400000000000F4F4F400CCCCCC00C4C4
      C400F3F3F300EFEFEF00EDEDED00EEEEEE00EEEEEE00EDEDED00EDEDED00EEEE
      EE00EFEFEF0000000000F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F10000000000EFEFEF00EFEFEF00EEEEEE00B2B2B200D3D3
      D300F3F3F300000000000000000000000000000000000000000000000000EAFC
      EA00EAFCEA00E5E5E500E5E5E500F8F7F700F8F7F700FBF8F900D0ECEB00D0EC
      EB0029A2720029A2720008863F0034B2710034B271001C9E58001C9E58000579
      2F0005792F000067200000651F0000651F000C823A000C823A00005616000258
      270002582700ACCBBE00ACCBBE00FFFBFD00FFFBFD00F8F8F800F8F8F800F8F8
      F800F6F6F600F6F6F600F7F7F700F8F8F800F8F8F800EBEBEB00EBEBEB00D2E7
      D200D2E7D200000000000000000000000000000000007878DC007878DC009090
      F9008F8FF7008F8FF7008F8FF7008989F700A0A0E00000000000000000000000
      0000FDFDFC005454D4005454D4009393FC008F8FF7008F8FF7008F8FF7008F8F
      F7009393FC005454D4005454D400FDFDFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A0A0E0008989F7008F8FF7008F8FF7008F8F
      F7009090F9007878DC007878DC00000000008C3A0000B65C0100B0670300CD96
      0300DEB50300E8C70200EDCE0200EFD40200F4DC0300F9E10200F5DE0300F3DC
      0300F4DB0000F4DA0100FBE30100C0A802004D3C00000A1B01001F8F2A0042D2
      530048CA57004FCB5C0066D874007DE98E0088EE920083F2930092F89F0092FD
      A10081FA910068F980006BF8820077F88E007FF796008AFAA100ABFCBD00B0FC
      BA00A5FBB000A1F9AD0095FB9C0095F9A20090F59D0083EB92005AE86A004EE3
      600032C843000B9917000F5A13008398870000000000F3F3F300CCCCCC00C4C4
      C400F3F3F300EFEFEF00EDEDED00EEEEEE00EFEFEF000000000000000000F2F2
      F200F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F10000000000EFEFEF00B3B3B300D3D3
      D300F3F3F300000000000000000000000000000000000000000000000000ECFE
      EC00ECFEEC00E7E7E700E7E7E700F7F7F700F7F7F700F9F8F800FFFEFF00FFFE
      FF00BCE5E000BCE5E0002E9B6F000068210000682100168E4900168E49000F89
      42000F89420000621E000050140000501400005017000050170000601F00045F
      2900045F29006F8E80006F8E8000E0DADC00E0DADC00FBFBFB00F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F9F9F900F9F9F900F2F2F200F2F2F200DDEF
      DD00DDEFDD00000000000000000000000000000000005959DA005959DA009292
      F9008F8FF7009292F9009292F9006161E100F5F5F90000000000000000000000
      000000000000FDFDFC00FDFDFC005454D4009494FC008F8FF7008F8FF7008F8F
      F7008F8FF7009393FC009393FC005454D400FDFDFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5F5F9006161E1009292F9009292F9008F8F
      F7009292F9005959DA005959DA000000000070280000A54C0000B56D0300C993
      0300DAAC0300E5C00300EAC90300EBCD0300EFD30100F4D70100F4D60300F2D6
      0100F3D50200F1D50200F2D80300F5D40100CDA5000033370000074C13003ACC
      4C0048D2570032BC41004ECC5A0067DC78005FE8740068F27E0065F57E004EFB
      680039F7500037F84F004AFA6A0069FC7F0071FB86006DFA80008AFA9C00B3FE
      BE00A7F9B0008EEF990081F2910095F6A30094F09E006EEA7F0052E8630043D7
      53001EBB2E0000630500416A4200D6D3D60000000000F3F3F300CECECE00C7C7
      C700F3F3F300EFEFEF00EEEEEE00EFEFEF00E4E4E400E4E4E400E6E6E600E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E5E5E500EDEDED00F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F10000000000B5B5B500D5D5
      D500F3F3F300000000000000000000000000000000000000000000000000ECFE
      EC00ECFEEC00E7E7E700E7E7E700F7F7F700F7F7F700F9F8F800FFFEFF00FFFE
      FF00BCE5E000BCE5E0002E9B6F000068210000682100168E4900168E49000F89
      42000F89420000621E000050140000501400005017000050170000601F00045F
      2900045F29006F8E80006F8E8000E0DADC00E0DADC00FBFBFB00F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F9F9F900F9F9F900F2F2F200F2F2F200DDEF
      DD00DDEFDD00000000000000000000000000F1F1F8006666E4006666E4009191
      F8008F8FF7009191F9009191F9006363DA000000000000000000000000000000
      0000000000000000000000000000FDFDFC005454D4009494FC009494FC008F8F
      F7008F8FF7008F8FF7008F8FF7009393FC005454D400FDFDFC00FDFDFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006464DA009191F9009191F9008F8F
      F7009191F8006666E4006666E400F1F1F8005528270079290000B25F0200BD84
      0300D5A20300DBB00300E0BA0300E8C30300EAC80300EDCE0300EBD00100EED3
      0300EDD20300F0D40300EED20300F3DC0300FCE50200A58E0100063B02001978
      220044DB52003DC8480032BA3C0023C4330032DC440041EE550036F14C0033F1
      47004BF4600084FB9A0088FAA2006EFB88006FFA87006FFC890050F76F006BF5
      7F007AF88F0059F46F0054F36D0066EE7A007BE8870054E3630038D0480027C2
      36000987110014411600AEB2AF00F7F5F70000000000F3F3F300CFCFCF00C8C8
      C800F3F3F300EFEFEF00EEEEEE00EFEFEF007A7A7A0071717100757575007777
      7700797979007A7A7A007A7A7A007B7B7B007D7D7D007C7C7C007C7C7C007C7C
      7C007C7C7C007C7C7C007C7C7C007D7D7D007B7B7B007A7A7A007A7A7A007979
      79007979790077777700757575006A6A6A00C4C4C400F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100B6B6B600D5D5
      D500F3F3F300000000000000000000000000000000000000000000000000ECFE
      EC00ECFEEC00E7E7E700E7E7E700F8F8F800F8F8F800EEEEEE00D1D0D000D1D0
      D000D2D2D300D2D2D30090B8B100066340000663400000480B0000480B000B79
      36000B79360007722D00004E1300004E1300003E0C00003E0C00004713004F98
      72004F987200A3A7A500A3A7A500ABA8A800ABA8A800DFDEDE00FCFCFB00FCFC
      FB00F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F3F3F300F3F3F300DCEE
      DC00DCEEDC00000000000000000000000000D6D6F0007575EC007575EC009090
      F8008F8FF7008F8FF9008F8FF9007E7EDD000000000000000000000000000000
      000000000000000000000000000000000000FDFDFC005454D4005454D4009494
      FC008F8FF7008F8FF7008F8FF7008F8FF7009393FC005454D4005454D400FDFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E7EDD008F8FF9008F8FF9008F8F
      F7009090F8007575EC007575EC00D7D7F000513F4900581E0000AC570100B16D
      0300CD990300D9A70300DBAF0300E3BE0300E8C80300F1D40300F1D50300F2D6
      0300F2D50300F2D40300EED00300EACD0300F1D30200E4B50100396001000041
      050033B843004AEC5B0028B533000AA318002EDB3E0040ED52006FF7820098F9
      A700C9FDD500ECFFF300DEFDE50098FBB00073FD8C0072FC8B0067FA7F007CF9
      920081FC990052F96D0049F563003AEC510030DB400039D64A0028C7360013A3
      1E000047020073777300F8F7F800F1F1F10000000000F3F3F300D1D1D100C9C9
      C900F3F3F300EFEFEF00EDEDED00EFEFEF00FBFBFB00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00F5F5F500F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100B7B7B700D6D6
      D600F3F3F300000000000000000000000000000000000000000000000000EDFE
      ED00EDFEED00EBEBEB00EBEBEB00F7F7F700F7F7F700F4F4F400EBEBEB00EBEB
      EB00EDECEC00EDECEC00F0EDEF00EEF1F300EEF1F300005F4100005F41000035
      00000035000008733200005B1E00005B1E00002E0000002E00002D714900CBDA
      D200CBDAD200ABA8A900ABA8A900A4A4A400A4A4A400B3B3B100E6E7E200E6E7
      E200FFFFFF00FFFFFF00F9F9F800F8F8F800F8F8F800F3F3F300F3F3F300DCED
      DC00DCEDDC00000000000000000000000000D6D6F0007575EC007575EC009090
      F8008F8FF7008F8FF9008F8FF9007E7EDD000000000000000000000000000000
      000000000000000000000000000000000000FDFDFC005454D4005454D4009494
      FC008F8FF7008F8FF7008F8FF7008F8FF7009393FC005454D4005454D400FDFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E7EDD008F8FF9008F8FF9008F8F
      F7009090F8007575EC007575EC00D7D7F0005F5B6700461B0B00A6550200B168
      0200C48B0300D8A50300DAAD0300E1BD0300EBCC0300F1D00300ECC60300ECC5
      0300F1CC0300F0D10300EECE0300E8C90300E6C80300F1C602007B7E02000345
      01001C7E2C0044E5570027BB3300059410002BD83B0078F68600C2FFD200D5FF
      E300D9FFE400D0FFD700CEFFD600A1FBB5006EFB880052F76C005AF8700093F9
      A2008FFBA40058FE750050FA6C0045EF5B0023DB320023CB33001BB527000475
      0B0016361700C7C1C700F7F7F7000000000000000000F3F3F300D1D1D100C9C9
      C900F3F3F300EEEEEE00EEEEEE00F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F2F2F200B8B8B800D6D6
      D600F3F3F300000000000000000000000000000000000000000000000000EDFE
      ED00EDFEED00EBEBEB00EBEBEB00F7F7F700F7F7F700F4F4F400EBEBEB00EBEB
      EB00EDECEC00EDECEC00F0EDEF00EEF1F300EEF1F300005F4100005F41000035
      00000035000008733200005B1E00005B1E00002E0000002E00002D714900CBDA
      D200CBDAD200ABA8A900ABA8A900A4A4A400A4A4A400B3B3B100E6E7E200E6E7
      E200FFFFFF00FFFFFF00F9F9F800F8F8F800F8F8F800F3F3F300F3F3F300DCED
      DC00DCEDDC00000000000000000000000000CACAEC007B7BF0007B7BF0009090
      F7008F8FF7008E8EF9008E8EF9008A8ADE000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00FDFDFC005454
      D4009494FC008F8FF7008F8FF7008F8FF7008F8FF7009393FC009393FC005454
      D400FDFDFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008989DE008E8EF9008E8EF9008F8F
      F7009090F7007B7BF0007B7BF000CACAEC00A2A7AE004A3D410085450000BD73
      0200B3710300CF9D0300D6A60300DCAD0300E4BE0300CF900300C87F0200CF8E
      0300DEAB0300E3BB0300E7C00300EED10300EACA0300EBC80300CCB301003B5B
      000002380B0020822B0026B63500068F0D0026BD310097F7A0008AE996005ADF
      670043DE500034E6420034E03E002EE33C0030EC410024E9350023E4360049DC
      57004CDC5B0040E755003FE6550045E1570049DF590009981200015807001C3F
      1E00888B8900F2F2F300F1F1F1000000000000000000F3F3F300D1D1D100C9C9
      C900F3F3F3000000000000000000F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100BABABA00D6D6
      D600F3F3F300000000000000000000000000000000000000000000000000EDFF
      ED00EDFFED00EBEBEB00EBEBEB00F6F6F600F6F6F600F8F8F800F9F9F900F9F9
      F900F9F9F900F9F9F900FAF9FA00FFFFFF00FFFFFF00D4EDED00D4EDED000B5D
      42000B5D4200002E070002672D0002672D003E7956003E795600B6C1BE00AAA4
      A400AAA4A400ABAAAA00ABAAAA00B7B5B200B7B5B20071788A0000187A000018
      7A0096A3D70096A3D700F9F8F800FAFAF900FAFAF900F3F3F300F3F3F300DCEE
      DC00DCEEDC00000000000000000000000000CACAEC007B7BF0007B7BF0009090
      F7008F8FF7008E8EF9008E8EF9008989DE000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FC005454D4009494FC009494FC008F8FF7008F8FF7008F8FF7008F8FF7009393
      FC005454D400FDFDFC00FDFDFC00000000000000000000000000000000000000
      0000000000000000000000000000000000008A8ADE008E8EF9008E8EF9008F8F
      F7009090F7007B7BF0007B7BF000CACAEC00EEF0F0008F929500432B1200C288
      0000B46E0300A95B0300B2610300BE730200C3730200BC5F0200D1900200DAA7
      0200DAA10100DBA30200D5980300DFAE0300E5BB0300DAA40300DFA70200B39B
      010016350000013906001A7422001BB426000A8110001E8E23000B891000008A
      01000090000000930000009F000001B4050009C3110009C2120008B6110012AF
      1A000BA61400089010000B81110019AB25001D9E230000370100374237009290
      9200E8E8E900F3F2F200000000000000000000000000F3F3F300D0D0D000CCCC
      CC00F3F3F30000000000F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100BABABA00D6D6
      D600F3F3F300000000000000000000000000000000000000000000000000EDFF
      ED00EDFFED00EBEBEB00EBEBEB00F6F6F600F6F6F600F8F8F800F9F9F900F9F9
      F900F9F9F900F9F9F900FAF9FA00FFFFFF00FFFFFF00D4EDED00D4EDED000B5D
      42000B5D4200002E070002672D0002672D003E7956003E795600B6C1BE00AAA4
      A400AAA4A400ABAAAA00ABAAAA00B7B5B200B7B5B20071788A0000187A000018
      7A0096A3D70096A3D700F9F8F800FAFAF900FAFAF900F3F3F300F3F3F300DCEE
      DC00DCEEDC00000000000000000000000000D6D6F0007575EC007575EC009090
      F8008F8FF7008F8FF9008F8FF9007E7EDD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFC005454D4005454D4009494FC008F8FF7008F8FF7008F8FF7008F8F
      F7009393FC005454D4005454D400FDFDFC000000000000000000000000000000
      0000000000000000000000000000000000007E7EDD008F8FF9008F8FF9008F8F
      F7009090F8007575EC007575EC00D7D7F000F3F3F300EEEFF000777679007041
      0100BC6C0000710C03007E1C0200BB6E0300D7A20300EED70900F3E51000F4E9
      0C00EBD00600DCA80100CE8E0300DAA80300E3B20300D2930300C0730100C35E
      03008C3F02001F0F000005060000063B0A00004900000036000000390000013C
      000000290000000D0000000F0000001800000019000000170000001300000014
      000000360000006800000068010000520000071D080069666800D8D5D800F8F8
      F800F2F2F20000000000000000000000000000000000F3F3F300D2D2D200CDCD
      CD00F4F4F400F1F1F10000000000F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100BCBCBC00D9D9
      D900F2F2F200000000000000000000000000000000000000000000000000EDFF
      ED00EDFFED00EBEBEB00EBEBEB00F7F7F700F7F7F700F8F8F800F8F8F800F8F8
      F800F9F9F900F9F9F900F9F9F900FAF9F900FAF9F900FEFCFE00FEFCFE00A6CD
      CA00A6CDCA00326C580039695A0039695A00E5E4E400E5E4E400BFBCBD00AFAF
      B000AFAFB000A3A2A100A3A2A1009E9E9B009E9E9B006274AB00000062000000
      62002835930028359300DCE0EF00FCFCFA00FCFCFA00F3F3F300F3F3F300DFF1
      DF00DFF1DF00000000000000000000000000D6D6F0007575EC007575EC009090
      F8008F8FF7008F8FF9008F8FF9007E7EDD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFC005454D4005454D4009494FC008F8FF7008F8FF7008F8FF7008F8F
      F7009393FC005454D4005454D400FDFDFC000000000000000000000000000000
      0000000000000000000000000000000000007E7EDD008F8FF9008F8FF9008F8F
      F7009090F8007575EC007575EC00D7D7F00000000000F5F5F500E4E8E900524E
      47007B3C00007A1E00006A0F0000B3740400DBB20900D2890300D4820200D37E
      0200D47D0200DA890000CE790300DAA80300DEA80300C87F0100C1750100BA60
      0200651100003F0605004A3537006F717300326134000C6D1200011503000102
      0100010C010003280800093C0D001055150016631D001D642600195625000329
      090000090000002E00000A350A002D362C0094909400EFEEEF00F6F6F6000000
      00000000000000000000000000000000000000000000F3F3F300D4D4D400CECE
      CE00F4F4F400F2F2F20000000000F1F1F100F1F1F100F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100BCBCBC00D9D9
      D900F2F2F200000000000000000000000000000000000000000000000000EEFF
      EE00EEFFEE00ECECEC00ECECEC00F8F8F800F8F8F800F6F6F600F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F3F2F300F3F2F300F2F2
      F300F2F2F300C4CDD3009596A8009596A800A4A2AC00A4A2AC00C6C6C800A9A8
      A600A9A8A60098968D0098968D0066759E0066759E000B187F00000055000000
      55002835910028359100DDE2EF00FCFCFA00FCFCFA00F3F3F300F3F3F300DFF1
      DF00DFF1DF00000000000000000000000000F1F1F8006666E4006666E4009191
      F8008F8FF7009191F9009191F9006464DA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFC00FDFDFC005454D4009494FC008F8FF7008F8FF7008F8F
      F7008F8FF7009393FC009393FC005454D400FDFDFC0000000000000000000000
      0000000000000000000000000000000000006363DA009191F9009191F9008F8F
      F7009191F8006666E4006666E400F1F1F8000000000000000000F8F8F800A8AE
      B200392A1B006B1C000074130100651A0300972B0200D8490100DC490200D73E
      0100CA4A0100CE670300D2670300D0790300E1810300C8520200A72F02006D2B
      0000160C09004E515200B3B5B500FBF9FC00C5CEC500737B740002110300042E
      0800105E1800299A2A0034A72E0033A7320038B13E0046C1540046D7620018B0
      290001590400071A08004A424A00BAB4BA00FFFFFF00F2F2F200000000000000
      00000000000000000000000000000000000000000000F3F3F300D4D4D400CECE
      CE00F4F4F400F2F2F20000000000F1F1F100F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F1F1
      F100F2F2F200F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100BCBCBC00DADA
      DA00F2F2F200000000000000000000000000000000000000000000000000EEFF
      EE00EEFFEE00ECECEC00ECECEC00F8F8F800F8F8F800F6F6F600F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F3F2F300F3F2F300F2F2
      F300F2F2F300C4CDD3009596A8009596A800A4A2AC00A4A2AC00C6C6C800A9A8
      A600A9A8A60098968D0098968D0066759E0066759E000B187F00000055000000
      55002835910028359100DDE2EF00FCFCFA00FCFCFA00F3F3F300F3F3F300DFF1
      DF00DFF1DF00000000000000000000000000000000005959DA005959DA009292
      F9008F8FF7009292F9009292F9006060E100F5F5FA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFC005454D4009494FC009494FC008F8F
      F7008F8FF7008F8FF7008F8FF7009393FC005454D400FDFDFC00FDFDFC000000
      0000000000000000000000000000F5F5F9006161E1009292F9009292F9008F8F
      F7009292F9005959DA005959DA00000000000000000000000000F1F1F100F5F6
      F70065676B003E190B004A0D0000410000008A0C0000A63803008A260100831D
      0300762803006E2B0100752C03007F380200A4490300BD4002008A1400001C00
      00004D535500B6BBBC00F0F2F200FBFAFA00FCF3FC00959496000B4D11001371
      1C002090250032A82C00379C2B002C852300247A23002B7F3100329D42001CB6
      2B000B9E160013721800527B5300D0C8CF00FFFFFF00EFEFEF00000000000000
      00000000000000000000000000000000000000000000F3F3F300D4D4D400CECE
      CE00F4F4F400F2F2F200F1F1F100F3F3F3007D7D7D00767676007A7A7A007D7D
      7D00808080007F7F7F007F7F7F007F7F7F007F7F7F007C7C7C007C7C7C007171
      7100B0B0B000F5F5F500F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100BEBEBE00DBDB
      DB00F2F2F200000000000000000000000000000000000000000000000000EEFF
      EE00EEFFEE00ECECEC00ECECEC00F9F9F900F9F9F900EDEDED00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCB
      CB00CCCBCB00D7D6D600EEEDEE00EEEDEE007575900075759000ADACAF00C9C9
      C800C9C9C8005770A7005770A70000138A0000138A0000037700000064000000
      640093A2D20093A2D200FDFBFA00F9F9F900F9F9F900F2F2F200F2F2F200DFF1
      DF00DFF1DF00000000000000000000000000000000007878DC007878DC009090
      F9008F8FF7008F8FF7008F8FF7008989F700A1A1E00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFC005454D4005454D4009393
      FC008F8FF7008F8FF7008F8FF7008F8FF7009393FC005454D4005454D400FDFD
      FC00000000000000000000000000A0A0E0008989F7008F8FF7008F8FF7008F8F
      F7009090F9007878DC007878DC0000000000000000000000000000000000F3F3
      F300DADBDC008C8D8E004D4B4C0031110E004C080100230A0100321901005028
      01005F3001006A4101005B40010025120100220602004A1400004C2918006263
      6400DBDDDE00FAFBFA00F7F8F800FFFAFF00A9A9A900399741001E8F1E002592
      2500299926002B9E2D002CA4320029A3320022922D0020842A00156D1D000E66
      120017841B0025BF2F001FB12B0054805600E3D4E300F5F6F500000000000000
      00000000000000000000000000000000000000000000F3F3F300D5D5D500CFCF
      CF00F5F5F500F2F2F20000000000F1F1F100EEEEEE00EEEEEE00EEEEEE00EFEF
      EF00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EFEFEF00EEEEEE00EEEEEE00EEEE
      EE00EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100BFBFBF00DADA
      DA00F2F2F200000000000000000000000000000000000000000000000000EEFF
      EE00EEFFEE00ECECEC00ECECEC00F9F9F900F9F9F900EDEDED00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCB
      CB00CCCBCB00D7D6D600EEEDEE00EEEDEE007575900075759000ADACAF00C9C9
      C800C9C9C8005770A7005770A70000138A0000138A0000037700000064000000
      640093A2D20093A2D200FDFBFA00F9F9F900F9F9F900F2F2F200F2F2F200DFF1
      DF00DFF1DF00000000000000000000000000000000007878DC007878DC009090
      F9008F8FF7008F8FF7008F8FF7008989F700A1A1E00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFC005454D4005454D4009393
      FC008F8FF7008F8FF7008F8FF7008F8FF7009393FC005454D4005454D400FDFD
      FC00000000000000000000000000A0A0E0008989F7008F8FF7008F8FF7008F8F
      F7009090F9007878DC007878DC00000000000000000000000000000000000000
      0000F4F4F400FBFDFD00E4E7EA00979FA70033322F0089540000A2720100976F
      0300825102008046020099550200944202006B2100002F180F0081878F00EFF2
      F300F9F9F800F1F1F100FFFEFF00C9C4C8003B863C0029AD2B0033B2350034BD
      3B0030C038002DBD36002DBF36002EC437002EC33A002FC13A002FBE380036B7
      3F002D9B32002B90260030AB320024AA2E007A777A00F3EAF300F3F3F3000000
      00000000000000000000000000000000000000000000F2F2F200D5D5D500CFCF
      CF00F5F5F500F2F2F20000000000F1F1F100F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100C0C0C000DCDC
      DC00F2F2F200000000000000000000000000000000000000000000000000EEFF
      EE00EEFFEE00ECECEC00ECECEC00F8F8F800F8F8F800F9F9F900FCFCFC00FCFC
      FC00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FCFCFC00FEFEFD00FEFEFD00F8F8F900F8F8F9007780A5001B37
      91001B37910000119200001192000014940000149400000676006071B7006071
      B700FFFFFF00FFFFFF00F9F9F800F8F8F800F8F8F800F3F3F300F3F3F300E0F2
      E000E0F2E00000000000000000000000000000000000A7A7E200A7A7E2008686
      F6008F8FF7008F8FF7008F8FF7009292FA005C5CD80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00FDFDFC005454
      D4009494FC008F8FF7008F8FF7008F8FF7008F8FF7009393FC009393FC005454
      D400FEFEFC0000000000000000005B5BD8009292FA008F8FF7008F8FF7008F8F
      F7008686F600A7A7E200A7A7E200000000000000000000000000000000000000
      000000000000F7F7F900D7D9DD0082726200885006007C4C0000693602006F33
      03007133010060260300471B03005022030074360100995A0000653D2400A3A0
      A700FEFFFF00FAF8FA00EFE7EE00447F450024B027002FBC340021B82B001CB1
      260020B5290030C237003DCA470041C84B003CC7480039C544002DBC370026B7
      2D0031C23E004ECC570053C7530049CF52001CA4260087998800F2EEF200F1F1
      F1000000000000000000000000000000000000000000F2F2F200D7D7D700D1D1
      D100F5F5F500F2F2F20000000000F1F1F100F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100C0C0C000DDDD
      DD00F2F2F200000000000000000000000000000000000000000000000000EEFF
      EE00EEFFEE00ECECEC00ECECEC00F8F8F800F8F8F800F9F9F900FCFCFC00FCFC
      FC00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FCFCFC00FEFEFD00FEFEFD00F8F8F900F8F8F9007780A5001B37
      91001B37910000119200001192000014940000149400000676006071B7006071
      B700FFFFFF00FFFFFF00F9F9F800F8F8F800F8F8F800F3F3F300F3F3F300E0F2
      E000E0F2E00000000000000000000000000000000000FFFFFD00FFFFFD005959
      DC009292F9008F8FF7008F8FF7008F8FF7008282F400A0A0DF00A0A0DF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FC005454D4009494FC009494FC008F8FF7008F8FF7008F8FF7008F8FF7009393
      FC005E5ED7009292DA009292DA008585F5008F8FF7008F8FF7008F8FF7009292
      F9005959DD00FFFFFD00FFFFFD00000000000000000000000000000000000000
      0000F3F3F400C0C2C200766B5A006F3F0300854500007F3E03008A3F03008F45
      0200924C0300944C03008F470300834103008045030093690100986A0000614B
      3700DADFE700FCFBFE00B4B2B5002CA0330025B12D0021B529001BB0240024B7
      2B002FC2370047D0520062DB6E006BDC770062D9700056D4650043C94E002FBB
      390025B42F0035C3430040CB4D0051D25B002BC53700448F4600D7D4D700F4F3
      F4000000000000000000000000000000000000000000F2F2F200D7D7D700D2D2
      D200F5F5F500F2F2F200F1F1F10000000000EDEDED00ECECEC00ECECEC00ECEC
      EC00ECECEC00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00ECECEC00ECECEC00ECECEC00ECECEC00EEEEEE00F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100C0C0C000DDDD
      DD00F2F2F200000000000000000000000000000000000000000000000000EFFF
      EF00EFFFEF00ECECEC00ECECEC00F8F8F800F8F8F800F7F7F700EFEFEF00EFEF
      EF00EFEFEF00EFEFEF0000000000000000000000000000000000000000000000
      00000000000000000000F1F1F000F1F1F000F3F3F300F3F3F300A0AED6001834
      9C0018349C0000148A0000148A0008188100081881006A76AF00F1F2F300F1F2
      F300FBFBF900FBFBF900F8F8F800F8F8F800F8F8F800F3F3F300F3F3F300E3F5
      E300E3F5E3000000000000000000000000000000000000000000000000008282
      DA008F8FFA008F8FF7008F8FF7008F8FF7009393F9005D5DDF005D5DDF00EAEA
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFC005454D4005454D4009494FC008F8FF7008F8FF7008F8FF7008F8F
      F7009393FA007575E9007575E9009292F8008F8FF7008F8FF7008F8FF7008F8F
      FA008282DA00000000000000000000000000000000000000000000000000F1F1
      F100ECEDF000928C84005B3E1200864C0000853D02007C2D03007F330300873D
      03008D4703008C450300863F03008B3F0300954B0300A7740300BC9700006F3F
      0400AFB3BC00F6F7FA0094A6950025A72E0020A4270023B72B0020B5290029BE
      310036C9400055D6610079E2840083E5900075E0850065DA77004BCE590035C0
      43002BB933002EB83A0031BC3E0048CF540043CC4A00258D2B00BDC3BC00FDF8
      FC00EFEFEF0000000000000000000000000000000000F2F2F200D7D7D700D3D3
      D300F5F5F500F2F2F200F2F2F200E5E5E500ACACAC00A9A9A900ABABAB00ACAC
      AC00AEAEAE00AFAFAF00B0B0B000B0B0B000B0B0B000B1B1B100B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B0B0B000B0B0B000B0B0
      B000AFAFAF00AEAEAE00ACACAC00ABABAB00ABABAB00A7A7A700CACACA00F5F5
      F500F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100C1C1C100DDDD
      DD00F2F2F200000000000000000000000000000000000000000000000000F0FF
      F000F0FFF000EEEEEE00EEEEEE00F8F8F800F8F8F800F2F2F200DCDCDC00DCDC
      DC00DADADA00DADADA00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00E0DFDF00E0DFDF00DEDEDF00A7B0
      C900A7B0C9006872AA006872AA00A0A7C200A0A7C200DDDDDC00E5E4E300E5E4
      E300F7F7F700F7F7F700F8F8F800F8F8F800F8F8F800F3F3F300F3F3F300E3F5
      E300E3F5E3000000000000000000000000000000000000000000000000008282
      DA008F8FFA008F8FF7008F8FF7008F8FF7009393F9005D5DDF005D5DDF00EAEA
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFC005454D4005454D4009494FC008F8FF7008F8FF7008F8FF7008F8F
      F7009393FA007575E9007575E9009292F8008F8FF7008F8FF7008F8FF7008F8F
      FA008282DA00000000000000000000000000000000000000000000000000F3F3
      F500D5D5CF007F623C00743B0000833E010072230300813503009B5A0300AC72
      0300B9860300B57E0300A1620300843C03007D2E030098570300B7900200A865
      000077585B00C9CED10080BE860016951C0027AA2D002BBE320025BD2E002EC3
      38003ACA45005AD96A0087E5950098EAA6008BE79A0075E08C0054D368003DC3
      4B002BB636002FB53A0030BB3B0031C3370052D8570028A13000899D8900E4D8
      E400F2F3F20000000000000000000000000000000000F2F2F200D7D7D700D3D3
      D300F5F5F500F2F2F200F1F1F100EBEBEB00CDCDCD00CCCCCC00CDCDCD00CECE
      CE00CECECE00CECECE00CFCFCF00D0D0D000D0D0D000D0D0D000D0D0D000D0D0
      D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0
      D000CECECE00CECECE00CECECE00CDCDCD00CDCDCD00CBCBCB00DCDCDC00F3F3
      F300F1F1F100F1F1F100F1F1F100F1F1F100F1F1F10000000000C3C3C300DEDE
      DE00F2F2F200000000000000000000000000000000000000000000000000F0FF
      F000F0FFF000EEEEEE00EEEEEE00F8F8F800F8F8F800F2F2F200DCDCDC00DCDC
      DC00DADADA00DADADA00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00E0DFDF00E0DFDF00DEDEDF00A7B0
      C900A7B0C9006872AA006872AA00A0A7C200A0A7C200DDDDDC00E5E4E300E5E4
      E300F7F7F700F7F7F700F8F8F800F8F8F800F8F8F800F3F3F300F3F3F300E3F5
      E300E3F5E300000000000000000000000000000000000000000000000000F9F9
      FB005959DD009393FA009393FA008F8FF7008F8FF7009595FB009595FB005656
      D600FDFDFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFC00FDFDFC005454D4009494FC008F8FF7008F8FF7008F8F
      F7008F8FF7009191F8009191F8008F8FF7008F8FF7009393FA009393FA005959
      DD00F9F9FB00000000000000000000000000000000000000000000000000F3F5
      F600B9B19F00763B0C0086370000834203007B2E03008F430300AD710300BF8C
      0300D5AA0300D3AA0300BA83030095500300853803008B440300935F0300B880
      0000743F22005C666B00459F540017A21F002FB8380029BD310019AD23001EB1
      290032C13D0065DB7800A0EBA800AEF5BF00A5F6BA0094EEAC0070DE830051D2
      60003BC0480034BF3C0033BC3E0024B02D0036C93C0027B23200608F6200C9C8
      C900F5F5F50000000000000000000000000000000000F2F2F200D7D7D700D3D3
      D300F5F5F500F2F2F20000000000F1F1F100F4F4F400F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F3F3F300F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F10000000000C4C4C400DDDD
      DD00F2F2F200000000000000000000000000000000000000000000000000F0FF
      F000F0FFF0000000000000000000F9F9F900F9F9F900F7F7F700F4F4F400F4F4
      F400F4F4F400F4F4F400F5F5F500F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F6F6F500FCFB
      F700FCFBF700FFFFFA00FFFFFA00FCFBF700FCFBF700F5F5F400F5F5F500F5F5
      F500F7F7F700F7F7F700F8F8F800F8F8F800F8F8F800F3F3F300F3F3F300E4F5
      E400E4F5E4000000000000000000000000000000000000000000000000000000
      00009D9DDF008080F3008080F3009090F7008F8FF7008F8FF7008F8FF7009494
      FB005555D500EAEAF500EAEAF500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFC005F5FD7009393FA009393FA008F8F
      F7008F8FF7008F8FF7008F8FF7008F8FF7009090F7008080F3008080F3009D9D
      DF0000000000000000000000000000000000000000000000000000000000F3F5
      F500A48E7E0075300000974E00008C47030069160300883A0300BA7F0300CFA3
      0300E6CB0100EFDA0300D4AE0300AF7203009C580300965103008F4E03009353
      0200763A020014170E0013701E0034CA3C002BB932001293190014A2210027BE
      360044D355007CE38E00A3F4AB009CF8B6009AF9BA0094F3AE007AE48E005AD2
      6E0047CA56003BC2470038B3410036BF3E0025B32A001BA323003D6C3F00B0B1
      B000F8F7F80000000000000000000000000000000000F2F2F200D9D9D900D4D4
      D400F5F5F500F2F2F20000000000F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100C4C4C400DFDF
      DF00F2F2F200000000000000000000000000000000000000000000000000F0FF
      F000F0FFF0000000000000000000F9F9F900F9F9F900F7F7F700F4F4F400F4F4
      F400F4F4F400F4F4F400F5F5F500F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F6F6F500FCFB
      F700FCFBF700FFFFFA00FFFFFA00FCFBF700FCFBF700F5F5F400F5F5F500F5F5
      F500F7F7F700F7F7F700F8F8F800F8F8F800F8F8F800F3F3F300F3F3F300E4F5
      E400E4F5E4000000000000000000000000000000000000000000000000000000
      0000000000006262D3006262D3009090FB008F8FF7008F8FF7008F8FF7008F8F
      F7009595FB005D5DDF005D5DDF00A0A0DF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009292DA007575E9007575E9009191
      F8008F8FF7008F8FF7008F8FF7008F8FF7009090FB006262D3006262D3000000
      0000000000000000000000000000000000000000000000000000F1F1F100F1F3
      F30079605F00743800009B5F00006B260300590203009C530300CE9D0300E4C3
      0100F6E30100F0DA0300D4AC0300B57B0300A66703009F600300A3670300833A
      03006F2F00000C090000085E11003CD0440018A020000E9616001BAD270026C3
      35003FD055006AE0890087F2AA0082F9A40071F193007BEB960075E28C005ED2
      6F004CD05B003BC6470031BC3D0039CB430024B42B001491180049714B00B8B9
      B900F7F6F70000000000000000000000000000000000F2F2F200DADADA00D5D5
      D500F5F5F500F2F2F20000000000F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100C7C7C700E1E1
      E100F1F1F100000000000000000000000000000000000000000000000000F0FF
      F000F0FFF0000000000000000000F8F8F800F8F8F800F9F9F900FBFBFB00FBFB
      FB00FCFCFC00FCFCFC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FCFCFC00FCFCFC00FAFAFA00F8F8F800F8F8F800F3F3F300F3F3F300E7F9
      E700E7F9E7000000000000000000000000000000000000000000000000000000
      0000000000006262D3006262D3009090FB008F8FF7008F8FF7008F8FF7008F8F
      F7009595FB005D5DDF005D5DDF00A0A0DF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009292DA007575E9007575E9009191
      F8008F8FF7008F8FF7008F8FF7008F8FF7009090FB006262D3006262D3000000
      0000000000000000000000000000000000000000000000000000F0F1F100F2F3
      F40082696A006C300000844700005C1103005F0203009B500300CD9C0300E1C4
      0100F7E50200E6C80300CD9D0300B67C0300A76903009F5E03009F630300873F
      0100642700000E0C04000856110031C0370010991900109E1D0011A21D0022C0
      310041CC5A0062DE82006EE9960076F3990060E882006BE28A0072DF86005FD7
      6F004BD05B003EC7470035BE44003DCD480025B62900138B18005F826100C8C9
      C800F5F5F50000000000000000000000000000000000F2F2F200DCDCDC00D7D7
      D700F4F4F400F2F2F200F1F1F100EBEBEB00CECECE00CCCCCC00CFCFCF00CECE
      CE00D0D0D000D0D0D000CFCFCF00D1D1D100D2D2D200D2D2D200D2D2D200D2D2
      D200D3D3D300D4D4D400D4D4D400D4D4D400D4D4D400D2D2D200D2D2D200D2D2
      D200D2D2D200D1D1D100D0D0D000D0D0D000D0D0D000CECECE00CFCFCF00CDCD
      CD00C8C8C800C4C4C400F5F5F500F1F1F100F1F1F100F1F1F100C7C7C700E1E1
      E100F1F1F100000000000000000000000000000000000000000000000000F0FF
      F000F0FFF000EFEFEF00EFEFEF00FAFAFA00FAFAFA0000000000D6D6D600D6D6
      D600D6D6D600D6D6D600D7D7D700D8D8D800D8D8D800D7D7D700D7D7D700DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00D9D9D900D9D9D900D7D7D700D7D7D700D8D8D800D6D6D600D6D6
      D600CDCDCD00CDCDCD00DDDDDD00F8F8F800F8F8F800F4F4F400F4F4F400E6F8
      E600E6F8E6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005454D3009393FC008F8FF7008F8FF7008F8F
      F7008F8FF7009393F9009393F9008282F4005C5CD800A0A0E000A0A0E000F6F6
      FA00000000000000000000000000000000000000000000000000000000000000
      0000F5F5F900A0A0E000A0A0E0005B5BD8008585F5009292F8009292F8008F8F
      F7008F8FF7008F8FF7008F8FF7009393FC005454D30000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F5
      F70098828500601E0000762B0000530903005C060300B3740200D4AD0200DAB7
      0300DFBE0100D1A60300C68E0300B4790300A76B03009F620300A1630300893E
      0000632911004B3F4700306837001EB125000F9F19000B9415001DAE2A0041CF
      550069E0850080EA9E0062E3830054E37C004CDA6F005ADB730070E181005CD6
      6C004AD158003EC7430036BE400040CF490020B32600127C18007A8E7B00DAD6
      DA00F3F3F30000000000000000000000000000000000F2F2F200DCDCDC00D7D7
      D700F7F7F700F1F1F100F2F2F200E8E8E800C0C0C000BFBFBF00C0C0C000C1C1
      C100C1C1C100C1C1C100C3C3C300C5C5C500C5C5C500C5C5C500C7C7C700C8C8
      C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C7C7
      C700C5C5C500C4C4C400C4C4C400C2C2C200C1C1C100C1C1C100C0C0C000C1C1
      C100B6B6B600B1B1B100F7F7F700F1F1F100F1F1F100F2F2F200C7C7C700E2E2
      E200F1F1F100000000000000000000000000000000000000000000000000F0FF
      F000F0FFF000EFEFEF00EFEFEF00FAFAFA00FAFAFA0000000000D6D6D600D6D6
      D600D6D6D600D6D6D600D7D7D700D8D8D800D8D8D800D7D7D700D7D7D700DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00D9D9D900D9D9D900D7D7D700D7D7D700D8D8D800D6D6D600D6D6
      D600CDCDCD00CDCDCD00DDDDDD00F8F8F800F8F8F800F4F4F400F4F4F400E6F8
      E600E6F8E6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFC005454D3009090FB009090FB009090
      F7008F8FF7008F8FF7008F8FF7008F8FF7009292FA008989F7008989F7006060
      E1006464DA007E7EDD007E7EDD008989DE008989DE007E7EDD007E7EDD006363
      DA006161E1008989F7008989F7009292FA008F8FF7008F8FF7008F8FF7008F8F
      F7009090F7009090FB009090FB005454D300FDFDFC0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F6
      F600AFA7A900511F13005D0E00005A0502008A390200EED60100F3E10200E4C4
      0300B5770300A55F0300B87E0300AF740300A76C0300995703009E6203007833
      000055343300BDB8C1008496860008900F000EAB19000DA71B0050DA610092F3
      A000C9FECE00C2FCD50065E187002ECA4C002BC7460041CF590063DD750053D8
      60004BD8510034B53A0035B43C0044D74D00169F1B001D5C2000B0B1B000F4EF
      F300F0F1F0000000000000000000000000000000000000000000E8E8E800D3D3
      D300F3F3F300F2F2F20000000000F2F2F200F5F5F500F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F7F7F700F7F7F700F1F1F100F1F1F100F1F1F100EEEEEE00BCBCBC00E4E4
      E400F1F1F1000000000000000000000000000000000000000000000000000000
      000000000000EBF5EB00EBF5EB00F8F8F800F8F8F800F7F7F700F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F4F4F400F4F4F400F6F6F600FAFAFA00FAFAFA00EFEFEF00EFEFEF00E6FC
      E600E6FCE6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006262D3006262D3008080
      F3009393FA008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7009292
      F9009191F9008F8FF9008F8FF9008E8EF9008E8EF9008F8FF9008F8FF9009191
      F9009292F9008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7009393
      FA008080F3006262D3006262D300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F300DADCDC00575151001E00000069150000CB8F0200FFFF1000FBEC0800DEB2
      0100802C030080300300B0770300A86E03009D6403008F4F0300A56800004718
      00006F696F00F0F0F200D2CBD2000E55110006A4110027CE3A008FF3A300D0FF
      D500F7FFF800DBFFE60055DB6F0015B227001BB62B003ACB4A0059DF64004EDB
      560042D24900269F2D003AB9420042DC4B0005660800596E5900E7E5E700F3F3
      F3000000000000000000000000000000000000000000EFEFEF00FAFAFA00CACA
      CA00E4E4E400F6F6F6000000000000000000F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F4F4F400DADADA00C4C4C400ECEC
      EC00000000000000000000000000000000000000000000000000000000000000
      000000000000EBF5EB00EBF5EB00F8F8F800F8F8F800F7F7F700F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F4F4F400F4F4F400F6F6F600FAFAFA00FAFAFA00EFEFEF00EFEFEF00E6FC
      E600E6FCE6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006262D3006262D3008080
      F3009393FA008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7009292
      F9009191F9008F8FF9008F8FF9008E8EF9008E8EF9008F8FF9008F8FF9009191
      F9009292F9008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7009393
      FA008080F3006262D3006262D300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3F4F300BBBFC00054575B003F170800C89C0000FBE60D00AE8304006B35
      00003F03030083400300A7730300965C0300844903008C510200674300003731
      3100DDDEE000F6F6F600FEF9FC00696B68000362050033DC4800C6FFD800ECFF
      F300F0FFF4009BEFAB001DAE2B0004940E001DB527003FCF49004BDA550040D5
      49002EB8370033A83A004CD35300229F2A001B351C00B8B9B800F7F6F7000000
      00000000000000000000000000000000000000000000EFEFEF00F1F1F100E7E7
      E700CECECE00F4F4F400F5F5F5000000000000000000F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F3F3F300E4E4E400BFBFBF00E0E0E000F3F3
      F300EFEFEF000000000000000000000000000000000000000000000000000000
      000000000000EBFFEB00EBFFEB00EFEFEF00EFEFEF00FAFAFA00FAFAFA00FAFA
      FA00F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900FAFAFA00FAFAFA00FAFAFA00EEEEEE00EEEEEE00DEE4DE00DEE4DE00F2F5
      F200F2F5F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009D9D
      DF005959DD008F8FFA008F8FFA009292F9008F8FF7008F8FF7008F8FF7008F8F
      F7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8F
      F7008F8FF7008F8FF7008F8FF7008F8FF7009292F9008F8FFA008F8FFA005959
      DD009D9DDF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F100F8F8F800BDC0C3002C2A2C007B470000D28B0000592201001D02
      0200451503009A610300A4720300A068030090570200683900001C0E06009697
      9900FEFEFE0000000000F8F8F800C1BAC0001738170014AE2500B3FFCC00ECFF
      F700BFFCD0003DC74C00007A010007900E002AC3330040D5470040D7490035CD
      3E00229A280048C24E0045CF4E0007460B0058625A00F0F0F100F2F2F2000000
      0000000000000000000000000000000000000000000000000000EFEFEF00F4F4
      F400DADADA00D8D8D800F5F5F500F6F6F600F1F1F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1F1F100F5F5F500E1E1E100BCBCBC00CDCDCD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBFFEB00EBFFEB00EFEFEF00EFEFEF00FAFAFA00FAFAFA00FAFA
      FA00F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900FAFAFA00FAFAFA00FAFAFA00EEEEEE00EEEEEE00DEE4DE00DEE4DE00F2F5
      F200F2F5F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9FB008282DA008282DA005959DD008686F6009090F9009090F9009292
      F9009191F8009090F8009090F8009090F7009090F7009090F8009090F8009191
      F8009292F9009090F9009090F9008686F6005959DC008282DA008282DA00F9F9
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F2F200EDEDED00868A8D003C2A1800621E0000631200006C2A
      00007E4B0000A2720000B0820000AA71000087490000371C010056535800E1E2
      E300F4F4F400EFEFEF00F2F2F200EBE9EA00636A63000054060059E6720095FF
      B00072F28A000E9B1700006E00001AAC230042D84D004ADC500042D5490042D4
      470030AA3500298C2F0015691A0013311300BEBFBE00F6F6F600000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF00F4F4F400D6D6D600D3D3D300EAEAEA00F5F5F500F7F7F700F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500EFEFEF00DBDBDB00BBBBBB00CCCCCC00F5F5F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECFFEC00ECFFEC00E9F4E900ECECEC00ECEC
      EC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEEEEE00EEEEEE00E3EEE300DCF7DC00DCF7DC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFD00A7A7E2007878DC007878DC005959
      DA006666E4007575EC007575EC007C7CF0007C7CF0007575EC007575EC006666
      E4005959DA007878DC007878DC00A7A7E200FFFFFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F2F2F200F5F6F600C2C6CB0049464E00583A2B007E48
      19008A5B0E00814F0E00653A16004F4136005B504A00A19EA200F1F2F300F4F4
      F40000000000EFEFEF0000000000F4F4F400EFEBEF0076727500124214000477
      090002980B0011BB230034B2410033B53A0037BF42003BC3450044D24A0045D7
      4D0029A631001A441B003A483900BBBBBA00FDFCFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF00F9F9F900E5E5E500D2D2D200D1D1D100D6D6D600DCDCDC00DCDC
      DC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDC
      DC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DBDBDB00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00D9D9
      D900D1D1D100C6C6C600C3C3C300DFDFDF00F8F8F800F1F1F100EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EFFAEF00EFFAEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFD00A7A7E2007878DC007878DC005959
      DA006666E4007575EC007575EC007C7CF0007C7CF0007575EC007575EC006666
      E4005959DA007878DC007878DC00A7A7E200FFFFFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100F9F9F900EEF0F100CED1D400ADB1
      B3009D9BA0009D999F00A6A7AC00DEE1E500F1F2F300F8F8F900F2F2F2000000
      0000EFEFEF00000000000000000000000000F4F4F400F4F1F300ADAAAD00797B
      770041634000208A2D004CA955003DB9480030B53D002BAD3800258C2D002B76
      2D006A816A00B0B0B000DBDCDB00F6F5F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF00EFEFEF00F6F6F600EEEEEE00E7E7E700E6E6E600E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E3E3E300E2E2E200EEEEEE00F5F5F500EFEFEF00EFEFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EFFAEF00EFFAEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F800D6D6F000D6D6F000CACAEC00CACAEC00D6D6F000D6D6F000F1F1
      F800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEF00F2F1F100F4F4F400F5F5
      F600F4F5F600F4F5F600F5F5F600F4F4F300F1F1F10000000000000000000000
      00000000000000000000000000000000000000000000F1F1F100F7F7F700F6F4
      F600E2DCE200B4B2B400929791007D8E7D007E917E00818E8100A6A4A600CBC6
      CA00EFECEF00F7F6F700F4F4F400000000000000000000000000000000000000
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
      28000000C0000000F00000000100010000000000801600000000000000000000
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
      0000000000000000000000000000000080000000000380000000000100000000
      0000000000000000000000000001000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000010000
      0000000000000000000000000000000000000000000100000000000000000000
      00000000000000000022AAAAAA81000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000010000
      0180000000000000000000000000000000000000000100000000000000000000
      0000000000000000000000000001000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000010000
      0000000000000000000000000000000000000000000100000000000000000000
      0000000000000000000000000001000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000010000
      0000000000000000000000000000000000000000000100000000000000000000
      0000000000000000000000000001000001400000000000000000000000000000
      00000000000100000E7800000000000000000000000000000000000000010000
      7E7F00000000000000000000000000000000000000010003FE7FE00000000000
      0000000000000000000000000001000FFE7FF000000000000000000000000000
      000000000001000FFE7FF000000000000000000000000000000000000001000F
      FE7FF000000000000000000000000000000000000001000FFE7FF00000000000
      0000000000000000000000000001000FFE7FF000000000000000000000000000
      000000000001000FFE7FF000000000000000000000000000000000000001000F
      F247F000000000000000000000000000000000000001000F8140F00000000000
      0000000000000000000000000001000C3C1E1000000000000000000000000000
      0000000000010001FC3FC000000000000000000000000000000000000001000F
      FE7FF800000000000000000000000000000000000001001FF81FFC0000000000
      0000000000000000000000000001001FC003F800000000000000000000000000
      000000000001000E000078000000000000000000000000000000000000010000
      0000000000000000000000000000000000000000000100000000000000000000
      0000000000000000000000000001000800000800000000000000000000000000
      010400400001001F00007800000000000000000000000000000000000001003F
      E003FE00000000000000000000000000000000000001003FFC1FFC0000000000
      00000000000000000000000000010007FE3FE000000000000000000000000000
      0000000000010000FC1F00000000000000000000000000000000000000010000
      0808000000000000000000000000000000000000000100000000000000000000
      0000000000000000000000000001000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000008000000000038000
      00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF801FFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF801FFFFFFFF81FFFFFFFF40100003FFFFFFFF803FFFFFFFF801FFFFFFFF
      00FFFFFFFF02900009FFFFFFFF8007FF800000000001FFFE007FFFFFFF008000
      03FFFF00007FC1FF800000000001FFFC003FFFFFFF1BFFFFDFFFFF000000387F
      800000000001FFFC003FFFFFFFFFFFFFFFFFFFFFFFFFFE3F800000000001FFFC
      003FFFFFFFFFFFFFFFFFFE0000007F1F800000000001FFFC0003FFFFFFFFFFFF
      FFFFFE0000007F8F800000000001FFFC00003FFFFFFFFFFFFFFFFE7FFFFE7FCF
      800000000001FFFE004003FFFF80000003FFFE7FFFFE07E7800000000001FFFF
      0000007FFE00000001FFFE7FFFFE07E3800000000001FFFE00000007FE000000
      00FFFE7FE00067F3800000000001FFFE3C000001FC7FFFFFE0FFFE7CFFFE67F3
      800000000001FFFE38000101FC718631E0FFFE78600667F9800000000001FFFE
      3800003BFC618410E0FFFE703FFE67F9800000000001FFFC7800003FFC618410
      E0FFFE74200667F9800000000001FFFC7000003FFC718E31E0FFFE7C200267F9
      800000000001FFFC7000003FFC7FFFFFE0FFFE70600067F9800000000001FFF8
      7000007FFC718631E0FFFE70FE0067F9800000000001FFF8F000007FFC618410
      E0FFFE70200067F9800000000001FFF8E200007FFC618410E0FFFE70380067F9
      800000000001FFF8E000047FFC718631E0FF067CE00067F9800000000001FFF1
      E0000007FC7FFFFFE0FF027FC01024F3800000000001FFF1E0000007FC600000
      E0FFF07FC0000473800000000001FFF1C007FFE7FC60000060FFE07FC0000663
      800000000001FFF1C0040027FC40010060FFC87FE1F80667800000000001FFE3
      C0000027FC40009060FFCC7FE3FC064F800000000001FFE380000027FC400040
      60FF9C01FF7E061F800000000001FFE380041FE7FC40104460FF9E00FF7E030F
      800000000001FFE380040027FC60000060FF9E3CF80E0300800000000001FFC7
      80041FE7FC600000E0FFBF1CF80E01F0800000000001FFC700002027FC7FFFFF
      E0FF3F8CFF7E00FF800000000001FFC700040027FC60000060FF3FCCFF7E40FF
      800000000001FF8700040027FC60000060FF3FE4FFFE607F800000000001CF8F
      00040027FC60000060FFBFF0FFFE603F800000000001800FE0000027FC600000
      60FF9FF80000603FFE000000003F801FFE000027FC61FFF060FF9FF80000601F
      FE000000003FF03FFFC41FE7FC60FFF060FFDFFE3FFFE00FFE000000003FFFFF
      FFC40027FC20FFF040FFCFFF1FFFE40FFE000000003FFFFFFFC65267FE00FFF0
      00FFE7FF80000607FE000000003FFFFFFFC52527FF007FF801FFE3FFE0000E1F
      FE004000003FFFFFFFC00007FFF8FFF81FFFF1003FFFFF3FFE000000003FFFFF
      FFC00007FFF8FFF81FFFF8C00FFFCFFFFF800000003FFFFFFFE02007FFF00000
      3FFFFC3FFFFFFFFFFF800000003FFFFFFFF9253FFFF000003FFFFF003FFFFFFF
      FFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFE07FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000005FFFFFFFFFF9FFFFFFFFF00F
      FFFFFFFFFF800042F00000000FFFFFFFFFF9FFFFFFFE00007FFFFFFFFC000081
      E000000007FFF80000000FFFFFFE00007FFFFFFFE0000000E000000003FFF800
      000003FFFFF000000FFFFFFF800000008000000001FFF800000003FFFFE00000
      07FFFFFF00000000C000000000FFF800000001FFFF80000001FFFFFC00000000
      80000000803FF800000001FFFF80000001FFFFF80000000080000000009FF800
      000001FFFE000000007FFFE00000000080000000003FF800000001FFFE000FF0
      007FE8000000000088000000083FE0000000007FF800FFFF001FE00000000000
      80000000400FE0000000001FF800FFFF001F80000000000080300000003FE000
      0000001FF0007FFF800F000000000000800000000827E0000000001FE0001FFF
      E007000000000000800000000027E0000000001FE0000FFFF007000000000000
      800000000007E0000000001FE0000FFFF007000000000000800000000007E000
      00000007800007FFF8010000000000008000C0003007E00000000007806001FF
      FE01000000000000800300000807E00000000007807000FFFE01000000000000
      800400000207E00000000007807000FFFE01000000000000806000000087E000
      000000078078007FFE01000000000000800000000047E0000000000700FE001F
      FF00000000000000800000000007E0000000000700FF000FFF00000000000000
      800000000007E0000000000700FF000FFF00000000000001800000000007E000
      0000000700FF8007FF00000000000001860000000007E0000000000700FFE001
      FF00000000000003840000000007E0000000000700FFF000FF00000000000007
      820000000007E0000000000700FFF000FF0080000000001F820000000007E000
      0000000700FFF8007F00C0000000003F820000000007E00000000007807FFE00
      1E01C0000000003F800000000007E00000000007807FFF000E01E0000000003F
      820000000007E00000000007807FFF000E01F0000000001F820000000007E000
      00000007807FFF800601F8000000000F820000000007E00000000007801FFFE0
      0001F0000000000F810000000007E003FC000007E00FFFF00007E00000000007
      800000000007E00000000007E00FFFF00007E00000000007800000000047E000
      00000007E007FFF80007E00000000007820000000047E60000000007F001FFFE
      000FE00000000007820000000007E60000000007F800FFFF001FC00000000007
      820000000007E60000000007F800FFFF001FC00000000007800000000007E040
      00000007FE000FF0007FE00000000007800000000007E04000000007FE000000
      007FE00000000007C20000000007F80000000007FF80000001FFE0000000000F
      83000000000FF80000000007FF80000001FFF0000000001F818000000007F800
      00000007FFE0000007FFF0000400001FC07FFFFFF83FF80000000007FFF00000
      0FFFF8000000003FE0000000003FFE0FFFFFF07FFFFE00007FFFFC000A00007F
      F0000000001FFFF0000003FFFFFE00007FFFFE00170000FFF0000000003FFFF0
      000003FFFFFFF00FFFFFFF007F8001FFFF800000000FFFFFFFFFFFFFFF800000
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
  inherited ILEdicao: TImageList
    Top = 350
  end
  inherited TConsulta: TIBTransaction
    Top = 136
  end
  inherited SQLConsulta: TIBSQL
    Top = 136
  end
  inherited TEdicao: TIBTransaction
    Top = 136
  end
  inherited SQLEdicao: TIBSQL
    Top = 136
  end
  object rom_ite: TIBQuery [14]
    Database = DMDados.IBDB
    Transaction = TConsulta
    AfterOpen = rom_iteAfterOpen
    AfterScroll = rom_iteAfterScroll
    BufferChunks = 2500
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT   PK.* FROM VW_PED_VEN_ITE AS PK'
      'WHERE    PK.IDEP = :IDEP'
      'AND      PK.IDPK = :IDPK'
      'ORDER BY PK.ITEM')
    Left = 96
    Top = 232
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'IDEP'
        ParamType = ptUnknown
        Size = 2
      end
      item
        DataType = ftLargeint
        Name = 'IDPK'
        ParamType = ptUnknown
        Size = 8
      end>
    object rom_iteID: TIntegerField
      FieldName = 'ID'
      Origin = '"VW_PED_VEN_ITE"."ID"'
    end
    object rom_iteIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"VW_PED_VEN_ITE"."IDEP"'
    end
    object rom_iteIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"VW_PED_VEN_ITE"."IDCA"'
    end
    object rom_iteDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"VW_PED_VEN_ITE"."DTCA"'
    end
    object rom_iteIDED: TSmallintField
      FieldName = 'IDED'
      Origin = '"VW_PED_VEN_ITE"."IDED"'
    end
    object rom_iteDTED: TDateTimeField
      FieldName = 'DTED'
      Origin = '"VW_PED_VEN_ITE"."DTED"'
    end
    object rom_iteIDST: TSmallintField
      FieldName = 'IDST'
      Origin = '"VW_PED_VEN_ITE"."IDST"'
    end
    object rom_iteDTST: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'DTST'
      Origin = '"VW_PED_VEN_ITE"."DTST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object rom_iteCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"VW_PED_VEN_ITE"."CDST"'
    end
    object rom_iteREST: TIBStringField
      FieldName = 'REST'
      Origin = '"VW_PED_VEN_ITE"."REST"'
      Size = 10
    end
    object rom_iteDEST: TIBStringField
      FieldName = 'DEST'
      Origin = '"VW_PED_VEN_ITE"."DEST"'
      Size = 60
    end
    object rom_iteIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"VW_PED_VEN_ITE"."IDPK"'
    end
    object rom_iteIDFK: TLargeintField
      FieldName = 'IDFK'
      Origin = '"VW_PED_VEN_ITE"."IDFK"'
    end
    object rom_iteITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Origin = '"VW_PED_VEN_ITE"."ITEM"'
    end
    object rom_iteIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"VW_PED_VEN_ITE"."IDCP"'
    end
    object rom_iteIDAK: TLargeintField
      FieldName = 'IDAK'
      Origin = '"VW_PED_VEN_ITE"."IDAK"'
    end
    object rom_iteIDEK: TLargeintField
      FieldName = 'IDEK'
      Origin = '"VW_PED_VEN_ITE"."IDEK"'
    end
    object rom_iteIDSK: TLargeintField
      FieldName = 'IDSK'
      Origin = '"VW_PED_VEN_ITE"."IDSK"'
    end
    object rom_iteCP_IDEP: TSmallintField
      FieldName = 'CP_IDEP'
      Origin = '"VW_PED_VEN_ITE"."CP_IDEP"'
    end
    object rom_iteCP_DEEP: TIBStringField
      FieldName = 'CP_DEEP'
      Origin = '"VW_PED_VEN_ITE"."CP_DEEP"'
      Size = 60
    end
    object rom_iteARTIGO: TIBStringField
      FieldName = 'ARTIGO'
      Origin = '"VW_PED_VEN_ITE"."ARTIGO"'
      Size = 30
    end
    object rom_iteNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"VW_PED_VEN_ITE"."NCM"'
      Size = 8
    end
    object rom_itePIPI: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'PIPI'
      Origin = '"VW_PED_VEN_ITE"."PIPI"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object rom_iteVIPI: TIBBCDField
      FieldName = 'VIPI'
      Origin = '"VW_PED_VEN_ITE"."VIPI"'
      Precision = 18
      Size = 2
    end
    object rom_iteCEST: TIBStringField
      FieldName = 'CEST'
      Origin = '"VW_PED_VEN_ITE"."CEST"'
      Size = 7
    end
    object rom_iteEXTIPI: TIBStringField
      FieldName = 'EXTIPI'
      Origin = '"VW_PED_VEN_ITE"."EXTIPI"'
      Size = 3
    end
    object rom_iteSKU: TIBStringField
      FieldName = 'SKU'
      Origin = '"VW_PED_VEN_ITE"."SKU"'
      Size = 30
    end
    object rom_iteCEAN: TIBStringField
      FieldName = 'CEAN'
      Origin = '"VW_PED_VEN_ITE"."CEAN"'
    end
    object rom_iteDECP: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DECP'
      Origin = '"VW_PED_VEN_ITE"."DECP"'
      Size = 120
    end
    object rom_iteDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldKind = fkInternalCalc
      FieldName = 'DGCP'
      Origin = '"VW_PED_VEN_ITE"."DGCP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object rom_iteCMP_PAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'CMP_PAD'
      Origin = '"VW_PED_VEN_ITE"."CMP_PAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object rom_iteCF_ID: TSmallintField
      FieldName = 'CF_ID'
      Origin = '"VW_PED_VEN_ITE"."CF_ID"'
    end
    object rom_iteCF_NO: TIBStringField
      FieldName = 'CF_NO'
      Origin = '"VW_PED_VEN_ITE"."CF_NO"'
      Size = 60
    end
    object rom_iteCF_SKU: TIBStringField
      FieldName = 'CF_SKU'
      Origin = '"VW_PED_VEN_ITE"."CF_SKU"'
      Size = 30
    end
    object rom_iteCF_CEAN: TIBStringField
      FieldName = 'CF_CEAN'
      Origin = '"VW_PED_VEN_ITE"."CF_CEAN"'
    end
    object rom_iteUCOM: TIBStringField
      DisplayLabel = 'UN'
      FieldName = 'UCOM'
      Origin = '"VW_PED_VEN_ITE"."UCOM"'
      Size = 10
    end
    object rom_iteUPESO: TIBBCDField
      FieldName = 'UPESO'
      Origin = '"VW_PED_VEN_ITE"."UPESO"'
      Precision = 9
      Size = 2
    end
    object rom_iteUPSCN: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'UPSCN'
      Origin = '"VW_PED_VEN_ITE"."UPSCN"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object rom_iteUMETRO: TIBBCDField
      FieldName = 'UMETRO'
      Origin = '"VW_PED_VEN_ITE"."UMETRO"'
      Precision = 9
      Size = 2
    end
    object rom_iteUREND: TIBBCDField
      FieldName = 'UREND'
      Origin = '"VW_PED_VEN_ITE"."UREND"'
      Precision = 9
      Size = 2
    end
    object rom_iteEPE_QTDE: TIBBCDField
      DisplayLabel = 'Dispon'#237'vel'
      FieldName = 'EPE_QTDE'
      Origin = '"VW_PED_VEN_ITE"."EPE_QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object rom_iteEPE_QTRL: TIntegerField
      DisplayLabel = 'Itens'
      FieldName = 'EPE_QTRL'
      Origin = '"VW_PED_VEN_ITE"."EPE_QTRL"'
      DisplayFormat = '0'
    end
    object rom_iteQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = '"VW_PED_VEN_ITE"."QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object rom_iteQTRL: TIntegerField
      FieldName = 'QTRL'
      Origin = '"VW_PED_VEN_ITE"."QTRL"'
    end
    object rom_iteVPRC_PAD_INI: TFloatField
      FieldName = 'VPRC_PAD_INI'
      Origin = '"VW_PED_VEN_ITE"."VPRC_PAD_INI"'
      DisplayFormat = 'R$ ,##,0.00'
    end
    object rom_iteVPRC_PAD_FIM: TFloatField
      FieldName = 'VPRC_PAD_FIM'
      Origin = '"VW_PED_VEN_ITE"."VPRC_PAD_FIM"'
      DisplayFormat = 'R$ ,##,0.00'
    end
    object rom_iteVPRC_PAD: TFloatField
      FieldName = 'VPRC_PAD'
      Origin = '"VW_PED_VEN_ITE"."VPRC_PAD"'
      DisplayFormat = 'R$ ,##,0.00###'
    end
    object rom_iteVPRC_COM: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'VPRC_COM'
      Origin = '"VW_PED_VEN_ITE"."VPRC_COM"'
      DisplayFormat = 'R$ ,##,0.00###'
    end
    object rom_itePDSC: TIBBCDField
      DisplayLabel = 'Desc. %'
      FieldName = 'PDSC'
      Origin = '"VW_PED_VEN_ITE"."PDSC"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object rom_iteVDSC: TIBBCDField
      DisplayLabel = 'Desc. R$'
      FieldName = 'VDSC'
      Origin = '"VW_PED_VEN_ITE"."VDSC"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object rom_iteTSDE: TIBBCDField
      DisplayLabel = 'Sub Total R$'
      FieldName = 'TSDE'
      Origin = '"VW_PED_VEN_ITE"."TSDE"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object rom_iteTCDE: TIBBCDField
      DisplayLabel = 'Total R$'
      FieldName = 'TCDE'
      Origin = '"VW_PED_VEN_ITE"."TCDE"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object rom_itePSBR: TIBBCDField
      FieldName = 'PSBR'
      Origin = '"VW_PED_VEN_ITE"."PSBR"'
      Precision = 18
      Size = 3
    end
    object rom_itePSLQ: TIBBCDField
      FieldName = 'PSLQ'
      Origin = '"VW_PED_VEN_ITE"."PSLQ"'
      Precision = 18
      Size = 3
    end
    object rom_iteIDSP: TSmallintField
      FieldName = 'IDSP'
      Origin = '"VW_PED_VEN_ITE"."IDSP"'
    end
    object rom_iteDTSP: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTSP'
      Origin = '"VW_PED_VEN_ITE"."DTSP"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object rom_iteCDSP: TLargeintField
      FieldName = 'CDSP'
      Origin = '"VW_PED_VEN_ITE"."CDSP"'
    end
    object rom_iteDESP: TIBStringField
      DisplayLabel = 'Separador'
      FieldKind = fkInternalCalc
      FieldName = 'DESP'
      Origin = '"VW_PED_VEN_ITE"."DESP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object rom_iteQTSP: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTSP'
      Origin = '"VW_PED_VEN_ITE"."QTSP"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object rom_iteRLSP: TIntegerField
      FieldName = 'RLSP'
      Origin = '"VW_PED_VEN_ITE"."RLSP"'
    end
    object rom_iteVTSP: TIBBCDField
      DisplayLabel = 'Total R$'
      FieldName = 'VTSP'
      Origin = '"VW_PED_VEN_ITE"."VTSP"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object rom_iteCOL_ID: TIntegerField
      FieldName = 'COL_ID'
      Origin = '"VW_PED_VEN_ITE"."COL_ID"'
    end
    object rom_iteCOL_NO: TIBStringField
      FieldName = 'COL_NO'
      Origin = '"VW_PED_VEN_ITE"."COL_NO"'
      Size = 30
    end
    object rom_iteGRP_ID: TIntegerField
      FieldName = 'GRP_ID'
      Origin = '"VW_PED_VEN_ITE"."GRP_ID"'
    end
    object rom_iteGRP_NO: TIBStringField
      FieldName = 'GRP_NO'
      Origin = '"VW_PED_VEN_ITE"."GRP_NO"'
      Size = 30
    end
    object rom_iteCAT_ID: TIntegerField
      FieldName = 'CAT_ID'
      Origin = '"VW_PED_VEN_ITE"."CAT_ID"'
    end
    object rom_iteCAT_NO: TIBStringField
      FieldName = 'CAT_NO'
      Origin = '"VW_PED_VEN_ITE"."CAT_NO"'
      Size = 30
    end
    object rom_iteORIG: TSmallintField
      FieldName = 'ORIG'
      Origin = '"VW_PED_VEN_ITE"."ORIG"'
    end
    object rom_iteCPAIS: TSmallintField
      FieldName = 'CPAIS'
      Origin = '"VW_PED_VEN_ITE"."CPAIS"'
    end
    object rom_iteXPAIS: TIBStringField
      FieldName = 'XPAIS'
      Origin = '"VW_PED_VEN_ITE"."XPAIS"'
      Size = 60
    end
    object rom_iteXPAIS_ABREV: TIBStringField
      FieldName = 'XPAIS_ABREV'
      Origin = '"VW_PED_VEN_ITE"."XPAIS_ABREV"'
      Size = 30
    end
    object rom_iteFPAIS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FPAIS'
      Origin = '"VW_PED_VEN_ITE"."FPAIS"'
      ProviderFlags = []
      ReadOnly = True
    end
    object rom_iteINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_PED_VEN_ITE"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 812
    end
    object rom_iteIP: TIBStringField
      FieldName = 'IP'
      Origin = '"VW_PED_VEN_ITE"."IP"'
      Size = 30
    end
    object rom_iteHOST: TIBStringField
      FieldName = 'HOST'
      Origin = '"VW_PED_VEN_ITE"."HOST"'
      Size = 30
    end
  end
  object dtsrom_ite: TDataSource [15]
    DataSet = rom_ite
    OnDataChange = dtsrom_iteDataChange
    Left = 128
    Top = 232
  end
  object aux: TIBQuery [16]
    Database = DMDados.IBDB
    Transaction = TConsulta
    Left = 96
    Top = 296
  end
  inherited SPEdicao: TIBStoredProc
    Top = 136
  end
  inherited TEvent: TIBTransaction
    Top = 136
  end
  inherited SPEvent: TIBStoredProc
    Top = 136
  end
  inherited EEvent: TIBEvents
    Top = 136
  end
  object SQLFKEdicao: TIBSQL
    Database = DMDados.IBDB
    Transaction = TEdicao
    Left = 192
    Top = 168
  end
  object CAD_PRO_IMG_CDN: TIBQuery
    Database = DMDados.IBDB
    Transaction = TConsulta
    DataSource = dtsrom_ite
    SQL.Strings = (
      'SELECT CP_IMG.* FROM VW_CAD_PRO_IMG_CDN AS CP_IMG'
      'WHERE  CP_IMG.IMG_ID = :IDSK')
    Left = 96
    Top = 264
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'IDSK'
        ParamType = ptUnknown
        Size = 8
      end>
    object CAD_PRO_IMG_CDNIMG_ID: TLargeintField
      FieldName = 'IMG_ID'
      Origin = '"VW_CAD_PRO_CDN"."IMG_ID"'
    end
    object CAD_PRO_IMG_CDNIMG_PAD: TBlobField
      FieldName = 'IMG_PAD'
      Origin = '"VW_CAD_PRO_CDN"."IMG_PAD"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMG_CDNIMG_ILA_BMP1: TBlobField
      FieldName = 'IMG_ILA_BMP1'
      Origin = '"VW_CAD_PRO_CDN"."IMG_ILA_BMP1"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMG_CDND_ILA_INS1: TIBStringField
      FieldName = 'D_ILA_INS1'
      Origin = '"VW_CAD_PRO_CDN"."D_ILA_INS1"'
      Size = 120
    end
    object CAD_PRO_IMG_CDNIMG_ILA_BMP2: TBlobField
      FieldName = 'IMG_ILA_BMP2'
      Origin = '"VW_CAD_PRO_CDN"."IMG_ILA_BMP2"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMG_CDND_ILA_INS2: TIBStringField
      FieldName = 'D_ILA_INS2'
      Origin = '"VW_CAD_PRO_CDN"."D_ILA_INS2"'
      Size = 120
    end
    object CAD_PRO_IMG_CDNIMG_ILA_BMP3: TBlobField
      FieldName = 'IMG_ILA_BMP3'
      Origin = '"VW_CAD_PRO_CDN"."IMG_ILA_BMP3"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMG_CDND_ILA_INS3: TIBStringField
      FieldName = 'D_ILA_INS3'
      Origin = '"VW_CAD_PRO_CDN"."D_ILA_INS3"'
      Size = 120
    end
    object CAD_PRO_IMG_CDNIMG_ILA_BMP4: TBlobField
      FieldName = 'IMG_ILA_BMP4'
      Origin = '"VW_CAD_PRO_CDN"."IMG_ILA_BMP4"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMG_CDND_ILA_INS4: TIBStringField
      FieldName = 'D_ILA_INS4'
      Origin = '"VW_CAD_PRO_CDN"."D_ILA_INS4"'
      Size = 120
    end
    object CAD_PRO_IMG_CDNIMG_ILA_BMP5: TBlobField
      FieldName = 'IMG_ILA_BMP5'
      Origin = '"VW_CAD_PRO_CDN"."IMG_ILA_BMP5"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMG_CDND_ILA_INS5: TIBStringField
      FieldName = 'D_ILA_INS5'
      Origin = '"VW_CAD_PRO_CDN"."D_ILA_INS5"'
      Size = 120
    end
    object CAD_PRO_IMG_CDNIMG_ILA_BMP6: TBlobField
      FieldName = 'IMG_ILA_BMP6'
      Origin = '"VW_CAD_PRO_CDN"."IMG_ILA_BMP6"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMG_CDND_ILA_INS6: TIBStringField
      FieldName = 'D_ILA_INS6'
      Origin = '"VW_CAD_PRO_CDN"."D_ILA_INS6"'
      Size = 120
    end
    object CAD_PRO_IMG_CDNIMG_ILA_BMP7: TBlobField
      FieldName = 'IMG_ILA_BMP7'
      Origin = '"VW_CAD_PRO_CDN"."IMG_ILA_BMP7"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMG_CDND_ILA_INS7: TIBStringField
      FieldName = 'D_ILA_INS7'
      Origin = '"VW_CAD_PRO_CDN"."D_ILA_INS7"'
      Size = 120
    end
    object CAD_PRO_IMG_CDNIMG_ILA_BMP8: TBlobField
      FieldName = 'IMG_ILA_BMP8'
      Origin = '"VW_CAD_PRO_CDN"."IMG_ILA_BMP8"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMG_CDND_ILA_INS8: TIBStringField
      FieldName = 'D_ILA_INS8'
      Origin = '"VW_CAD_PRO_CDN"."D_ILA_INS8"'
      Size = 120
    end
  end
  object DTSCAD_PRO_IMG_CDN: TDataSource
    AutoEdit = False
    DataSet = CAD_PRO_IMG_CDN
    OnDataChange = DTSCAD_PRO_IMG_CDNDataChange
    Left = 128
    Top = 264
  end
end
