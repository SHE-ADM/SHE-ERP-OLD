inherited frmctr_pro: Tfrmctr_pro
  Left = 476
  Top = 154
  HelpType = htKeyword
  HelpKeyword = '5'
  HelpContext = 95
  Caption = 'Controle de Estoque'
  ClientHeight = 655
  ClientWidth = 1104
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMSG: TStatusBar
    Top = 636
    Width = 1104
  end
  inherited pnldir: TPanel
    Left = 1104
    Height = 561
  end
  inherited SBMenu: TSpeedBar
    Width = 1104
    inherited siPSQ: TSpeedItem [4]
      Left = 3
    end
    inherited siREF: TSpeedItem [5]
      Visible = False
    end
    inherited siSAIR: TSpeedItem [6]
      Left = 423
    end
    inherited siREL: TSpeedItem [7]
      Left = 339
    end
    object SINovo: TSpeedItem
      BtnCaption = 'Incluir'
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de Romaneio'
      ImageIndex = 4
      Spacing = 1
      Left = 171
      Top = 3
      Visible = True
      OnClick = SINovoClick
      SectionName = 'Movimento'
    end
    object SICancela: TSpeedItem
      BtnCaption = 'Cancelar'
      Cursor = crHandPoint
      Hint = 'Cancelamento de Romaneio'
      ImageIndex = 5
      Spacing = 1
      Left = 255
      Top = 3
      Visible = True
      OnClick = SICancelaClick
      SectionName = 'Movimento'
    end
    object SIProdutos: TSpeedItem
      BtnCaption = 'Produtos'
      Cursor = crHandPoint
      Hint = 'Cadastro de Produtos'
      ImageIndex = 6
      Spacing = 1
      Left = 87
      Top = 3
      Visible = True
      OnClick = SIProdutosClick
      SectionName = 'Movimento'
    end
  end
  inherited pnlpri: TPanel
    Width = 1104
    Height = 561
    inherited pnlbot: TPanel
      Top = 257
      Width = 1104
      Height = 304
      Align = alClient
      Visible = True
      object GBFKCadastro: TGroupBox
        Left = 0
        Top = 0
        Width = 1104
        Height = 304
        Align = alClient
        Caption = '  Itens do Romaneio  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object DBGFKConsulta: TdxDBGrid
          Left = 2
          Top = 15
          Width = 1100
          Height = 287
          Bands = <
            item
              Caption = 'Produtos'
            end
            item
              Alignment = taLeftJustify
              Caption = 'Opera'#231#227'o'
            end
            item
              Caption = 'Saldo Estoque'
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'ID'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          BorderStyle = bsNone
          Color = 14473946
          Ctl3D = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          AutoSearchColor = 9395
          AutoSearchTextColor = clWhite
          BandColor = clGray
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWhite
          BandFont.Height = -12
          BandFont.Name = 'Tahoma'
          BandFont.Style = [fsBold]
          DataSource = DTSFKCadastro
          Filter.Active = True
          Filter.Criteria = {00000000}
          GridLineColor = clSilver
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          HideSelectionColor = 14789952
          HighlightColor = 14789952
          LookAndFeel = lfUltraFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'Tahoma'
          PreviewFont.Style = []
          ShowBands = True
          ShowGrid = False
          OnCustomDrawCell = DBGFKConsultaCustomDrawCell
          object DBGFKConsultaITEM: TdxDBGridMaskColumn
            Color = clGray
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 40
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ITEM'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
            DisableFilter = True
          end
          object DBGFKConsultaARTIGO: TdxDBGridMaskColumn
            Color = clGray
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MinWidth = 60
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ARTIGO'
          end
          object DBGFKConsultaSKU: TdxDBGridMaskColumn
            Color = clWhite
            MinWidth = 60
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SKU'
          end
          object DBGFKConsultaDGCP: TdxDBGridMaskColumn
            Color = clWhite
            MinWidth = 100
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DGCP'
          end
          object DBGFKConsultaDECP: TdxDBGridMaskColumn
            Color = clWhite
            MinWidth = 200
            Width = 300
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DECP'
          end
          object DBGFKConsultaDEST: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEST'
          end
          object DBGFKConsultaREOP: TdxDBGridMaskColumn
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 50
            BandIndex = 1
            RowIndex = 0
            FieldName = 'REOP'
          end
          object DBGFKConsultaQTDE: TdxDBGridColumn
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 80
            BandIndex = 1
            RowIndex = 0
            FieldName = 'QTDE'
            SummaryFooterType = cstSum
            SummaryFooterField = 'QTDE'
            SummaryFooterFormat = ',##,0.00'
            DisableFilter = True
          end
          object DBGFKConsultaQTRL: TdxDBGridMaskColumn
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 50
            BandIndex = 1
            RowIndex = 0
            FieldName = 'QTRL'
            SummaryFooterType = cstSum
            SummaryFooterField = 'QTRL'
            SummaryFooterFormat = '0'
            DisableFilter = True
          end
          object DBGFKConsultaQTDS: TdxDBGridMaskColumn
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 80
            BandIndex = 1
            RowIndex = 0
            FieldName = 'QTDS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'QTDS'
            SummaryFooterFormat = ',##,0.00'
            DisableFilter = True
          end
          object DBGFKConsultaQTRS: TdxDBGridMaskColumn
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 50
            BandIndex = 1
            RowIndex = 0
            FieldName = 'QTRS'
            SummaryFooterType = cstSum
            SummaryFooterField = 'QTRS'
            SummaryFooterFormat = '0'
            DisableFilter = True
          end
          object DBGFKConsultaEST_QTDE: TdxDBGridMaskColumn
            Color = clSilver
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 80
            BandIndex = 2
            RowIndex = 0
            FieldName = 'EST_QTDE'
            DisableFilter = True
          end
          object DBGFKConsultaEST_QTRL: TdxDBGridMaskColumn
            Color = clSilver
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 50
            BandIndex = 2
            RowIndex = 0
            FieldName = 'EST_QTRL'
            DisableFilter = True
          end
        end
      end
    end
    inherited pnldbg: TPanel
      Width = 1104
      Height = 257
      Align = alTop
      inherited gbDET: TGroupBox
        Width = 894
        Height = 257
        Caption = '  Romaneio  '
        ParentFont = False
        inherited SBEdicao: TSpeedBar
          Width = 0
          Height = 240
          ParentFont = False
          Visible = False
        end
        inherited DBGConsulta: TdxDBGrid
          Left = 2
          Width = 890
          Height = 240
          Bands = <
            item
              Alignment = taLeftJustify
              Caption = 'Romaneios'
            end
            item
              Caption = 'Lan'#231'amentos'
            end
            item
              Caption = 'Emissor'
            end>
          DefaultLayout = False
          KeyField = 'CDRO'
          ShowSummaryFooter = True
          ParentFont = False
          BandColor = clGray
          BandFont.Color = clWhite
          BandFont.Height = -12
          BandFont.Style = [fsBold]
          Filter.Active = True
          Filter.Criteria = {00000000}
          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
          ShowBands = True
          ShowGrid = False
          OnCustomDrawCell = DBGConsultaCustomDrawCell
          object DBGConsultaCDRO: TdxDBGridMaskColumn
            Alignment = taLeftJustify
            Color = clGray
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CDRO'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
          end
          object DBGConsultaDTCA: TdxDBGridDateColumn
            Color = clGray
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DTCA'
          end
          object DBGConsultaDEEP: TdxDBGridMaskColumn
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEEP'
          end
          object DBGConsultaREST: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REST'
          end
          object DBGConsultaDEST: TdxDBGridMaskColumn
            MinWidth = 65
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEST'
          end
          object DBGConsultaDEOP: TdxDBGridMaskColumn
            MinWidth = 100
            Width = 100
            BandIndex = 1
            RowIndex = 0
            FieldName = 'DEOP'
          end
          object DBGConsultaDETP: TdxDBGridMaskColumn
            MinWidth = 100
            Width = 100
            BandIndex = 1
            RowIndex = 0
            FieldName = 'DETP'
          end
          object DBGConsultaQTDE: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HeaderAlignment = taRightJustify
            Width = 80
            BandIndex = 1
            RowIndex = 0
            FieldName = 'QTDE'
            SummaryFooterType = cstSum
            SummaryFooterField = 'QTDE'
            SummaryFooterFormat = ',##,0.00'
            DisableFilter = True
          end
          object DBGConsultaQTRL: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HeaderAlignment = taRightJustify
            Width = 50
            BandIndex = 1
            RowIndex = 0
            FieldName = 'QTRL'
            SummaryFooterType = cstSum
            SummaryFooterField = 'QTRL'
            SummaryFooterFormat = '0'
            DisableFilter = True
          end
          object DBGConsultaLGCA: TdxDBGridMaskColumn
            Width = 100
            BandIndex = 2
            RowIndex = 0
            FieldName = 'LGCA'
          end
          object DBGConsultaDECE: TdxDBGridMaskColumn
            Width = 110
            BandIndex = 2
            RowIndex = 0
            FieldName = 'DECE'
          end
        end
      end
      object PNLAmostras: TPanel
        Left = 894
        Top = 0
        Width = 210
        Height = 257
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
          Width = 210
          Height = 257
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
              Left = 7
              Top = 10
              Width = 198
              Height = 215
              Cursor = crHandPoint
              Hint = 'Click na imagem para ver em tamanho maior'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = IMG_PADClick
              object IMG_PAD: TImage
                Left = 7
                Top = 7
                Width = 183
                Height = 202
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
              Left = 7
              Top = 10
              Width = 198
              Height = 215
              Hint = 'Deixe a seta sob a imagem para visualizar instru'#231#227'o'
              TabOrder = 0
              object BILA_BMP1: TBevel
                Left = 4
                Top = 10
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP2: TBevel
                Left = 42
                Top = 10
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP3: TBevel
                Left = 80
                Top = 10
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP4: TBevel
                Left = 118
                Top = 10
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP5: TBevel
                Left = 156
                Top = 10
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP6: TBevel
                Left = 4
                Top = 68
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP7: TBevel
                Left = 42
                Top = 68
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object BILA_BMP8: TBevel
                Left = 4
                Top = 126
                Width = 36
                Height = 36
                Cursor = crHandPoint
                Style = bsRaised
              end
              object DBILA_BMP1: TDBImage
                Left = 6
                Top = 12
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
                Top = 12
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
                Top = 12
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
                Top = 12
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
                Top = 12
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
                Top = 70
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
                Top = 70
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
                Top = 128
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
  end
  inherited Consulta: TIBQuery
    Left = 448
    Top = 184
  end
  inherited DTSCadastro: TDataSource
    AutoEdit = False
    OnDataChange = DTSCadastroDataChange
    Left = 480
    Top = 216
  end
  inherited Cadastro: TIBQuery
    SQL.Strings = (
      'SELECT   PK.* FROM VW_CAD_PRO_EST_RPK AS PK'
      'WHERE    PK.DTCA >= DATEADD( - 30 DAY TO CURRENT_DATE )'
      'ORDER BY PK.DTCA DESC')
    Left = 448
    Top = 216
    object CadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"VW_CAD_PRO_EST_FIS_RPK"."ID"'
    end
    object CadastroIDEP: TIntegerField
      FieldName = 'IDEP'
      Origin = '"VW_CAD_PRO_EST_FIS_RPK"."IDEP"'
    end
    object CadastroDEEP: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'DEEP'
      Origin = '"VW_CAD_PRO_EST_FIS_RPK"."DEEP"'
      Size = 60
    end
    object CadastroIDCA: TIntegerField
      FieldName = 'IDCA'
      Origin = '"VW_CAD_PRO_EST_FIS_RPK"."IDCA"'
    end
    object CadastroLGCA: TIBStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'LGCA'
      Origin = '"VW_CAD_PRO_EST_FIS_RPK"."LGCA"'
      Size = 30
    end
    object CadastroDTCA: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTCA'
      Origin = '"VW_CAD_PRO_EST_FIS_RPK"."DTCA"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object CadastroIDST: TSmallintField
      FieldName = 'IDST'
      Origin = '"VW_CAD_PRO_EST_RPK"."IDST"'
    end
    object CadastroDTST: TDateTimeField
      FieldName = 'DTST'
      Origin = '"VW_CAD_PRO_EST_RPK"."DTST"'
    end
    object CadastroCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"VW_CAD_PRO_EST_RPK"."CDST"'
    end
    object CadastroREST: TIBStringField
      FieldName = 'REST'
      Origin = '"VW_CAD_PRO_EST_RPK"."REST"'
      Size = 10
    end
    object CadastroDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'DEST'
      Origin = '"VW_CAD_PRO_EST_RPK"."DEST"'
      Size = 60
    end
    object CadastroIDCE: TIntegerField
      FieldName = 'IDCE'
      Origin = '"VW_CAD_PRO_EST_RPK"."IDCE"'
    end
    object CadastroDECE: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'DECE'
      Origin = '"VW_CAD_PRO_EST_RPK"."DECE"'
      Size = 60
    end
    object CadastroCDRO: TLargeintField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CDRO'
      Origin = '"VW_CAD_PRO_EST_FIS_RPK"."CDRO"'
      DisplayFormat = '0'
    end
    object CadastroDTRO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTRO'
      Origin = '"VW_CAD_PRO_EST_FIS_RPK"."DTRO"'
      DisplayFormat = 'dd/mm/yy'
    end
    object CadastroCDTP: TSmallintField
      FieldName = 'CDTP'
      Origin = '"VW_CAD_PRO_EST_RPK"."CDTP"'
    end
    object CadastroRETP: TIBStringField
      FieldName = 'RETP'
      Origin = '"VW_CAD_PRO_EST_RPK"."RETP"'
      Size = 10
    end
    object CadastroDETP: TIBStringField
      DisplayLabel = 'Tipo Estoque'
      FieldName = 'DETP'
      Origin = '"VW_CAD_PRO_EST_RPK"."DETP"'
      Size = 40
    end
    object CadastroCDOP: TSmallintField
      FieldName = 'CDOP'
      Origin = '"VW_CAD_PRO_EST_RPK"."CDOP"'
    end
    object CadastroREOP: TIBStringField
      FieldName = 'REOP'
      Origin = '"VW_CAD_PRO_EST_RPK"."REOP"'
      Size = 10
    end
    object CadastroDEOP: TIBStringField
      DisplayLabel = 'Tipo Opera'#231#227'o'
      FieldName = 'DEOP'
      Origin = '"VW_CAD_PRO_EST_FIS_RPK"."DEOP"'
      Size = 15
    end
    object CadastroD_DEOP: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'D_DEOP'
      Origin = '"VW_CAD_PRO_EST_RPK"."D_DEOP"'
      Size = 121
    end
    object CadastroQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = '"VW_CAD_PRO_EST_FIS_RPK"."QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object CadastroQTRL: TIntegerField
      DisplayLabel = 'Itens'
      FieldName = 'QTRL'
      Origin = '"VW_CAD_PRO_EST_FIS_RPK"."QTRL"'
      DisplayFormat = '0'
    end
    object CadastroINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_CAD_PRO_EST_FIS_RPK"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 1064
    end
  end
  inherited ILMenu: TImageList
    Left = 596
    Top = 198
    Bitmap = {
      494C010107000900040030003000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FDFDFD00FEFEFD00FFFFFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C5C8C600A7ACAC00A8ADAC00A7ABAB00A7AC
      AA00A7ABAB00A8ADAC00A8ADAB00A9AEAD00AAAEAD00AAAEAD00AAAEAC00ABAE
      AF00AAAEAD00ABAFAE00ACAFAF00ACAFAF00ABAFAE00ABAFAF00ABAFAE00ACB0
      AF00ACB0AF00ACB1AF00ABB1AF00ABB0AF00AEB2B100AEB2B100AEB2B000ADB1
      B000ADB1AF00A9AEAB00A9ADAD00AEB2B100B0B3B300CACDCA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8E7E700C3BFBE00B6B2B100BDB8B700C4C2C000CFCDCA00D8D7
      D400E2DFDF00EBE9E900F1F0F000F7F6F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CAD0D200B6BFC300BDC5C800BEC6C900BEC7
      C900BEC6C900BFC7C900BFC7CA00C0C8CB00C1C8CA00C1C8CB00C1C9CC00C2C9
      CC00C2CACC00C4C9CD00C4C9CD00C3CBCD00C4CACC00C4CACC00C4CACC00C2C9
      CC00C3C9CC00C2C9CC00C1C7CA00C4CBCC00ABB5BE00A5AFBA00A5B0BB00A7B2
      BB00B4BDC400A7B1BA009CA4AF00A8B0B700ABB3B900C4C8C600FFFFFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF0AFF00FA4CFA00EF3BEF00EB36EB00EB36EB00EB36
      EB00EB36EB00EB36EB00EB36EB00EB36EB00EB36EB00EB36EB00EB36EB00EB36
      EB00EB36EB00EB36EB00EB36EB00EB36EB00EB36EB00EB36EB00EB36EB00EA35
      EA00F03BF000FC47FC00FA46FA00FE4DFE00FF2FFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1CFCE00A9A3A300CFCBCD00D4D2D200C2C0BF00B7B2B200AAA6
      A600A7A2A300AAA7A700B4B0AF00BBB8B700C7C3C300D1CFCD00DEDBDA00E8E8
      E600F0F0EE00F6F6F500FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CBD1D200B5BFC100BAC3C500BAC3C500BAC3
      C500BAC3C500BAC3C500BAC3C400BAC3C400B9C2C400B9C2C400B9C2C400BAC2
      C400BAC2C400BAC2C400B9C2C400BAC2C400B9C2C400B9C2C300B9C2C400B8C2
      C400B9C2C400B9C2C400B8C1C400BEC6C7009FABB40095A2AF009DA8B300A3AD
      B600AAB4BB00B1BBC100ABB4B900ABB1B20098A1A800CFD1D100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF22FF00FFC3FF00DBADDB00B5D1B50092A8920083988300819681008197
      8100819781008197810081978100819781008197810081978100809580008095
      8000809580008095800080958000809580008095800080958000809580007C91
      7C009DB29D00C7DCC700CDE2CD00E7FFE700F7F0F700FFC5FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C7C4C300B4B0B000F7F8F8000000000000000000FCFCFB00F8F8
      F900F9F8F900F4F5F400DCDAD900BBB7B700A4A0A2009F9A9A00A59E9E00ADAA
      A900B7B2B100C4C1BE00DEDDDC00FDFCFC00FBFBFB00FDFDFD00FEFEFE00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CDD1D300B8BFC200BDC3C600BCC3C600BCC3
      C600BCC3C600BCC3C600BCC3C500BCC3C600BCC3C500BCC3C500BCC3C500BCC3
      C500BCC3C500BCC3C500BCC3C500BCC2C600BBC3C400BBC3C500BBC3C400BBC3
      C400BBC3C400BBC3C400BBC3C400C0C7C700A7B0B9009FAAB400A8B3BA00ADB7
      BC00B2BABF00ADB7BD00919EAD00C0C8C9009FA9B200DBDDDD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF23
      FF00EFFFEF00A7B1A70092999200C0C0C000EEEEEE00FEFEFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F9F9F900C2C2C200A5A5A500ABABAB00B2B5B200D5E6D500FFEAFF00FF07
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BBB6B500BBB8B8000000000000000000FEFEFE00FEFEFF000000
      0000000000000000000000000000FDFEFE00FCFCFC00FCFCFC00F6F5F500E7E5
      E600DEDBDC00D1D0D100CCC8C800CBC8C700CBC8C700D0CECD00D4D2D000D8D4
      D300DEDCDA00E2E1E000E6E5E400EEEDEC00EFEEEE00F2F1F100F3F2F200F5F5
      F400F7F7F700F9F9F900FBFBFB00FCFCFC00FCFCFC00FDFCFC00FEFEFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CED2D300B8C2C400BDC6C700BDC5C700BDC5
      C700BDC5C700BDC5C700BDC5C700BDC5C800BCC5C700BCC5C700BCC5C700BCC5
      C700BCC5C700BCC5C700BCC5C700BCC5C700BCC4C700BCC4C700BCC4C700BCC4
      C700BCC4C700BCC4C700BCC4C700C2C9CB009EAAB60098A4B200A0ABB7009FAB
      B600B0B9BF00919FAF00687B9700B2BCC100A5B0B800DFE2E200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEB7
      FE00A0AAA000AAAAAA00F7F7F700F1F1F100E7E7E700E3E3E300E4E4E400E3E3
      E300E4E4E400E4E4E400E3E3E300E4E4E400E6E6E600E6E6E600E6E6E600E6E6
      E600E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E8E8E800F0F0F000C2C2C200A0A0A000B9B9B9009C9C9C00DFFCDF00FF44
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B1ABAB00C2C0C10000000000FDFDFD00FCFCFC00FEFEFE00FEFE
      FE00FEFEFE00FDFDFE00FEFEFE0000000000000000000000000000000000FEFE
      FF00FEFEFF00000000000000000000000000F9F8F800F0EFEE00E9E7E800E7E6
      E600E8E7E700E2E2E100DCDBD900D8D6D500D6D4D300D6D5D500D6D3D200D2D0
      CF00D1CDCC00CDCACA00CECBCA00D2CFCE00D7D5D300DBD9D900E1E0DE00EAEA
      E700FAFBFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0D3D600BBC3C600C0C7C900C0C6C900C0C6
      C900C0C6C900C0C6C900C0C6C900C0C7C900C0C6C900C0C6C900C0C6C900C0C6
      C900C0C6C900C0C6C900C0C6C900C0C6C900BFC6C900BFC6C900BFC6C900BFC6
      C800BFC6C800BFC6C800BEC6C800C2C8CA00B2BBC200BAC3C600B9C1C500B4BD
      C300B9C1C500B6BFC400B8C1C500B5BEC300B3BBC000DDE0E200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FC44FC00B2D2
      B200AAAAAA00F7F7F700E4E4E400E4E4E400E5E5E500E6E6E600E5E5E500E6E6
      E600E6E6E600E7E7E700E9E9E900E9E9E900E8E8E800E8E8E800E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900F1F1F100ADADAD00BBBBBB00C2C2C20099999900CEF8
      CE00FF43FF00FF15FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E4E3E100A5A09E00D6D7D70000000000FCFCFC00FDFDFD00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FFFFFD00ECEAF800E4E3F70000000000FDFEFB00FAFA
      FA00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FBFBFB00FDFDFD00FDFD
      FD00FDFDFD00FBFBFB00F9FAFA00F9F9F900FAFAFA00F9F9F900F8F9F900F7F7
      F500F2F2F200F0EFEE00EFEEEE00EAE9E800E1E1DF00DBDAD900D5D2D200CFCD
      CC00F0EFEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D1D5D700BEC5C800C1C8CB00C1C8CB00C1C8
      CB00C1C8CB00C1C8CB00C1C8CB00C1C8CB00C1C8CB00C1C8CB00C1C8CB00C1C8
      CB00C1C8CB00C1C8CB00C1C8CB00C1C8CB00C1C7CA00C1C7CA00C1C7CA00C1C7
      CA00C1C7CA00C1C7CA00C1C7CA00C1C7CA00C3CACB00C2C9CB00C2C9CB00C3C9
      CB00C2C8CB00C2C9CB00C3CACB00C3C9CB00BCC2C500DEE0E100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E3C3E30098A0
      9800F0F0F000EAEAEA00E5E5E500E6E6E600E5E5E500E6E6E600E7E7E700E8E8
      E800E8E8E800E9E9E900E8E8E800E9E9E900EAEAEA00EAEAEA00EAEAEA00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EDEDED00E1E1E100A4A4A400D4D4D400B9B9B9009595
      9500E5FFE500FF42FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D3CFCE009B969400F2F1F20000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FDFDFD00FFFFFC00DCD9F400736DDD00B2AEEC00F4F4FB00FFFF
      FC00FCFBFC00FCFCFC00FCFCFC00FCFCFC00FAFAFA00F9F9F900FBFBFB00F9F9
      F900F8F8F800F9F9F900FAFAFA00FAFAFA00FAFAFA00FAFAFA00F9F9F900F8F8
      F800FAFAFA00FAFAFA00F8F8F900F9FAFA00FCFBFB00FDFDFD00FCFCFD00FBFB
      FA00FCFCFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D2D7D900C0C8CB00C4CBCE00C4CBCE00C4CB
      CE00C4CBCE00C4CBCE00C4CBCE00C4CBCE00C4CBCE00C4CBCE00C4CBCE00C4CB
      CE00C4CACE00C4CACE00C4CACE00C4CACE00C3CACD00C3CACD00C3CACD00C3CA
      CD00C3CACD00C3CACD00C3CACD00C3CACD00C3CACD00C3CACD00C3CACD00C3CA
      CD00C3CACD00C3CACD00C3CACD00C3CACD00BCC5C800DFE2E400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BAE1BA00B5B5
      B500FAFAFA00E5E5E500E5E5E500E6E6E600E7E7E700E8E8E800E9E9E900E9E9
      E900E9E9E900EAEAEA00EBEBEB00EBEBEB00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00ECECEC00ECECEC00ECECEC00F6F6F6009C9C9C00DCDCDC00DEDEDE00BDBD
      BD009F9F9F00E2FFE200FF1CFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CCC7C7009C979700FDFDFE0000000000FEFEFE00FEFEFE00FEFEFE00FDFD
      FD00FCFCFC00FBFBFB00FFFFFD00EDEBF900857FE000756FDC00ACA6EB00FFFF
      FC00FCFCFC00FCFCFC00FBFBFB00FBFBFB00FAFAFA00FBFBFB00F9F9F900F9F9
      F900F9F9F900FAFAFA00FAFAFA00FAFAFA00F9F9F900F8F8F800F7F7F700F8F8
      F800F8F8F800F7F7F700F7F7F700F8F7F700F7F7F700F7F7F700F8F8F800F5F5
      F600F9F9F9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D4D8DA00C3C9CE00C7CCD100C7CCD000C7CC
      D000C7CCD000C7CCD000C7CCD000C7CCD100C7CCD000C7CCD100C7CCD000C7CC
      D000C7CCD000C7CCD000C7CCD000C7CCD000C5CDCF00C5CDCF00C5CDCF00C5CD
      CF00C5CDCF00C5CDCF00C5CDCF00C5CDCF00C6CDCF00C5CCCF00C5CCCF00C5CC
      CF00C5CCCF00C5CCCF00C5CCCF00C6CCD000C0C7CA00E0E3E500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5C5A500D5D5
      D500F1F1F100E5E5E500E7E7E700E8E8E800E8E8E800E8E8E800E9E9E900EBEB
      EB00EBEBEB00EBEBEB00ECECEC00ECECEC00ECECEC00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00EBEBEB00EBEBEB00EBEBEB00F2F2F200B2B2B200DDDDDD00E8E8E800DBDB
      DB00B0B0B000B7BAB700FCFFFC00FF28FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C8C4C400A8A5A500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FBFB
      FB00FBFBFB00FBFBFB00FEFEFD00FFFFFD009A95E5009892E6007C71E000E0DD
      F600FFFFFD00FBFBFB00F9F9F900FBFBFB00FBFBFB00FAFAFA00F8F8F800F9F9
      F900FAFAFA00FAFAFA00FAFAFA00FAFAFA00F7F7F700F8F8F800F8F8F800F9F9
      F900F6F6F600F7F7F700F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700F4F4
      F400FAFAFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6DADC00C5CDD000C8D0D300C8D0D300C8D0
      D300C8D0D300C8D0D300C8D0D300C8D0D300C8D0D200C8D0D200C8D0D200C8D0
      D200C8D0D200C8D0D200C8D0D200C8D0D200C8CED200C8CFD200C8CFD200C8CF
      D200C8CFD200C8CFD200C8CFD200C8CFD200C8CFD200C8CFD200C8CFD200C8CF
      D200C8CFD200C8CFD200C8CFD200C8CFD200C2CACD00E1E4E600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A3C3A300D8D8
      D800F1F1F100E7E7E700E9E9E900E8E8E800E9E9E900EAEAEA00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00EBEBEB00EBEBEB00ECECEC00ECECEC00ECEC
      EC00ECECEC00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EDEDED00ECECEC00ECECEC00F2F2F200B7B7B700D0D0D000EEEEEE00EAEA
      EA00DCDCDC00B0B0B000CEE0CE00FC8BFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C7C4C300BBB8BB00FFFEFF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FAFA
      FA00FDFDFD00FDFDFD00FEFEFD00FCFCFB007774DE005C56D8005E53DA00E4E3
      F800FFFFFE00F9FAF900F9F9F900FBFBFB00FBFBFB00F8F8F800FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00F9F9F900F9F9F900F7F7F700F9F9F900F9F9F900F7F7
      F700F6F6F600F8F8F800F8F8F800F8F8F800F7F7F700F8F8F800F5F5F500F4F4
      F400FAFAFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D9DDDF00C9D2D500CCD4D700CBD2D600CBD2
      D400CBD2D500CBD2D500CBD2D500CBD2D500CAD2D600CAD2D600CAD2D600CAD2
      D600CAD2D600CAD2D600CAD2D600CAD2D600CAD2D500CAD2D500CAD2D500CAD2
      D500CAD2D500CAD2D500CAD2D500CAD2D500CAD2D500CAD2D500CAD2D500CAD2
      D500CAD2D500CAD2D500CAD2D500CBD4D700C6D0D300E1E5E600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A3C3A300D7D7
      D700F1F1F100E8E8E800E8E8E800E9E9E900ECECEC00ECECEC00ECECEC00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EDEDED00EDEDED00EDEDED00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00F2F2F200CACACA00B4B4B400F9F9F900F0F0
      F000E8E8E800D7D7D700BBBBBB00EBFFEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C3BEBE00DFDDDE00FFFEFF00FDFEFE00FEFEFE00FCFCFC00FBFBFB00FDFD
      FD00FDFDFD00FCFCFC00FAFAFA00FFFFFC00B2ADEB002C1ECE00200FCC00A09B
      E800EFEEFB00FDFDFA00FBFBFB00FAFAFA00F9F9F900F9F9F900FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00F8F8F800F6F6F600F8F8F800F8F8F800F8F8F800F6F6
      F600F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700F5F5F500F5F5F500F4F4
      F400FAFAFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C2BDC500ACA9B300B2B1B900D0D8D900CDD5
      D600CDD5D600CDD5D600CDD5D600CED5D600CDD4D600CDD4D600CDD4D600CDD4
      D600CDD4D600CDD4D600CDD4D600CDD4D600CDD4D600CDD4D600CCD3D600CCD3
      D600CCD3D600CCD3D600CCD3D600CCD4D600CDD4D600CCD3D600CCD3D600CCD3
      D600CCD3D600CCD3D600D1DADC00B3B3BB00A9A7B200D6D3D900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A7C6A700D8D8
      D800F1F1F100E8E8E800ECECEC00ECECEC00ECECEC00EBEBEB00EBEBEB00ECEC
      EC00EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EAEAEA00CBCBCB00BBBBBB00CBCB
      CB00DDDDDD00ECECEC00D4D4D400D1EAD100FF21FF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F4
      F400B7B4B400F8F7F70000000000FDFEFE00FCFCFC00FAFAFA00FCFCFC00FDFD
      FD00FAFAFA00FAFAFA000000000000000000D6D5F700483AD5001300CC003220
      D300B1ABED00FFFFFD00FAFAFA00F9F9F900F8F8F800FAFAFA00FAFAFA00F9F9
      F900FAFAFA00F9F9F900F5F5F500F7F7F700F8F8F800F7F7F800F7F7F700F8F9
      F700FAFAF700F8F8F800F8F8F800F7F7F700F4F4F400F5F5F500F7F7F700F5F5
      F500FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B9B1BD00A098A800A39CA900D6DFE000CFD5
      D900CFD6D900CFD6D900CFD6D900CFD6D900CED6D800CFD6D800CFD6D800CFD6
      D800CFD6D800CFD6D800CFD6D800CFD6D800CFD6D800CFD6D800CFD6D800CFD6
      D800CFD6D800CFD6D800CFD6D800CFD5D800CFD6D800CFD5D800CFD5D800CFD5
      D800CFD5D800CED5D700D7E0E100A6A3AD009E97A600D2CDD400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AACAAA00DADA
      DA00F2F2F200EBEBEB00ECECEC00EEEEEE00F0F0F000F0F0F000F0F0F000F1F1
      F100F2F2F200F2F2F200EFEFEF00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00E7E7E700C5C5
      C500ABABAB00C1C1C100E6E6E600DCE7DC00F5AEF50000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F1
      F000B9B7B500FCFBFB00FDFEFE00FDFDFD00FAFAFA00FBFBFB00FDFDFD00FAFA
      FA00FAFAFA00FDFEFD00DAD9D800DCD9D500DFDCDF005249D1001000CB001701
      CE00695CDE00FFFFFC00FFFFFE00FDFDFD00FCFCFC00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00F8F8F800F7F7F700F9F9F900F7F7F600FAFAF700FFFFF800FDFD
      F800EEEDF500F8F8F800F8F8F800F5F5F500F5F5F500F7F7F700F6F6F600F5F5
      F500FCFCFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BCB7C100A59FAB00A7A2AC00DBE2E400D2D7
      DA00D2D7DA00D2D7DA00D2D7DA00D2D7DA00D2D7DA00D2D7DA00D2D7DA00D2D7
      DA00D2D7DA00D2D7DA00D2D7DA00D2D7DA00D2D7DA00D2D7DA00D2D7DA00D2D7
      DA00D2D7DA00D2D7DA00D2D7DA00D2D7DA00D2D7DA00D1D7DA00D1D7DA00D1D7
      DA00D1D7DA00D1D7DA00D9E1E200ADAAB500A39DAB00D1CED600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ACCCAC00DADA
      DA00F4F4F400EBEBEB00EEEEEE00D7D7D700C6C6C600CBCBCB00CCCCCC00CDCD
      CD00CCCCCC00C8C8C800E2E2E200EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EFEFEF00F3F3
      F300E5E5E500B7B7B700AEAEAE00D8D8D800F2FFF200FF56FF00000000000000
      000000000000000000000000000000000000000000000000000000000000ECEC
      EB00C8C6C500FDFDFD00FDFDFD00FBFBFB00FCFCFC00FDFDFD00FBFBFB00FBFB
      FB00FCFCFC00F4F3F300B5B1B000CECBCA00D5D2C3007873C6000900CC001800
      CE001A0BCF009796CC00E7E5D300DFDDDF00E8E6E500EBE9E900EFEEED00F2F2
      F100F3F4F300F6F6F500F8F8F800F9F9F900FDFDF700EFEEF700BCB7F100685D
      EA00A69EEF00F8F9F600F5F5F500F6F6F600F7F7F700F6F6F600F3F3F300F4F4
      F400FDFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BEB7C200A6A1AE00ABA7B300DDE5E700D5DA
      DE00D5DADE00D8DDDE00DBDFDE00D6DBDE00D5DADD00D5DADD00D5DADD00D5DA
      DD00D5DADD00D5DADD00D5DADD00D5DADD00D4DADD00D4DADD00D4DADD00D4DA
      DD00D4DADD00D4DADD00D4DADD00D4DADD00D4DADD00D4D9DD00D4D9DD00D4D9
      DD00D4D9DC00D4D8DD00DBE3E400B2B1BA00A7A0AD00D4D0D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ACCCAC00D9D9
      D900F4F4F400EBEBEB00F0F0F000BFBFBF00969696009C9C9C009F9F9F00A1A1
      A1009D9D9D0096969600D1D1D100ECECEC00EEEEEE00EEEEEE00EEEEEE00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00F0F0F000EEEEEE00AAAAAA00ADADAD00EDFFED00FD33FD00000000000000
      000000000000000000000000000000000000000000000000000000000000E7E5
      E400D6D4D400FEFFFF00FBFBFB00FBFBFB00FDFDFD00FAFAFA00FAFAFA00FCFC
      FC00FDFDFD00E5E4E300C3BEBE000000000000000000DDDAF6001508CB001500
      CE000F00CF00261ACD00E7E5E100E5E3DF00DAD8D800D7D4D400D6D3D200D7D4
      D300DAD7D600DBDBDA00DCDCDC00EAEADD00DBD7E600746AE8002115E3006C63
      E800EFEDF600FBFBF600F5F5F500F7F7F700F5F5F500F4F4F400F4F4F400F5F5
      F500FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BFBAC300A9A3B100ADA9B300DFE7E900D5DC
      E000DADFE000C6D2E100AEC1E100D5DCE000E1E5E000DADFE000D5DCE000D6DC
      E000D6DDE000D6DDE000D6DDE000D6DDE000D6DCE000D6DCE000D6DCE000D6DC
      E000D6DCE000D6DCE000D6DCE000D6DCE000D6DCE000D6DCE000D6DCDF00D5D9
      DC00D4D9DD00D6DADE00DDE5E600B3B2BC00A9A2B000D4D1D700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ABCBAB00DADA
      DA00F4F4F400EBEBEB00EDEDED00F2F2F200F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F1F1F100EEEEEE00EDEDED00EDEDED00EDEDED00EDED
      ED00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EDEDED00EDEDED00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00F0F0F000EEEEEE00B7B7B700A7A7A700EAFFEA00000000000000
      000000000000000000000000000000000000000000000000000000000000E2DF
      DE00E0DFDF0000000000FBFBFB00FDFDFD00FCFCFC00FAFAFA00FCFCFC00FCFC
      FC00FDFEFE00DFDDDB00C8C3C300FEFEFE00FBFBFB00FFFFFE00847EE0000400
      CB001A00CF000B00CF00C6C0F50000000000FBFDFC00FAFAFA00F7F7F700F7F7
      F700F6F6F600F0F0EF00F7F6EE00E5E3E800635EDC005F4FDF00503EDB00B9B4
      EF00F7F6F500F8F9F500F7F7F700F6F6F600F4F4F400F5F5F500F7F7F800FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0BBC400AAA5B100B5B4BC00DFE8E900D7DE
      E100E7EBE1008BA8E400C3D0E100A0B7E200A1B7E200CCD6E200E5E8E100DFE4
      E100D9E0E100D8DFE100D8DFE100D8DFE100D8DFE100D8DFE100D8DFE100D8DF
      E100D8DFE100D8DFE100D8DFE100D8DEE100D7E0E300D8E0E100D4DADD00D3D7
      DA00D2D6D900D5DADC00DEE7E700BBBCC300AAA4B000D6D2D700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AFCFAF00DDDD
      DD00F4F4F400EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EDEDED00EDEDED00EDEDED00EFEFEF00F0F0F000F0F0F000F0F0
      F000F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F0F0F000F0F0F000EFEFEF00EDEDED00EDEDED00EDED
      ED00EEEEEE00EEEEEE00F0F0F000E4E4E40090909000C6E6C600000000000000
      000000000000000000000000000000000000000000000000000000000000DFDE
      DD00E6E5E50000000000FBFBFB00FBFBFB00FAFAFA00FCFCFC00FCFCFC00FAFA
      FA0000000000DAD8D900D1CECE00FEFFFF00FAFAFA0000000000C2C2EF000000
      C7001A00CD000900CD006861E000FFFFFC00FBFAF900F6F6F600F7F7F700F8F8
      F800F9F9F900FFFFFB00FEFFFF007772F0000D03E2005041E4004D3CDB00E4E3
      F600F9F9F600F7F7F700F7F7F700F4F4F400F6F6F600F5F5F500F8F8F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0B9C300ACA6B300B5B1BC00E2EBEB00DCE2
      E200E6E8E30091ADE400D1DAE300A2B9E300D4DBE3009CB5E3009BB3E300BAC9
      E300D8DFE300DCE1E300E0E5E300DDE2E300DBE1E300DBE0E300DBE1E300DBE1
      E300DBE1E300DBE1E300DBE1E300DBE2E400D8DEE200D5D8DC00D4D6DA00D5D9
      DB00DDE0E100D0D2D600DFE6E800BDBAC400ACA5B400D6D3D900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B1D1B100DDDD
      DD00F4F4F400EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EDEDED00EEEEEE00EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100EFEFEF00EEEE
      EE00EDEDED00EDEDED00EEEEEE00F5F5F500B3B3B300C3E3C300000000000000
      000000000000000000000000000000000000000000000000000000000000E0DF
      DE00E8E6E600FEFFFF00FCFCFC00FAFAFA00FBFBFB00FCFCFC00FCFCFC00FAFA
      FA0000000000D3D1D000DBD9DA0000000000FAFAFA00FFFFFA00DAD8F4001D13
      CD000D00CC001300D0002211D400C1BEF000FFFFFA00F7F7F700F8F8F800F7F7
      F700FFFFF700ECECF6006A65E8000700DD001B0AE1005D51E0008F88DA00FFFF
      FA00F8F8F700F7F7F700F5F5F500F5F5F500F5F5F500F4F5F500F6F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D5D5DA00C8C9D000C9CAD000E1E8E900E7EA
      E500A0B7E500D6DEE400B1C4E500A1B9E500A1B9E40093AFE500BBCCE500AABE
      E500A4BAE500B1C3E400C3D0E500D2DBE500E3E6E400E4E7E400DEE2E400DDE1
      E400DDE2E400DDE3E500DCE2E400D9DDDF00D4D8DB00D2D6D800DEE0E000E8E8
      E700EBEAE800CFD2D500D4D9DA00CDCFD500C6C8CF00E2E1E500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2D2B200DDDD
      DD00F4F4F400EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDEDED00EDED
      ED00EFEFEF00F0F0F000F0F0F000F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F0F0
      F000EFEFEF00EEEEEE00EDEDED00F3F3F300B8B8B800C6E6C600000000000000
      000000000000000000000000000000000000000000000000000000000000E2E1
      E100E9E8E700FEFEFE00FBFBFB00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FBFB
      FB00FFFEFE00C8C6C500E3E1E200FDFDFD00F9F9F900FBFBF900FEFEFA00847C
      E3001709CC001300CE000F00D2005C56DE00F9FBF800FBFBF900FAFAF700FFFF
      FA00E1E0F6004A44E2000D00DC001300DF004D3DE700BFBCE000E5E5DD00FBFC
      FB00F7F7F700F5F5F500F5F5F500F6F6F600F4F4F300F2F1F200F6F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7E9EB00E2E7E900E2E7E900DFE3E700E7E8
      E700BCCBE700A7BCE500A2B9E600C3D1E6009CB4E600A2B9E600C6D1E60082A1
      E500BBCAE500ACC0E600B4C5E600BAC9E600B1C3E600C1CEE600E5E8E700EAEA
      E700E2E6E800DCE1E200D6D9DC00D4D6D900D0D5D700CDCFD100E0E0E000DEDF
      E100E6E7E500DADBDB00C7CACE00DFE4E500E0E7EA00EBEDEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B1D1B100DCDC
      DC00F4F4F400EDEDED00EEEEEE00EEEEEE00EEEEEE00EDEDED00EDEDED00F0F0
      F000F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F0F0F000F0F0F000F3F3F300BABABA00C8E8C800000000000000
      000000000000000000000000000000000000000000000000000000000000E5E4
      E400EBEBEA00FCFCFC00FAFAFA00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FAFA
      FA00FCFBFB00C2BEBE00E5E3E300FCFCFC00F8F8F800FAFAFA00FDFDF900F4F2
      FA007871E2000B00CE001600D2001304D300BEBBF300FFFFFC00FFFFF800C5C3
      F3003229DD000C00DA001000DC003421E200CAC6F200EFEFE100EBEAE600F8F8
      F900F4F4F400F4F4F400F6F6F600F4F3F300F3F2F200F1F1F200F6F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFE00E6E8EA00E1E6E900E3E6E900E2E6E900E3E6
      E900E7E9E900E4E7EA00D2DCE800ACC0E700A7BDE700D9DFE700B5C7E700CED7
      E9008EABE700D4DCE8007B9EE600C8D5E900B2C4E700C3D1E900A3BAE800B6C6
      E600D6DADF00D5D6D800CFD3D600C9CDD100C2C5C700CECAC500E2E2E100E4E4
      E400EBEAE800E3E3E200C8C8CB00D0D3D600E1E7EA00EDEEEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B3D3B300DEDE
      DE00F3F3F300EDEDED00EEEEEE00F2F2F200F6F6F600F7F7F700F8F8F800F9F9
      F900F9F9F900F9F9F900F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F7F7F700F2F2F200F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F5F5F500BBBBBB00C8E8C800000000000000
      000000000000000000000000000000000000000000000000000000000000E8E6
      E600F0F0EF00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00F9F9F900FCFC
      FC00F8F9F900C0BBBB00E9E8E800FCFCFC00FAFAFA00FAFAFA00F9F9FA00FFFF
      FC00E9E8F7002B1ED1001500D2000A00D100271FD800DADDF5004F4ADF000000
      D2000F00D7001100DD001909DE009B94EC00FFFFF700E2E1DC00F0EFEE00F5F5
      F500F4F4F400F6F6F600F4F4F400F3F3F300F3F2F400F4F3F400F6F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFEFE00E7E9EB00E2E9EB00E3E9EB00E3E9EB00E3E9
      EB00E3E9EB00E3E9EB00E6EBEB00F0F1EC00E5E9EA00C3D2EB00AEC3EA00C4D2
      EA00C6D2EA00BCCCEA00BFCFEA00A0B8E900C4D2EB00A8BDE800D0D7E000B3C1
      DA00BAC4D500C8CACC00C4C5C800CDCECF00E2E0DC00E0E1E300E2E2E200E9E8
      E600E9E8E500F1EEEB00CDCED000C6C8CB00DAE0E200EEF0F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7D7B700DFDF
      DF00F3F3F300EDEDED00F2F2F200C5C5C5009B9B9B00A2A2A200A3A3A300A4A4
      A400A4A4A400A6A6A600A6A6A600A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A7A7A700A7A7A700A7A7A700A6A6A600A6A6A600A4A4A400A4A4A400A4A4
      A400A3A3A300A0A0A000AFAFAF00E9E9E900F2F2F200F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F6F6F600BEBEBE00CAEACA00000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC00E1DE
      DF00F4F4F400FBFBFB00FCFCFC00FCFCFC00FCFCFC00F9F9F900FAFAFA00FCFC
      FC00F6F6F500BFBCBB00EEEDED00FBFBFB00FAFAFA00FAFAFA00FAFAFA00FBFB
      F900FFFFFB008279E2000400CF001A00D4001700D5002921D9001300D6001B00
      DA001400D9001406DC008F8AEB00F6F7F700F7F7F300DFDCDC00F3F3F400F6F7
      F700F6F5F600F4F4F300F4F1F200F1F4F400F2F3F400F4F4F300F6F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFEFE00E8EAEC00E5EAEC00E5EBED00E5EBED00E5EB
      ED00E5EBED00E5EBED00E5EBED00E5EAED00E6EBED00EBEFED00EAEFEE00D4DF
      ED00CFDAED00BACBEB00C4D2ED00B6C7EB00C8D3E5009FB4DE00D8D6D300A2B0
      CE00BFC1C500D0D0D200E1E2E100F0F0ED00E0E0E100D9DADB00E8E6E400E8E6
      E300E8E6E400ECE9E700E5E3E200BCBCC000D0D2D500EDEFF000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7D7B700DFDF
      DF00F3F3F300EDEDED00F0F0F000D5D5D500BDBDBD00C1C1C100C1C1C100C2C2
      C200C2C2C200C3C3C300C3C3C300C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400C3C3C300C3C3C300C2C2C200C3C3C300C2C2
      C200C1C1C100BFBFBF00C9C9C900EDEDED00F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F6F6F600BEBEBE00CAEACA00000000000000
      0000000000000000000000000000000000000000000000000000FBFAFA00E2E0
      DF00F9F8F700FBFBFB00FCFCFC00FCFCFC00FAFAFA00FAFAFA00FBF9F900FCFC
      FC00F4F4F400C1BFBE00F2F2F100FBFBFB00FAFAFA00FAFAFA00F8F8F800F5F5
      F600FFFFFA00E9E8F700160CD1001400D3001C00D6001700D7001D00D9001500
      D7000400D900AEA8EE00FFFFF700FCFCF800F2F2F200DFDCDB00F7F5F600F5F5
      F500F4F4F400F4F2F300F3F2F300F2F4F300F4F4F500F4F4F400F6F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00E9ECED00E9EEEF00E9EEEF00E9EEEF00E9EC
      EF00E9ECEF00E8ECEF00E8ECEF00E9ECEE00E7ECEE00E7ECED00E8EDEE00EBEF
      EE00EBF1F000EAF0F300DFE6EC00B9C4DD009CAFDA00A0AFD200B7BAC200ADB9
      D600E5E5E100E9E9EA00F3F2EF00E5E4E300CFD1D400E4E2E200E7E4E300E6E4
      E200E7E5E300E8E6E400F5F2EE00C6C5C800C0C0C300E6E8E900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B8D7B800E0E0
      E000F3F3F300EDEDED00EFEFEF00F4F4F400F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F5F5F500F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F6F6F600BFBFBF00CBEBCB00000000000000
      0000000000000000000000000000000000000000000000000000F9FAFA00E2E0
      E000F9FAFA00FBFBFB00FCFCFC00FAFAFA00F8F8F800FBFBFB00FAFAFA00FCFD
      FD00EFF0EF00C3BEBE00F6F5F500F9F9F900FAFAFA00FAFAFA00F5F5F500F8F8
      F800FFFFFA00FFFFFC003022D7000F00D3001E00D7001D00D8001900DB000F00
      D5005957E500FFFFFB00FAFAF700F7F7F700F0F1F000DEDBDC00F8F7FA00F4F5
      F400F3F3F200F4F4F400F4F5F500F4F3F300F5F5F500F4F4F400F6F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F0EC00EBEEEA00EFF0ED00E8ECEB00EAEE
      ED00EDEFEE00EEF0EF00EDF1EE00ECEFEE00EEF1EF00F6F5F000F2F3F000ECF0
      F000E9ECEB00DBDADA00D0CFCE00CECBCA00CECAC400BEC2D200E2E5EB00F0EF
      EA00EAEAE900F0EEEA00EFEDEA00D7D6D900DBDADC00E6E5E300E3E3E000E6E3
      E200EAE8E600EEEDEB00F1F1EF00EFEEEB00BBB9BB00E8E3E300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7D7B700E0E0
      E000F4F4F400EEEEEE00F0F0F000F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F6F6F600C0C0C000CBEBCB00000000000000
      0000000000000000000000000000000000000000000000000000FAF9F900E2E1
      E000FAFAFA00FBFBFB00FBFBFB00FAFAFA00FBFBFB00FAFAFA00F8F8F800FDFD
      FE00E6E5E400C3C0BF00F8F7F600FAFAF900F9F9F900F7F7F600FCFCF700FFFF
      FC00E5E6F5007772E0001300D2001900D5001D00D7001E00D8000A00D7003F3B
      DD00F7F6F800FEFFF700F6F6F600F6F6F700EEEFEF00DFDEDD00F9F8F800F3F3
      F300F3F4F400F4F5F500F4F5F500F5F4F400F4F4F400F4F4F400F4F4F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A2C1DC0099BCD70093BBD700C1D9E700BAD6
      E600B2D1E500AFCFE400B4D4E600BCDAE900C7DFEA009DC1DF00B3D2E600CAD8
      E00095ACBE0094ABBD009BB1C000C6C8CD00D9DCE000E6E8E800E4E5E400EAEA
      E900EEEEEC00EFEFED00F0EDE900D5D8DD00E2E3E300E1E3E400DADEE200DFE2
      E400EAEBEC00EEEFEF00F0F0F100D8DCE100CECCD100A6BAD300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BADABA00E1E1
      E100F4F4F400F0F0F000F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F6F6F600C0C0C000CCECCC00000000000000
      0000000000000000000000000000000000000000000000000000FAF9F900E1E0
      E000FBFBFB00FBFBFB00F8F8F800FBFBFB00FBFBFB00FAFAFA00F8F8F800FDFF
      FF00DCD9D900C4C1C100F9F8F800F9F9FA00FEFEF800FFFFFC00FFFFFC00A7A2
      EA00483ED6000A00CC001900D2001800D3001A00D6001D00D9001600D9001908
      D900C8C3F000FFFFF900F4F4F400F6F7F700EDEBED00E1DEDE00F7F7F700F3F3
      F300F3F5F500F5F5F500F5F5F500F5F5F500F4F4F400F1F1F100F3F3F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000089B1D300348FD900004BA9004885BF00F4F6F500C7DB
      EA00A2C0DC0095B7D500BFD2E300FAF8F4004C84C8000555B500176CC400AFC8
      DF00D7DADB00A9BFD100C4D0DD00D6DCE500D9E0E800DFE5E800EBEDEE00F2F1
      F100F0F0EF00EDEFEF0076A5D400478ACB005A96D000A8C4E000D6DFE900DBE3
      ED00E5E9F000E6EBEF00CED6E200B6C2D5005F8AC200338DD3008AB8DA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BADABA00E2E2
      E200F4F4F400F0F0F000F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F6F6F600C2C2C200CFEFCF00000000000000
      0000000000000000000000000000000000000000000000000000FAF9F900E2E0
      E000F9F9FA00FAFAFA00FAFAFA00FBFBFB00F8F8F800F7F7F700FAFAFA00FDFF
      FF00CDCBCA00C4C1C100F9F8F800FCFCF900F1F1F700A19FE8001B12CA000300
      C9001000CE001800D0000E00D0001E12D4001B0AD6001A00D8001E00DA001000
      D7002017DB00EAEBF600FDFDF600F7F7F700EAE9E700E3E2E100F8F7F700F2F3
      F300F4F5F500F5F5F500F5F5F500F4F4F400F0F0F000F0F0F000F6F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009EBBD70039A2E20056BBF3000E61BD00D3D7E400EDEBED00C9D9
      E700B6CDE100B1C6DD00F8F4EF00729ED2000759B9001F71C5001F7ACB000F71
      C90089B6DE00ECEAEA00E5E7E800DFE4E900E4E9ED00EFEFF000EFF1F200D9E3
      EC00C7D9E600BFD4E5000062C1001A76C8001976C9001677C8003C8DD1007BB1
      DC00ADCDE500ACC8E10080A4CF001E64B8002779C80054B8F1003AA3E500A1C3
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BEDDBE00E3E3
      E300F6F6F600F0F0F000F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F6F6F600C2C2C200D0EFD000000000000000
      0000000000000000000000000000000000000000000000000000FAFAFA00E5E2
      E200F8F8F800FBFBFB00FBFBFB00F9F9F900F8F8F800F9F9F900FAFAFA00FEFF
      FF00C0BDBD00C6C4C300FAF9F900FEFDFA008A85E1000900C7001100CB001A00
      CF001500CD000200CC004B43DA00C4C3F1007B75E6000300D4001D00D9001E00
      DA000700D8007672E600FFFFF700FAFAF700E5E4E400E5E4E400F6F6F500F4F4
      F500F5F5F500F5F5F500F4F2F300F2F2F200F3F3F300F1F0F000F6F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDD2E6003D9BDA004BB3EF0050B6EF0046A6E5004882C700F4F3F000C9D9
      E800BCD3E600D4E0E90081ADD9000D67C1002376C7002888D1002989D3002889
      D300117BCF004095D80094C2E200CADDED00F0F1F100F6F4F200D5E1EB00B9D1
      E500E3E8EE0062A3D700187BCC002885CE002987CF002988D200258BD5001C88
      D4001887D3001F83D1000E63BD002372C30057B1E8004FB5EF004BB2ED003F9E
      DC00BFD6E9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BEDEBE00E2E2
      E200F6F6F600F0F0F000F1F1F100F7F7F700FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00F7F7
      F700F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F5F5F500C3C3C300CFEFCF00000000000000
      0000000000000000000000000000000000000000000000000000FAFAFA00E8E7
      E600F9F9F800FAFAFA00F9F9F900F8F8F800FAFAFA00FAFAFA00FAFAFA00FEFF
      FF00B6B3B300CDCBCB0000000000000000008784E1000900C6001900CD000500
      C8002414D0007E7AE300F3F4F700FFFFFA00F7F6F700372AD9001300D7001C00
      DA001700D9001A0ADD009997EC00FFFFF800E3E3E000E9E7E900F5F5F500F3F3
      F500F5F5F500F3F3F300F2F2F200F3F3F300F4F2F200F1F0F000FDFDFD000000
      000000000000000000000000000000000000000000000000000000000000E7EB
      F300469CD70044ADEB004CB1EB004CAFEB0056BCF200227ECF0085AAD500E0EA
      EE00DCE6ED0084B7E0001574C700247ECB002A84CE002F92D8002E92D7003193
      D7002F92D700248DD700268DD5004CA2DC0072B5E00087BEE400A0C9E600E3EA
      EF00FFFDF5001F88D3002C8DD4002D8DD4002D8CD2003193D7003497DA003698
      DA003399DB003694D7002373C400489AD90054BAF2004CB0EB004DB1EA0045AD
      EA00489FDA00E7EDF40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFDEBF00E2E2
      E200F6F6F600F0F0F000F7F7F700AEAEAE006C6C6C0075757500797979007B7B
      7B007C7C7C007C7C7C007C7C7C007B7B7B0079797900797979006D6D6D00B5B5
      B500F7F7F700F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F5F5F500C4C4C400D0F0D000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB00EBEA
      E900FAFAFA00F9F9F900F7F7F700FAFAFA00FAFAFA00FAFAFA00FAFAFA000000
      0000A3A09E00B0ADAB00D6D4D400ECEAE400E0DFED003E34D4000000CF004F4D
      DD00BBB8F10000000000FFFFFD00F7F8F700FFFFF900B8B5F0000E02D6001500
      D9001A00DA000F00DD00140DDE00D8D6F700E9E8E000EAEAE900F4F4F500F5F5
      F500F4F4F400F1F2F200F2F4F400F4F3F300F3F0F000F1F0F000000000000000
      0000000000000000000000000000000000000000000000000000000000004798
      D40043ADEC004BAFE9004CB1EB004CB0EA004CB1EB0058BBF1002171C300D3E0
      EC00ACD2EA001989D7002E90D7002E88D1003091D5003498DC003298DB003297
      DA003397DB003499DB003298DA002B95DB002A94DA002995DB002994DB006AB3
      E3008EC5E7002995DC00359CDD00359BDD003398DB00379CDD003499DB00379C
      DD00359DDE003796D900317EC7005ABCF1004AB1EB004CAFEA004DB1EC004CB0
      EA0042ADEB00489CD80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFDFBF00E3E3
      E300F6F6F600F0F0F000F1F1F100F0F0F000EEEEEE00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F0F0
      F000F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F5F5F500C6C6C600D0F0D000000000000000
      0000000000000000000000000000000000000000000000000000FAFAF900EDEE
      ED00F9F9F800F7F7F700F9F9F900FAFAFA00FAFAFA00FAFAFA00FAFAFA00FCFE
      FE00C4C1BF00B6B2B200B2ADAC00B8B2B000CECABD007A75C3005856C100DAD6
      D900F1F1E200E8E8E400EDECEC00F1F2F100F8F8F400FAFEF9005F5BE4000C00
      D8001600DB001D00DE000C00DC00726CEA00EFEDE000F0F0EB00F4F4F400F5F5
      F500F2F2F200F3F3F300F4F4F400F3F1F100F1F2F200F1F0F000000000000000
      00000000000000000000000000000000000000000000FFFEFD0061A7D9003FAD
      EA004AAEE90049ADE8004BAFE9004BAFEA004CAFEA004DB3ED0048A9E6003795
      D8002C97DC00379BDC00399DDD003799DA00399DDE003B9DDC003A9DDE003C9F
      DD003A9EDD003C9FDD003B9EDD003B9EDF003CA0DD003B9EDD003D9FDE003099
      DD002C97DC003B9EDD003C9FDD003CA0DE003C9FDE003D9FDE003A9EDE003DA0
      DE003A9EDF003894D70052ADE7004BB2EC004DB0EB004AAEE9004AAEE90049AE
      EA004AAFE80041AFEB0064ABDC00FFFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0E0C000E3E3
      E300F6F6F600F0F0F000F1F1F100F1F1F100F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F5F5F500C7C7C700D2F2D200000000000000
      0000000000000000000000000000000000000000000000000000F9F8F800EEEE
      EE00F9F9F900F9F9F900FAFAFA00FAFAFA00FAFAFA00FAFAFA00F8F8F800F9F9
      F900FAFBFA00F9F9F900F0F0EF00E6E5E500E5E4E000E2DFE100EAE9DA00DFDD
      D300D1CECF00D1CDCD00D2CFCF00D3D0CF00D3D1CF00DDDAD200D2D1D300706C
      CD000D00D7001900DE001800DD001603E0009894DD00FFFFEF00F8F8F500F2F2
      F300F3F3F300F4F4F400F3F1F100F3F1F100F2F2F200EFEFEF00000000000000
      000000000000000000000000000000000000000000008ABDE3003EA8E60048AE
      E90048AEE90049ADE8004BAEEA004CB0EA004CAFEA004AB1ED004CACE5005CB5
      E9005EB8EF0063BAEE0063BCEF0065BCF00068BEF1006ABEF0006ABFF0006BC0
      F2006BC0F2006BC1F2006CC1F2006CC1F2006DC2F2006CC1F2006CC1F2006DC1
      F3006BC1F2006CC1F20069C1F30069C0F1006AC0F30069BEF10067BFF10067BE
      EF0066BEF2006CBBEB0052AFE50048AFEB004BAFEA004BAFE9004AAFE9004AAE
      E9004AAEEA0048ADE9003EA8E60089BDE3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C4E4C400E4E4
      E400F6F6F600F0F0F000F1F1F100F2F2F200F3F3F300F3F3F300F3F3F300F3F3
      F300F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F3F3F300F3F3F300F3F3F300F2F2F200F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F5F5F500C7C7C700D3F3D300000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700F0EF
      EF00F9F9F900FAFAFA00FAFAFA00FAFAFA00FAFAFA00F8F8F800F7F7F700F9F9
      F900F8F8F800F8F8F800F8F9F900FAFAFA00FAFBFB00FBFCFA00FAFAFA00F8F7
      F800F7F6F700F6F7F700F4F4F400F1F1F100EFEDEE00EDECEC00F5F5EA00FBFA
      E9006F67E4000000D9001B00DD001700E0001F14DF00AFACEC00FFFFF700FDFE
      F200F4F4F400F2F2F200F2F2F200F1F2F200F2F2F200EFEEEF00000000000000
      000000000000000000000000000000000000B1D1E7003DA5E50045ABE8004BAF
      EA0047ACE70048ADE8004AAEE8004BAFE9004BB1EC002B9FE300D6E7F20070C8
      F8006ACAFC006ECAFB006BCAFB006DCAFB006BCAFB006BCAFB006BC9FB006AC9
      FB006CC9FB006AC9FB006CC9FB006AC9FB006CC9FB006AC9FB006AC9FB006BC9
      FB006AC9FB006CC9FB006AC9FB006CC9FB006BC9FB006BC9FB006BCAFB006BCA
      FB006ACAFC0077C9F500DEECF4002A9DE1004AB0EA004AAFEA0049ADE70048AD
      E8004BB0EA0049ADE80046ADE9003DA5E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C5E5C500E4E4
      E400F6F6F600F0F0F000F0F0F000E8E8E800E4E4E400E5E5E500E4E4E400E4E4
      E400E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E5E5E500E4E4E400E4E4E400E4E4E400E6E6E600F0F0F000F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F5F5F500C7C7C700D3F3D300000000000000
      0000000000000000000000000000000000000000000000000000F7F6F600F1F2
      F100F9F9F900FAFAFA00FAFAFA00FAFAFA00F8F8F800F7F7F700F9F9F900F7F7
      F700F5F5F500F5F5F500F8F8F800F8F8F800F7F7F800F7F8F800F6F6F600F5F6
      F600F7F7F700F7F7F700F5F5F500F6F6F600F7F7F700F6F6F600F5F4F600FEFF
      F600F8F8F500483AE3000900DB001600DF000D00E0000A00E0003D34E400BFBB
      F100F9F8F300F2F2F100F0F3F300F2F3F300F1F0F000F1EDEE00000000000000
      0000000000000000000000000000000000006FB7E80030A2E30047ADE90048AD
      E7004AAEEA004AAEEA0048ACE70048ADE90030A2E500C6DFF000F2FAFD0066C0
      F30063C5F80068C5F70066C5F70067C5F70066C5F70066C5F70066C5F70066C5
      F70067C5F70066C5F70067C5F70066C5F70067C5F70066C5F70066C5F70067C5
      F70066C5F70067C5F70066C5F70067C5F70066C5F70066C5F70066C5F70066C5
      F70062C5F8006FC3F100F6FAFC00CDE3F2002FA1E40048ADE90048ACE7004AAE
      E90049ADE80049AEE90049AEEA0037A7E8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C5E5C500E4E4
      E400F6F6F600F1F1F100EEEEEE00B5B5B5009090900096969600979797009999
      99009B9B9B009C9C9C009E9E9E009D9D9D009E9E9E00A0A0A0009F9F9F009F9F
      9F009F9F9F009F9F9F009F9F9F00A0A0A0009D9D9D009D9D9D009D9D9D009B9B
      9B009A9A9A00989898009797970095959500A2A2A200E8E8E800F2F2F200F1F1
      F100F1F1F100F1F1F100F1F1F100F5F5F500C8C8C800D3F3D300000000000000
      0000000000000000000000000000000000000000000000000000F6F5F500F3F3
      F200F9F9FA00FAFAFA00FAFAFA00F8F8F800F7F7F700F9F9F900F7F7F700F6F6
      F600F7F7F700F7F7F700F8F8F800F8F8F800F8F8F700F6F6F600F5F5F500F6F6
      F600F6F6F600F4F4F400F4F4F400F6F6F600F5F4F400F3F1F200F4F3F400F2F3
      F500FDFDF500EAE7F4007974E7001D13DF003226E3006E63EA00675CE700AAA2
      ED00EDECF100F4F5F300F3F2F300F2F3F300F1F0F000F2F0F100000000000000
      0000000000000000000000000000000000000000000092CCF20039A5E50046AB
      E7004AAEE9004AADE80048AEE8003AA8E80091C7E90000000000E8F4FA0067C0
      F10060C3F60065C3F60063C3F60065C3F60064C3F60064C3F60064C3F60064C3
      F60065C3F60063C3F60065C3F60063C3F60065C3F60064C3F60064C3F60065C3
      F60063C3F60065C3F60063C3F60065C3F60064C3F60064C3F60064C3F60064C3
      F6005FC3F70073C3EE00EFF5F9000000000097CBEB0038A7E60047ACE80048AD
      E70048ACE80047AEEA003AA5E60083C3EE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C5E4C500E4E4
      E400F6F6F600F0F0F000F1F1F100F0F0F000F1F1F100F2F2F200F1F1F100F1F1
      F100F1F1F100F1F1F100F2F2F200F2F2F200F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F2F2F200F2F2F200F2F2F200F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F5F5F500C9C9C900D4F4D400000000000000
      0000000000000000000000000000000000000000000000000000F6F5F500F3F3
      F300FAFAFA00FAFAFA00F8F8F800F7F7F700F9F9F900F6F6F600F5F5F500F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F6F6F600F5F5F500F7F7F700F5F7
      F500F5F5F400F5F5F500F5F5F600F4F4F400F3F2F200F2F2F400F2F5F500F3F5
      F500F4F5F500FDFDF500FAFBF400C4C7EF00CFCCEF00FFFFF400FFFFF300F5F5
      F000F4F4F300F3F2F300F2F3F300F2F3F300F2F0F000F3F2F200000000000000
      0000000000000000000000000000000000000000000000000000C6E4F70031A1
      E30042ACE8004BAEEA003DA9E70066B7E800FCFCFD0000000000EAF4FA006BBF
      EF005CC1F40062C1F40061C1F40062C1F40061C1F40061C1F40061C1F40061C1
      F40062C1F50061C1F40062C1F40061C1F40062C1F50061C1F40061C1F40062C1
      F40061C1F40062C1F40061C1F40063C1F40061C1F40061C1F40061C1F40062C1
      F5005CC1F50076C2ED00F0F5F90000000000FDFDFD007CC3EC003CA9E8004AAE
      E80040A9E70030A0E400B9DEF600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C5E5C500E5E5
      E500F6F6F600F0F0F000F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F5F5F500C9C9C900D3F3D300000000000000
      0000000000000000000000000000000000000000000000000000F6F7F600F5F5
      F400FAFAFA00F9F9F900F7F7F700F9F9F900F9F9F900F5F5F500F7F7F700F8F8
      F800F8F8F800F8F8F800F8F8F800F7F7F700F5F5F500F7F7F700F7F7F700F4F4
      F400F4F4F400F6F6F600F5F5F500F3F3F300F4F3F400F2F4F500F3F5F500F5F5
      F500F5F5F500F3F3F400F4F4F200FBFCF400FAFAF400F3F2F100F3F2F100F2F4
      F100F4F3F300F3F3F300F1F3F300F4F2F200F1EFEF00F3F4F400000000000000
      000000000000000000000000000000000000000000000000000000000000E2F1
      FB0041A8E70034A4E5003EA5E300FFFFFC000000000000000000EEF5FA0071C1
      EE0058BDF4005FBFF3005EBFF3005FBFF4005EBFF2005EBFF4005EBFF4005EBF
      F2005EBFF3005EBEF3005EBEF3005EBFF3005FBFF3005EBFF4005EBFF2005FC0
      F4005FC0F4005FBFF2005EBFF40060BFF4005EBFF2005EBFF4005EBFF3005EBF
      F30058BEF40075C2EB00F2F5F9000000000000000000FFFFFE003EA6E30035A6
      E80042A9E700E1F1FB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C7E7C700E6E6
      E600F6F6F600F0F0F000F1F1F100F1F1F100F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F3F3
      F300F1F1F100F1F1F100F1F1F100F5F5F500CBCBCB00D7F7D700000000000000
      0000000000000000000000000000000000000000000000000000F8F8F700F5F5
      F500F9F9F900F7F7F700F8F8F800F9F9F900F6F6F600F7F7F700F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F5F5F500F6F6F600F7F7F700F5F5F500F4F4
      F400F6F6F600F5F5F500F3F1F300F4F3F400F4F2F500F2F3F500F4F5F500F5F5
      F500F5F4F400F1F3F300F3F4F400F1F3F400F1F0F200F3F3F300F4F3F300F4F2
      F300F3F3F300F1F3F300F3F3F300F1F0F000F0EFEF00F8F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4FAFE0069BAEC00FFFEFD00000000000000000000000000F1F6F90072C0
      EC0053B9F0005BBCF10059BBF0005BBBF0005ABAF0005BBBF0005ABBF0005ABB
      F0005BBCF10059BBF1005CBDF10059BAF1005BBDF1005ABAF0005ABCF1005BBC
      F10059BCF1005BBBF00059BBF0005BBCF10059BAF0005BBCF1005BBCF1005BBC
      F00053B9F10079C1EA00F6F7F900000000000000000000000000F1F7FA006BBB
      EB00F5FAFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CAEACA00E6E6
      E600F6F6F600F0F0F000F1F1F100EBEBEB00E8E8E800E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E8E8E800E9E9E900E2E2
      E200F3F3F300F1F1F100F1F1F100F4F4F400CDCDCD00D9F8D900000000000000
      0000000000000000000000000000000000000000000000000000F9F9F900F6F6
      F500F8F8F800F8F8F800F8F8F800F6F6F600F6F6F600F8F8F800F8F8F800F8F8
      F800F8F7F800F7F7F600F5F5F500F6F6F600F6F6F600F4F4F400F5F5F500F7F6
      F700F8F8F800F5F4F400F3F2F300F4F4F500F3F3F500F3F4F500F5F5F500F4F4
      F400F4F2F200F1F3F300F3F4F400F2F3F200F3F1F100F2F3F300F4F3F300F2F3
      F300F2F2F200F1F3F300F2F1F100F0F0F000EEEFEF00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F7F90076C0
      EB004FB6EF0059BAF00056B8EE0058BAF00057B8EF0057B9EF0057B8EE0058BA
      F00057B9EF0057B9EF0058BAEF0056B8EF0058B9F00057B8EF0058B9EF0058BA
      F00057B8F00058BAEF0056B8EF0058BAF00058B9EF0057B9EF0057B8F00058B9
      F0004FB6EF007FC3EB00F9F9FA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CAEACA00E7E7
      E700F6F6F600F1F1F100EFEFEF00CBCBCB00B4B4B400B9B9B900B9B9B900BABA
      BA00BBBBBB00BBBBBB00BEBEBE00BFBFBF00BEBEBE00C0C0C000C0C0C000C1C1
      C100C2C2C200C2C2C200C2C2C200C2C2C200C0C0C000C1C1C100BFBFBF00BEBE
      BE00BEBEBE00BDBDBD00BBBBBB00BABABA00B9B9B900B9B9B900B4B4B4008F8F
      8F00FAFAFA00F1F1F100F1F1F100F4F4F400CDCDCD00D8F8D800000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB00F5F5
      F500F6F6F600F8F8F800F6F6F600F5F5F500F8F8F800F8F8F800F8F8F800F8F8
      F800F6F6F600F6F5F500F5F6F600F7F7F700F5F5F500F5F5F500F3F4F200F0EE
      EE00F0F0F000F8F7F900F7F7F700F3F4F400F4F5F500F5F5F500F4F4F400F2F2
      F200F2F3F300F4F4F400F1F2F200F2F1F100F3F3F300F2F3F300F2F3F300F1F3
      F200F3F0F000F3F1F100F0F1F100F1F1F100EFEEEE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F9FA0079C0
      EC004CB4EF0056B6EF0054B6ED0054B6EF0053B5EC0055B6EF0054B4ED0054B6
      EE0054B6EE0054B6EE0057B6EF0053B5EE0056B7EF0055B6ED0056B7EF0054B6
      EE0055B6EE0056B6EF0053B5EE0056B6EE0054B6EF0056B6EE0055B6EE0055B6
      EF0049B1EE0087C7ED00FFFDFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1F1D100E5E5
      E500F8F8F800F0F0F000F1F1F100E8E8E800E4E4E400E4E4E400E4E4E400E5E5
      E500E5E5E500E5E5E500E6E6E600E6E6E600E5E5E500E6E6E600E7E7E700E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E7E7E700E7E7E700E6E6E600E5E5
      E500E6E6E600E6E6E600E5E5E500E5E5E500E4E4E400E5E5E500E4E4E400DADA
      DA00F3F3F300F1F1F100F1F1F100F6F6F600C6C6C600DEFFDE00000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC00F8F8
      F800F9F9F900F6F6F600F8F8F800F6F6F600F6F6F600F4F4F400F4F6F400F7F5
      F700F4F4F400F5F4F400F5F5F500F4F4F400F4F4F400F2F2F100DBD8D600CFCC
      C100C4C0B200C1BBAF00F4F3EC00F7F7F800F4F4F400F3F3F300F1F1F100F4F4
      F400F4F4F400F4F2F200F3F1F100F1F3F300F2F3F300F2F3F300F2F3F300F4F3
      F000F2F0F000F0F0F000F1F2F200F2F0F000EFEEEE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFAFB007CC0
      EA0042AEED0051B5EE0050B4ED0051B5EE004FB4ED0051B5EE004FB4ED0051B5
      EE0050B5EE0050B5EE004FB4EE0050B4ED0051B5EE0050B5ED0051B5EE004FB4
      EE0050B5EE0050B5EE0050B5ED0050B5EE004FB4ED0051B5EE0050B5EE0052B6
      EE0041AEEC0083C5ED00FFFFFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E4FFE400CACA
      CA00FBFBFB00F0F0F000F1F1F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F3F3
      F300F1F1F100F1F1F100F2F2F200E9E9E900BED3BE00F026F000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FCFCFC00FBFBFB00FBFAFB00FAFA
      FA00FBFBFB00FBFBFB00FAFAFA00FAFAFA00FAFAFA00FAF9F900EEEDE8007976
      A7004B47AD004742A700D1CFD000FEFEFA00F2F2F200F2F1F100F3F3F300F2F3
      F300F2F1F100F3F1F100F2F3F300F2F3F300F2F3F300F3F3F300F4F3F300F2F1
      F100F1F1F100F1F2F200F1F2F200F1F0F000F0EFEF00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFDFD009CD1
      F0005EB9EE004AAEE8004EAFE80050B1E8004DB0E80050B1E80051B1E80052B2
      E90052B2E90051B2E90053B2EA0051B2E90052B3EA0051B2EA0051B2E90051B0
      E90051B1EA0050B0E90051B1EA004FB2E9004FB0E80051B2E9004EAFE8004AAE
      E80055B3EA009FD1EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F685F600CBDD
      CB00EBEBEB00F6F6F600F0F0F000F0F0F000F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F2F2F200F3F3F300CDCDCD00CBEBCB00FE54FE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F9000000
      90000000B0001A16DC007D7DE200FFFFF900F4F4F400F1F1F100F0F0F000F0F0
      F000F0F0F000F1F1F100F1F0F000F2F0F000F1F2F200F2F1F100F3F0F000EFEF
      EF00F2F2F200F2F2F200F3F2F200F0F0F000F1F0F000FDFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5CF
      ED00439DDD003291D7002F8FD500308ED500308ED5003290D6003290D600318E
      D6003290D6003290D7003390D7003390D7003390D700318FD6003291D700328F
      D600328FD5002F8DD400328FD600328FD600308DD400318FD600318ED6002C8C
      D4003893D8009FC9E80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF28FF00EEF5
      EE00CCD0CC00F0F0F000F6F6F600F2F2F200F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F1F1
      F100F3F3F300F0F0F000C5C5C500BDC7BD00F6AFF60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFDFF4000000
      AA000A0FC0004F58DE00726DEB0000000000FEFEFE00FEFEFE00FEFDFD00FCFB
      FB00F8F9F900F6F6F600F2F2F200F1EEEE00F0EEEE00F0EEEE00F0EFEF00F0EF
      EF00F0EFEF00F0EFEF00F0F0F000F1F0F000F2F1F000FFFDFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000079B4
      E2001D81D1002984D2002682D0002683D1002784D2002683D1002683D0002784
      D2002683D1002684D2002683D0002682D0002784D2002783D1002683D1002684
      D1002683D1002684D1002683D1002684D2002783D1002683D0002683D0002682
      D100197DCE0082B8E10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF1A
      FF00E1FFE100C8CBC800EDEDED00F3F3F300F7F7F700F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F6F6F600F5F5
      F500E9E9E900C9C9C900BAC4BA00E7FFE700FF22FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006E70CC000000
      B9003532DA001F26DE009D9CEE00000000000000000000000000000000000000
      0000FEFDFD00FDFDFD00FCFCFC00FCFBFB00FBFCFC00F8F8F800F7F8F800F5F5
      F500F5F3F300F4F3F300F2F1F100F1EFEF00F2F2F200FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000074AE
      DF001778CC002680CE002781CD002780CE002781CD00267FCD002781CF002680
      CE002680CD002781CE002680CE002780CE002681CD002781CD002680CF00267F
      CD002680CE002680CE002781CD002680CD002780CD002580CE002881CF002781
      CE001475C9007CB2DD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF1CFF00F3FBF300CEE7CE00D1E6D100D9D9D900DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DEDEDE00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00D9D9D900CEDC
      CE00BFD4BF00CBEBCB00FBB4FB00FF23FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F50CB000000
      CC003923E5009191EF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE000000000000000000FEFDFD00FAFBFB00FCFCFC00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000075AD
      DC000368C300227ACA00237BCB002179CA00247CCB002179CA00227BCB002179
      CA00227ACA00227ACA002078CA00227BC9002279CA00237BC9002178C900227A
      C900227AC9002178C900227BC9002179C900237AC8002179C900237ACA002279
      CA000669C20079ADDA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF28FF00FF44FF00F11DF100E6FBE600E2E2E200E1E1E100E1E1
      E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1
      E100E1E1E100E1E1E100E2E2E200E1E1E100E0E0E000DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DDEBDD00E55F
      E500F630F600FF4DFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6E7F8009694
      EB00AAA8F200FCFDFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFC
      FD0073ACDC002780CA003287CB002F85CB003187CB003085CC003086CC002F86
      CD002F86CE002F87CE003086CE003089D0003087D0003088CF003088CF003088
      D1003089D0003189D000328AD1003189D000328AD1003188CF003087CE002781
      CB0061A2D700FBFDFD0000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000FFFFFFFFFFFFF87FFFFFFFFFFE000000
      003F000000000000FFFFFFFFFFFFF800FFFFFFFFFE000000001F000000000000
      FC0000007FFFF80001FFFFFFFE000000003F000000000000F00000003FFFF8C0
      000FFFFFFE000000003F000000000000E00000000FFFF99E0000001FFE000000
      003F000000000000E00000000FFFF901E7000007FE000000003F000000000000
      C000000003FFF10040000007FE000000003F000000000000C000000003FFF100
      00000007FE000000003F000000000000C000000001FFF10000000007FE000000
      003F000000000000C000000000FFF00000000007FE000000003F000000000000
      C000000000FFF00000000007FE000000003F000000000000C000000000FFF000
      00000007FE000000003F000000000000C0000000007FE20300000007FE000000
      003F000000000000C0000000007FE00000000007FE000000003F000000000000
      C0000000003FE00000000007FE000000003F000000000000C0000000003FE001
      80000007FE000000003F000000000000C0000000003FE4000100000FFE000000
      003F000000000000C0000000003FE4084000001FFE000000003F000000000000
      C0000000003FE0090000001FFE000000003F000000000000C0000000003FE000
      0000001FFE000000003F000000000000C0000000003FE0000000001FFC000000
      003F000000000000C0000000003FE0000000001FFC000000003F000000000000
      C0000000003FC0000000001FFC000000003F000000000000C0000000003FC000
      0000001FFC000000003F000000000000C0000000003FC0000000001FFE000000
      003F000000000000C0000000003FC0000000001FFE000000003F000000000000
      C0000000003FC0000000001FFC000000001F000000000000C0000000003FC000
      0000001FF8000000000F000000000000C0000000003FC0000000001FF0000000
      0007000000000000C0000000003FC0030000001FE00000000003000000000000
      C0000000003FC0100400003FE00000000003000000000000C0000000003FC000
      0000003F800000000000000000000000C0000000003FC0000000003F80000000
      0000000000000000C0000000003FC0000000003F000000000000000000000000
      C0000000003FC0000000003F000000000000000000000000C0000000003FC000
      0000003F804000000100000000000000C0000000003FC0000000003FC0400000
      0101000000000000C0000000003FC0000000003FE0C000000183000000000000
      C0000000003FC0000000003FF1C0000001C7000000000000C0000000003FC000
      0000003FFFC0000001FF000000000000C0000000003FC0000000003FFFC00000
      01FF000000000000C0000000003FC0000000003FFFC0000001FF000000000000
      C0000000003FFE000000003FFFC0000003FF000000000000C0000000003FFFFF
      C000003FFFE0000003FF000000000000C0000000007FFFFFC100003FFFE00000
      03FF000000000000E0000000007FFFFFC1F0003FFFE0000003FF000000000000
      F000000000FFFFFFC3FFEC3FFFE0000003FF000000000000F800000003FFFFFF
      C3FFFDFFFFE0000003FF000000000000FF800000000FFFFFFFFFFFFFFF800000
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
    Left = 596
    Top = 230
  end
  inherited TConsulta: TIBTransaction
    Left = 448
    Top = 152
  end
  inherited SQLConsulta: TIBSQL
    Left = 480
    Top = 152
  end
  inherited TEdicao: TIBTransaction
    Left = 512
    Top = 152
  end
  inherited SQLEdicao: TIBSQL
    Left = 544
    Top = 152
  end
  inherited SPEdicao: TIBStoredProc
    Left = 576
    Top = 152
  end
  inherited TEvent: TIBTransaction
    Left = 608
    Top = 152
  end
  inherited SPEvent: TIBStoredProc
    Left = 640
    Top = 152
  end
  inherited EEvent: TIBEvents
    Left = 672
    Top = 152
  end
  object FKCadastro: TIBQuery
    Database = DMDados.IBDB
    Transaction = TConsulta
    AfterOpen = FKCadastroAfterOpen
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT   PK.* FROM VW_CAD_PRO_EST_RFK AS PK'
      'WHERE    PK.IDEP = :IDEP'
      'AND      PK.CDRO = :CDRO'
      'ORDER BY PK.CDET')
    Left = 448
    Top = 248
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDEP'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftLargeint
        Name = 'CDRO'
        ParamType = ptUnknown
        Size = 8
      end>
    object FKCadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."ID"'
    end
    object FKCadastroIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."IDEP"'
    end
    object FKCadastroDEEP: TIBStringField
      FieldName = 'DEEP'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."DEEP"'
      Size = 60
    end
    object FKCadastroIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."IDCA"'
    end
    object FKCadastroLGCA: TIBStringField
      FieldName = 'LGCA'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."LGCA"'
      Size = 30
    end
    object FKCadastroDTCA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'DTCA'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."DTCA"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FKCadastroIDST: TSmallintField
      FieldName = 'IDST'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."IDST"'
    end
    object FKCadastroLGST: TIBStringField
      FieldName = 'LGST'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."LGST"'
      Size = 30
    end
    object FKCadastroDTST: TDateTimeField
      FieldName = 'DTST'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."DTST"'
    end
    object FKCadastroCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."CDST"'
    end
    object FKCadastroDEST: TIBStringField
      FieldName = 'DEST'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."DEST"'
      Size = 30
    end
    object FKCadastroREST: TIBStringField
      FieldName = 'REST'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."REST"'
      Size = 10
    end
    object FKCadastroCDRO: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'CDRO'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."CDRO"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FKCadastroDTRO: TDateField
      FieldName = 'DTRO'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."DTRO"'
    end
    object FKCadastroIDCE: TIntegerField
      FieldName = 'IDCE'
      Origin = '"VW_CAD_PRO_EST_RFK"."IDCE"'
    end
    object FKCadastroDECE: TIBStringField
      FieldName = 'DECE'
      Origin = '"VW_CAD_PRO_EST_RFK"."DECE"'
      Size = 30
    end
    object FKCadastroCTNR: TIBStringField
      FieldName = 'CTNR'
      Origin = '"VW_CAD_PRO_EST_RFK"."CTNR"'
      Size = 30
    end
    object FKCadastroLOTE: TIBStringField
      FieldName = 'LOTE'
      Origin = '"VW_CAD_PRO_EST_RFK"."LOTE"'
      Size = 30
    end
    object FKCadastroMAPA: TIBStringField
      FieldName = 'MAPA'
      Origin = '"VW_CAD_PRO_EST_RFK"."MAPA"'
      Size = 30
    end
    object FKCadastroCDET: TLargeintField
      FieldName = 'CDET'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."CDET"'
    end
    object FKCadastroIDSK: TLargeintField
      FieldName = 'IDSK'
      Origin = '"VW_CAD_PRO_EST_RFK"."IDSK"'
    end
    object FKCadastroIDFK: TLargeintField
      FieldName = 'IDFK'
      Origin = '"VW_CAD_PRO_EST_RFK"."IDFK"'
    end
    object FKCadastroITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Origin = '"VW_CAD_PRO_EST_RFK"."ITEM"'
      DisplayFormat = '0'
    end
    object FKCadastroIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."IDCP"'
    end
    object FKCadastroCP_IDEP: TSmallintField
      FieldName = 'CP_IDEP'
      Origin = '"VW_CAD_PRO_EST_RFK"."CP_IDEP"'
    end
    object FKCadastroIDAK: TLargeintField
      FieldName = 'IDAK'
      Origin = '"VW_CAD_PRO_EST_RFK"."IDAK"'
    end
    object FKCadastroIDEK: TLargeintField
      FieldName = 'IDEK'
      Origin = '"VW_CAD_PRO_EST_RFK"."IDEK"'
    end
    object FKCadastroARTIGO: TIBStringField
      DisplayLabel = 'Artigo'
      FieldName = 'ARTIGO'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."ARTIGO"'
      Size = 30
    end
    object FKCadastroNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"VW_CAD_PRO_EST_RFK"."NCM"'
      Size = 8
    end
    object FKCadastroPIPI: TIBBCDField
      FieldName = 'PIPI'
      Origin = '"VW_CAD_PRO_EST_RFK"."PIPI"'
      Precision = 9
      Size = 2
    end
    object FKCadastroSKU: TIBStringField
      FieldName = 'SKU'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."SKU"'
      Size = 30
    end
    object FKCadastroCEAN: TIBStringField
      FieldName = 'CEAN'
      Origin = '"VW_CAD_PRO_EST_RFK"."CEAN"'
    end
    object FKCadastroDECP: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DECP'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."DECP"'
      Size = 120
    end
    object FKCadastroDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."DGCP"'
      Size = 60
    end
    object FKCadastroCMP_PAD: TIBStringField
      FieldName = 'CMP_PAD'
      Origin = '"VW_CAD_PRO_EST_RFK"."CMP_PAD"'
      Size = 120
    end
    object FKCadastroCDTP: TSmallintField
      FieldName = 'CDTP'
      Origin = '"VW_CAD_PRO_EST_RFK"."CDTP"'
    end
    object FKCadastroDETP: TIBStringField
      FieldName = 'DETP'
      Origin = '"VW_CAD_PRO_EST_RFK"."DETP"'
      Size = 60
    end
    object FKCadastroCDOP: TSmallintField
      FieldName = 'CDOP'
      Origin = '"VW_CAD_PRO_EST_RFK"."CDOP"'
    end
    object FKCadastroREOP: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'REOP'
      Origin = '"VW_CAD_PRO_EST_FIS_RFK"."REOP"'
      Size = 10
    end
    object FKCadastroDEOP: TIBStringField
      FieldName = 'DEOP'
      Origin = '"VW_CAD_PRO_EST_RFK"."DEOP"'
      Size = 60
    end
    object FKCadastroUCOM: TIBStringField
      FieldName = 'UCOM'
      Origin = '"VW_CAD_PRO_EST_RFK"."UCOM"'
      Size = 10
    end
    object FKCadastroEST_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'EST_QTDE'
      Origin = '"VW_CAD_PRO_EST_RFK"."EST_QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object FKCadastroEST_QTRL: TIntegerField
      DisplayLabel = 'Itens'
      FieldName = 'EST_QTRL'
      Origin = '"VW_CAD_PRO_EST_RFK"."EST_QTRL"'
      DisplayFormat = '0'
    end
    object FKCadastroQTDE: TIBBCDField
      DisplayLabel = 'Entradas'
      FieldName = 'QTDE'
      Origin = '"VW_CAD_PRO_EST_RFK"."QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object FKCadastroQTRL: TIntegerField
      DisplayLabel = 'Itens'
      FieldName = 'QTRL'
      Origin = '"VW_CAD_PRO_EST_RFK"."QTRL"'
      DisplayFormat = '0'
    end
    object FKCadastroQTDS: TIBBCDField
      DisplayLabel = 'Sa'#237'das'
      FieldName = 'QTDS'
      Origin = '"VW_CAD_PRO_EST_RFK"."QTDS"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object FKCadastroQTRS: TIntegerField
      DisplayLabel = 'Itens'
      FieldName = 'QTRS'
      Origin = '"VW_CAD_PRO_EST_RFK"."QTRS"'
      DisplayFormat = '0'
    end
    object FKCadastroINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_CAD_PRO_EST_RFK"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 812
    end
    object FKCadastroINFADPRO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADPRO'
      Origin = '"VW_CAD_PRO_EST_RFK"."INFADPRO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 812
    end
    object FKCadastroUFCE: TIBStringField
      FieldName = 'UFCE'
      Origin = '"VW_CAD_PRO_EST_RFK"."UFCE"'
      FixedChar = True
      Size = 2
    end
    object FKCadastroRETP: TIBStringField
      FieldName = 'RETP'
      Origin = '"VW_CAD_PRO_EST_RFK"."RETP"'
      Size = 10
    end
    object FKCadastroD_DEOP: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_DEOP'
      Origin = '"VW_CAD_PRO_EST_RFK"."D_DEOP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 121
    end
    object FKCadastroCDI: TSmallintField
      FieldName = 'CDI'
      Origin = '"VW_CAD_PRO_EST_RFK"."CDI"'
    end
    object FKCadastroCOL_NO: TIBStringField
      FieldName = 'COL_NO'
      Origin = '"VW_CAD_PRO_EST_RFK"."COL_NO"'
      Size = 30
    end
    object FKCadastroGRP_NO: TIBStringField
      FieldName = 'GRP_NO'
      Origin = '"VW_CAD_PRO_EST_RFK"."GRP_NO"'
      Size = 30
    end
    object FKCadastroCAT_NO: TIBStringField
      FieldName = 'CAT_NO'
      Origin = '"VW_CAD_PRO_EST_RFK"."CAT_NO"'
      Size = 30
    end
    object FKCadastroXPAIS: TIBStringField
      FieldName = 'XPAIS'
      Origin = '"VW_CAD_PRO_EST_RFK"."XPAIS"'
      Size = 60
    end
    object FKCadastroFPAIS: TIBStringField
      FieldName = 'FPAIS'
      Origin = '"VW_CAD_PRO_EST_RFK"."FPAIS"'
    end
  end
  object DTSFKCadastro: TDataSource
    AutoEdit = False
    DataSet = FKCadastro
    OnDataChange = DTSFKCadastroDataChange
    Left = 480
    Top = 248
  end
  object CAD_PRO_IMG_CDN: TIBQuery
    Database = DMDados.IBDB
    Transaction = TConsulta
    DataSource = DTSFKCadastro
    SQL.Strings = (
      'SELECT CP_IMG.* FROM VW_CAD_PRO_IMG_CDN AS CP_IMG'
      'WHERE  CP_IMG.IMG_ID = :IDSK')
    Left = 448
    Top = 280
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
    Left = 480
    Top = 280
  end
end
