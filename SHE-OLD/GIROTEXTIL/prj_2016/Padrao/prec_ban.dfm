inherited frmrec_ban: Tfrmrec_ban
  Left = 217
  Top = 182
  Caption = 'Consulta de Contas a Receber - Banc'#225'rio'
  ClientHeight = 722
  ClientWidth = 1284
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Top = 703
    Width = 1284
  end
  inherited SpeedBar2: TSpeedBar
    Width = 1284
    inherited siREF: TSpeedItem [4]
      Left = 332
    end
    inherited siPSQ: TSpeedItem [5]
    end
    inherited siEVE: TSpeedItem [6]
      Left = 222
    end
    inherited siSAIR: TSpeedItem [7]
      Left = 882
    end
    inherited siLIXO: TSpeedItem [8]
      Visible = False
    end
    inherited siREL: TSpeedItem [9]
    end
    object siPED: TSpeedItem
      BtnCaption = 'Visualizar Pedido'
      Hint = 'Visualiza Pedido de Cobran'#231'a'
      ImageIndex = 7
      Spacing = 1
      Left = 552
      Top = 2
      Visible = True
      OnClick = siPEDClick
      SectionName = 'Movimento'
    end
    object siVROM: TSpeedItem
      BtnCaption = 'Visualizar Romaneio'
      Hint = 'Visualiza Romaneio de Cobran'#231'a'
      ImageIndex = 9
      Spacing = 1
      Left = 662
      Top = 2
      Visible = True
      OnClick = siVROMClick
      SectionName = 'Movimento'
    end
    object siVNFE: TSpeedItem
      BtnCaption = 'Visualizar '#13#10'Nota Fiscal'
      Hint = 'Visualiza Nota Fiscal'
      ImageIndex = 8
      Spacing = 1
      Left = 772
      Top = 2
      Visible = True
      SectionName = 'Movimento'
    end
    object siEDI: TSpeedItem
      BtnCaption = 'Alterar'
      Enabled = False
      Hint = 'Altera'#231#227'o de Conta a Receber'
      ImageIndex = 10
      Spacing = 1
      Left = 112
      Top = 2
      Visible = True
      SectionName = 'Movimento'
    end
  end
  inherited pnldir: TPanel
    Left = 1284
    Height = 589
  end
  inherited pnldbg: TPanel
    Width = 1284
    Height = 589
    inherited pnlbot: TPanel
      Top = 332
      Width = 1284
      Height = 257
      Visible = True
      object pndir: TPanel
        Left = 746
        Top = 0
        Width = 538
        Height = 257
        Align = alRight
        TabOrder = 0
        object pclan: TdxPageControl
          Left = 1
          Top = 1
          Width = 536
          Height = 255
          ActivePage = tslan
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
          object tslan: TdxTabSheet
            Caption = 'Lan'#231'amentos de Recebimentos'
            object dbgrec_rec: TdxDBGrid
              Left = 0
              Top = 0
              Width = 536
              Height = 231
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
              Color = 13414525
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              OnDblClick = DBGConsultaDblClick
              OnKeyDown = DBGConsultaKeyDown
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              DataSource = dtsfin_rec_rec
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HideSelectionColor = 15263744
              HighlightColor = 14789952
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
              PreviewFieldName = 'FIN_OBSE'
              OnBackgroundDrawEvent = DBGConsultaBackgroundDrawEvent
              object dbgrec_recFIN_TIPO: TdxDBGridMaskColumn
                Width = 150
                BandIndex = 0
                RowIndex = 0
                FieldName = 'FIN_TIPO'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object dbgrec_recFIN_DOCT: TdxDBGridMaskColumn
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'FIN_DOCT'
              end
              object dbgrec_recFIN_NCHQ: TdxDBGridMaskColumn
                Width = 60
                BandIndex = 0
                RowIndex = 0
                FieldName = 'FIN_NCHQ'
              end
              object dbgrec_recFIN_DVEN: TdxDBGridDateColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'FIN_DVEN'
              end
              object dbgrec_recFIN_VPAG: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 90
                BandIndex = 0
                RowIndex = 0
                FieldName = 'FIN_VPAG'
                SummaryFooterType = cstSum
                SummaryFooterField = 'FIN_VPAG'
                SummaryFooterFormat = '#,0.00'
              end
            end
          end
        end
      end
      object pnpri: TPanel
        Left = 0
        Top = 0
        Width = 746
        Height = 257
        Align = alClient
        TabOrder = 1
        object pcdet: TdxPageControl
          Left = 1
          Top = 1
          Width = 744
          Height = 186
          ActivePage = dxTabSheet1
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
          object tsdet: TdxTabSheet
            Caption = 'Fich'#225'rio'
            object pnlfic: TPanel
              Left = 0
              Top = 0
              Width = 818
              Height = 160
              Align = alClient
              BevelOuter = bvNone
              Color = 15788249
              TabOrder = 0
              object Shape3: TShape
                Left = 2
                Top = 4
                Width = 103
                Height = 18
                Brush.Color = 14789952
                Pen.Color = 11764252
                Shape = stRoundRect
              end
              object Label7: TLabel
                Left = 10
                Top = 6
                Width = 47
                Height = 14
                Caption = 'Detalhe'
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
              object linha2: TShape
                Left = 112
                Top = 14
                Width = 417
                Height = 3
                Brush.Color = 11106843
                Pen.Color = 14789952
              end
              object Label48: TLabel
                Left = 6
                Top = 24
                Width = 34
                Height = 14
                Caption = 'Nome'
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
              object Label1: TLabel
                Left = 6
                Top = 56
                Width = 91
                Height = 14
                Caption = 'Representante'
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
                Left = 6
                Top = 72
                Width = 57
                Height = 14
                Caption = 'Cobran'#231'a'
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
              object Label3: TLabel
                Left = 6
                Top = 88
                Width = 41
                Height = 14
                Caption = 'Status'
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
              object Label4: TLabel
                Left = 6
                Top = 40
                Width = 59
                Height = 14
                Caption = 'Vendedor'
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
              object Label6: TLabel
                Left = 6
                Top = 104
                Width = 42
                Height = 14
                Caption = 'Lancto'
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
              object Label8: TLabel
                Left = 6
                Top = 120
                Width = 43
                Height = 14
                Caption = 'Vencto'
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
              object Label10: TLabel
                Left = 6
                Top = 136
                Width = 37
                Height = 14
                Caption = 'Pagto'
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
              object DBText2: TDBText
                Left = 112
                Top = 40
                Width = 48
                Height = 14
                AutoSize = True
                DataField = 'USU_DUSU'
                DataSource = DTSCadastro
              end
              object DBText3: TDBText
                Left = 112
                Top = 56
                Width = 48
                Height = 14
                AutoSize = True
                DataField = 'REP_FANT'
                DataSource = DTSCadastro
              end
              object DBText4: TDBText
                Left = 112
                Top = 72
                Width = 48
                Height = 14
                AutoSize = True
                DataField = 'FIN_STDO'
                DataSource = DTSCadastro
              end
              object DBText5: TDBText
                Left = 112
                Top = 88
                Width = 48
                Height = 14
                AutoSize = True
                DataField = 'FIN_STFI'
                DataSource = DTSCadastro
              end
              object DBText6: TDBText
                Left = 112
                Top = 104
                Width = 48
                Height = 14
                AutoSize = True
                DataField = 'FIN_VALO'
                DataSource = DTSCadastro
              end
              object DBText7: TDBText
                Left = 184
                Top = 104
                Width = 48
                Height = 14
                AutoSize = True
                DataField = 'FIN_DCAD'
                DataSource = DTSCadastro
              end
              object DBText8: TDBText
                Left = 184
                Top = 120
                Width = 48
                Height = 14
                AutoSize = True
                DataField = 'FIN_DVEN'
                DataSource = DTSCadastro
              end
              object DBText9: TDBText
                Left = 112
                Top = 136
                Width = 48
                Height = 14
                AutoSize = True
                DataField = 'FIN_VPAG'
                DataSource = DTSCadastro
              end
              object DBText10: TDBText
                Left = 184
                Top = 136
                Width = 55
                Height = 14
                AutoSize = True
                DataField = 'FIN_DPAG'
                DataSource = DTSCadastro
              end
              object Shape4: TShape
                Left = 258
                Top = 72
                Width = 103
                Height = 18
                Brush.Color = 14789952
                Pen.Color = 11764252
                Shape = stRoundRect
              end
              object Label5: TLabel
                Left = 266
                Top = 74
                Width = 55
                Height = 14
                Caption = 'Encargos'
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
              object Shape5: TShape
                Left = 368
                Top = 82
                Width = 161
                Height = 3
                Brush.Color = 11106843
                Pen.Color = 14789952
              end
              object lacli: TLabel
                Left = 112
                Top = 24
                Width = 537
                Height = 14
                AutoSize = False
                Caption = 'Nome'
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
              object Panel2: TPanel
                Left = 256
                Top = 92
                Width = 273
                Height = 65
                Color = 15788249
                TabOrder = 0
                object Label9: TLabel
                  Left = 12
                  Top = 17
                  Width = 64
                  Height = 14
                  Caption = 'Descontos'
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
                object Label11: TLabel
                  Left = 11
                  Top = 49
                  Width = 33
                  Height = 14
                  Caption = 'Juros'
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
                object Label13: TLabel
                  Left = 11
                  Top = 33
                  Width = 41
                  Height = 14
                  Caption = 'Multas'
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
                object DBText11: TDBText
                  Left = 92
                  Top = 17
                  Width = 38
                  Height = 14
                  Alignment = taRightJustify
                  DataField = 'FIN_PDES'
                  DataSource = DTSCadastro
                end
                object Label14: TLabel
                  Left = 116
                  Top = 1
                  Width = 14
                  Height = 14
                  Caption = '%'
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
                object Label15: TLabel
                  Left = 188
                  Top = 1
                  Width = 31
                  Height = 14
                  Caption = 'Valor'
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
                object DBText12: TDBText
                  Left = 92
                  Top = 33
                  Width = 38
                  Height = 14
                  Alignment = taRightJustify
                  DataField = 'FIN_PMUL'
                  DataSource = DTSCadastro
                end
                object DBText13: TDBText
                  Left = 92
                  Top = 49
                  Width = 38
                  Height = 14
                  Alignment = taRightJustify
                  DataField = 'FIN_PJUR'
                  DataSource = DTSCadastro
                end
                object DBText14: TDBText
                  Left = 139
                  Top = 17
                  Width = 80
                  Height = 14
                  Alignment = taRightJustify
                  DataField = 'FIN_VDES'
                  DataSource = DTSCadastro
                end
                object DBText15: TDBText
                  Left = 139
                  Top = 33
                  Width = 80
                  Height = 14
                  Alignment = taRightJustify
                  DataField = 'FIN_VMUL'
                  DataSource = DTSCadastro
                end
                object DBText16: TDBText
                  Left = 139
                  Top = 49
                  Width = 80
                  Height = 14
                  Alignment = taRightJustify
                  DataField = 'FIN_VJUR'
                  DataSource = DTSCadastro
                end
              end
            end
          end
          object dxTabSheet1: TdxTabSheet
            Caption = 'Carteira'
            object dbgcar: TdxDBGrid
              Left = 0
              Top = 0
              Width = 744
              Height = 162
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
              Color = 15788249
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              OnDblClick = DBGConsultaDblClick
              OnKeyDown = DBGConsultaKeyDown
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              DataSource = dtsfin_rec_car
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HideSelectionColor = 14789952
              HighlightColor = 14789952
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
              OnBackgroundDrawEvent = DBGConsultaBackgroundDrawEvent
              OnCustomDrawCell = dbgcarCustomDrawCell
              object dbgcarFIN_DOCT: TdxDBGridMaskColumn
                Width = 53
                BandIndex = 0
                RowIndex = 0
                FieldName = 'FIN_DOCT'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object dbgcarFIN_STDO: TdxDBGridMaskColumn
                Width = 30
                BandIndex = 0
                RowIndex = 0
                FieldName = 'FIN_STDO'
              end
              object dbgcarFIN_STFI: TdxDBGridMaskColumn
                Width = 66
                BandIndex = 0
                RowIndex = 0
                FieldName = 'FIN_STFI'
              end
              object dbgcarFIN_DVEN: TdxDBGridDateColumn
                Width = 74
                BandIndex = 0
                RowIndex = 0
                FieldName = 'FIN_DVEN'
              end
              object dbgcarFIN_VALO: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 74
                BandIndex = 0
                RowIndex = 0
                FieldName = 'FIN_VALO'
                SummaryFooterType = cstSum
                SummaryFooterField = 'FIN_VALO'
                SummaryFooterFormat = '#,0.00'
              end
              object dbgcarFIN_DPAG: TdxDBGridDateColumn
                Width = 74
                BandIndex = 0
                RowIndex = 0
                FieldName = 'FIN_DPAG'
              end
              object dbgcarFIN_VPAG: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 74
                BandIndex = 0
                RowIndex = 0
                FieldName = 'FIN_VPAG'
                SummaryFooterType = cstSum
                SummaryFooterField = 'FIN_VPAG'
                SummaryFooterFormat = '#,0.00'
              end
              object dbgcarFIN_VPEN: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 74
                BandIndex = 0
                RowIndex = 0
                FieldName = 'FIN_VPEN'
                SummaryFooterType = cstSum
                SummaryFooterField = 'FIN_VPEN'
                SummaryFooterFormat = '#,0.00'
              end
            end
          end
          object tsDUP: TdxTabSheet
            Caption = 'Duplicatas'
            object dbgdup: TdxDBGrid
              Left = 0
              Top = 0
              Width = 818
              Height = 160
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
              Color = 15788249
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              OnDblClick = DBGConsultaDblClick
              OnKeyDown = DBGConsultaKeyDown
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              DataSource = dtsnfe_dup
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HideSelectionColor = 14789952
              HighlightColor = 14789952
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
              OnBackgroundDrawEvent = DBGConsultaBackgroundDrawEvent
              OnCustomDrawCell = dbgdupCustomDrawCell
              object dbgdupNFE_TITU: TdxDBGridMaskColumn
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NFE_TITU'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object dbgdupNFE_DVEN: TdxDBGridDateColumn
                Width = 74
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NFE_DVEN'
              end
              object dbgdupNFE_VDUP: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NFE_VDUP'
                SummaryFooterType = cstSum
                SummaryFooterField = 'NFE_VDUP'
                SummaryFooterFormat = '#,0.00'
              end
              object dbgdupNFE_STFI: TdxDBGridMaskColumn
                Width = 67
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NFE_STFI'
              end
              object dbgdupNFE_DPAG: TdxDBGridDateColumn
                Width = 74
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NFE_DPAG'
              end
              object dbgdupNFE_VPAG: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NFE_VPAG'
                SummaryFooterType = cstSum
                SummaryFooterField = 'NFE_VPAG'
                SummaryFooterFormat = '#,0.00'
              end
              object dbgdupNFE_VPEN: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 75
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NFE_VPEN'
                SummaryFooterType = cstSum
                SummaryFooterField = 'NFE_VPEN'
                SummaryFooterFormat = '#,0.00'
              end
            end
          end
        end
        object dxPageControl1: TdxPageControl
          Left = 1
          Top = 187
          Width = 744
          Height = 69
          ActivePage = dxTabSheet2
          Align = alBottom
          HideButtons = False
          HotTrack = False
          MultiLine = False
          OwnerDraw = False
          RaggedRight = False
          ScrollOpposite = False
          TabHeight = 0
          TabOrder = 1
          TabPosition = dxtpTop
          TabWidth = 0
          object dxTabSheet2: TdxTabSheet
            Caption = 'Observa'#231#245'es'
            object dxDBMemo1: TdxDBMemo
              Left = 0
              Top = 0
              Width = 744
              Align = alClient
              Color = 13414525
              Style.BorderStyle = xbsFlat
              Style.ButtonStyle = btsFlat
              Style.Shadow = False
              TabOrder = 0
              DataField = 'FIN_OBSE'
              DataSource = DTSCadastro
              Height = 45
            end
          end
        end
      end
    end
    inherited gbDET: TGroupBox
      Width = 1284
      Height = 332
      inherited DBGConsulta: TdxDBGrid
        Tag = 1
        Left = 2
        Width = 1280
        Height = 314
        HeaderMinRowCount = 2
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Active = True
        Filter.Criteria = {00000000}
        PreviewFieldName = 'FIN_DEVO'
        OnCustomDrawCell = dbgConsultaCustomDrawCell
        object dbgConsultaCLI_FANT: TdxDBGridMaskColumn
          Width = 172
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLI_FANT'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object dbgConsultaFIN_DOCT: TdxDBGridMaskColumn
          Width = 73
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_DOCT'
          DisableFilter = True
        end
        object dbgConsultaFIN_STDO: TdxDBGridMaskColumn
          Width = 46
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_STDO'
        end
        object dbgConsultaFIN_IDBX: TdxDBGridMaskColumn
          Width = 56
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_IDBX'
        end
        object dbgConsultaFIN_TIPO: TdxDBGridMaskColumn
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_TIPO'
        end
        object dbgConsultaFIN_STFI: TdxDBGridMaskColumn
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_STFI'
        end
        object dbgConsultaFIN_DCAD: TdxDBGridDateColumn
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_DCAD'
        end
        object dbgConsultaFIN_DBAI: TdxDBGridDateColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_DBAI'
        end
        object dbgConsultaFIN_DVEN: TdxDBGridDateColumn
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_DVEN'
        end
        object dbgConsultaFIN_VALO: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_VALO'
          SummaryFooterType = cstSum
          SummaryFooterField = 'FIN_VALO'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaFIN_VENC: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_VENC'
          SummaryFooterType = cstSum
          SummaryFooterField = 'FIN_VENC'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaFIN_DPAG: TdxDBGridDateColumn
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_DPAG'
        end
        object dbgConsultaFIN_VPAG: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_VPAG'
          SummaryFooterType = cstSum
          SummaryFooterField = 'FIN_VPAG'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaFIN_VPEN: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_VPEN'
          SummaryFooterType = cstSum
          SummaryFooterField = 'FIN_VPEN'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaUSU_DUSU: TdxDBGridMaskColumn
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'USU_DUSU'
        end
        object dbgConsultaREP_FANT: TdxDBGridMaskColumn
          Width = 150
          BandIndex = 0
          RowIndex = 0
          FieldName = 'REP_FANT'
        end
        object dbgConsultaCLI_RAZA: TdxDBGridMaskColumn
          Width = 400
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLI_RAZA'
        end
        object dbgConsultaFIN_STA: TdxDBGridMaskColumn
          Visible = False
          Width = 49
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_STA'
        end
      end
      inherited SpeedBar1: TSpeedBar
        Width = 0
        Height = 314
        Visible = False
      end
    end
  end
  inherited Cadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from fin_rec_ban_bai'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into fin_rec_ban_bai'
      '  (FIN_AGEN, FIN_ATRA, FIN_BANC, FIN_BCON, FIN_CBCO, '
      
        '   FIN_CCAB, FIN_CCLI, FIN_CCUS, FIN_CDBA, FIN_CDBC, FIN_CDBX, F' +
        'IN_CDCH, '
      
        '   FIN_CDCO, FIN_CDCX, FIN_CDDP, FIN_CDNF, FIN_CDPD, FIN_CDPG, F' +
        'IN_CDRD, '
      
        '   FIN_CONC, FIN_CONT, FIN_CPF, FIN_CPPL, FIN_CREP, FIN_CTNR, FI' +
        'N_CVEN, '
      
        '   FIN_DATR, FIN_DBAI, FIN_DBAN, FIN_DCAD, FIN_DCAN, FIN_DCON, F' +
        'IN_DEBA, '
      
        '   FIN_DEPD, FIN_DERD, FIN_DESC, FIN_DLOT, FIN_DMED, FIN_DOCT, F' +
        'IN_DPAG, '
      
        '   FIN_DTBC, FIN_DTBX, FIN_DTDP, FIN_DTNF, FIN_DTNR, FIN_DTPD, F' +
        'IN_DTRD, '
      
        '   FIN_DTST, FIN_DVEN, FIN_IDBX, FIN_LOTE, FIN_MCHQ, FIN_NCHQ, F' +
        'IN_OBSE, '
      
        '   FIN_PDES, FIN_PJUR, FIN_PMUL, FIN_PORT, FIN_PRAZ, FIN_STA, FI' +
        'N_STCO, '
      
        '   FIN_STDO, FIN_STFI, FIN_TIPO, FIN_TITU, FIN_VABA, FIN_VALO, F' +
        'IN_VCRD, '
      
        '   FIN_VDES, FIN_VDEV, FIN_VENC, FIN_VJUR, FIN_VMUL, FIN_VPAG, F' +
        'IN_VPEN, '
      '   FIN_VPRO, FIN_VTER, ID)'
      'values'
      '  (:FIN_AGEN, :FIN_ATRA, :FIN_BANC, :FIN_BCON, :FIN_CBCO, '
      
        '   :FIN_CCAB, :FIN_CCLI, :FIN_CCUS, :FIN_CDBA, :FIN_CDBC, :FIN_C' +
        'DBX, :FIN_CDCH, '
      
        '   :FIN_CDCO, :FIN_CDCX, :FIN_CDDP, :FIN_CDNF, :FIN_CDPD, :FIN_C' +
        'DPG, :FIN_CDRD, '
      
        '   :FIN_CONC, :FIN_CONT, :FIN_CPF, :FIN_CPPL, :FIN_CREP, :FIN_CT' +
        'NR, :FIN_CVEN, '
      
        '   :FIN_DATR, :FIN_DBAI, :FIN_DBAN, :FIN_DCAD, :FIN_DCAN, :FIN_D' +
        'CON, :FIN_DEBA, '
      
        '   :FIN_DEPD, :FIN_DERD, :FIN_DESC, :FIN_DLOT, :FIN_DMED, :FIN_D' +
        'OCT, :FIN_DPAG, '
      
        '   :FIN_DTBC, :FIN_DTBX, :FIN_DTDP, :FIN_DTNF, :FIN_DTNR, :FIN_D' +
        'TPD, :FIN_DTRD, '
      
        '   :FIN_DTST, :FIN_DVEN, :FIN_IDBX, :FIN_LOTE, :FIN_MCHQ, :FIN_N' +
        'CHQ, :FIN_OBSE, '
      
        '   :FIN_PDES, :FIN_PJUR, :FIN_PMUL, :FIN_PORT, :FIN_PRAZ, :FIN_S' +
        'TA, :FIN_STCO, '
      
        '   :FIN_STDO, :FIN_STFI, :FIN_TIPO, :FIN_TITU, :FIN_VABA, :FIN_V' +
        'ALO, :FIN_VCRD, '
      
        '   :FIN_VDES, :FIN_VDEV, :FIN_VENC, :FIN_VJUR, :FIN_VMUL, :FIN_V' +
        'PAG, :FIN_VPEN, '
      '   :FIN_VPRO, :FIN_VTER, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  FIN_CCAB,'
      '  FIN_CDBX,'
      '  FIN_CDCX,'
      '  FIN_CCLI,'
      '  FIN_CVEN,'
      '  FIN_CREP,'
      '  FIN_PRAZ,'
      '  FIN_ATRA,'
      '  FIN_CONC,'
      '  FIN_DCAD,'
      '  FIN_DVEN,'
      '  FIN_DPAG,'
      '  FIN_DMED,'
      '  FIN_DATR,'
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
      '  FIN_OBSE,'
      '  FIN_STA,'
      '  FIN_DCAN,'
      '  FIN_CPPL,'
      '  FIN_CCUS,'
      '  FIN_CBCO,'
      '  FIN_PORT,'
      '  FIN_VMUL,'
      '  FIN_PMUL,'
      '  FIN_VJUR,'
      '  FIN_PJUR,'
      '  FIN_VDES,'
      '  FIN_PDES,'
      '  FIN_DESC,'
      '  FIN_CDCO,'
      '  FIN_CDBA,'
      '  FIN_DEBA,'
      '  FIN_DBAI,'
      '  FIN_IDBX,'
      '  FIN_VENC,'
      '  FIN_CTNR,'
      '  FIN_BCON,'
      '  FIN_DCON,'
      '  FIN_LOTE,'
      '  FIN_DLOT,'
      '  FIN_CDCH,'
      '  FIN_CPF,'
      '  FIN_VTER,'
      '  FIN_VPRO,'
      '  FIN_DTBX,'
      '  FIN_CDNF,'
      '  FIN_DTNF,'
      '  FIN_CDPD,'
      '  FIN_DEPD,'
      '  FIN_DTPD,'
      '  FIN_CDPG,'
      '  FIN_CDRD,'
      '  FIN_DERD,'
      '  FIN_DTRD,'
      '  FIN_DTNR,'
      '  FIN_VDEV,'
      '  FIN_VABA,'
      '  FIN_VCRD,'
      '  FIN_TITU,'
      '  FIN_DTST,'
      '  FIN_CDDP,'
      '  FIN_DTDP,'
      '  FIN_CDBC,'
      '  FIN_DTBC'
      'from fin_rec_ban_bai '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT   FIN_REC_BAN_BAI.*,CLI_FANT,CLI_RAZA,USU_DUSU,REP_FANT'
      'FROM   fin_rec_ban_bai "FIN_REC_BAN_BAI"'
      
        'LEFT     OUTER JOIN CAD_CLI ON FIN_REC_BAN_BAI.FIN_CCLI = CAD_CL' +
        'I.ID'
      
        'LEFT     OUTER JOIN CAD_REP ON FIN_REC_BAN_BAI.FIN_CREP = CAD_RE' +
        'P.ID'
      
        'LEFT     OUTER JOIN CAD_USU ON FIN_REC_BAN_BAI.FIN_CVEN = CAD_US' +
        'U.USU_CUSU'
      'ORDER BY FIN_REC_BAN_BAI.FIN_DVEN')
    ModifySQL.Strings = (
      'update fin_rec_ban_bai'
      'set'
      '  FIN_AGEN = :FIN_AGEN,'
      '  FIN_ATRA = :FIN_ATRA,'
      '  FIN_BANC = :FIN_BANC,'
      '  FIN_BCON = :FIN_BCON,'
      '  FIN_CBCO = :FIN_CBCO,'
      '  FIN_CCAB = :FIN_CCAB,'
      '  FIN_CCLI = :FIN_CCLI,'
      '  FIN_CCUS = :FIN_CCUS,'
      '  FIN_CDBA = :FIN_CDBA,'
      '  FIN_CDBC = :FIN_CDBC,'
      '  FIN_CDBX = :FIN_CDBX,'
      '  FIN_CDCH = :FIN_CDCH,'
      '  FIN_CDCO = :FIN_CDCO,'
      '  FIN_CDCX = :FIN_CDCX,'
      '  FIN_CDDP = :FIN_CDDP,'
      '  FIN_CDNF = :FIN_CDNF,'
      '  FIN_CDPD = :FIN_CDPD,'
      '  FIN_CDPG = :FIN_CDPG,'
      '  FIN_CDRD = :FIN_CDRD,'
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
      '  FIN_DCAN = :FIN_DCAN,'
      '  FIN_DCON = :FIN_DCON,'
      '  FIN_DEBA = :FIN_DEBA,'
      '  FIN_DEPD = :FIN_DEPD,'
      '  FIN_DERD = :FIN_DERD,'
      '  FIN_DESC = :FIN_DESC,'
      '  FIN_DLOT = :FIN_DLOT,'
      '  FIN_DMED = :FIN_DMED,'
      '  FIN_DOCT = :FIN_DOCT,'
      '  FIN_DPAG = :FIN_DPAG,'
      '  FIN_DTBC = :FIN_DTBC,'
      '  FIN_DTBX = :FIN_DTBX,'
      '  FIN_DTDP = :FIN_DTDP,'
      '  FIN_DTNF = :FIN_DTNF,'
      '  FIN_DTNR = :FIN_DTNR,'
      '  FIN_DTPD = :FIN_DTPD,'
      '  FIN_DTRD = :FIN_DTRD,'
      '  FIN_DTST = :FIN_DTST,'
      '  FIN_DVEN = :FIN_DVEN,'
      '  FIN_IDBX = :FIN_IDBX,'
      '  FIN_LOTE = :FIN_LOTE,'
      '  FIN_MCHQ = :FIN_MCHQ,'
      '  FIN_NCHQ = :FIN_NCHQ,'
      '  FIN_OBSE = :FIN_OBSE,'
      '  FIN_PDES = :FIN_PDES,'
      '  FIN_PJUR = :FIN_PJUR,'
      '  FIN_PMUL = :FIN_PMUL,'
      '  FIN_PORT = :FIN_PORT,'
      '  FIN_PRAZ = :FIN_PRAZ,'
      '  FIN_STA = :FIN_STA,'
      '  FIN_STCO = :FIN_STCO,'
      '  FIN_STDO = :FIN_STDO,'
      '  FIN_STFI = :FIN_STFI,'
      '  FIN_TIPO = :FIN_TIPO,'
      '  FIN_TITU = :FIN_TITU,'
      '  FIN_VABA = :FIN_VABA,'
      '  FIN_VALO = :FIN_VALO,'
      '  FIN_VCRD = :FIN_VCRD,'
      '  FIN_VDES = :FIN_VDES,'
      '  FIN_VDEV = :FIN_VDEV,'
      '  FIN_VENC = :FIN_VENC,'
      '  FIN_VJUR = :FIN_VJUR,'
      '  FIN_VMUL = :FIN_VMUL,'
      '  FIN_VPAG = :FIN_VPAG,'
      '  FIN_VPEN = :FIN_VPEN,'
      '  FIN_VPRO = :FIN_VPRO,'
      '  FIN_VTER = :FIN_VTER,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_REC_CAR_004"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroFIN_CDBX: TIntegerField
      DisplayLabel = 'Baixa'
      FieldName = 'FIN_CDBX'
      Origin = '"FIN_REC_CAR_004"."FIN_CDBX"'
    end
    object cadastroFIN_CDCX: TIntegerField
      FieldName = 'FIN_CDCX'
      Origin = '"FIN_REC_CAR_004"."FIN_CDCX"'
    end
    object cadastroFIN_CCLI: TIntegerField
      FieldName = 'FIN_CCLI'
      Origin = '"FIN_REC_CAR_004"."FIN_CCLI"'
    end
    object cadastroFIN_CVEN: TIntegerField
      FieldName = 'FIN_CVEN'
      Origin = '"FIN_REC_CAR_004"."FIN_CVEN"'
    end
    object cadastroFIN_CREP: TIntegerField
      FieldName = 'FIN_CREP'
      Origin = '"FIN_REC_CAR_004"."FIN_CREP"'
    end
    object cadastroFIN_CPPL: TIntegerField
      FieldName = 'FIN_CPPL'
      Origin = '"FIN_REC_CAR_004"."FIN_CPPL"'
    end
    object cadastroFIN_CCUS: TIntegerField
      FieldName = 'FIN_CCUS'
      Origin = '"FIN_REC_CAR_004"."FIN_CCUS"'
    end
    object cadastroFIN_CBCO: TIntegerField
      FieldName = 'FIN_CBCO'
      Origin = '"FIN_REC_CAR_004"."FIN_CBCO"'
    end
    object cadastroFIN_PRAZ: TSmallintField
      FieldName = 'FIN_PRAZ'
      Origin = '"FIN_REC_CAR_004"."FIN_PRAZ"'
    end
    object cadastroFIN_ATRA: TSmallintField
      FieldName = 'FIN_ATRA'
      Origin = '"FIN_REC_CAR_004"."FIN_ATRA"'
    end
    object cadastroFIN_CONC: TSmallintField
      FieldName = 'FIN_CONC'
      Origin = '"FIN_REC_CAR_004"."FIN_CONC"'
    end
    object cadastroFIN_DCAD: TDateField
      DisplayLabel = 'Lancto'
      FieldName = 'FIN_DCAD'
      Origin = '"FIN_REC_CAR_004"."FIN_DCAD"'
    end
    object cadastroFIN_DVEN: TDateField
      DisplayLabel = 'Vencto'
      FieldName = 'FIN_DVEN'
      Origin = '"FIN_REC_CAR_004"."FIN_DVEN"'
    end
    object cadastroFIN_DPAG: TDateField
      DisplayLabel = 'Pagto'
      FieldName = 'FIN_DPAG'
      Origin = '"FIN_REC_CAR_004"."FIN_DPAG"'
    end
    object cadastroFIN_DMED: TDateField
      FieldName = 'FIN_DMED'
      Origin = '"FIN_REC_CAR_004"."FIN_DMED"'
    end
    object cadastroFIN_DATR: TDateField
      FieldName = 'FIN_DATR'
      Origin = '"FIN_REC_CAR_004"."FIN_DATR"'
    end
    object cadastroFIN_STDO: TIBStringField
      DisplayLabel = 'Cob'
      FieldName = 'FIN_STDO'
      Origin = '"FIN_REC_CAR_004"."FIN_STDO"'
      Size = 3
    end
    object cadastroFIN_DOCT: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'FIN_DOCT'
      Origin = '"FIN_REC_CAR_004"."FIN_DOCT"'
    end
    object cadastroFIN_PORT: TIBStringField
      FieldName = 'FIN_PORT'
      Origin = '"FIN_REC_CAR_004"."FIN_PORT"'
    end
    object cadastroFIN_STFI: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'FIN_STFI'
      Origin = '"FIN_REC_CAR_004"."FIN_STFI"'
    end
    object cadastroFIN_VALO: TIBBCDField
      DisplayLabel = 'Valor Documento'
      FieldName = 'FIN_VALO'
      Origin = '"FIN_REC_CAR_004"."FIN_VALO"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_VPAG: TIBBCDField
      DisplayLabel = 'Valor Pagto'
      FieldName = 'FIN_VPAG'
      Origin = '"FIN_REC_CAR_004"."FIN_VPAG"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_VPEN: TIBBCDField
      DisplayLabel = 'Valor Pendente'
      FieldName = 'FIN_VPEN'
      Origin = '"FIN_REC_CAR_004"."FIN_VPEN"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_VMUL: TIBBCDField
      FieldName = 'FIN_VMUL'
      Origin = '"FIN_REC_CAR_004"."FIN_VMUL"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_PMUL: TIBBCDField
      FieldName = 'FIN_PMUL'
      Origin = '"FIN_REC_CAR_004"."FIN_PMUL"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object cadastroFIN_VJUR: TIBBCDField
      FieldName = 'FIN_VJUR'
      Origin = '"FIN_REC_CAR_004"."FIN_VJUR"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_PJUR: TIBBCDField
      FieldName = 'FIN_PJUR'
      Origin = '"FIN_REC_CAR_004"."FIN_PJUR"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object cadastroFIN_VDES: TIBBCDField
      FieldName = 'FIN_VDES'
      Origin = '"FIN_REC_CAR_004"."FIN_VDES"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_PDES: TIBBCDField
      FieldName = 'FIN_PDES'
      Origin = '"FIN_REC_CAR_004"."FIN_PDES"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object cadastroFIN_OBSE: TMemoField
      FieldName = 'FIN_OBSE'
      Origin = '"FIN_REC_CAR_004"."FIN_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroFIN_STA: TIBStringField
      FieldName = 'FIN_STA'
      Origin = '"FIN_REC_CAR_004"."FIN_STA"'
      FixedChar = True
      Size = 1
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
    object cadastroCLI_RAZA: TIBStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CLI_RAZA'
      Origin = '"CAD_CLI"."CLI_RAZA"'
      Size = 60
    end
    object cadastroFIN_CCAB: TIntegerField
      FieldName = 'FIN_CCAB'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_CCAB"'
    end
    object cadastroFIN_BANC: TIBStringField
      FieldName = 'FIN_BANC'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_BANC"'
      Size = 4
    end
    object cadastroFIN_DBAN: TIBStringField
      FieldName = 'FIN_DBAN'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_DBAN"'
      Size = 50
    end
    object cadastroFIN_AGEN: TIBStringField
      FieldName = 'FIN_AGEN'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_AGEN"'
      Size = 10
    end
    object cadastroFIN_CONT: TIBStringField
      FieldName = 'FIN_CONT'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_CONT"'
      Size = 15
    end
    object cadastroFIN_NCHQ: TIBStringField
      FieldName = 'FIN_NCHQ'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_NCHQ"'
      Size = 10
    end
    object cadastroFIN_MCHQ: TSmallintField
      FieldName = 'FIN_MCHQ'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_MCHQ"'
    end
    object cadastroFIN_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'FIN_TIPO'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_TIPO"'
    end
    object cadastroFIN_STCO: TIBStringField
      FieldName = 'FIN_STCO'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_STCO"'
    end
    object cadastroFIN_DCAN: TDateField
      FieldName = 'FIN_DCAN'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_DCAN"'
    end
    object cadastroFIN_DESC: TIBStringField
      FieldName = 'FIN_DESC'
      Origin = '"FIN_REC_BAN_BAI_003"."FIN_DESC"'
      Size = 40
    end
    object cadastroFIN_CDCO: TIntegerField
      FieldName = 'FIN_CDCO'
      Origin = '"FIN_REC_BAN_BAI_003"."FIN_CDCO"'
    end
    object cadastroFIN_CDBA: TIBStringField
      FieldName = 'FIN_CDBA'
      Origin = '"FIN_REC_BAN_BAI_003"."FIN_CDBA"'
      Size = 4
    end
    object cadastroFIN_DEBA: TIBStringField
      FieldName = 'FIN_DEBA'
      Origin = '"FIN_REC_BAN_BAI_003"."FIN_DEBA"'
      Size = 50
    end
    object cadastroUSU_DUSU: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'USU_DUSU'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object cadastroFIN_DBAI: TDateField
      DisplayLabel = 'Baixa'
      FieldName = 'FIN_DBAI'
      Origin = '"FIN_REC_BAN_BAI_003"."FIN_DBAI"'
    end
    object cadastroFIN_IDBX: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'FIN_IDBX'
      Origin = '"FIN_REC_BAN_BAI_003"."FIN_IDBX"'
      Size = 10
    end
    object cadastroFIN_VENC: TIBBCDField
      DisplayLabel = 'Valor Encargo'
      FieldName = 'FIN_VENC'
      Origin = '"FIN_REC_BAN_BAI_003"."FIN_VENC"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_CTNR: TIBStringField
      FieldName = 'FIN_CTNR'
      Origin = '"FIN_REC_BAN_BAI_003"."FIN_CTNR"'
    end
    object cadastroFIN_BCON: TIntegerField
      FieldName = 'FIN_BCON'
      Origin = '"FIN_REC_BAN_BAI_003"."FIN_BCON"'
    end
    object cadastroFIN_DCON: TIBStringField
      FieldName = 'FIN_DCON'
      Origin = '"FIN_REC_BAN_BAI_003"."FIN_DCON"'
      Size = 120
    end
    object cadastroFIN_LOTE: TIntegerField
      FieldName = 'FIN_LOTE'
      Origin = '"FIN_REC_BAN_BAI_003"."FIN_LOTE"'
    end
    object cadastroFIN_DLOT: TDateField
      FieldName = 'FIN_DLOT'
      Origin = '"FIN_REC_BAN_BAI_003"."FIN_DLOT"'
    end
    object cadastroFIN_CDCH: TSmallintField
      FieldName = 'FIN_CDCH'
      Origin = '"FIN_REC_BAN_BAI_003"."FIN_CDCH"'
    end
    object cadastroFIN_CPF: TIBStringField
      FieldName = 'FIN_CPF'
      Origin = '"FIN_REC_BAN_BAI_003"."FIN_CPF"'
      Size = 14
    end
    object CadastroFIN_CDRD: TIntegerField
      FieldName = 'FIN_CDRD'
      Origin = '"FIN_REC_BAN_BAI"."FIN_CDRD"'
    end
    object CadastroFIN_VTER: TIBBCDField
      FieldName = 'FIN_VTER'
      Origin = '"FIN_REC_BAN_BAI"."FIN_VTER"'
      Precision = 18
      Size = 2
    end
    object CadastroFIN_VPRO: TIBBCDField
      FieldName = 'FIN_VPRO'
      Origin = '"FIN_REC_BAN_BAI"."FIN_VPRO"'
      Precision = 18
      Size = 2
    end
    object CadastroFIN_DTBX: TDateField
      FieldName = 'FIN_DTBX'
      Origin = '"FIN_REC_BAN_BAI"."FIN_DTBX"'
    end
    object CadastroFIN_CDNF: TIntegerField
      FieldName = 'FIN_CDNF'
      Origin = '"FIN_REC_BAN_BAI"."FIN_CDNF"'
    end
    object CadastroFIN_DTNF: TDateField
      FieldName = 'FIN_DTNF'
      Origin = '"FIN_REC_BAN_BAI"."FIN_DTNF"'
    end
    object CadastroFIN_CDPD: TIntegerField
      FieldName = 'FIN_CDPD'
      Origin = '"FIN_REC_BAN_BAI"."FIN_CDPD"'
    end
    object CadastroFIN_DEPD: TIBStringField
      FieldName = 'FIN_DEPD'
      Origin = '"FIN_REC_BAN_BAI"."FIN_DEPD"'
      Size = 30
    end
    object CadastroFIN_DTPD: TDateField
      FieldName = 'FIN_DTPD'
      Origin = '"FIN_REC_BAN_BAI"."FIN_DTPD"'
    end
    object CadastroFIN_CDPG: TIntegerField
      FieldName = 'FIN_CDPG'
      Origin = '"FIN_REC_BAN_BAI"."FIN_CDPG"'
    end
    object CadastroFIN_DERD: TIBStringField
      FieldName = 'FIN_DERD'
      Origin = '"FIN_REC_BAN_BAI"."FIN_DERD"'
      Size = 30
    end
    object CadastroFIN_DTRD: TDateField
      FieldName = 'FIN_DTRD'
      Origin = '"FIN_REC_BAN_BAI"."FIN_DTRD"'
    end
    object CadastroFIN_DTNR: TDateField
      FieldName = 'FIN_DTNR'
      Origin = '"FIN_REC_BAN_BAI"."FIN_DTNR"'
    end
    object CadastroFIN_VDEV: TIBBCDField
      FieldName = 'FIN_VDEV'
      Origin = '"FIN_REC_BAN_BAI"."FIN_VDEV"'
      Precision = 18
      Size = 2
    end
    object CadastroFIN_VABA: TIBBCDField
      FieldName = 'FIN_VABA'
      Origin = '"FIN_REC_BAN_BAI"."FIN_VABA"'
      Precision = 18
      Size = 2
    end
    object CadastroFIN_VCRD: TIBBCDField
      FieldName = 'FIN_VCRD'
      Origin = '"FIN_REC_BAN_BAI"."FIN_VCRD"'
      Precision = 18
      Size = 2
    end
    object CadastroFIN_TITU: TIBStringField
      FieldName = 'FIN_TITU'
      Origin = '"FIN_REC_BAN_BAI"."FIN_TITU"'
      Size = 30
    end
    object CadastroFIN_DTST: TDateTimeField
      FieldName = 'FIN_DTST'
      Origin = '"FIN_REC_BAN_BAI"."FIN_DTST"'
    end
    object CadastroFIN_CDDP: TIBStringField
      FieldName = 'FIN_CDDP'
      Origin = '"FIN_REC_BAN_BAI"."FIN_CDDP"'
      FixedChar = True
      Size = 2
    end
    object CadastroFIN_DTDP: TDateTimeField
      FieldName = 'FIN_DTDP'
      Origin = '"FIN_REC_BAN_BAI"."FIN_DTDP"'
    end
    object CadastroFIN_CDBC: TIBStringField
      FieldName = 'FIN_CDBC'
      Origin = '"FIN_REC_BAN_BAI"."FIN_CDBC"'
      FixedChar = True
      Size = 2
    end
    object CadastroFIN_DTBC: TDateTimeField
      FieldName = 'FIN_DTBC'
      Origin = '"FIN_REC_BAN_BAI"."FIN_DTBC"'
    end
  end
  inherited DTSCadastro: TDataSource
    OnDataChange = dtscadastroDataChange
  end
  inherited imageOPC: TImageList
    Bitmap = {
      494C01010C000E00040048004800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00AAAAAA00161616000D0D0D000808
      08001515150017171700171717000F0F0F000A0A0A0000000000080808000B0B
      0B000D0D0D000A0A0A00191919001111110013131300080808000B0B0B000808
      0700121212000F0F0F00080808000B0B0B001212120015151500161616001414
      14000F0F0F000D0D0D0010101000F0F0F000FDFDFD00FEFEFE00FCFCFC000000
      00000000000000000000000000000000000000000000E6E6E600E3E3E300E1E1
      E100DFDFDF00E0E0E000DEDEDE00DBDBDB00DBDBDB00DBDBDB00DADADA00D6D6
      D600D6D6D600D6D6D600D4D4D400D5D5D500D4D4D400D4D4D400D5D5D500D5D5
      D500D5D5D500D4D4D400D4D4D400D2D2D200D5D5D500D2D2D200D5D5D500D5D5
      D500D4D4D400D4D4D400D5D5D500D5D5D500D5D5D500D5D5D500D4D4D400D4D4
      D400D5D5D500D6D6D600D4D4D400D4D4D400D2D2D200D2D2D200D2D2D200D4D4
      D400D2D2D200D1D1D100CFCFCF00D1D1D100D1D1D100D1D1D100D1D1D100D0D0
      D000D1D1D100D2D2D200D0D0D000D0D0D000D1D1D100CFCFCF00CFCFCF00D1D1
      D100D2D2D200D2D2D200D5D5D500D6D6D600D9D9D900DBDBDB00DEDEDE00E0E0
      E000E0E0E000E4E4E400E6E6E600E9E9E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6F6F600DDDDDD00C2C2C200BABABA00BABA
      BA00BABABA00BABABA00BABABA00BABABA00BABABA00BABABA00BABABA00BABA
      BA00BABABA00BABABA00BABABA00BABABA00BABABA00BABABA00BABABA00BABA
      BA00BABABA00BABABA00BABABA00BABABA00BABABA00BABABA00BABABA00BABA
      BA00BABABA00BABABA00B9B9B900DADADA00EBEBEB00E9E9E900EEEEEE00FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7C7C70033333300050505000909
      0900111111000F0F0F000C0C0C000D0D0D00101010000A0A0A00101010000D0D
      0D00101010001818180000000000191919000505050013131300020202000707
      07000A0A0A000E0E0E000A0A0A00101010000D0D0D000B0B0B000D0D0D000B0B
      0B00151515000F0F0F004C4C4C00F6F6F600FDFDFD00FEFEFE00FCFCFC00FEFE
      FE0000000000000000000000000000000000FBFBFB00E3E3E300E1E1E100E0E0
      E000DCDCDC00DCDCDC00DCDCDC00DBDBDB00D9D9D900D6D6D600D7D7D700D7D7
      D700D6D6D600D6D6D600D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D0D0
      D000D0D0D000D4D4D400D2D2D200D1D1D100D2D2D200D0D0D000D0D0D000D4D4
      D400D2D2D200D2D2D200D2D2D200D1D1D100D5D5D500D4D4D400D0D0D000D0D0
      D000D1D1D100D0D0D000CFCFCF00D0D0D000CDCDCD00CDCDCD00CDCDCD00CCCC
      CC00CBCBCB00CCCCCC00CCCCCC00CCCCCC00CBCBCB00CBCBCB00CCCCCC00CDCD
      CD00CCCCCC00CCCCCC00C9C9C900C8C8C800C7C7C700C8C8C800C9C9C900CCCC
      CC00CCCCCC00CFCFCF00D2D2D200D4D4D400D7D7D700DADADA00DCDCDC00DFDF
      DF00E0E0E000E1E1E100E6E6E600E9E9E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9E9E900BEBEBE009C9C9C009F9F9F00B7B7B700BCBCBC00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BABABA00B9B9B900B9B9B900B9B9
      B900B9B9B900B9B9B900B9B9B900BABABA00C0C0C000CECECE00D5D5D500D5D5
      D500E1E1E100F8F8F80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FCFCFC00F9F9F90000000000CECE
      CE00A0A0A00088888800646464004A4A4A004141410020202000010101000C0C
      0C0006060600030303001D1D1D000D0D0D001111110000000000050505000404
      040007070700090909002B2B2B003B3B3B004D4D4D006969690085858500A9A9
      A900DEDEDE0000000000FDFDFD00000000000000000000000000FDFDFD00FDFD
      FD0000000000000000000000000000000000FBFBFB00E4E4E400E0E0E000DFDF
      DF00DEDEDE00DCDCDC00DBDBDB00DADADA00D7D7D700D6D6D600D5D5D500D1D1
      D100D2D2D200D2D2D200CFCFCF00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CBCB
      CB00CCCCCC00CFCFCF00CDCDCD00CDCDCD00CFCFCF00CFCFCF00D0D0D000D0D0
      D000CFCFCF00CFCFCF00D1D1D100CDCDCD00D0D0D000CFCFCF00D0D0D000CFCF
      CF00CFCFCF00CCCCCC00CCCCCC00CCCCCC00CBCBCB00C9C9C900C7C7C700C5C5
      C500C5C5C500C5C5C500C4C4C400C1C1C100C0C0C000C0C0C000C1C1C100C3C3
      C300C4C4C400C0C0C000BFBFBF00C0C0C000C0C0C000BFBFBF00C4C4C400C4C4
      C400C9C9C900CBCBCB00CDCDCD00CFCFCF00D6D6D600D9D9D900D9D9D900DBDB
      DB00DEDEDE00E3E3E300E1E1E100E9E9E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00CFCFCF00B1B1B100B3B3B300C6C6C600D8D8D800E0E0E000E0E0E000DFDF
      DF00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DBDBDB00D1D1D100BCBCBC00BABABA00C7C7
      C700C9C9C900CBCBCB00E6E6E600FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00F6F6F600FEFE
      FE000000000000000000FDFDFD00FAFAFA00FAFAFA0000000000191919005252
      5200707070003636360052525200EAEAEA008D8D8D0002020200626262006262
      620011111100B4B4B400FEFEFE00FCFCFC00FCFCFC00FEFEFE00000000000000
      0000F8F8F800F8F8F800FCFCFC00FDFDFD00FCFCFC00FDFDFD00000000000000
      00000000000000000000000000000000000000000000E3E3E300E0E0E000DEDE
      DE00DCDCDC00DADADA00DADADA00D7D7D700D5D5D500D5D5D500D2D2D200D0D0
      D000D0D0D000CFCFCF00CCCCCC00CCCCCC00C8C8C800C9C9C900C5C5C500C4C4
      C400C4C4C400C5C5C500C8C8C800C8C8C800CBCBCB00CBCBCB00CFCFCF00CBCB
      CB00CCCCCC00CDCDCD00CFCFCF00CDCDCD00CFCFCF00CCCCCC00CCCCCC00CCCC
      CC00C9C9C900CBCBCB00C8C8C800C8C8C800C7C7C700C5C5C500C0C0C000C4C4
      C400C0C0C000BDBDBD00BDBDBD00B8B8B800B6B6B800B1B1B100AFAFAF00ADAB
      AB00A8A8A800AAABAB00AEAEAE00AEAEAE00B1B1B100B3B3B300B8B8B800BCBC
      BC00C0C0C000C3C3C300C7C7C700C9C9C900D1D1D100D2D2D200D5D5D500D9D9
      D900DBDBDB00E1E1E100E1E1E100E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F3F300C1C1
      C100B1B1B100C2C2C200DCDCDC00EBEBEB00F1F1F100EEEEEE00ECECEC00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00ECECEC00ECECEC00EDEDED00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00E6E6E600D2D2D200B7B7B700B3B3
      B300C9C9C900BDBDBD00C0C0C000D6D6D600F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FEFEFE00FEFE
      FE00FEFEFE000000000000000000FEFEFE00FDFDFD00E1E1E1000C0C0C005D5D
      5D00575757000C0C0C00AAAAAA00FCFCFC00E3E3E30000000000606060006161
      61002D2D2D0075757500FDFDFD00FEFEFE00FBFBFB00FEFEFE00FAFAFA00FDFD
      FD00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE0000000000000000000000000000000000FBFBFB00E3E3E300E0E0E000DEDE
      DE00DBDBDB00DADADA00D7D7D700D6D6D600D2D2D200D0D0D000D1D1D100CDCD
      CD00CBCBCB00CCCCCC00C7C7C700C7C7C700C3C3C300C3C3C300BDBDBD00C1C1
      C100BFBFBF00BDBDBD00BFBFBF00C0C0C000C4C4C400C5C5C500C9C9C900C8C8
      C800C9C9C900C9C9C900C9C9C900C9C9C900C7C7C700C7C7C700C7C7C700C8C8
      C800C8C8C800C5C5C500C4C4C400C5C5C500C4C4C400C1C1C100BCBCBC00BCBC
      BC00B9B9B900B5B5B500B3B3B300AEABAD00A8A7A6009FA6A4009F9D99008E92
      930084858100807F7F008989890097979700A0A0A000A6A6A600ADADAD00B1B1
      B100B6B6B600BABABA00C0C0C000C3C3C300CDCDCD00D0D0D000D4D4D400D6D6
      D600DADADA00DFDFDF00E0E0E000EBEBEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB00C7C7C700A8A8
      A800C9C9C900EBEBEB00F2F2F200EBEBEB00E7E7E700E7E7E700E8E8E800E8E8
      E800E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EBEBEB00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00E9E9E900CDCDCD00B0B0
      B000BCBCBC00CBCBCB00B6B6B600B3B3B300DEDEDE00F8F8F800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FDFDFD000000000000000000FEFEFE00000000006F6F6F00222222004646
      46004A4A4A0001010100E7E7E700F7F7F7000000000000000000353535005353
      5300303030002B2B2B00FBFBFB00FCFCFC00FEFEFE0000000000FBFBFB00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE0000000000000000000000000000000000FBFBFB00E3E3E300DFDFDF00DEDE
      DE00DCDCDC00DBDBDB00D6D6D600D2D2D200D1D1D100CFCFCF00CDCDCD00CBCB
      CB00CBCBCB00C8C8C800C4C4C400C5C5C500C0C0C000BDBDBD00BCBCBC00B8B8
      B800B5B5B500B6B6B600B6B6B600B8B8B800B8B8B800BDBDBD00BFBFBF00BFBF
      BF00C0C0C000C1C1C100C3C3C300C5C5C500C5C5C500C5C5C500C5C5C500C7C7
      C700C5C5C500C4C4C400C1C1C100C1C1C100C0C0C000BFBFBF00BABABA00B6B6
      B600B3B3B300AFAFAF00ADADAE00A1A3A100979C9C00908F8A00858381007678
      7B007D7B78007373740072727200747474008484840092929200A3A3A300A6A6
      A600ABABAB00B2B2B200B6B6B600BDBDBD00C8C8C800CDCDCD00D2D2D200D6D6
      D600DBDBDB00E1E1E100E3E3E300E9E9E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00E1E1E100A4A4A400CFCF
      CF00EFEFEF00F0F0F000E9E9E900E7E7E700E8E8E800E8E8E800E9E9E900E9E9
      E900E9E9E900E9E9E900EAEAEA00EAEAEA00EAEAEA00EBEBEB00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00E5E5E500C8C8
      C800ABABAB00D2D2D200CACACA00B4B4B400BEBEBE00E1E1E100F9F9F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FCFCFC00FEFEFE000000000000000000FDFDFD0013131300030303000101
      0100010101000A0A0A00FEFEFE00FCFCFC000000000070707000030303000101
      0100000000000A0A0A00FDFDFD00FBFBFB0000000000FBFBFB00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE000000000000000000000000000000000000000000E1E1E100E0E0E000DCDC
      DC00D9D9D900D9D9D900D6D6D600D4D4D400CDCDCD00CCCCCC00C9C9C900C8C8
      C800C4C4C400C4C4C400C3C3C300C0C0C000BCBCBC00B9B9B900B3B3B300A7A7
      A7008D8D8D007D7D7D007979790079797900808080009D9D9D00A7A7A700ADAD
      AD00B1B1B100B5B5B500BDBDBD00C1C1C100BFBFBF00C3C3C300C0C0C000C0C0
      C000C0C0C000BFBFBF00BFBFBF00BDBDBD00BABABA00BABABA00B5B5B500B3B3
      B300AFAFAF00ABABAB00A4A4A400979790006C6D700046466700292D6200403F
      5000373D3D00131112003D3D3E005B5B5B007979790076767600909090009C9C
      9C00A4A4A400A8A8A800AEAEAE00B6B6B600C5C5C500CCCCCC00D2D2D200D7D7
      D700DADADA00E0E0E000E4E4E400E6E6E6000000000000000000000000000000
      0000000000000000000000000000FBFBFB00ECECEC00E8E8E800FCFCFC000000
      0000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FDFDFD00FDFD
      FD00FCFCFC00FCFCFC00FBFBFB00FAFAFA00FAFAFA00F9F9F900F9F9F900F7F7
      F700F7F7F700F6F6F600F6F6F600F6F6F600F6F6F600F5F5F500F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F5F5F500F6F6F600F6F6F600F6F6F600F6F6
      F600F7F7F700F7F7F700F9F9F900F9F9F900FAFAFA00FAFAFA00FBFBFB00FCFC
      FC00FCFCFC00FDFDFD00FEFEFE00FEFEFE00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F400AAAAAA00C1C1C100EFEF
      EF00F0F0F000E9E9E900E7E7E700E8E8E800E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900EAEAEA00EBEBEB00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00ECECEC00ECECEC00ECECEC00ECECEC00DCDC
      DC00BEBEBE00C4C4C400DADADA00C8C8C800B3B3B300C1C1C100E3E3E300FAFA
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FDFDFD00F4F4F40010101000060606001111
      11000000000096969600F6F6F600CACACA00F7F7F700C1C1C100000000000101
      01000F0F0F000C0C0C00E8E8E80000000000FBFBFB00FBFBFB0000000000FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE0000000000000000000000000000000000FBFBFB00E3E3E300E0E0E000DBDB
      DB00D9D9D900D7D7D700D4D4D400D1D1D100C9C9C900C7C7C700C4C4C400C1C1
      C100C0C0C000BFBFBF00BABABA00B9B9B900B8B8B800B2B2B200AAAAAA008989
      8900A7A7A700AFAFAF00AAAAAA00A1A1A10095959500707070006A6A6A006F6F
      6F007F7F7F009A9A9A00B8B8B800BCBCBC00BDBDBD00C0C0C000BFBFBF00BCBC
      BC00BFBFBF00C0C0C000BCBCBC00BABABA00B9B9B900B5B5B500AFAFAF00AFAF
      AF00ADADAD00A7A7A700A1A0A1006061810008099000000088000A0980003239
      38003333360012111200100E11000706070026272600545454007F7F7F008383
      8300909090009F9F9F00A8A8A800AFAFAF00C7C7C700D0D0D000D5D5D500DADA
      DA00DCDCDC00E3E3E300E4E4E400E9E9E9000000000000000000000000000000
      000000000000FEFEFE00F6F6F600D7D7D7009A9A9A0089898900E3E3E300FBFB
      FB00FEFEFE00FDFDFD00FCFCFC00FBFBFB00FAFAFA00F8F8F800F7F7F700F5F5
      F500F4F4F400F4F4F400F3F3F300F2F2F200F1F1F100F1F1F100EFEFEF00EEEE
      EE00EEEEEE00EEEEEE00EDEDED00ECECEC00ECECEC00ECECEC00ECECEC00EBEB
      EB00EBEBEB00EBEBEB00ECECEC00ECECEC00ECECEC00ECECEC00EDEDED00EEEE
      EE00EEEEEE00EFEFEF00EFEFEF00F1F1F100F2F2F200F2F2F200F3F3F300F4F4
      F400F5F5F500F7F7F700F8F8F800FAFAFA00FBFBFB00FCFCFC00FDFDFD00FDFD
      FD00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC00E5E5E50086868600EAEAEA00F2F2
      F200EBEBEB00E8E8E800E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900EBEBEB00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00E9E9
      E900D3D3D300ABABAB00E5E5E500D9D9D900C8C8C800B1B1B100BFBFBF00E4E4
      E400FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F40007070700030404000000
      00000405050063636300090909005D5D5D000303030060606000070707000505
      05000303030000000000C1C1C10000000000FCFEFD00FFFFFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFE00FFFFFD00FBFBFB00E6E6E600E0E0E000DBDB
      DB00DADADA00D6D6D600D0D0D000CCCCCC00C4C4C400C1C1C100BFBFBF00B9B9
      B900B3B3B300B2B2B200AFAFAF00AEAEAE00ABABAB00A8A8A800A3A3A300AFAF
      AF00BFBFBF00C3C3C300B9B9B900B5B5B500AEAEAE00B2B2B200AFAFAF009C9C
      9C008181810066666600AEAEAE00B5B5B500B8B8B800B9B9B900BABABA00BCBC
      BC00BABABA00B9B9B900BABABA00B9B9B900B6B6B600B3B3B300B1B1B100ADAD
      AD00ABABAB00A3A3A3009F9D9D004141950000019D0000019D00161AA8001C1F
      3C002B2B3200131214001212130012111200121112000D0D0D00454545007070
      7000818181008484840096969600AEAEAE00CFCFCF00D4D4D400D9D9D900DCDC
      DC00DFDFDF00E3E3E300E3E3E300E8E8E8000000000000000000000000000000
      000000000000F7F7F700ADADAD002C2C2C0019191900232323006A6A6A00DDDD
      DD00FAFAFA00F7F7F700F6F6F600F4F4F400F3F3F300F2F2F200F0F0F000EFEF
      EF00EDEDED00ECECEC00EBEBEB00EAEAEA00E9E9E900E9E9E900E7E7E700E6E6
      E600E6E6E600E4E4E400E4E4E400E4E4E400E4E4E400E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E4E4E400E4E4E400E4E4E400E4E4
      E400E6E6E600E7E7E700E7E7E700E9E9E900EAEAEA00EBEBEB00ECECEC00EEEE
      EE00EFEFEF00EFEFEF00F0F0F000F3F3F300F5F5F500F6F6F600F7F7F700F8F8
      F800FAFAFA00FCFCFC00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F300C4C4C400B1B1B100F6F6F600EEEE
      EE00E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00DCDCDC00A9A9A900E9E9E900E5E5E500D9D9D900C7C7C700B3B3B300C7C7
      C700F2F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00FDFD
      FD00FDFDFD00FCFCFC00FBFBFB00FCFCFC00FCFCFC00FAFAFA00FCFCFC00FEFE
      FE000000000000000000FBFBFB00F7F7F70000000000F1F1F1001C1C1C002626
      26002D2D2D00262626002F2F2F002B2B2B002A2A2A0029292900292929002828
      280027272B002A292D002B2B2E0026272C00212227000F1115000F1317001114
      17000F1217000F0E1200191519005450520044424300080709000C0B0D001111
      1100101212000C0E0E001D1E1D002A2D2B00292D2A0023262400292E29002227
      23002C332800242922003439300027272E0025262A00282B29002A3228002526
      24002D2F300024262600ECF1E800EDF4E400FBFBFB00E4E4E400E1E1E100DEDE
      DE00DBDBDB00D4D4D400CFCFCF00CBCBCB00BABABA00B5B5B500B3B3B300ABAB
      AB00A4A4A400A1A1A100A0A0A0009F9F9F009C9C9C009C9C9C0099999900B3B3
      B300BFBFBF00C1C1C100B5B5B500AAAAAA00A7A7A700B5B5B500BABABA00B9B9
      B900ABABAB0090909000A7A7A700AFAFAF00B2B2B200B8B8B800B8B8B800B8B8
      B800B8B8B800B9B9B900B8B8B800B6B6B600B5B5B500B5B5B500ADADAD00AAAA
      AA00A4A4A400A1A1A100999999004E4EA4000000B6000409AD00090BA6001C1E
      44002226230015131500141315001312140012111300121212000D0D0D000E0E
      0E002D2D2D0058585800ABABAB00C1C1C100D2D2D200D7D7D700D9D9D900DCDC
      DC00DFDFDF00E1E1E100E4E4E400E6E6E6000000000000000000000000000000
      0000FBFBFB00A4A4A4002B2B2B000F0F0F00111111001C1C1C002C2C2C006F6F
      6F00CDCDCD00F3F3F300F2F2F200EFEFEF00EEEEEE00EDEDED00EBEBEB00EAEA
      EA00E8E8E800E7E7E700E6E6E600E5E5E500E3E3E300E2E2E200E1E1E100E0E0
      E000E0E0E000DEDEDE00DDDDDD00DDDDDD00DDDDDD00DCDCDC00DBDBDB00DBDB
      DB00DBDBDB00DBDBDB00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DEDEDE00DEDE
      DE00E0E0E000E1E1E100E1E1E100E2E2E200E3E3E300E5E5E500E6E6E600E7E7
      E700E8E8E800EAEAEA00EBEBEB00EDEDED00EFEFEF00F1F1F100F2F2F200F3F3
      F300F5F5F500F7F7F700F9F9F900FAFAFA00FCFCFC00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDEDED00AFAFAF00D2D2D200F5F5F500EDED
      ED00E9E9E900E9E9E900E9E9E900EAEAEA00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00DBDBDB00A3A3A300EDEDED00E9E9E900E3E3E300D6D6D600C5C5C500B9B9
      B900CDCDCD00FBFBFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FBFB
      FB00FDFDFD00FDFDFD00F4F4F400FBFBFB00FDFDFD00F9F9F900FEFEFE00FEFE
      FE00FCFCFC00FDFDFD00FEFEFE00FCFCFC00FCFCFC00F6F6F600000000001717
      1700111111001E1E1E0016161600171717001B1B1B001C1C1C001C1C1C001D1D
      1D00212122001C1C1D00181617001A1818001C1B190016151200171714001819
      1300181913001813170017141A008684880078787B00020204001B1A1C00191B
      1B00191A1B001A1B1C00201E200019171700181617001B191A00171516002322
      22001E1D1C0043424200121110002C2931003A393C0035373200060A04007477
      75001314180000000000F3F4F500F8FCF600FBFBFB00E4E4E400E3E3E300DEDE
      DE00DCDCDC00D9D9D900D5D5D500CCCCCC00B8B8B800AEAEAE00A3A3A3009C9C
      9C00959595008F8F8F0080808000797979007B7B7B008181810088888800A1A1
      A100B8B8B800B1B1B100A6A6A600A0A0A0009D9D9D00ADADAD00B9B9B900BCBC
      BC00B9B9B900A7A7A700A6A6A600ADADAD00B2B2B200B3B3B300B6B6B600B6B6
      B600B8B8B800B8B8B800B6B6B600B3B3B300B2B2B200B1B2B100ABABAB00A7A7
      A700A0A0A0009A9A9A00969696008E8B93001E1E9A0005059D001E20B6001C1A
      47001D1F1F001613150014141600131214001312140012121400121212001212
      120012121200060606001616160056565600CFCFCF00D5D5D500D9D9D900DEDE
      DE00DFDFDF00E4E4E400E4E4E400E9E9E9000000000000000000000000000000
      0000D3D3D3006A6A6A000E0E0E00090909000D0D0D00131313001D1D1D003131
      31006F6F6F00C2C2C200EEEEEE00ECECEC00EAEAEA00E8E8E800E7E7E700E5E5
      E500E4E4E400E3E3E300E1E1E100E1E1E100DFDFDF00DEDEDE00DDDDDD00DBDB
      DB00DADADA00D9D9D900D8D8D800D7D7D700D7D7D700D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D7D7D700D7D7D700D7D7D700D8D8D800D9D9D900D9D9
      D900DADADA00DBDBDB00DDDDDD00DEDEDE00DFDFDF00E1E1E100E1E1E100E3E3
      E300E5E5E500E7E7E700E8E8E800EAEAEA00EBEBEB00EDEDED00EFEFEF00F0F0
      F000F2F2F200F4F4F400F6F6F600F7F7F700FAFAFA00FCFCFC00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E9E9E900A3A3A300E3E3E300F3F3F300ECEC
      EC00E9E9E900EBEBEB00EBEBEB00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00E0E0E000B6B6B600EFEFEF00ECECEC00E9E9E900E2E2E200D6D6D600C5C5
      C500C0C0C000D8D8D80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FBFB
      FB00FEFEFE00EDEDED00B7B7B700BABABA00E1E1E100EFEFEF00FAFAFA00FEFE
      FE00FEFEFE00FDFDFD00FEFEFE0000000000F9F9F900F1F1F100000000003131
      31002B2B2B002D2D2D002E2E2E00323232002D2D2D002D2D2D002E2E2E002F2F
      2F0033312F00363332003936310037342E003532290037332700383324003631
      1E00362D1C0029251F00231F1D00A9A6A40084827D002D2C2700313029002D2E
      2500302C2500332F2900312A2600332B2A00352D2C00362D2D00372F2F002017
      1800372F2F0021181A002B222400272020002B282300191A0D001F2115004748
      43000E0B140003000A00EBEAF300FDFFFF00FBFBFB00E6E6E600E3E3E300E0E0
      E000DCDCDC00DCDCDC00D7D7D700D4D4D400B9B8B900A4A3A400959593008B8B
      8B00868686007F7F7F008B8B8B0083838300686868005E5E5E005A5A5A007474
      7400ABABAB00A3A3A3009C9C9C00999999009696960099999900AFAFAF00B3B3
      B300B9B9B900B3B3B300ADADAD00AFAFAF00B2B2B200B5B5B500B6B6B600B8B8
      B800BABABA00B6B6B600B6B6B600B5B5B500B2B2B200B2B2B200A3A7A600A1A0
      A00093999D00938F8E0086888600817D80008586840059598B0013107B000F12
      4E00191D1E001614160014141600141315001413150013121400131214001213
      12001212120011111100111111000E0E0E00D9D9D900D5D5D500D9D9D900DCDC
      DC00DEDEDE00E4E4E400E4E4E400E9E9E9000000000000000000000000000000
      0000B8B8B800525252001313130006060600090909000D0D0D00141414001D1D
      1D003333330070707000B8BABB00E2E6E800E9E9E900E7E7E700E5E5E500E3E3
      E300E2E2E200E1E1E100DFDFDF00DFDFDF00DCDCDC00DBDBDB00DADADA00D9D9
      D900D7D7D700D7D7D700D6D6D600D5D5D500D4D4D400D3D3D300D3D3D300D2D2
      D200D2D2D200D2D2D200D3D3D300D4D4D400D4D4D400D5D5D500D6D6D600D7D7
      D700D8D8D800D9D9D900DBDBDB00DCDCDC00DDDDDD00DFDFDF00DFDFDF00E1E1
      E100E3E3E300E5E5E500E6E6E600E8E8E800E9E9E900EBEBEB00EDEDED00EEEE
      EE00F1F1F100F2F2F200F4F4F400F6F6F600F8F8F800FAFAFA00FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5E5E50095959500F7F7F700F5F5F500EDED
      ED00EBEBEB00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EEEEEE00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EEEEEE00EDED
      ED00E1E1E100BBBBBB00DDDDDD00EDEDED00EDEDED00E8E8E800E2E2E200D5D5
      D500C6C6C600C6C6C600E8E8E800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FCFC
      FC00FDFDFD00D0D0D0005252520027272700545454006B6B6B00A5A5A500C5C5
      C500E1E1E100F2F2F200FDFDFD0000000000F5F5F500EFEFEF00000000001212
      12006A6A6A00646464006D6D6D006B6B6B006D6D6D006C6C6C006C6C6C006B6C
      6B0051504C004E4B46004F4E44005E594E006A6352005E564300625741006459
      3D0063573C005F584000655F49005C5640005A563E004D492E00625C4000605B
      3D005F5A3C00625B3D005C553D005F5740005D5540005A513E005A513E006258
      460051473600665B4E0054493C00595240005C5A42005F60410053543A00514F
      4200221F200000000000F5F4FB00F2F3F700FBFBFB00E6E6E600E4E4E400E0E0
      E000DEDEDE00DBDBDB00D7D7D700D4D4D400C1C1C100BFBDBF00A0A1A0008B8B
      8B008080800073737300A7A7A7009D9D9D008B8B8B007D7D7D006F6F6F005C5C
      5C008B8B8B009C9C9C009797970095959500929292008B8B8B00979797009F9F
      9F00B1B1B100AFAFAF00AFAFAF00B5B5B500B3B3B300B9B9B900B6B6B600B6B6
      B600B9B9B900B9B9B900B8B8B800B5B5B500B3B2B200B1B1AF009FA09D00938F
      8E006D6E70004F5161004A485F0057585F00636562007B79680079748A00181B
      5A00191B19001715170015141600141315001413150014131500141315001312
      140013131300131313001313130012121200DFDFDF00D5D5D500DBDBDB00DCDC
      DC00DFDFDF00E4E4E400E4E4E400E8E8E8000000000000000000000000000000
      0000B8B8B8005C5C5C00242424000C0C0C0006060600090909000E0E0E001414
      14001C1C1C0033373B00517397006AAEEF007FBEEF009ACBEB00C2DBE700E0E2
      E400E2E2E200E1E1E100E0E0E000DFDFDF00DDDDDD00DCDCDC00DBDBDB00D9D9
      D900D8D8D800D7D7D700D7D7D700D6D6D600D5D5D500D4D4D400D4D4D400D3D3
      D300D3D3D300D3D3D300D4D4D400D5D5D500D5D5D500D6D6D600D7D7D700D8D8
      D800D9D9D900DADADA00DBDBDB00DDDDDD00DEDEDE00DFDFDF00E0E0E000E1E1
      E100E3E3E300E5E5E500E7E7E700E8E8E800EAEAEA00ECECEC00EEEEEE00EFEF
      EF00F1F1F100F3F3F300F4F4F400F6F6F600F9F9F900FBFBFB00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E3E3E3008F8F8F0000000000F6F6F600EEEE
      EE00ECECEC00ECECEC00ECECEC00ECECEC00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EFEF
      EF00E4E4E400C1C1C100CCCCCC00ECECEC00EFEFEF00ECECEC00E9E9E900E1E1
      E100D5D5D500C8C8C800CFCFCF00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB00FEFEFE00FAFA
      FA00F5F5F500E6E6E600D2D2D200909090003B3B3B0003030300292929004E4E
      4E005D5D5D0080808000B7B7B700D9D9D900EFEFEF00F3F3F300000000000000
      0000E0E0E00000000000FCFCFC00000000000000000000000000000000000000
      0000FFFEF900F7F6F100EAE7DE00D1CDBD00BEB9A500ABA38D00ABA08500B4A9
      8C00BAAD8C00B1A87F00B5AB7F00BCB28500B7AE8100B5AB7A00BAAD7B00BDB2
      7C00BCB17900B9AE7600B6AE7B00B4AE7D00B5AE7E00B8B18100BBB48400B4AC
      7F00B6AE8200B4AC8100B5AD8300B6AF8400ADAB7D00AFB07E00AFB18500A4A4
      89000F0C060000000000EFF0F100F9FCFC00FBFBFB00E8E8E800E4E4E400E0E0
      E000DEDEDE00DBDBDB00D6D6D600D1D2D1009090900052525200656665009595
      9500A3A3A30093939300A8A8A800A1A1A1008E8E8E0081818100737373007373
      7300858585009A9A9A009797970096969600909090008E8E8E00A6A6A600A7A7
      A700ABABAB00AEAEAE00B5B5B500B5B5B500B9B9B900BABABA00BABABA00BABA
      BA00B9B9B900BCBCBC00B8B8B800B6B6B600B6B6B800B5B2B100A7A4A300676C
      8600120F780000007200000069000000620007055C0014175A003B3D5A002322
      6100161818001715170015141600141315001413150014131500141315001413
      150014131400131313001313130013131300E0E0E000D9D9D900DEDEDE00DFDF
      DF00E1E1E100E6E6E600E6E6E600ECECEC000000000000000000000000000000
      0000D9D9D90090909000454545001A1A1A000808080006060600090909000D0D
      0D0014141400173652001061B6000A7DF7001A8AF6003697F3005FAAF0007EB8
      ED008DC2EB00A2CDE800B8D4E400D0DCE200E0E0E000DFDFDF00DEDEDE00DDDD
      DD00DCDCDC00DADADA00DADADA00DADADA00D9D9D900D9D9D900D8D8D800D8D8
      D800D8D8D800D8D8D800D8D8D800D9D9D900D9D9D900DADADA00DBDBDB00DCDC
      DC00DDDDDD00DDDDDD00DEDEDE00E0E0E000E1E1E100E2E2E200E3E3E300E4E4
      E400E6E6E600E8E8E800E9E9E900EBEBEB00EDEDED00EEEEEE00EFEFEF00F1F1
      F100F3F3F300F4F4F400F6F6F600F8F8F800FAFAFA00FCFCFC00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E3E3E3009090900000000000F6F6F600EEEE
      EE00ECECEC00ECECEC00ECECEC00ECECEC00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EEEEEE00EEEEEE00EEEE
      EE00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000EBEBEB00D5D5D500B9B9B900DDDDDD00EDEDED00EEEEEE00EBEBEB00E8E8
      E800E1E1E100D4D4D400CACACA00EBEBEB00FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FCFCFC00FEFE
      FE00F1F1F100F4F4F400F9F9F90000000000FEFEFE00E2E2E200AFAFAF005D5D
      5D002A2A2A0011111100383838004E4E4E007373730097979700000000000000
      0000DEDEDE00FEFEFE00FAFAFA00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FAF9F500FFFEF900FFFFFA00FFFFF600FFFEF000FEFBEA00F0EBD500E0D7
      BD00C8BEA300B5AA8000AFA57300B1A77200BCB17900C0B57B00B8AD7100BEB1
      7200C2B37000C5B67200BCB27000BAB37100B8B26F00B7B36E00B8B46F00B6B2
      6E00B6B26D00B7B26D00B7B26D00B7B37500B5B27100B2B37200B0B27900A9AA
      82001212050000000000F0F3ED00FBFFFA00FBFBFB00EAEAEA00E6E6E600E1E1
      E100E0E0E000DCDCDC00D7D7D700DBDBDB0018191A000D101100090A0B000302
      030018171900525252009C9C9C009D9D9D008B8B8B007B7B7B006D6D6D007B7B
      7B00888888009C9C9C00A0A0A0009C9C9C009595950092929200ABABAB00ADAD
      AD00B1B1B100B3B3B300BABABA00B8B8B800BCBCBC00BDBDBD00BFBFBF00BFBF
      BF00BFBFBF00C0C0C000C0C0C000BDBDBD00BABCBC00B8B8BA00BDBFB2004343
      930000008D0007089000181CAD0001047000040974000A0A74000A0E70002122
      7000151716001715170016151700151416001514160014131500141315001413
      150014131500141315001313130013131300D2D2D200DEDEDE00DEDEDE00E3E3
      E300E4E4E400E7E7E700E8E8E800ECECEC000000000000000000000000000000
      0000FCFCFC00D5D5D50086868600373737001111110006060600060606000808
      080012242F0015639C000F88ED000880F9000677F9000575F8000577F800077F
      F800188DF500389EF2005BACEF0080BBEB009CC8E900A7CFE700B9D5E500CAD9
      E300DFE1E200E0E0E000E0E0E000DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00E0E0E000E1E1E100E1E1
      E100E2E2E200E2E2E200E4E4E400E5E5E500E6E6E600E7E7E700E8E8E800E9E9
      E900EBEBEB00ECECEC00EEEEEE00EFEFEF00F1F1F100F2F2F200F3F3F300F5F5
      F500F7F7F700F8F8F800FAFAFA00FCFCFC00FDFDFD00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E4E4E4009191910000000000F6F6F600EEEE
      EE00ECECEC00ECECEC00ECECEC00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EEEEEE00EEEEEE00EFEFEF00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000EBEBEB00C0C0C000D3D3D300DDDDDD00DBDBDB00E1E1E100E9E9
      E900E8E8E800E0E0E000D5D5D500D4D4D400F8F8F80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F9000000
      0000E5E5E500FDFDFD0000000000FAFAFA00F2F2F200FCFCFC00FBFBFB00FEFE
      FE00FBFBFB00D8D8D8008080800026262600252525003A3A3A00131313000000
      0000E2E2E200FCFCFC00FCFCFC00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FFFFFE00FFFEFD00FEFCF800FFFDF800FFFFF800FFFEF500FFFEF400FFFF
      F300FFFFF200FFFFEC00FFFDDA00E8E2BE00C6BF9500ADA47800B8AD7D00B2A8
      7400B4A97100B6A97100B7AD6F00B5AD6C00B8B06D00B9B16D00B5AF6900B9B2
      6A00B9B46900B9B46700B9B56700B9AF6C00BDB47100B6B16D00AFAE7500AEAB
      83001312050000000000F1F2ED00FCFFFC00FBFBFB00EBEBEB00E7E7E700E3E3
      E300E1E1E100DEDEDE00DADADA00E0E0E0001C1E1E00101212000E1011000C0E
      0F000A0A0B0004030500808080009A9A9A008B8B8B0079797900696969007C7C
      7C00888888009F9F9F00A1A1A100A3A3A3009D9D9D0092929200AEAEAE00B3B3
      B300B5B5B500B6B6B600C0C0C000BFBFBF00BFBFBF00C0C0C000C1C1C100C1C1
      C100C1C1C100C3C3C300C1C1C100C1C1C100C0C0C000C0BFBF00C7C8BD004D4F
      AD000E0AB50001069900131AB300181EA00010128A000102620017198300191B
      7400161517000F0E100017171800181617001615180015141600141315001412
      140014131500141315001414140013131300AFAFAF00E4E4E400E1E1E100E4E4
      E400E6E6E600E8E8E800EAEAEA00ECECEC000000000000000000000000000000
      000000000000FCFCFC00D5D5D5007A7A7A002B2B2B000B0B0B00070707000C1B
      2500195F8700209BDB001BABF900129BFA000B89FB00067EF9000578F9000577
      F9000575F8000574F8000679F8000781F800108DF7002A9EF30053AFF0007DBB
      EC00AFD1EB00BAD6EA00C4DAE600D7E0E300E4E5E400E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E7E7E700E8E8E800E8E8
      E800E9E9E900E9E9E900EBEBEB00ECECEC00ECECEC00EDEDED00EEEEEE00F0F0
      F000F1F1F100F2F2F200F4F4F400F5F5F500F7F7F700F8F8F800F9F9F900FAFA
      FA00FCFCFC00FDFDFD00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E4E4E4009191910000000000F6F6F600EEEE
      EE00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EEEEEE00EFEFEF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000E5E5E500CECECE00C2C2C200CBCBCB00D9D9
      D900E2E2E200E7E7E700E0E0E000D4D4D400F1F1F100FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC000000
      0000DCDCDC0000000000FAFAFA00FEFEFE00F9F9F900FDFDFD0000000000EAEA
      EA0000000000FEFEFE0000000000ECECEC0000000000C1C1C100000000000101
      0100E3E3E300FAFAFA00FEFEFE00FCFCFC00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FFFEFF00FFFEFF00FFFEFF00FEFDFE00FCFCFC00FDFEFC00FDFEFC00FDFF
      FC00FEFFFE00FEFEF800FEFCF400FEFFF600FFFFF300FFFDED00FFFFEE00EDE6
      CE00CEC7AC00AEA48700BBAD8400B5A67700B5A77800BBAE7A00BAAF7700B9B0
      7100B9B06F00B9B26C00B9B36C00BEAE7300BFAE7400B9AE7200B4AE7900ADA7
      8500150F050000000000F1F0F300FCFFFF00FBFBFB00EBEBEB00EAEAEA00E4E4
      E400E1E1E100E0E0E000DCDCDC00E6E6E6001B1D1C000F1112000E1011000D0F
      10000C0D0D000B0A0C004A4A4A009A9A9A008E8E8E007B7B7B00696969007272
      720081818100929292009D9D9D00A3A3A300A3A3A30093939300B9B9B900BDBD
      BD00BDBDBD00C0C0C000C4C4C400C4C4C400C4C4C400C3C3C300C7C7C700C5C5
      C500C9C9C900C8C8C800C8C8C800C7C7C700C8C8C800C9C7C800C8C5C000AEAE
      CD001010AD00090AAF001212A300080B880003036F0003076200202399000909
      6900151518005253530014161700161716001616160016161700151416001413
      1500141315001413150014141400131313007D7D7D00EDEDED00E3E3E300E6E6
      E600E7E7E700E8E8E800EAEAEA00F0F0F0000000000000000000000000000000
      00000000000000000000FCFCFC00DADADA006C6D6D001D2021001B232600226E
      980021A1E3001FB0F9001FB0F9001EB0F9001AABF9000D96F9000884FB00067D
      F9000579F9000577F9000576F9000576F9000575F9000575F800067BF8000682
      F800088BF8001E9BF6004BB1E4009ACFD800DAE6E000EDEEED00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EFEFEF00F0F0F000F0F0F000F0F0F000F0F0
      F000F1F1F100F1F1F100F3F3F300F4F4F400F4F4F400F5F5F500F6F6F600F8F8
      F800F9F9F900F9F9F900FAFAFA00FBFBFB00FCFCFC00FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E4E4E4009292920000000000F7F7F700EFEF
      EF00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EFEFEF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EBEBEB00CCCCCC00B6B6
      B600C3C3C300DEDEDE00E6E6E600E1E1E100E5E5E500F9F9F900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE00FDFD
      FD00DBDBDB00FDFDFD00FCFCFC00FDFDFD00FEFEFE00FDFDFD00F7F7F700FEFE
      FE00F4F4F400FDFDFD00FAFAFA00FCFCFC00F7F7F700EEEEEE00000000000004
      0000E3E4DD00FEF9F600FEFDFF00F9FAFF00FCFFFB00FEFFFB00FDFDFE00FFFD
      FF00FEFFFE00FEFFFD00FFFEFF00FDFDFF00FCFCFF00FBFEFF00FAFEFF00F8FD
      FE00F8FDFE00F7FBFF00F5F8FF00F9FCFF00FAFCFF00FBFEFF00FFFDFD00FAF8
      F600FFFEF900FFFEF800FBF9EA00F9F1D900E9DBC200C8BC9E00ABA07C00B1A8
      7D00B5AA7B00B8AC7800BAAD7600BFAE7B00BBA97200B9AB7500B8AC8000ABA1
      8500150D050000000000F0EEF600FDFDFF00FBFBFB00EDEDED00EDEDED00E7E7
      E700E8E8E800E4E4E400E0E0E000EDEDED001B1D1E00111213000E1011000D0F
      10000B0E0E000A0C0D00262626009F9F9F0090909000818181006D6D6D005858
      580083838300909090009F9F9F00A4A4A400A7A7A70095959500C4C4C400C5C5
      C500C7C7C700C8C8C800C7C7C700C9C9C900C9C9C900C8C8C800CBCBCB00CBCB
      CB00CCCCCC00CCCCCC00CCCCCC00CDCDCD00CDCDCD00CCCDCD00CCCCCC00CCCD
      CC00CFD0D400706DCD005656B20000037B000A0B7200100E7600191E99000503
      73002027320043454600424444002D2F2F001B1B1B0016161700161616001616
      16001515150014141500151515001414140056565600F3F3F300E6E6E600E7E7
      E700E8E8E800EAEAEA00EAEAEA00F0F0F0000000000000000000000000000000
      0000000000000000000000000000FCFCFC00E3E6E7006E828E008CC6DC0052C8
      F5002FBCF90022B3F9001FB0F9001EB0F9001EB0F9001EAFF90018A7F9000B8F
      F9000783FB00057DFB000579FB000578FA000577F9000576F9000576F9000576
      F9000573F8000575F8001091C0002DAE8F008AD2AF00ECF3F000F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F9F9F900F9F9F900F9F9F900F9F9
      F900FBFBFB00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FEFEFE00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5E5E5009494940000000000F7F7F700EFEF
      EF00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000E3E3
      E300C0C0C000A7A7A700D9D9D900E9E9E900E5E5E500F9F9F900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FCFCFC00EEEE
      EE00EDEDED00FCFCFC00FDFDFD005555550071717100BABABA00F8F8F800F8F8
      F800FDFDFD00F8F8F800FAFAFA00FDFDFD00FCFCFC00F1F1F100000000000009
      0000E2E3B700FFFAE300FFFBFF00EAF2FF00F6FFF600FAFFF000FBFEFE00FFFA
      FF00FFFFF200FDFFF200FFFEFD00FFFBFF00FFFBFF00FFFEFF00FCFFFC00FBFF
      FB00FAFFFE00FAFDFF00FAFDFF00F8FDFF00F6FDFF00F6FEFF00F9FEFF00FDFE
      FE00FFFDFD00FFFDFD00FBFCFA00F8FEFC00F8FFFC00F7FDF900F9FDF400F0EE
      DE00E6DFC600D7C7AA00BAA78400BEB47E00B5AB6E00BBAF7000C0B57E00AFA9
      84000C0C050000000000F0F1F200FEFAFB00FBFBFB00F0F0F000EBEBEB00EBEB
      EB00E8E8E800E7E7E700E6E6E600F1F1F0001B1D1E000F1112000E1011000D0F
      10000B0E0F000A0B0C000D0F0F009C9C9C009696960088888800737373006161
      61008E8E8E0099999900A1A1A100A7A7A700A6A6A6009A9A9A00CDCDCD00CCCC
      CC00CDCDCD00CCCCCC00CBCBCB00CDCDCD00D0D0D000D1D1D100D0D0D000CFCF
      CF00D1D1D100D0D0D000D0D0D000D2D2D200D2D2D200D2D2D200D0D1CF00D2D1
      D400D5D4D200D9DBD400DFE0D9000E0E8D00161C84001A178E00111492000002
      73001F1F65004444490061645F0030303300302F32001F2223001C1B1B001615
      16001514150016161700161713001615150043434300F3F3F300E7E7E700EAEA
      EA00EAEAEA00EAEAEA00EDEDED00EFEFEF000000000000000000000000000000
      000000000000000000000000000000000000F6FAFC00B3DFF200A4E1F90091DD
      FA004FC7FA002EBBF90027B7F9001FB2F9001CAFF9001DAFF9001DAFF9001CAC
      F900119FF900098BF9000681FA00067FFB00067CFB000579FB000577FB000577
      FB000576F9000576F900189BA50037BC83004CC48A0085D1AC00F1FAF500FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5E5E5009494940000000000F7F7F700EFEF
      EF00EDEDED00EDEDED00EDEDED00CBCBCB0087878700898989008C8C8C008D8D
      8D008D8D8D008D8D8D008C8C8C008B8B8B008A8A8A009A9A9A00D7D7D700F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EFEF
      EF00E5E5E500C7C7C700A2A2A200D9D9D900E5E5E500F7F7F700FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00DFDF
      DF00FDFDFD00F8F8F800FEFEFE00212121000C0C0C003B3B3B00FCFCFC00FDFD
      FD00F7F7F700FEFEFE00DBDBDB00FEFEFE0000000000E4E4E40000000000100A
      0200BC995500DAAE5200DECD9600F5FCED00FDFFF700FAFFF900F5FDFF00FEFB
      FF00FFFCFF00FFFBFF00FFFAFF00FEFBFF00FEFDFF00FEFEFF00FFFEFF00FFFB
      FF00FFF8FF00FDFCFF00FCFEFD00FAFFFD00F9FFFC00F9FFFC00FBFFFA00FEFF
      FA00FEFFFB00FFFEFB00FFFFFE00FEFFFE00FDFFFD00FAFEF900FBFEF700F8FA
      F100FCFDF300FEFEF300FFFFF000E3E1AF00B8AF7000B7AB6C00B7AB7400AEA7
      81000C0D050000000000F0F2F200FFFAFB00FBFBFB00F0F0F000EDEDED00EBEB
      EB00EAEAEA00E7E7E700E7E7E700F1F1F1001B1E1F000F1112000E1011000D0F
      0F000A0D0E000A0C0D00020405007F7F7F009C9C9C008D8D8D00797979008484
      840095959500A0A0A000A4A4A400A7A7A700A3A3A300A6A6A600D4D4D400D2D2
      D200D4D4D400D1D1D100D4D4D400D4D4D400D5D5D500D6D6D600D5D5D500D4D4
      D400D7D7D700D6D6D600D6D6D600D9D9D900D9D9D900D7D7D700D7D7D700D9D9
      D900D9D9D900DADADA00D9D9D700242690001C1E83001A1C99000B0D8F000001
      80000303770000005A0000003F0042424700494A4C004647470017191A001519
      1300171615001A17150016161500151516001E1F1F00F0F0F000E8E8E800E8E8
      E800EBEBEB00EDEDED00EDEDED00F0F0F0000000000000000000000000000000
      000000000000000000000000000000000000FBFEFF00D7F3FE00ACE6FC00A9E5
      FD0075D5FC0046C5FA0034BDF9002BB8F90020B2F9001CAFF9001CAFF9001CAF
      F9001BACF90018A6F9001099F900088AFA000681FB000680FB00067DFB00057A
      FB000577FB000780E20022A89A0041C5860048C9890048C286007CCDA500F2FA
      F800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5E5E5009696960000000000F7F7F700EFEF
      EF00EDEDED00EDEDED00EEEEEE00E7E7E700D6D6D600D7D7D700D8D8D800D8D8
      D800D8D8D800D8D8D800D8D8D800D7D7D700D7D7D700DBDBDB00EAEAEA00F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000EEEEEE00E4E4E400C6C6C600A3A3A300DDDDDD00E7E7E700F8F8F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00D8D8
      D80000000000FAFAFA00E9E9E900000000000C0C0C0092929200F3F3F300EEEE
      EE00FEFEFE00989898000B0B0B000303030064646400E7E7E700000000002707
      0800B9842200D2A80400A99C1F00FFFFE000FFFCFD00FBFDFF00F1FEFF00F9FD
      FF00FFF4FF00FFF5FF00FCF9FF00F8FEFD00F6FFF800FAFFF800FEFEFE00FFFA
      FF00FFF6FF00FEFBFF00FBFFFD00FCFFFC00FCFFF900FCFFF800FEFFF800FEFF
      F900FDFFFB00FDFFFD00FEFFFF00FFFDFD00FFFDFA00FFFFF900FFFFF900FFFF
      FB00FCFFFD00F3FCFA00EFF8F500BABA8D00B8AF7000BEB27300BBAF7800B7B0
      8B000C0D050000000000F0F2F200FFFAFB00FBFBFB00F3F3F300F0F0F000EDED
      ED00EDEDED00EAEAEA00EBEBEB00F6F4F4001C1E1F000F1112000E1011000C0E
      0F000B0C0E000A0B0C0000010200545454009F9F9F008E8E8E007C7C7C009090
      90009C9C9C00A3A3A300A7A7A700A8A8A800A4A4A400B3B3B300D9D9D900D7D7
      D700D7D7D700D7D7D700D7D7D700D7D7D700D9D9D900D9D9D900D9D9D900D9D9
      D900DADADA00DBDBDB00DBDBDB00DADADA00DCDCDC00DBDBDB00DBDBDB00DCDC
      DC00DEDEDE00DCDCDC00DBDBDB001E20800010116C001D1F9F00080989000303
      8A000304880001016500040358002B2D85003A395A004848510011106E000C0A
      5E000D0B4D001314390021241D001D1917000A0B0A00E3E3E300E8E8E800EBEB
      EB00EDEDED00F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      000000000000000000000000000000000000FEFFFF00F2FBFF00B3E8FC00B5E7
      FE009EE1FD0065CFFB003EC3FA0038BFF9002FBBF90023B4F9001BADF9001BAD
      F9001CADF9001CAEF90019AAF90013A0F9000C93FA000787FA000682FB000680
      FB00067EFB000B8DC5002AB1910044C7870048CA8B003EC282003FBB7F0078C9
      A500F2FAF600FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E6009898980000000000F7F7F700EFEF
      EF00EDEDED00EEEEEE00EFEFEF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000EEEEEE00E4E4E400C0C0C000BFBFBF00CACACA00EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DFDF
      DF00FEFEFE00000000006F6F6F001313130006060600D6D6D60000000000FBFB
      FB009595950009090900232323001919190000000000F0F0F000000000002A08
      0900C08A1800CBA40000CBBB3200FFFFEF00FFF7FF00FFFCFF00F1FFFE00F9FE
      FC00FFF8FF00FEF9FF00F7FEFB00F1FFF400EFFFF000F2FFF500F8FFF800FFFF
      FB00FFFEFE00FAFCFF00F8FDFF00FBFDFE00FEFFFA00FFFFF800FFFFF700FEFF
      FA00FBFEFE00F9FEFF00F9FCFF00FAFBFF00FCFAFC00FFFEFC00FFFFFC00FFFF
      FC00F5F8F600F0FAF700EBF9F500A4A67900C2BA7B00BAAE6F00BBAF7800AAA4
      7E000C0D050000000000F0F2F200FFFAFB00FBFBFB00F3F3F300F1F1F100F0F0
      F000EDEDED00EDEDED00EDEDED00F9F9F9001B1D1E000E1011000D0F10000C0D
      0E000A0C0D000A0B0C00020304003A3A3A009C9C9C0089898900787878009797
      9700A0A0A000A7A7A700A8A8A800A8A8A800A3A3A300C5C5C500DCDCDC00DBDB
      DB00DADADA00DBDBDB00DADADA00DCDCDC00DBDBDB00DCDCDC00DBDBDB00DBDB
      DB00DBDBDB00DFDFDF00E0E0E000DEDEDE00DEDEDE00DFDFDF00DEDEDE00DCDC
      DE00E1E1E100E0E0E000E4E4E10013167D00121279001E1EA40003038A000503
      8F0004059000000168000A0A61000E0D990000027F0026265B000304A0000002
      9D000000990000008B000E0C7300545759004A4B4B00EAEAEA00EAEAEA00EBEB
      EB00EDEDED00F1F1F100F1F1F100F0F0F0000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFFFF00BBEAFC00BEEA
      FE00BAE9FE0087DAFC0056CBFB0044C5FA003DC2FA0033BDF90023B3F9001CAD
      F9001AACF9001BADF9001BADF90019ABF90016A5F900119BF900098FFA000785
      FA000887F9001DA4B20038BD8D0044C8880044C889003EC4830034BC7A0032B3
      75007BC9A200E7F5EE00FDFEFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7E7E7009B9B9B0000000000F7F7F700EFEF
      EF00EEEEEE00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F1F1F100F1F1F100F1F1
      F100F1F1F100F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000EFEFEF00E5E5E500B8B8B800B2B2B200DBDBDB00F8F8
      F800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00EBEB
      EB00FEFEFE00FAFAFA00141414001B1B1B000808080000000000FBFBFB00A4A4
      A4000C0C0C00121212000E0E0E001212120047474700F7F7F70000000000220F
      0300C09B2800BC970000E0CE7200FFF0FE00FFEDFF00FFFCFA00F6FFF300FFFF
      FA00FEFBFC00FDFFFC00F0FCF000EFFEF400F0FFFC00EDFBFE00F5FFFE00F9FF
      FA00FBFFF200F8FDFF00F7FAFF00FDFCFF00FFFFF900FFFBED00FFFFF000FFFD
      F300FCFBF600FDFEFF00F7FEFF00F8FEFF00F9FCFF00FCFBFF00FFFEFF00FFFF
      FA00FFFEF600FDFDF200F3F5E700AEAB7A00B9B07100BBB07000BAAF7800B0A9
      84000C0D050000000000F0F2F200FFFAFB00FBFBFB00F4F4F400F0F0F000F0F0
      F000EEEEEE00EDEDED00EEEEEE0000000000191B1C000C0E0F000F0F0F000D0D
      0D000B0B0B000A0A0A000305050027292900929393008080800080808000A0A0
      A000A6A6A600AAAAAA00A8A8A800A7A7A700A3A3A300D4D4D400E0E0E000DEDE
      DE00DEDEDE00DFDFDF00DFDFDF00E1E1E100DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00E1E1E100E1E1E100E0E0E000E0E0E000E0E0E000E0E0E000E1E1E100E4E4
      E300E0E0E600E3E3E400E1E8E700101170000D0D6F001518A300000289000303
      95000506930001016A00040460000204B5000302C1000407B5000303AE000507
      C0000709C5000303BD000000CC0042415200F6F7F700EDEDED00EEEEEE00F0F0
      F000F0F0F000F1F1F100F0F0F000F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C9EEFD00C6EC
      FD00C7ECFE00ABE5FC0078D6FB004FCAFB0048C7FB0041C4FA0034BDFA0026B4
      F9001BADF90019ACF90019ACF90019ACF9001AADF90019ABF90012A1F9001199
      F90030ACE8005ECDBD0058D09B0048C98B0040C685003CC2800036BE7B002BB7
      720023A9650084CAA600DFF1E800FCFEFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7E7E7009D9D9D0000000000F7F7F700F0F0
      F000EFEFEF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F1F1F100F1F1F100F1F1F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F1F1F100F1F1F100F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000D1D1D100A7A7A700CBCBCB00F3F3
      F300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00DEDEDE00F9F9
      F900FDFDFD00F1F1F1001C1C1C00151515004949490000000000B1B1B1001212
      1200191919001F1F1F00181818001D1D1D0086868600EEEEEE00000000001919
      0200A58C2500B68F1200FFF1C200FFEFFF00FFEAFF00FFFCEF00FCFFF000FEFC
      F600FBF9F900FEFCF500FBFAEF00FAFAF100F7F8FD00F9F3FF00F6F2FF00F7FC
      FE00F7FFF800FDFDFF00FBF6F700FFFCF200FFFDE200FFFFDF00FFFFDB00FFFE
      DD00FFFFE900FEFDEE00FEFFF300FBFDF600FDFEFB00FCFDFD00FFFEFF00FFFF
      FB00FFFCED00FFFFEC00F3EDCC00B4AF7900B8B07000BDB17200B8AC7500B1AA
      85000C0D050000000000F0F2F200FFFAFB0000000000F6F6F600F4F4F400F3F3
      F300F3F3F300F1F1F100F0F0F000F9F9F9004A4B4B00333637000D0E0E000D0D
      0D000B0B0B000A0A0A00030303003737370092929200797979008E8E8E00A4A4
      A400AAAAAA00ADADAD00ABABAB00A7A7A700A0A0A000E0E0E000E4E4E400E3E3
      E300E3E3E300E3E3E300E6E6E600E3E3E300E4E4E400E4E4E400E1E1E100E4E4
      E400E4E4E400E4E4E400E6E6E600E3E3E300E4E4E400E4E4E400E4E4E400E6E6
      E600E7E4E400E4E4E400D2D1E00005075F00131279000B0E970001028E000504
      9A000606970000007B00000059000A0CB2000307D9000408D0000409D4000609
      D6000306D2000000D100191AC500FAFFF300EEEEF000EEEEEE00F0F0F000F1F1
      F100F1F1F100F3F3F300F1F1F100F4F4F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DAF4FE00C9EE
      FC00CBEEFD00C7ECFD009BE0FC0063D1FB0054CBFB004BC8FB0043C5FB0037C0
      FA0025B4F8001CADF80018ABF90017AAF90018ACF9001AADF80024B3F60047C4
      EB005BD1BD0091EAC70082E3B6005AD1980040C5830037BF7C0032BC79002DB9
      740024B069001EA15D0088C9A600DCEFE500FCFEFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7E7E7009E9E9E0000000000F7F7F700F1F1
      F100F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F1F1F100F1F1
      F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F1F1F100F1F1F100F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000ECECEC00ABABAB00CACACA00F3F3
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADADA00FEFE
      FE00FCFCFC00E0E0E000030303001D1D1D0079797900C2C2C200010101001D1D
      1D0014141400212121001C1C1C0003030300C2C2C200EDEDED00000000002325
      0700A4872900C3932A00FFFFDD00FFF7FD00FFFCFB00FFFFE900FDFFF200FEFC
      F900FAF0EC00FFF8E500FFFFE200FFFED700FFF5E400FFF5FB00FFF5FF00FDF8
      FE00F5FEFD00FFFEF000FFFFE300FAF2C000EDCD8900C29A4600C69B4300BD93
      3E00D2AE6300E9D69000FBF0B700FFFED900FFFFE900FEFDF500F7FBFB00FDFE
      FE00FFFCF100FFFFEB00DFD1A900B7B07700B8B07000BDB17200B8AC7500B1AA
      85000C0D050000000000F0F2F200FFFAFB0000000000F6F6F600F4F4F400F1F1
      F100F3F3F300F3F3F300F3F3F300FDFDFD00151718003A3C3F00505152002122
      2200191919000E0E0E00000101003B3C3B00858585008888880095959500A8A8
      A800ADADAD00ADADAD00ABABAB00A4A4A4009D9D9D00E7E7E700E6E6E600E4E4
      E400E6E6E600E6E6E600E8E8E800E6E6E600E8E8E800E7E7E700E6E6E600E4E4
      E400E6E6E700E4E4E400E6E6E600E4E4E400E4E4E400E7E7E700E7E7E700E8E6
      E700E4E7E400FDFCF3005656A70002015B001D1E97000303920004059A000405
      A3000303A000010389000101670001025E00110EBD000608DA001118EB000305
      D6000003CF000000D000AAA1E000F7F6F100F0F1F100EEEEEE00F0F0F000F3F3
      F300F1F1F100F3F3F300F3F3F300F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBF9FF00C9EE
      FD00CEEFFD00D3F0FE00B7E9FD0085DBFB0061CFFB0057CCFB004DC9FB0044C6
      FB0037C0F90028B5F8001CACF80016A9F8001AADF70028B7F40048CAE60081E2
      BE0046C7890067D7A3008FE9C1007BE1B2004FCB8F0035BD7B002EB975002AB6
      710026B26D001EA861001C9B550086C7A300DFF0E600FCFEFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8E8E800A0A0A00000000000F7F7F700F1F1
      F100F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F1F1F100F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000B7B7B700CFCFCF00F3F3
      F300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00E3E3E300F9F9
      F9000000000099999900242424000000000083838300000000002B2B2B001010
      1000787878006C6C6C000D0D0D0000000000E8E8E800EEEEEE0000000000271C
      0000B88A3100E4A73800FEFFAC00FEFDD700FFFFD900FFFFE700FBFEFD00FEFB
      FE00FFFFF000C5AD7600A68F2F00C5AB3600FDE17800FDF2B000FEF9DD00FFFE
      F500FDFFF800FFFFD900F3DC9300B18A2D00C1901B00CB900900D0910000D498
      0A00CD971300CC991B00C49B2D00F0CE7A00FEF8C300FFFFEF00F5FBFA00F4FE
      FF00FCFFFC00FFFFEC00BDB28E00B5B07900B8B07000BDB17200B8AC7500B1AA
      85000C0D050000000000F0F2F200FFFAFB0000000000F7F7F700F6F6F600F3F3
      F300F3F3F300F3F3F300F1F1F100F1F1F100B3B5B500898A8D006D6F72002627
      29001B1D1E00292D30000C0E0F00595959008F8F9200969695009F9F9F00ABAB
      AB00AFAFAF00AFAFAF00AAAAAA00A3A3A30097979700EDEDED00EAEAEA00E8E8
      E800EAEAEA00E8E8E800E8E8E800E6E8EA00E8E7E700E8E8E800EAE8E800EBE8
      E800EBEAE700EAEAE800EAEAEA00EAEAEA00EAEAEA00EAEAEA00E8E8E800EAE8
      E800E4EAED00DAD5E3000C0F6D00161576001917A400010193000605A3000303
      A8000102A6000205990000037C0000005A005E65A7000A0BB3002032FA000000
      D7000301D4001C1DD000F9FAF900F3F0EE00F1F1F100F3F3F300F3F3F300F3F3
      F300F1F1F100F4F4F400F6F6F600F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFEFF00C4EC
      FD00CEEFFD00D9F2FE00D0EFFD00ACE5FC0072D5FB0062D0FB0057CCFB004EC8
      FB0044C6FB003AC2FA0028B6F8001CADF8002CB9F20057D5E10078DFB8002DBA
      750027B46C002BB873005DD29B0089E7BD0078DFAE0043C585002BB7720027B3
      6C0023AF680020AB630016A1570017944D0080C19B00E5F3EB00FDFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8E8E800A0A0A00000000000F7F7F700F1F1
      F100F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F1F1F100F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F1F1
      F100F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000B9B9B900D0D0D000F3F3
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F3F300FCFC
      FC0000000000272727000F0F0F0018181800111111001C1C1C00010101008787
      870000000000070707001E1E1E001C1C1C00FEFEFE00E3E3E30002010000250B
      0000BC822C00E19E1E00BB931000A3952200B6A94A00E5D6A200F4EFDD00FCFB
      F300FFFFD700B99F4100BCA11000C7A40000C79C0100C49E1300B3984500E4D3
      A800FFFFE600EDCF7F00BF912300D29A1400D79A0000E6A60000DA990000D293
      0000D99E0300D79B0500D49C1000C08D1300D7B15700FFFBCD00F6F8EF00ECF8
      FD00F4FDFD00F8FBE900A09D7F00B3AF7A00B9B07000BEB17200B8AC7500B1A9
      86000C0C050000000000F0F1F200FFFAFB0000000000F7F7F700F6F6F600F7F7
      F700F4F4F400F4F4F400F4F4F400F4F4F400F3F3F300F6F6F600FFFFFF00FFFF
      FF00D0D4D20043434500505050009D9F9D009D9D9D00A1A1A100A6A6A600AFAF
      AF00B1B1B100AFAFAF00ADADAD00A3A3A30099999900E6E6E600EDEDED00EEEE
      EE00EDEDED00EDEDED00EDEDED00EEEBEA00EBEAEB00F0EBEE00E7EEEA00EAEE
      ED00EBE8F300EDEDEA00EBEBEB00EBEBEB00EAEAEA00EBEBEB00EDEDED00EDED
      ED00F4F4F4006765B600373990001D209700080897000303A1000504A8000102
      A8000304AE000405A40002038E000000660033336400656CC7000B11E7000508
      D5000000D200787CDA00F0F4EE00F4F3F000F4F4F400F1F1F100F1F1F100F4F4
      F400F6F6F600F6F6F600F7F7F700F5F5F5000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C5EC
      FE00D2F0FE00DEF4FE00D9F3FE00C4ECFD0096DEFC006DD3FB0062D1FB0057CC
      FB004DC9FB0043C5FB0039C0FA003EC6F5005FD7DE0071DAAA0027B46F0026B3
      6B0024B06A0022AF680027B26C0054CC930084E5B90077DEAF0036BD7B0023AF
      680020AB63001DA75F001AA45B00119A4E00148D460075B89000F0F9F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8E8E800A2A2A20000000000F7F7F700F1F1
      F100F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F1F1F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F0F0F000F0F0F000F0F0F000B9B9B900D0D0D000F3F3
      F300000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00FEFEFE0000000000FEFEFE00DFDFDF00F9F9F900F9F9
      F900F6F6F60000000000161616001D1D1D001E1E1E00080808006F6F6F00F4F4
      F400D3D3D300000000001919190082828200FCFCFC00DBDBDB0001000000321A
      0500B7893300D4921100DD9A0500DEA70500D9A00D00C98A1300BA952400EEE2
      A600FFFDBE00AC993800B38D1400D8910600FDA90900DEA10500B28D2B00FFE5
      AE00FFF8B200CA850E00EA930E00F0A10300DBA10000C59C0F00EFCD9000F9EE
      B900FDEF9200DAAE4600CA9A1700D69A0500CE8F0100DDB54F00FFFED300F0FA
      EE00F7FDEC00E5E9CD009DAB8500AEAD7400BCB17100BFAF7100BBAB7700AEA7
      83001010050000000000EFEEF200FFFBFF0000000000F7F7F700F6F6F600F6F6
      F600F9F9F900F7F7F700F6F6F600F4F4F400F6F6F600F6F6F600F4F4F400F3F3
      F300000000005354550092939300AAAAAA00ABAEAE00AEAEAE00AEAEAE00B1B1
      B100B1B1B100AFAFAF00ADADAD00A3A3A30097979700D0D0D000F1F1F100EEEE
      EE00EDEDED00EEEEEE00EEEEEE00EDEDED00EEEDED00F4F4F6005E5F9D006565
      A600F0EEED00F0EDEB00EEEEEE00EEEEEE00F0F0F000F0F0F000EDEEEE00F1F1
      F000A3A8A800201F4D00322F8A001113A000010199000404A4000303AA000002
      AA000505B5000307A800020396000000720009095C00807DCD000C0BCD00070A
      D2000303B300FCFAF400F6F4F400F3F3F600F6F6F600F3F3F300F6F6F600F7F7
      F700F6F6F600F7F7F700F7F7F700F4F4F4000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D5F2
      FE00CFEFFE00DAF2FE00DDF4FE00D3F1FD00B8E9FC0079D7FC006DD3FB0061CF
      FB0057CCFB004AC8FB0058D0F60073DBDD0065D4A9002FB8750026B36B0024B0
      6A0022AF670021AC660021AA640027B06B004BC68A0078DFAF0071DBAA002DB9
      73001DA75F0019A35B0016A05700129C51000E9347001C8E49006EB18700F1F8
      F400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8E8E800A2A2A20000000000F7F7F700F1F1
      F100F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F0F0F000F0F0F000BBBBBB00D1D1D100F3F3
      F300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD0000000000D0D0D000FCFCFC00F9F9
      F900D7D7D7000000000019191900121212000C0C0C006B6B6B00FEFEFE00FDFD
      FD008C8C8C000808080011111100BDBDBD00F1F1F10088888800050503002D1F
      0400A9883B00F8CA6F00E7B15000CDA12400C4961000C9921500BE962100FFF4
      C400FFFFE800F0EAB600E5D68E00DFB25A00D1962300B2911500A2924200FFF5
      BD00DBAE5200CB9E1200D3980F00D89A1200CFA11C00F2D78900FFF8F500F7FA
      F800FEFFE300FFFFD900DABC5700C7970400E1B00600B2920E00F2E9B200FFFA
      FC00FEF9FB00E3D4B400B8AF7400B7AE7000BDB27200C0AF7000BBAC7700AFA7
      83001010050000000000EFEEF200FFFBFF000000000000000000F7F7F700F7F7
      F700F7F7F700F7F7F700F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F7F7
      F700F9F9F900CFD4D500BCBCBA00BCBCBC00BABCBC00BABABA00B6B6B600B1B1
      B100B1B1B100AFAFAF00A8A8A8009F9F9F0092929200ADADAD00F3F3F300F0F0
      F000F0F0F000F0F0F000F1F1F100EEF0EA00EEEDF00022248600000084000906
      6200D6D7D200F4F4F600EEEEEE00EEEEEE00EEEEEE00F0F0F000F0F0F000F4F4
      F70043434200181914001D1D53000709970002019D000304A8000203AA000102
      AB000406B8000306AA0003069A000203790000005D0047479F000906BA000508
      C9000506A400FCFCF600F4F4F600F6F7F300F6F6F600F6F6F600F6F6F600F7F7
      F700F7F7F700F7F7F700F7F7F700F5F5F5000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4F7
      FF00C8EDFD00D2F0FD00DFF4FE00D9F2FE00C8ECFE0098E0FC0075D5FB0069D1
      FB005FCFFB005ED1F80077DEE30067D5AE0035BB7A0026B26D0024B16A0022AF
      680021AC66001FAA64001EA761001DA7610026AC680044C083006DDAA7006AD8
      A4002EB8730018A25900139C510010984D000D9547000C8D4000208C4A006CAE
      8500F0F8F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E9E9E900A4A4A40000000000F7F7F700F1F1
      F100F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200BCBCBC00D1D1D100F3F3
      F300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00FCFCFC00F7F7F700DDDDDD0000000000F5F5
      F500ACACAC0020202000202020000707070061616100F5F5F500000000000000
      00004F4F4F001E1E1E000F0F0F00F0F0F00000000000606060001B1B1A00181F
      04009B965F00FFEECA00FCE8D200FBF0BB00FFF7A400EFD67D00D6BF6900FFFF
      EF00FDEFF500FCFEF500FCFDEE00FEFFEA00FFFFDA00FFFFC100EBF1BC00FFFA
      C000AE8C1400CBA50700CC9A0D00C8901400DFB24600FFFFD500FDFCF200EAF9
      FA00EDFDF600F5F6F800FFFFCD00BDA13400BE9D1C00BDAA4400E2E0BF00FDFB
      FE00FFFCFB00DBBD9300C8B56B00BBAF6D00BEB37300C1B07200BCAD7800B0A8
      84001010050000000000EFEEF200FFFBFF000000000000000000F9F9F900F9F9
      F900F9F9F900F9F9F900F7F7F700F9F9F900F7F7F700F7F7F700F6F6F600F6F6
      F600F6F6F600F9F9F900C0C0C000C7C7C700C7C7C700C0C0C000BDBDBD00B2B2
      B200B1B1B100ADADAD00A4A4A400979797008D8D8D0088888800F3F3F300F1F1
      F100F4F4F400F3F3F300F1F1F100FAFCFC0083849C005B5B7700776E7C008183
      7B006562630085868500F7F7F700F0F0F000F1F1F100F1F1F100F1F1F100E7E6
      E600151A1A00201E1C000C0F1C0001039A000001A3000304AD000203AA000002
      AA000406B5000306AA0003079A000303800000015C000C0F81000907B8000807
      C1000000A400DBDBED00F6F6F600F6F6F600F7F7F700F7F7F700F6F6F600F7F7
      F700F7F7F700F9F9F900F9F9F900F6F6F6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7FD
      FF00BDEBFD00C6EDFD00E1F5FE00DAF3FE00D0F0FE00B5E8FC007ED9FC0071D5
      FB0069D2FA007FE0E7006AD7B4003DC0820026B36E0025B16A0023AF680021AC
      660020A963001EA862001DA660001BA55D001AA35C0023A964003FBD7E0068D8
      A30068D7A3002DB67200149D53000E9649000C9344000A8E3F000A8639001E87
      44006EAC8500F0F8F400FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E9E9E900A6A6A60000000000F7F7F700F1F1
      F100F0F0F000F0F0F000F0F0F000DCDCDC00B5B5B500B6B6B600B8B8B800B9B9
      B900B9B9B900B9B9B900BABABA00BABABA00BBBBBB00BCBCBC00BCBCBC00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BBBBBB00BABABA00BABA
      BA00BABABA00B9B9B900B9B9B900B9B9B900B7B7B700B7B7B700CACACA00E7E7
      E700F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200BCBCBC00D2D2D200F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFBFB0000000000E7E7E700F8F8F800FAFAFA00F2F2
      F200EDEDED0000000000E5E5E500E8E8E800EDEDED00EFEFEF00FAFAFA00FCFC
      FC00282828001D1D1D0017171700F1F1F100000000002A2A2A001F201F000414
      0300BEC7A500FFFDF900F9F5FF00ECFFFD00E2F6E200E3E5C800E7E9C400E8E7
      FC00F2E9FF00F5FCFF00F0FEFF00F8FDFF00FCFFF500FAFFEA00FCFFEB00ECE1
      A400C99A1000E1A60300E5A00A00D68F0400CC910C00DDBB4400FAEE9000FFFF
      C600FFFFE300FFEEEC00FFFFEB00FFF2BF00FFFFCD00FFFDE500EAF7FB00ECFE
      FF00FCFFE500B6B17300BAB16D00B9B07000BEB37300C2B17300BDAE7900B1A8
      85001010050000000000EFEEF200FFFBFF000000000000000000F9F9F900F9F9
      F900F7F7F700F9F9F90000000000F9F9F900F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700C7C7C700C9C9C900C9C9C900C4C4C400BDBDBD00AFAF
      AF00ADADAD00A4A4A4009C9C9C008E8E8E00838383006A696C006A686C00FFFF
      FF00FFFFFF00FFFFFF00DBDCDC00777674007B767600898381008D8685008381
      83006F6D73006565650076767600F9F9F900F1F1F100F3F3F300F6F6F600C8C8
      C800161818001E1D1E000C0B190000019D000202A6000204A8000203A7000103
      A7000203AD000305A4000305990003037C0000005C00101286000706B3000307
      BC000000AD00969CDB00F7F7F600F7F7F700F7F7F700F7F7F700F7F7F700F9F9
      F900F9F9F90000000000F9F9F900F6F6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B9EAFE00BEEBFE00DDF3FE00DAF3FE00D3F0FE00C4EDFD0094DFFC007AD8
      FC0074D9E5006ED9BA0047C68A0028B46F0024B16B0023AF680021AD660020AB
      64001EA761001CA660001BA55D001AA35B0018A1580016A057001DA65E0039B9
      780066D8A20059D1980029AF6B0010994C000A8F4000098B3D00078637000880
      3200187E3C0074AC8900E5F1E900FCFEFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E9E9E900A7A7A70000000000F7F7F700F1F1
      F100F0F0F000F0F0F000F0F0F000DDDDDD00B9B9B900B9B9B900BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BDBDBD00BDBDBD00BEBEBE00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BEBEBE00BDBDBD00BDBD
      BD00BDBDBD00BBBBBB00BBBBBB00BBBBBB00BABABA00B9B9B900CCCCCC00E8E8
      E800F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200BCBCBC00D3D3D300F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00FAFAFA00ECECEC00FCFCFC00FEFEFE00FBFB
      FB00F7F7F700FDFDFD0000000000FDFDFD00FEFEFE00FEFEFE0000000000F4F4
      F400A8A8A8006262620056565600EFEFEF00E2E2E200000000002B2C2B001919
      0A00E3E0B300FEFDE100FBFDF700EDFEFF00E8FAFE00FBFAFC00FBFFF600E2F1
      FC00F1E8F800DEE1DE00CEDEDF00D9E4EF00E6EEF400EEFEF100FBFFF500DDBC
      8100E1A00A00EA9B0000F4A10600EF9D0B00DA940600D0A00900C0A00500B394
      0A00B98C2700D79E5B00EAD29C00FFF0BB00FFFFE200FFFDF600F1FAFF00DEFA
      F300ECFCD100A6A96700B0AF7200B7B17200BCB17100C0AF7100BDAE7900B0A7
      84001312060000000000EEEDF300FFFBFE0000000000FCFCFC00F9F9F9000000
      0000F9F9F90000000000F9F9F900F7F7F700F7F7F700F9F9F900F9F9F900F7F7
      F700F9F9F900FDFDFD00C5C5C500C9C9C900C5C5C500C1C1C100BCBCBC00ABAB
      AB00A1A1A1009A9A9A008E8E8E007F7F7F00707070006E6D6F00616162008686
      8800908E9000999999006262620077787B008589850099969500A09F9F009A99
      97008A899700838085006F6F6F00BABABA00FCFAFC00F4F4F400F6F4F400E0E1
      E100171616001B1E1E00100D13000000A1000203AA000203AA000203A8000103
      A7000002A60002039D0002038F0002026F0003035E001C1C8F000908B1000306
      BA000000B1005B5CBD00FCFCF900F7F7F700F9F9F900F9F9F900F9F9F9000000
      000000000000F7F7F700F9F9F900F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C5EEFE00BAEAFE00D1EFFE00D9F2FE00D2F0FE00C7EDFE00A9E5F80085DD
      ED0097E9DA006CD9A9003ABF7E0025B26C0023AF680022AD660020AC64001EA9
      62001DA660001BA45E001AA35B0018A1590016A05600149E5300129D5200169F
      560033B773005BD299004CC98D0025AA64000D91450008883900078435000680
      300005782C000E7130007EB08F00DEEBE300FCFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E9E9E900A8A8A80000000000F7F7F700F1F1
      F100F0F0F000F0F0F000F0F0F000EBEBEB00E1E1E100E1E1E100E1E1E100E1E1
      E100E1E1E100E1E1E100E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E6E6E600EFEF
      EF00F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200BCBCBC00D3D3D300F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00FBFBFB00DDDDDD00FDFDFD00FEFEFE00FBFB
      FB00FBFBFB000000000000000000000000000000000000000000FDFDFD000000
      00000000000000000000FEFEFE00FEFEFE00D9D9D9005A5A5A00020100003A22
      0E00C49F5000D7BC6300F6E19B00FFFFD100FFFFE400FFFFF300FFFFE300F3F8
      F600FFFAF600FFFEEC00F7FEF400F4F9FB00EEEEF200E8EBE700F2ECE500DCB3
      7A00EFA80F00F0A40000EEA60800D28F0F00DB9B3300AE7E1000BA970E00C199
      0A00DBA51C00D7990A00BB8F1700C6901C00CD8E2600D5AD6C00FFFDE800F8FF
      F600DEDABA00B6A76F00BCAE7300BAB07300BCB17100C0AF7100BDAE7900B0A7
      84001413060000000000EEEEF400FFFBFE0000000000FDFDFD00FCFCFC000000
      0000FCFCFC0000000000FCFCFC00F9F9F90000000000F9F9F900F9F9F9000000
      000000000000FDFDFD00C8C8C800C5C5C500C1C1C100BCBCBC00B3B3B300A6A6
      A600999999008E8E8E00808080006C6C6C00636363008E8E8E00959595009090
      90008A8A8A008888880081818100838483008E8F8F009D9C9C00A1A3A100A6A1
      9F007C7FB10090969500908F920069676A00F6F7F400F3F6F600F9F6F600F1F1
      F100202022001C1C1C00111210000001A1000303AA000002AB000203AD000103
      AA000101A600010297000002880000006600221E64001E2497000303AB000403
      B1000003C0004643B900FDFDFC00F9FAF90000000000F9F9F900000000000000
      0000F9F9F900FCFCFC0000000000F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DBF4FE00B6E9FD00BDEAFD00D1F1FB00BFEBF100AAE6E30090DFD20070D7
      BB00A4F0D10097EBC2005DCF97002FB7740022AE660020AB64001EAA62001DA6
      60001BA45D0019A25B0018A15900159F5600149E5300129C5100109A4E000F98
      4D000F984B002DB46E0054CD910045C2840021A35C000A8A3D0006813100057D
      2D0004792900027125000E6C2C0082AF9200DBE8E000FCFDFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EAEAEA00A9A9A90000000000F7F7F700F1F1
      F100F0F0F000F0F0F000F1F1F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200BDBDBD00D3D3D300F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00FDFDFD00D2D2D200FEFEFE00FBFBFB00FAFA
      FA00FDFDFD000000000000000000000000000000000000000000FEFEFE00FCFC
      FC00F9F9F900F7F7F700F9F9F900FEFEFE00F9F9F900EEEEEE0000000000492B
      0B00B5862600CF931900C48C1100AA810500BD912D00E8B86E00F6EDAB00FEFD
      EB00FFF6F200FDFDE800F8FFEB00FEFEF800FFFEFD00FFFFFC00FFFAF700E7C3
      8E00DB9E0600E5A30300C9940000DDB13F00FFFFCE00FEF5D000F1DD9800CEB0
      5100C99D2400CCA00300D5A20000ECA90400E6A20100C2931D00FFFFDD00FFFF
      F400C4B19900C7A87A00CAAC7300BEB07200BCB17100C0AF7100BDAE7900B0A7
      84001514070000000000EFEEF400FFFCFF0000000000FDFDFD00FDFDFD00FDFD
      FD00FCFCFC000000000000000000FCFCFC0000000000F9F9F900000000000000
      000000000000FCFCFC00C0C0C000BFBFBF00BABABA00B5B5B500AEAEAE009C9C
      9C008E8E8E0080808000696969006A6A6A0089898900A3A3A300AAAAAA00AEAE
      AE00ADADAD00ABABAB00ABABAB00ABABAB00AAAAAA00A7A7A700A7A7A700AAAD
      A6000001B1005150890070748E008D8DA800FFFFFD00FCF9F600F4F7F900FFFF
      FC004749480019161700121312000000A3000203A8000103AE000103AD000102
      AB000102A800000196000002810000005A004F4F8F000A0C8F000304AB000303
      B5000308C5002727B900FCFCFD00F9FAFA0000000000FCFCFC00FCFCFC00FCFC
      FC0000000000FCFCFC0000000000F6F6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFFAFE00B0E8FA009FE3F200B0E8E20087DCC30062D1A20047C8880031BA
      760066D3A100A3EFCB0095EAC10057CD920029B36C001FA962001DA760001CA5
      5D001AA35B0018A1590016A05600149E5300139D5100119A4F000F984C000E96
      49000C9546000C94450028AE68004CC88B003FBE7D001A9C5300078233000479
      29000376270002722400006B21000D67290081AD8F00DDE9E200FCFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EAEAEA00A9A9A90000000000F7F7F700F1F1
      F100F0F0F000F0F0F000F1F1F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200BEBEBE00D4D4D400F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00F1F1F100E8E8E800FEFEFE00F9F9F900FBFB
      FB00000000000000000000000000000000000000000000000000FEFEFE000000
      0000FBFBFB00FBFBFB00F1F1F100F9F9F900FEFEFE00EDEDED0000000000231C
      0A00A48A3F00BA831A00D3941800D5A60A00D8AA1000C08C1100EBD67A00FEFC
      F500FCECFF00FDFDFB00F9FFF700FFFEF900FFFCFA00F8F4F000FCFBFB00E5D7
      A600B5900000E1A10000D3A20400EDD56700FFFDE200F2EAEB00F1E7D400FDEC
      C800FFFCB700D7B72B00CBA10000D79A0100E3A00A00D2A24000FFFFD400FFFF
      F000B3AA8000C5AF7700C8AD7800BCAF7400BCB17100C0AF7100BDAE7900B0A7
      84001615080000000000F0EFF400FFFCFF0000000000FDFDFD00FCFCFC00FCFC
      FC00FCFCFC000000000000000000000000000000000000000000000000000000
      0000FFFFFF00BABABA0096969600B8B8B800B3B3B300ADADAD00A4A4A4008F8F
      8F007D7D7D006C6C6C0074747400939393009F9F9F00B1B1B100B9B9B900C0C0
      C000C4C4C400C7C7C700C8C8C800C7C7C700C5C5C500BFBFBF00B2B2B200B1B2
      A8000D13EA000C0D9D0000005B0004055800E0E6EE00FDFFFA00F7F9F900FDFC
      FD007C837F000F0F0F00171614000000A8000103A8000203B3000304B1000302
      B2000405B5000303990000017D0000005800211E780002018F000303AA000309
      BF000203CD003E3ECD00FDFDFC00FAFCF600FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC0000000000FCFCFC00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4EAF20075DACE0061D3A0003DC3800029B5700023AF690020AB
      640024B06A005FD09B00A1EECA0097EBC10050C98C0022AB65001CA55E001AA3
      5B0018A15900169F5700149E5400129D5100119B4F000F984D000E9649000C95
      46000C9445000B9143000A8F400021A8600043C384003BBB7A00139549000479
      2A000273250001702200016E210000651F000D6227007DA78A00E5EEE700FDFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EAEAEA00ABABAB0000000000F7F7F700F1F1
      F100F0F0F000F1F1F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200BFBFBF00D4D4D400F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00E3E3E30000000000FEFEFE00F8F8F800FBFB
      FB00000000000000000000000000000000000000000000000000FEFEFE000000
      0000FAFAFA00FEFEFE00F1F1F100FEFEFE00FCFCFC00EBEBEB0000000000010B
      0C00E1E2C200FBF1BC00F9D98600DAB93A00B0930400AE8E1700EAD98D00FCF5
      F800F6EEFF00F7FCFF00F6FEFE00FBFAFC00FFFCFF00FFFDFC00F6F8F300F4EF
      C800B4A02000DC990700E1A50A00CBAD3100FFFFD100FEFFF200FEFFF300FEFD
      F000FAE2B600BF9A2900CDA80D00DBA81700BB842000DFC19000FEFFEC00F0FF
      E300AABA7800B8B47000BEAE7D00BAAF7500BCB17100BFAF7200BDAE7900AFA6
      86001514070000000000F1F0F500FFFDFF0000000000FFFFFF00FCFCFC00FCFC
      FC00FCFCFC00FDFDFD00FCFCFC00FCFCFC000000000000000000FDFDFD000000
      0000F0F0F0007272720077777700B5B5B500ABABAB00A6A6A600999999007777
      7700696969008585850099999900A4A4A400ADADAD00BCBCBC00C3C3C300C4C4
      C400CBCBCB00CDCDCD00CCCCCC00D1D1D100CBCBCB00CDCDCD00C3C3C300C0BF
      AE000507DF000A0BAF00050367000000670011125A009FA1C700FFFFFF00FAFC
      FC00DBDEE60012121500191A19000100B1000000AE000203B9000908B8000E0A
      BF000808BF000506A10002037C0005065C0013149600020395000103B100050A
      CF000000C800706FD900FCFDF700FAF9FA00FCFCFA0000000000FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EEFBF400ABEACA0054CE92002CB8730023AF690020AB66001EA7
      62001CA45C0020A9630057CB94009FEECA009CEDC60044C685001BA55B0018A1
      5900159F5600139E5400129D5000109B4E000F984C000D9649000C9546000C94
      45000B9143000A8F40000888380006853500199F550039BF7E0038BB77000A8D
      3E0001702200016E2100006B21000069200000621D000C5D2300739E7F00EFF6
      F100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBEBEB00ADADAD0000000000F7F7F700F1F1
      F100F1F1F100F2F2F200F2F2F200F2F2F200F2F2F200F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200BFBFBF00D4D4D400F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD0000000000E2E2E2000000000000000000F6F6F600FBFB
      FB0000000000FEFEFE000000000000000000000000000000000000000000FDFD
      FD0000000000F9F9F900F9F9F900FEFEFE00FDFDFD00EBEBEB00000000001309
      1300E5E0E400FFF9F800FFFEF300FFFCE800FFFDE300E8E2C700EFECD600FFFF
      F300FFFEF600FFFFFB00FDFDFF00FBFBFF00FBFAFF00FFFAFC00FEFBE800FFFF
      DF00C9B77700C4951400D99D0800CE960E00E7BB5400FFF0B200FFFFD300FFFD
      C300E2C55B00C7940100EBAB0500CD940300CDA94F00FFF9CF00FFFFEA00D4DE
      BE00ACAC7C00B7B07200C1B27300B7AF7300B7AE7200BBAD7200BAAD7A00ACA4
      830029281B0000000000F0F0F400FFFBFD0000000000FFFFFF00FDFDFD00FCFC
      FC00FCFCFC00FDFDFD0000000000FCFCFC00FCFCFC00FCFCFC00FDFDFD00FFFF
      FF00BABABA008B8B8B0078787800B1B1B100AAAAAA009F9F9F008E8E8E007C7C
      7C0093939300A0A0A000AAAAAA00B1B1B100B8B8B800C3C3C300C3C3C300C0C0
      C000D6D6D600E7E7E70000000000FCFCFC00E1E1E100C1C1C100CBCCCC00CCCF
      BD001C17EA000E0FB90000036C0005047D000200720000005C00454467008184
      B200FFFFFF002F2D43001D1B1B000003AF000300B2000003B8000705BD001411
      BD000505BA0000038B0000005F0014157F0001018B000505A3000509C5000408
      D0000000C800F3F1F600FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FCFC
      FC00FDFDFD00FCFCFC00FCFCFC00F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFFFE00E8F9F100A7E6C7004BC6890025B26A001EA862001BA5
      5D0019A2590016A057001FA7600050C58C0092E9C20099EBC3003DC28000169F
      5600139E5300129C5000109B4E000E984C000D9648000C9546000C9345000B91
      43000A8F40000789380006833300057E2F00067F300015974B002EB7730032B7
      710008883A00006B21000069200000671F0000641E00015C1D00155E2A006C95
      7700F0F4F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBEBEB00ADADAD0000000000F7F7F700F3F3
      F300F2F2F200F2F2F200F2F2F200D0DAD400849F8F0068787100687871006878
      7100687871006878710068787100687871006C7A730088938C00DCE0DD00F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200C1C1C100D6D6D600F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D8D8D80000000000FCFCFC00F8F8F800FCFC
      FC0000000000FEFEFE000000000000000000000000000000000000000000FEFE
      FE0000000000F8F8F800FBFBFB0000000000FEFEFE00EAEAEA00000000001A12
      1B00E5E1E500FEFAFB00FFFEF900FFFFF500FFFFF300FFFFF000FFFEF200FCFA
      EE00FFFEF600FFFDFC00FEFDFF00FAFCFF00FAFCFF00FFFFFE00FFFFF100FFFF
      EA00FDF4C800C9A53D00C7950A00D99A0700D8970800D9A52400D2AB3900B390
      1A00C7950900E7A60200D69B0B00C1952900FAE8A800FFFFE900FFFFEF00B4B6
      9800B4B08000B7AC7200BAAC6E00B6AF7200B7AF6E00BBAE7000BAAE7800ACA5
      81002928190000000000F0F1F400FFFBFD0000000000FFFFFF00FDFDFD00FDFD
      FD00FCFCFC00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF009C9C9C00969696007F7F7F00AFAFAF00AEAEAE00A6A6A6009F9F9F00A7A7
      A700ABABAB00AEAEAE00B5B5B500BABABA00BFBFBF00C5C5C500C0C0C000F0F0
      F000FFFFFF00FCFCFC00000000000000000000000000B8B8B800CCCCCC00D6D1
      C900373AD9000A09C1000E12C7000B12C300080BA60004079200000065000000
      550034305E0042435F001D1915000407A0000100B3000001B9000203B900100F
      BD000200AB00020084000F116F000B0A920003049C000202AA00080AD1000002
      D2004B4BD000FFFFFF00FDFDFD00FCFCFC00FDFDFD00FCFCFC00FCFCFC00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFEFD00E5F8EF00A3E4C4003DC281001FAA630019A3
      5A0015A05500129C5100109A4E001DA25A0049C0840089E6BB0093E9C00036BD
      7A0016A05600109A4F000E984C000D9649000D9546000C9344000B9143000A8F
      400008893B0006833300057F2F00047B2B0002762800057A2C00128F450027B0
      6A002BB16B0007823500016A220000651E0000621D00005E1C0002571B001A5C
      2D00688F7400EFF5F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBEBEB00AEAEAE0000000000F9F9F900F4F4
      F400F2F2F200F2F2F200F2F2F200ABB9AD001A431F00133E1900133B1800133B
      1800133B1900133C1800133C1800133B1800143D1A00244B2C00657F7400F1F1
      F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200C1C1C100D6D6D600F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F900E0E0E000FEFEFE00FAFAFA00FAFAFA00FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F6F6F600FEFEFE0000000000FEFEFE00ECECEC00000000001E1B
      2000E4E2E500FEFCFC00FEFEFA00FFFFF900FEFEF500FEFEFA00FEFFFB00FDFA
      F700FFFBFD00FFFCFF00FEFEFF00FAFEFF00F9FEFD00FAFFFB00FFFEF300FFFD
      EE00FFFFEA00FFFFC800D4BA5B00D3A32200DE9E0400E3A10200DAA40F00D8A5
      1A00D29C1000D2950500C49D3D00F9E4AA00FFFFE300FFFCF000FFFEF200ABA3
      8200BEB38000BCAE7500B9AA7500B5B17000B7B26A00BBB06B00BAAF7500ADA6
      7F002B2B1B0000000000F0F0F400FFFBFD0000000000FFFFFF00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FFFF
      FF00A7A7A700929292008A8A8A00B3B3B300B3B3B300B1B1B100B3B3B300BDBD
      BD00BCBCBC00BDBDBD00BFBFBF00C1C1C100C3C3C300C0C0C000F3F3F300FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFDFD00EBEBEB00CCCBCB00BCC1
      C000FFFFFD00CBCFEA003D3CC1000306D7001D29ED00121AC8000A0A90000808
      780000035B000F137900191C17000A0B78000004BD000101BA000002BF000304
      B3000403AE00000283000A0A890003039A000303AA000405BA000508D4000000
      D2009FA0EA00FAFDFC00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FCFCFC00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFEFD00E2F7ED009AE0BF0033B975001CA5
      5D00139D52000F984D000D9648000D9547001A9E540043BC7D0085E4B7008AE5
      BA0035BA7800159D54000D964A000C9447000C9445000B9143000A8E3F000889
      3A0006843400057F2F00047B2C00037728000172240001702300047529000F8A
      400022AA630023AA6300087E34000167210000601C00005D1C0000581B000250
      19001A592E0071998000FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBEBEB00AEAEAE0000000000FAFAFA00F4F4
      F400F2F2F200F2F2F200F2F2F200A2B2A400002E040000270300002603000027
      030000270300002703000027030000270300002B0400083912003A614F00F1F1
      F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200C1C1C100D6D6D600F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00E2E2E200F7F7F700F9F9F900F8F8F800FBFBFB000000
      0000FEFEFE000000000000000000000000000000000000000000000000000000
      0000FCFCFC00F5F5F5000000000000000000FEFEFE00EDEDED00000000001E1D
      1F00E0E1E100FDFDFD00FCFDFD00FCFFFD00FDFFFE00FEFFFF00FAFAFC00FBF9
      FC00FFF8FF00FFFAFF00FFFEFF00FAFFFD00F9FFFA00FAFFFB00FBFFFA00FEFC
      FC00FFFEFF00ECF9F100FEFFE800F5E69E00CAA94000BC972000C09D2C00B498
      3300C1A24700F8D88500FFFCCE00FFFFF000FDFBF700FFFFFD00FCF8E500B7AD
      8000BCAF7300BDB27300B9AE7600B5B26E00B7B26900BBB16B00BAB07400ADA7
      7F002D2D1C0000000000F1F1F400FFFAFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00FDFDFD00FFFFFF00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FFFF
      FF00BABABA008E8E8E009D9D9D00B6B6B600BABABA00BDBDBD00C0C0C000C9C9
      C900C9C9C900C7C7C700C4C4C400C8C8C800C7C7C700E6E6E600FDFDFD00FCFC
      FC00FCFCFC00FCFCFC00FDFDFD00FCFCFC00FCFCFC0000000000CBCBCB00D1D1
      D40000000000FDFFFC00FCFCFA00C5C7E6004B4ACB000103CB00171DC1001212
      960004046D000A0A7600181952000D105500060BCD000305C0000002C0000203
      BC000102B10001039F000201A1000303AD000404BA00090ACD000101D1000706
      C900F3F4F900F9FCFA00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FCFCFC00FFFF
      FF00FDFDFD00FDFDFD00FDFDFD00F6F6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFEFD00E3F6ED0091DCB50032B2
      7200169F55000E9749000B9345000A9041000A8F410015984C003EB8770084E4
      B60076DDAD0033B57300139C50000B9344000B9143000A8E400008893B000684
      350005802F00047B2C00027629000173250001702200016D2100006B2000026F
      25000C853B001EA86000199F5700087B330001632000005A1B0000561A000052
      19000753200032785300DBDBDB00F1F0F000FCFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECECEC00B0B0B00000000000FAFAFA00F4F4
      F400F2F2F200F2F2F200F2F2F200A2B4A4000031060000260300002603000027
      030000270300002703000027030000270300002D0400063D1100345F4B00F1F1
      F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200C2C2C200D7D7D700F4F4
      F40000000000000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00F8F8F800DCDCDC0000000000F9F9F900F0F0F000FDFDFD000000
      0000FEFEFE00F9F9F90000000000000000000000000000000000FDFDFD000000
      0000F8F8F800F8F8F80000000000FCFCFC0000000000EDEDED00000000002225
      2300E1E3E200FDFFFF00F4F6F700FDFFFF00FCFDFF00FDFDFF00FAFBFF00F9F9
      FD00FFFAFF00FFFBFF00FEFDFE00FBFFFA00F8FFF700F9FFFA00F8FDFE00F8FA
      FE00F9F7FF00EDF8FF00F1FCFD00FDFFEE00FFFFE000FFFCD100FEFBD100FFFD
      DA00FFFDDF00FFFFE500F4FCF000EEF9FB00F3FBFF00FBFDFA00F6F1D400BAAE
      7500BEB26800BCB26B00B6B07100B3B26E00B9B56D00BCB26C00B9AF7400AFAA
      82002F301E0000000000F1F1F400FFFBFF0000000000FFFFFF00FDFDFD00FFFF
      FF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FFFF
      FF00D2D2D2008A8A8A00AEAEAE00BABABA00BFBFBF00C1C1C100C5C5C500CDCD
      CD00D1D1D100D0D0D000D0D0D000CCCCCC00D2D2D200FFFFFF00FDFDFD00FCFC
      FC00FCFCFC00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFCFD00F9FDFA00FFFAFA00FFFFFD00CCC8E7000003B8000609
      8E0004036F000204620012119C000E1237001013DC000A0FCB000408C9000203
      C3000203BD000302B8000102B9001211D4000506D4000208D6000000D700696A
      DA00FFFFFD00FCFCF700FCFCFC00FCFCFC00FFFFFF00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FFFFFF00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFEFD00E7F8EE0083D4
      AE002FAD6B0011994C000B9142000A8D3E00098A3B00088838000E9042003AB5
      73007BDFAF0067D6A1002FB26E0010974B000A8D400008893B00078435000680
      3000057C2C00037828000273250001702200016E2100016B2100006820000065
      1F00016821000981390019A1580014974D0007763000015D1E0000531A000050
      1800115C2B0059947900BDBCBC00C2C1C000EAEAEA00FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECECEC00B1B1B10000000000FAFAFA00F4F4
      F400F2F2F200F2F2F200F2F2F200A2B4A40000350600002D0400002D0400002E
      0400002E0400002E0400002E0400002E040000340600054111002B574100CDCD
      CD00CECECE00CDCDCD00CDCDCD00CCCCCC00CBCBCB00D8D8D800F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200C3C3C300D7D7D700F4F4
      F40000000000000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE0000000000E3E3E300FCFCFC00FEFEFE00F6F6F600FAFAFA00FCFC
      FC00FDFDFD000000000000000000000000000000000000000000FDFDFD000000
      0000F7F7F700F9F9F90000000000FCFCFC0000000000EEEEEE00000000001B1F
      1A00DEE0DF00F6F9F800FAFCFC00F9FAFD00FBFBFF00FAFBFE00F5F7FA00F6F7
      FA00FCF7FE00FDF9FE00FCFAFD00FBFEFC00FAFEF900F8FDFA00F8FCFD00F7F9
      FF00F6F7FF00FEF9FD00FEFCFB00FBFCFB00F7FDFA00F2FDFB00F0FCFB00F3FA
      F900F9FAF800FEFBF900EDF8F900EDFCFF00EFFAFD00FBFDF800D3D0AD00BBB1
      7100C1B66700BAB56B00B5B27400B4B17300BBB47200BCB17200BAAF7700B0A9
      85002A2A1B0000000000EFEFF400FFFAFC0000000000FFFFFF00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FDFD
      FD00E7E7E70088888800B5B5B500BABABA00BFBFBF00C1C1C100C4C4C400CDCD
      CD00D1D1D100D2D2D200D0D0D000CDCDCD007D7D7D00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FAFDFA00FAFFFC00FCFCFA00FCFDFA004A49C3000002
      A80004037300040361000B0FAD0014170F000D14A6001013D200090ECD000509
      C9000307C7000304C8000306D000131BED00131BEA00090CE3001615DE00F9F9
      F700FDFCFD00FCFDFA00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FFFFFF00FFFFFF00FDFDFD00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E2F6
      ED007ACDA4002BA764000C924500098A3B000887370007843300068131000786
      380037B36F0072DBA8005DD09A002AAC68000D8F43000784360006803100057D
      2D00047929000274250001702200016E2100006B21000069200000661F000062
      1F0000601D00005F1D00087D3500169A520011904700066F2C0001561C000252
      1B00266D40009DB5AB00A9A6A6008D8C8A00BDBCBB00E9E9E900FCFCFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECECEC00B1B1B10000000000FAFAFA00F4F4
      F400F2F2F200F2F2F200F2F2F200A2B5A4000038070000320600003206000034
      060000340600003406000034060000340600003908000443130024513900B2B2
      B200B3B3B300B1B1B100B0B0B000AFAFAF00AEAEAE00C4C4C400F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200C3C3C300D7D7D700F4F4
      F40000000000000000000000000000000000000000000000000000000000FEFE
      FE00FDFDFD00FEFEFE00EEEEEE00FBFBFB00FDFDFD00F3F3F300FCFCFC000000
      0000FDFDFD00FDFDFD0000000000000000000000000000000000FEFEFE000000
      0000F7F7F700FCFCFC00FEFEFE00FCFCFC0000000000EEEEEE00000000001314
      1000E0E0DE00FDFEFE00FDFEFF00F8F8FB00FCFCFE00FCFCFC00FBFAFB00FEFE
      FB0000000000FFFDFF00FFFDFF00FFFEFF00FFFDFF00FFFDFF00FDFDFF00FDFC
      FE00FDFDFE00FFFFF500FFFFF500FFFDFC00FAFCFF00F7FBFF00F8FDFF00FDFD
      FE00FFFEFC00FFFFFC00FBFFFC00F0F9FB00F4FBFD00FFFFFB00B1AF8C00B8AF
      7300BCB36B00B9B16F00B1AF7900AFAB7600B8AD7500B9AB7300B7A97900ADA4
      85002E2D200000000000F0F1F200FFFDFE00FBFBFB00FFFFFF00FDFDFD00FFFF
      FF00FDFDFD00FFFFFF00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FFFF
      FF00F6F6F6009F9F9F00BABABA00BDBDBD00BCBCBC00BCBCBC00BFBFBF00C4C4
      C400C7C7C700C4C4C400BFBFBF00B8B8B80056565600FFFFFF00FDFDFD00FDFD
      FD00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FCFCFD00FCFCFA00FAFDFF00FCFDFD00F9FDFD00F4F6F7001C1B
      AF0000028D0007087400151BC1002B2327000C0F3C001218BF000A0FC300080A
      C1000609C0000507C8000205CC000F14E4000F12E4000002E000DAE0F100FAFA
      F700FAFCFA00FAFCFC00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FFFFFF00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E1F3EC0074C89E00239E5B00098A3C000784340006803000057D2D000479
      2A000680310031AE6A0069D5A20057CC940024A45F0009873800057D2D000479
      29000375250001712300016E2100006C21000069200000671F0000641F000060
      1E00005D1C0000591C0000591B000777320012944A000F8A4200056929001165
      300053947100C5C5C500878787007674730087858400C3C2C100F0EFEF00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECECEC00B2B2B20000000000FAFAFA00F4F4
      F400F2F2F200F2F2F200F2F2F200A2B6A400003C080000380700003807000038
      070000380800003908000039080000390800003D0B00054718002F5A4600DBDB
      DB00DCDCDC00DCDCDC00DBDBDB00DADADA00DADADA00E2E2E200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200C3C3C300D7D7D700F4F4
      F40000000000000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00EBEBEB00F4F4F400FDFDFD00FDFDFD00FEFEFE0000000000FCFC
      FC00FCFCFC000000000000000000000000000000000000000000FEFEFE00FDFD
      FD00F7F7F700FEFEFE00FEFEFE00FCFCFC0000000000EEEEEE00000000001A1A
      1500E1DFDD00FFFDFD00FCFAFC00FFFEFF00FFFEFF00FFFFFE00FEFDF800FFFF
      F800FDFFFB00FEFFFD00FEFCFE00FFFBFF00FFFAFF00FFFBFF00FFFCFD00FFFC
      FB00FFFEF800FFFFF800FFFFF900FFFEFF00FFFCFF00FFFDFF00FFFCFC00FFFD
      F800FFFFF500F8FFFA00FFFEF600FDFBF700FFFEFF00FAF8F6009F988000B1A8
      7900B6AC7100B2A97600ADA67F00B3AC8100BCAE7F00BDAC7C00BBAB8200B0A5
      8A002B2A1F0000000000F0F1F200FFFEFD0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CDCDCD00BFBFBF00BCBCBC00B8B8B800B3B3B300B5B5B500B3B3
      B300B1B1B100A7A7A700A0A0A00057575700C9C9C900FDFDFD00FDFDFD00FDFD
      FD00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FCFDFC00FDFDFC00FFFFFD00FFFDFD00FDFDFC00FDFDFD00D9DA
      F4000303A300050686000C0FB6001C1E1C000E1009000C1447000A0FB9000609
      B5000707B2000506BA00060AC4001212D4000809C8005555C900FDFDFD00FFFF
      FD00FDFDFD00FDFFFF00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DDF3E90071C297001A954D0007833400057E2E00047A2A000375
      2600016E22000474290029A6610060D19C0057CA92001C9D5500057C2E000376
      260001722300016F2100006C2100006A200000671F0000641F0000611D00005E
      1C00005A1C0000561A000053190000541A0005712D000E8D4400128B47004695
      6700B5CAC300C7C7C7007C7C7C006363640074727100A3A2A100D7D6D600F5F5
      F500FDFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECECEC00B2B2B20000000000FAFAFA00F4F4
      F400F2F2F200F2F2F200F2F2F200A2B7A50000400A00003E0800003E0800003E
      0800003E0A00003E0A00003F0A00003F0A0000420D00064A1A0034604B00F1F1
      F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200C4C4C400D7D7D700F4F4
      F40000000000000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00D4D4D400F6F6F600FEFEFE00F8F8F800B8B8B800D9D9D900FBFB
      FB0000000000FDFDFD0000000000000000000000000000000000FEFEFE00FDFD
      FD00F8F8F80000000000FEFEFE00FCFCFC0000000000EEEEEE00000000003B38
      34003632310017121300241F21001F1A1C000E090A000F0B0900131009001E1D
      120024281E00252724002B292C00312C3400342C3600362D3500342C3000322D
      2A00302D2500252B2A00202A3000222732002827310030292E00392D2900352C
      25002B2E280022302E002B251D003227260031292E00312A2B002A2015003E34
      150040370F003D34140039321A003D361A004439180047371600443619004039
      26001817110000000000EEEFEF00FFFFFD0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F9F9F900C0C0C000B9B9B900B1B1B100AAAAAA00AAAAAA00A6A6
      A600A1A1A100999999006565650027272700F4F4F400FDFDFD00FFFFFF00FDFD
      FD00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FDFDFD00FDFDFD00FDFD
      FD00FFFFFF00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FFFFFF00FDFF
      FD009290DC0000009F000301A800232330001D1E1E000E1643000A0C9F000006
      A1000407A1001211B3003C3DE6001010A100C5C4E600FFFFFA00FCFDFD00FFFF
      FF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEF3E80074C196000C893D00047B2B00027124000067
      1F0000631E0000601D00036C2500229E590056CF950058CA920011944A000272
      2400016F2100006B21000069200000671F0000641E0000611E00005E1D00005A
      1C0000561B0000531900004F1800004B1600004D1700046A2800359D620093C9
      B100D8D8D800CACACA00A1A1A3007777780072727200A6A6A600BCBBBB00CECD
      CD00F0F0F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDEDED00B5B5B50000000000FAFAFA00F4F4
      F400F2F2F200F2F2F200F2F2F200A2B9A60000440D0000420C0000420C000042
      0C0000420C0000420C0000420C0000420C0000460F00074E1E0035624E00F1F1
      F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200C4C4C400D7D7D700F4F4
      F40000000000000000000000000000000000FDFDFD00FEFEFE0000000000FBFB
      FB00FDFDFD00D7D7D70000000000F9F9F900EAEAEA00C1C1C100D0D0D000D4D4
      D400FCFCFC00F6F6F600FEFEFE000000000000000000FCFCFC00FAFAFA00F3F3
      F300F6F6F60000000000FDFDFD00F7F7F70000000000E5E5E500000000004D4B
      4A00575252004C4748004D4849004B4546004A4546004B4546004B4647004B46
      46004D4849004E4A4B00504B4C00524C4E00534E4F0056505200565252005853
      54005A555600575354005A5556005E5A5C0056515300565052005A5556005853
      5300524E4F004E4B4C004C4647004C4647004C4547004C4646004C4646004841
      4100463F3E00433D3C00413A3A003E3C3A003C3C3A003C3C3A003C3B3A003C3B
      3A003939390000000000E5E5E50000000000FBFBFB00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00C0C0C000B2B2B200A4A4A4007B7B7B006F6F6F006E6E
      6E006E6E6E006F6F6F005E5E5E00EBEBEB00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FDFD
      FC00FFFFFA006E6CD4000000A6000C0E8000060A72000A0A88000B0F88000302
      740003047900070A8D0004058500E0E1F100FDFFFF00FAFCFD00FFFFFD00FFFF
      FF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFEFC00D9EEE3007ABF9600097F3300016920000063
      1E00005F1D00005C1C00005C1C00056B26001D97510047C6880052C78B000C8F
      4200016E2100006A200000671F0000631E0000601D00005D1D00005A1C000058
      1B0000531900004F1800004B1600004715000045140009612D0068A68600DAE0
      DE00E1E1E200D9D9DB00C6C6C900A5A5A500ACACAC00BABABA00B3B3B200A2A1
      A000B5B4B300F0F0F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDEDED00B5B5B50000000000FAFAFA00F4F4
      F400F2F2F200F2F2F200F2F2F200A2B9A7000047100000450F0000450F000046
      0F0000461000004610000046100000461000004A13000751220037645000F1F1
      F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200C6C6C600D9D9D900F5F5
      F50000000000000000000000000000000000FDFDFD0000000000FDFDFD00FCFC
      FC00FCFCFC00EBEBEB00FCFCFC00F9F9F900FBFBFB00FEFEFE00F3F3F300E2E2
      E200E1E1E100ECECEC00EAEAEA00FAFAFA0000000000F7F7F700FCFCFC00FBFB
      FB00EAEAEA00F5F5F500FBFBFB00FEFEFE00F3F3F30000000000AFAFAF00A09E
      9E00A2A0A0009B9999009E9B9B00A09E9E00A4A2A200A3A1A100A2A0A000A2A0
      A0009F9D9D00A09E9E00A09E9E00A2A0A000A1A0A0009E9C9C009F9E9E009F9E
      9E00A19F9F00A4A2A2009C9A9A0078767600A3A1A100A5A3A300A7A5A500A6A4
      A400A4A2A200A3A1A100A6A0A100A6A0A100A6A0A100A6A0A100A6A0A100A6A0
      A000A6A0A100A59FA000A59FA0009F9D9D009D9D9D009D9D9D009D9D9D009D9D
      9D009B9B9B00B5B5B50000000000F7F7F70000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FCFCFC00BABABA006C6C6C00676767006E6E6E007070
      7000727272006D6D6D006C6C6C00C5C5C500FDFDFD00FDFDFD00FFFFFF00FDFD
      FD00FDFDFD00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FAFF
      FD00FCFCFC00FFFFFD00BCBDE1002223A1000C0A81003D419500413F97003234
      8D001C1C74001B1C76003C369C00C9CCE300FFFFFD00FDFCFD00FDFDFF00FFFF
      FF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9FDFB00D4ECDF007ABC930007742A000062
      1E00005D1C00005A1B0000571A0000571B00056727001A904C003CBF7F0048C1
      83000A893C00016C220000651E0000611D00005E1C00005B1C0000581A000053
      190000501800004D1600004815000045130003531F0061987800C6D7D000ECEC
      EC00F2F2F200E8E8E800D9D9DB00C0C0C200C0C0C000C1C1C100BEBEBE00B1B0
      AF00AAAAA800C7C7C600F9F9F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDEDED00B6B6B60000000000FAFAFA00F4F4
      F400F2F2F200F2F2F200F2F2F200A2BAA8000049120000481200004812000048
      120000481200004812000048120000481200004C16000753240038655200F1F1
      F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200C6C6C600D9D9D900F5F5
      F50000000000000000000000000000000000FDFDFD0000000000FCFCFC00FDFD
      FD00F0F0F000F4F4F400FBFBFB0000000000FDFDFD0000000000FDFDFD00FEFE
      FE00FCFCFC00F6F6F600FAFAFA00E0E0E000DBDBDB00EBEBEB00EEEEEE00F7F7
      F700D1D1D100AFAFAF00B0B0B000E1E1E100FBFBFB00F6F6F600000000000000
      0000FFFDFD00FEFCFC00FDFCFC0000000000000000000000000000000000FFFE
      FE00FFFEFE00FFFEFE00FFFEFE00000000000000000000000000000000000000
      000000000000FFFEFE00D1D0D000A09E9E00FFFEFE00FDFCFC00FFFEFE00FFFE
      FE00FFFEFE00FFFEFE00FFFEFF00FFFEFF00FFFEFF00FFFEFF00FFFEFF00FFFC
      FD00FFFCFD00FFFDFE00FFFDFE00000000000000000000000000000000000000
      00000000000000000000EEEEEE00FAFAFA0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B5B5B5006A6A6A0076767600797979007B7B7B007B7B
      7B007B7B7B0078787800747474006969690095959500FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFF
      FD00FDFFFD00FDFDFC00FDFDFD00706EB3003A3899001B1E8400090A68000000
      61000000610000005F00000061000E096D007B7CC100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8FCFA00D4EADD0076B68D00066D
      2600015D1D0000571A0000531900005018000051190005622400168A470038BA
      79003DBC79000C873D0001692300005E1D00005B1B0000581B0000541900004F
      1800004C17000048150000451400004717005A8F6F00BCD2C600E8EAE900EDED
      EC00F5F5F500F1F1F100D0D0D100A9A9AA00BEBEBE00C3C3C300C2C2C200BEBE
      BE00B8B8B700BDBDBC00DAD9D900F0F0F000FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6E0D8008AAA910055845F004F7F5B003C6E490055866200538560005184
      600050845F0050845F0050845F003674490000521B00004C1500004C1500004C
      1600004C1600004C1600004C1600004C1600004F19000255210013552A005083
      5F0050825E0050825E0050825E0050815D0050815D0050815C0050805C00507F
      5B00507C58009DB9A900E1E7E400F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200C6C6C600D9D9D900F5F5
      F500000000000000000000000000000000000000000000000000FDFDFD00FDFD
      FD00DEDEDE00FCFCFC00FCFCFC00F7F7F700C0C0C000CECECE00E7E7E700F9F9
      F900FEFEFE00FCFCFC00000000000000000000000000FDFDFD0000000000F0F0
      F000DFDFDF00E8E8E800DEDEDE00CECECE00FEFEFE00E4E4E400B5B5B500D7D7
      D700E9E9E90000000000FAFAFA00FAFAFA00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FCFCFC00FCFCFC00FBFBFB00FBFBFB00FBFBFB00FDFDFD00FCFCFC00FCFC
      FC00FCFCFC00F5F5F5008E8E8E00C9C9C900FCFCFC00FEFEFE00000000000000
      00000000000000000000FFFAFB00FFFAFB00FFFAFB00FFFAFB00FFFAFB00FFFA
      FB00FFFAFB00FFFAFB00FEFAFB00FDFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FEFEFE00F2F2F200F5F5F500F8F8F80000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD0077777700808080008383830083838300858585008484
      84008484840081818100808080007B7B7B006E6E6E00FFFFFF00FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFF
      FF00FDFDFD00FAFDFF00EBEBF10016158600080A6F0003036C0000006A000000
      6C0000006D000001690000006C0000006700000065004F4FA600FAFFFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9FCFA00D6EBDF006FB0
      8600116E2D0001591C0000511900004D1700004A1600004B1600035C20001387
      440036BA78002CB06A000E833C000264230000591B0000551A0000511800004C
      17000049150000451400004717004B856400B5CEC200E5E9E700E6E6E500E6E5
      E400ECECEB00E1E1E1009C9C9C0096969600C1C1C100C8C8C800C5C5C500C4C4
      C400BEBEBE00B3B2B200A5A5A500B2B7C300ECEDF400FCFDFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A8BAAD00376B4600004C160000491300004A1400004B1400004C1500004D
      1600004E1700004E1700004E17000050190000531C00004F1800004F1900004F
      1900004F1900004F1900004F1900004F190000511B0000531D00004F1900004F
      1900004E1700004E1700004D1700004C1600004C1500004C1500004B1400004A
      1400004C1500567A6600ABB2AF00C0C0C000C0C0C000C0C0C000BFBFBF00BFBF
      BF00BFBFBF00BDBDBD00BDBDBD00BCBCBC00BCBCBC00BBBBBB00BABABA00B9B9
      B900B7B7B700BDBDBD00F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200C7C7C700DADADA00F5F5
      F50000000000000000000000000000000000FDFDFD00FEFEFE00FDFDFD00FAFA
      FA00D2D2D200FEFEFE00FAFAFA00FDFDFD00FDFDFD00F4F4F400D1D1D100BBBB
      BB00A7A7A700ABABAB00D4D4D400E3E3E300EFEFEF00F1F1F100FDFDFD000000
      000000000000FEFEFE00FDFDFD00F4F4F400EDEDED00D7D7D700CBCBCB00CFCF
      CF00E6E6E60000000000E1E1E100C2C2C200EDEDED00F1F1F100FDFDFD00FBFB
      FB00FAFAFA00FCFCFC00FEFEFE000000000000000000FCFCFC00FCFCFC00FCFC
      FC00FEFEFE00FEFEFE0074747400E5E5E500FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE0000000000FEFEFE000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B500898989008A8A8A008D8D8D008D8D8D008D8D8D008B8B
      8B008A8A8A008888880088888800858585008080800097979700FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFF
      FF00FDFDF900F1F3F9003A37890016199500121393000403810001017B000000
      7B0000007B0000007B0001017700000074000000740000006A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFDFC00DCEE
      E40068A97E00166B310001531A00004B17000047150000441400004614000256
      1C00108342002EB16E0023A660000D7E3900025F200000521900004D18000049
      16000047150000471700427E5B00AFCCC000E0E7E500E3E3E200DDDCDA00DCDA
      D900D0D0CF00A7A7A7007F7F7F00B8B8B800D8D8D800D5D5D500C8C8C800BDBD
      BD00B0B0B0009999990072737800677AA300878EC600DEE0F000FCFCFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000091A598001F5A340000521B00004B1400004C1500004D1600004E1700004F
      1800004F1900005019000050190000501A0000511B0000511B0000521C000052
      1C0000521C0000521C0000521C0000521C0000521C0000521C0000521C000052
      1C0000511B0000511B0000501A000050190000501900004F1900004F1800004F
      180000541D0047655400A8ADAA00C1C1C100C1C1C100C0C0C000C0C0C000C0C0
      C000C0C0C000BEBEBE00BEBEBE00BDBDBD00BCBCBC00BBBBBB00BABABA00B9B9
      B900B8B8B800BDBDBD00F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200C8C8C800DADADA00F5F5
      F50000000000000000000000000000000000FEFEFE0000000000FDFDFD00F5F5
      F500E6E6E600F8F8F800FDFDFD00E3E3E300D4D4D400C6C6C600F6F6F600EAEA
      EA00EBEBEB00E3E3E300D7D7D700EFEFEF00FAFAFA00EAEAEA00ECECEC00E5E5
      E500E3E3E300F1F1F1000000000000000000F8F8F800FBFBFB0000000000F3F5
      F500EEEFEF00EAEBEB00D5D5D500C7C8C800D2D4D400E4E6E600FAFBFB000000
      0000F5F6F600F6F8F800FBFCFC00FEFFFF00FBFCFC00FDFEFE00FCFDFD00FCFD
      FD00FDFFFF00F6F7F7008C8D8D00F4F5F500F9FBFB00FEFFFF00FEFFFF00FEFF
      FF00FEFFFF00FEFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFC
      FC00E1E1E1008686860092929200959595009696960096969600979797009393
      93009595950092929200909090008D8D8D008A8A8A007B7B7B00E0E0E000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FC00FFFFFF005657B1001A1996001E21AE0010129D0000018600000188000000
      8600000086000001880000018500000185000000830000008000979AD900FDFC
      F900F9FFFF00FFFFFA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9ECE20065A27A0018673100014C17000045140000421300004013000040
      1200004D17000F7E3E0027A966001D9F58000B77340001571D00004B17000048
      1600074F1E0036745000AECDC000DDE3E000DBDAD900D5D4D200D5D4D200C6C5
      C3009999980072727200A0A0A000EAE9E900F3F2F200E3E3E300C1C1C100A8A8
      A800A0A0A0008D8D8E0064677100304D9E00121D8F008187C300DBDDEE00FCFC
      FE00000000000000000000000000000000000000000000000000000000000000
      00008BA495001A5A320000551E00004E1800004F180000501A0000511A000052
      1C0000521C0000521C0000521C0000531D0000541E0000541E0000551E000055
      1E0000551F0000551F0000551F0000551F0000551F0000551F0000551E000055
      1E0000541E0000541E0000531D0000521C0000521C0000521C0000521C000052
      1B0000561F00506C5C00D0D5D200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200C8C8C800DADADA00F5F5
      F5000000000000000000000000000000000000000000FEFEFE00FEFEFE00EDED
      ED00FEFEFE00FEFEFE00F5F5F500FBFBFB00DCDCDC00DADADA00B0B0B000DADA
      DA00FAFAFA00EEEEEE00E6E6E600E4E4E400EBEBEB00F8F8F800FBFBFB000000
      0000FDFDFD00EFEFEF00DFDFDF00E4E4E400ECECEC00F1F1F100F5F5F500FBFE
      FE00F7F9F900F8FAFA00FDFEFE00FDFDFD00EDEFEF00E3E6E600DFE1E100E4E6
      E600EFF2F200FBFDFD00FCFEFE00FDFEFE00F5F8F800FBFDFD00FAFCFC00F8FA
      FA00F8FBFB00DFE1E100AAACAC0000000000FAFBFB00FBFDFD00FDFFFF00FDFF
      FF00FDFFFF00FDFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A8A8A800999999009F9F9F009D9D9D00A0A0A000A1A1A100A0A0A0009F9F
      9F009D9D9D009D9D9D009A9A9A0096969600939393008989890090909000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00E1E8F00015169D001519A4001416AB000606950002019200030193000303
      96000201950006049C0004039700030195000100900000008E001E1C9900F9F9
      FA00FAFCFC00FAFFFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D8EAE100649E7800165F2C000146150000401300003E1200003C
      100000390F00004815000C7A39001FA45F001999520008712E0001521B000B54
      24003D7C5500AECEC300DBDEDD00CACAC900C1C1BF00C9C8C700D0CFCD00B2B1
      AF007777770086868600D5D4D300EDECEC00F5F4F400D7D7D700A5A5A5009999
      9900ADADAE00A7A8AB007F8496000A229400010A81000D1587008185C100DDDF
      EF00FCFCFE000000000000000000000000000000000000000000000000000000
      00008BA595001A5C33000058210000511B0000521C0000521C0000541E000055
      1E0000561F0000561F0000562100005722000057220000582200005822000059
      2300005923000059230000592300005923000059230000592300005923000058
      22000058220000562100005621000055200000551F0000551F0000541E000055
      1F0000592300506D5D00D0D5D300F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200C9C9C900DADADA00F5F5
      F5000000000000000000000000000000000000000000FEFEFE00FEFEFE00E5E5
      E50000000000FDFDFD00F8F8F800B0B0B000BABABA00D0D0D000F4F4F400EAEA
      EA00EFEFEF00FBFBFB00F8F8F800FEFEFE00F5F5F500EFEFEF00DADADA00E5E5
      E500F3F3F300F7F7F700F6F6F600FDFDFD0000000000F6F6F600DCDCDC00D8DA
      DA00E9EBEB00F0F3F300F9FAFA00F8FAFA00F5F7F700FBFEFE00FAFCFC00FDFE
      FE00F3F5F500D8DADA00C9CCCC00E3E6E500F7F9F900F0F3F200F7FAFA00FCFE
      FE00FDFFFF00A1A3A300C9CCCB00FCFFFF00FDFFFE00FCFEFE00FCFFFF00FCFF
      FF00FCFFFF00FCFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEA
      EA0097979700A4A4A400A8A8A800AAAAAA00ABABAB00A8A8A800AAAAAA00A8A8
      A800A8A8A800A8A8A800A6A6A600A1A1A1009D9D9D009292920081818100E6E6
      E600FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005C5ECC000A0F9F001010A3000E0EA70004049C0002019F000304A3000405
      A4000305A4000305A7000103A4000103A3000102A00000009A0000009200B1AB
      E100FFFFFD00FCFDFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DAE9E000679A78000F55240000401200003C1000003A
      0F0000360E0000340D000044130008733300199C56001A97510015793A004384
      5D00CDD5D200E0E0E000C0C0C000A8A8A800AEAEAE00C2C1C100CFCFCF00CDCD
      CD00C4C4C400CBCAC900DEDCDB00E4E3E100E1DFDF009F9F9F0089898900B3B3
      B400D8D8DA00C0C3CD007A88B400010A840000077F00000578000C127F007F82
      BE00E8E8F4000000000000000000000000000000000000000000000000000000
      00008BA695001A5E3600005B250000541E0000551F0000551F0000592200005B
      2400005C2400005D2500005D2700005E2700005E2800005F2A00005F2A00005F
      2A00005F2A00005F2A00005F2A00005F2A00005F2A00005F2A00005E2800005E
      2700005D2700005C2600005C2500005B23000059230000582200005721000057
      2100005B2500516F5E00D0D5D300F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200C9C9C900DADADA00F5F5
      F5000000000000000000000000000000000000000000FEFEFE0000000000DFDF
      DF00F7F7F70000000000F8F8F800F6F6F600FBFBFB00DBDBDB00CACACA00B3B3
      B300B6B6B600EDEDED00DFDFDF00D6D6D600EFEFEF00FEFEFE00F7F7F700FDFD
      FD00FEFEFE00F8F8F800F0F0F000DEDEDE00DDDDDD00F2F2F200FEFEFE00F1F3
      F300FDFFFF00F9FCFC00F3F7F600E5EAE900CFD4D300E5E9E800FAFCFC00FBFE
      FE00FBFDFD00FAFCFC00F8FBFB00F6FAFA00F5FAF900EBF0EF00F9FDFC00FCFF
      FF00FAFCFC005E5F5F00E4E6E600FCFFFF00F9FDFD00FAFFFE00FBFFFF00FBFF
      FF00FCFFFF00FDFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C9C9
      C900A7A7A700AEAEAE00B1B1B100B2B2B200B5B5B500B5B5B500B5B5B500B5B5
      B500B2B2B200AFAFAF00AFAFAF00ABABAB00A8A8A8009D9D9D0092929200C9C9
      C900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F9
      FC003C40C0000A0A9F00070AA0000505A4000202A3000202AA000304AE000405
      AF000304AE000203AE000203AF000102AD000001AA000000A6000000A1004545
      B300FFFFFD00F9FDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCE9E0006D9A7B0004461600003A0F000036
      0E0000340D0000300D00002E0C00003D1200066C2D0030A0630086C3A600D4D4
      D400D9D9D900D5D5D500BABABA00A4A4A400ACACAC00C5C5C500D3D3D300D2D2
      D200D2D2D200D2D1D100D6D5D500D8D6D500939291007A797900B3B3B300E9E9
      E900E6E6E600A8AFC9000C2999000009820000077C0000057500000470002026
      89009095C9000000000000000000000000000000000000000000000000000000
      00008BA796001A613B0001602D00005B2400005D2700005F2800005F2A000060
      2A0000612B0000612B0000612B0000622B0000622C0000622C0000622C000062
      2C0000622C0000622C0000622C0000622C0000622C0000622C0000622C000061
      2B0000612B0000602B0000602A00005F2A00005F2900005E2800005D2700005B
      2500005E280051725E00D0D6D300F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200CACACA00DDDDDD00F7F7
      F70000000000000000000000000000000000FCFCFC0000000000FDFDFD00DADA
      DA0000000000FEFEFE00FCFCFC00B2B2B2009A9A9A00D9D9D900DFDFDF00E1E1
      E100F0F0F0000000000000000000FEFEFE00F8F8F800EDEDED00E8E8E800DEDE
      DE00DFDFDF00F6F6F6000000000000000000FCFCFC00F2F2F200F4F4F400E8E8
      E800DFDFDF00DEDEDE00F6F6F6000000000000000000FAFAFA00F2F2F200ECEC
      EC00E5E5E500E5E5E500EAEAEA00F6F7F7000000000000000000F8F8F800F9F9
      F900F6F6F60076767600F7F7F700FBFBFB00FDFEFE00FDFDFD00FEFFFF00FEFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000B5B5B500B8B8B800BABABA00BCBCBC00BDBDBD00BDBDBD00BCBCBC00BCBC
      BC00BABABA00B9B9B900B8B8B800B3B3B300B2B2B200A7A7A700A0A0A000BCBC
      BC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEB
      FA001D22C50003039A000304A1000000A8000202B1000302B5000301B3000303
      B6000405B8000102BA000406BD000305BF000406BD000303B6000000B1000706
      AD00F4F3F900FAFDFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFDFC00D5E4DB00729C8000044014000034
      0D0000300D00002E0C00002C0C0001331300306D4D0084AD9A00C7CECB00DCDC
      DC00EAEAEA00E1E1E100D0D0D000AEAEAE00A1A1A100BEBEBE00D4D4D400D3D3
      D300D3D3D300D1D1D100CCCBCB008383830069696900A2A2A200DCDBDB00EEED
      ED00C8CEDC006577B300010D880000088000000679000004730000036F000407
      6E007476AE000000000000000000000000000000000000000000000000000000
      00008CA897001D633F0003633400005F290000612B0000622B0000622C000062
      2C0000622D0000622E0000622E0000622E0000632E0000633000006330000064
      30000064300000643000006330000063300000632F0000632E0000632E000062
      2E0000622E0000622C0000622C0000622C0000622C0000612B0000602B00005F
      290000622C0051735F00D0D6D300F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200CACACA00DDDDDD00F7F7
      F70000000000000000000000000000000000FAFAFA00FDFDFD00EAEAEA00EDED
      ED00FDFDFD00E3E3E30000000000F6F6F600FBFBFB00E2E2E200E9E9E900F9F9
      F900F1F1F100E8E8E800E5E5E500E3E3E300F0F0F000F6F6F600000000000000
      0000FDFDFD00EFEFEF00E5E5E500E8E8E800E9E9E900EBEBEB00FAFAFA000000
      000000000000FDFDFD00EFEFEF00E4E4E400E6E6E600EAEAEA00F2F2F200F9F9
      F90000000000FCFCFC00F3F3F300E9E9E900E5E5E500F0F0F00000000000F9F9
      F900E3E3E300B0B0B000FCFCFC00FBFBFB00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00C0C0
      C000BFBFBF00C0C0C000C3C3C300C4C4C400C5C5C500C5C5C500C5C5C500C7C7
      C700C5C5C500C4C4C400C3C3C300BFBFBF00BABABA00B1B1B100ADADAD00B9B9
      B900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00E4E4
      F9000F15C3000000A0000001A8000001B2000103BD000203C4000002BD000603
      C1001612C9000303C300060AD0000509D0000609CF00070ACC000001B9000000
      B600D7D6EE00FCFDFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9FBFA00D2E1D700759B81000339
      1200002E0C0000300E00145230005D816F0097A8A100C0C7C400E3E3E300F4F4
      F400F8F8F800F0F0F000CECECE008C8C8C0086868600B5B5B500D6D6D600D5D5
      D500D5D5D500CFCFCF00AFAFAF00626262008A8A8800C4C3C200E0DFDE00D6D8
      DB008B95BF00152495000009840000077E00000578000004720000036F000003
      6A007172AA000000000000000000000000000000000000000000000000000000
      00008DAA98001F6542000565380000622C0000622D0000632D0000632F000064
      2F0000642F000064300000643000006431000065310000653200006532000065
      3200006532000065320000653200006532000065310000653100006531000064
      31000064300000642F0000642F0000632E0000632E0000622D0000622C000062
      2C000064310051746100D0D6D300F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200CACACA00DDDDDD00F7F7
      F70000000000000000000000000000000000FCFCFC00FBFBFB00DDDDDD00FEFE
      FE00FBFBFB00FEFEFE00CECECE00F0F0F000E6E6E600F2F2F200F7F7F700FDFD
      FD00F8F8F800FBFBFB00FDFDFD00FDFDFD00F9F9F900EAEAEA00DEDEDE00E5E5
      E500F0F0F000F8F8F800FDFDFD000000000000000000F6F6F600E5E5E500DFDF
      DF00E7E7E700F1F1F100F8F8F800FCFCFC0000000000F8F8F800EDEDED00E4E4
      E400DFDFDF00E7E7E700F4F4F400FBFBFB00FDFDFD00FDFDFD00FAFAFA00FDFD
      FD00B6B6B600D4D4D400FCFCFC00FEFEFE0000000000FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00C7C7
      C700C7C7C700CBCBCB00CBCBCB00CCCCCC00CCCCCC00CFCFCF00CFCFCF00CFCF
      CF00CDCDCD00CCCCCC00C9C9C900C7C7C700C4C4C400BCBCBC00B6B6B600C1C1
      C100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E3
      F7000A0DC0000000AA000101B6000001BD000002C3000003CB000002CB000503
      D0001D1BDE000203CF00090BDA00060AD900070AD9000709D5000103C4000000
      BF00D0CFEE00FFFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8FAF900D2DFD700789B
      85003C6953006A7D71007C9287009EA9A800C0C2C400DDDDDD00F2F2F200FCFC
      FC00F9F9F900D8D8D8009A9A9A0081818100A2A2A200C5C5C500D4D4D400D6D6
      D600D4D4D400C7C7C7007E7E7E0082818100B7B7B500D3D2D100D7D6D50096A1
      C3003045A200000C88000008800000067B00000575000003710000036D000106
      6B007275AB000000000000000000000000000000000000000000000000000000
      00009CB3A40032715200126A4500156A4300166B4400176C4500196C47001A6D
      47001B6D48001D6E48001D6F48001D6F4900176E450001663500016637000166
      3700026637000266370001663700016637000367390009693E000F6A41000D6A
      41000B6A3F000A693F0009693E0007683C0006673B0005663A00046639000365
      36000163340053716200AEB3B000C5C5C500C5C5C500C5C5C500C4C4C400C4C4
      C400C4C4C400C4C4C400C3C3C300C3C3C300C2C2C200C1C1C100C1C1C100C0C0
      C000BFBFBF00BEBEBE00BDBDBD00BDBDBD00BCBCBC00A5A5A500CBCBCB00F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200CACACA00DDDDDD00F7F7
      F7000000000000000000000000000000000000000000FAFAFA00E2E2E2000000
      000000000000FEFEFE0073737300818181007C7C7C003E3E3E006D6D6D00F3F3
      F300FBFBFB00F0F0F000FEFEFE00F8F8F800F4F4F400FAFAFA00F3F3F300FCFC
      FC00FEFEFE00F1F1F100E1E1E100DDDDDD00F5F5F500FCFCFC00F8F8F800F0F0
      F000FAFAFA0000000000F3F3F300E4E4E400E7E7E700F1F1F100F9F9F900FEFE
      FE0000000000FEFEFE00F0F0F000E5E5E500E1E1E100EEEEEE00FAFAFA000000
      000079797900EAEAEA00FEFEFE00FEFEFE00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0D0
      D000CFCFCF00D0D0D000D1D1D100D5D5D500D6D6D600D6D6D600D6D6D600D5D5
      D500D4D4D400D2D2D200D2D2D200D0D0D000CDCDCD00C4C4C400BCBCBC00D0D0
      D000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8E8
      FA00080AC1000300B6000003C7000101C9000002CC000203D1000202D5000307
      E300343AFD000809E700080BE6000808E1000606DF000305DA000303D4000000
      C800D6D7ED00F7FCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9FBFA00DCE7
      E100ACBFB80093959E008D8D9D009999AB00B6B6C200D6D6DB00ECECED00F3F3
      F300E9E9E900CFCFCF00A3A3A300BABABA00D1D1D100D4D4D400CCCCCC00BABA
      BA009E9E9E008D8D8D007A7A7A00ABA9A900CCCAC900D2D1D1009BA7C5004157
      AA0005158F000008800000077B00000678000004720000036F0000036B001318
      78008388BA000000000000000000000000000000000000000000000000000000
      0000D0DCD4007CA28D00437E6000447C60003F725B0042735C0045755F004575
      5F0045765F0046765F0046775F003B7359001B6C4A0005683D0005683D000568
      3E0005683E0005683E0005683D0005683D000B6A4200166C4700146541003C74
      5A003B7459003B7359003A735900397258003872570037715700367156003671
      550039745400A3B1AA00CCCECD00D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D3D3D300D3D3D300D2D2D200D2D2D200D1D1D100D1D1
      D100D0D0D000D0D0D000CFCFCF00CFCFCF00CECECE00BFBFBF00D8D8D800F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200C6C6C600DFDFDF00F9F9
      F90000000000000000000000000000000000F9F9F900F3F3F300E6E6E6000000
      0000FDFDFD00000000002F2F2F00BCBCBC008E8E8E00DEDEDE0090909000EAEA
      EA006A6A6A00B4B4B400F2F2F200BABABA00FAFAFA00FCFCFC00F8F8F800F3F3
      F300FCFCFC00F9F9F900FAFAFA00FBFBFB00FCFCFC00F9F9F900EAEAEA00D9D9
      D900E1E1E100E2E2E20000000000F7F7F700FAFAFA00FCFCFC00F6F6F600EAEA
      EA00D8D8D800E4E4E400F1F1F100FAFAFA00FDFDFD00F7F7F70000000000F8F8
      F80067676700FCFCFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDE
      DE00D4D4D400D5D5D500DADADA00DADADA00DADADA00DBDBDB00DBDBDB00DCDC
      DC00DCDCDC00DADADA00D7D7D700D6D6D600D2D2D200CCCCCC00C0C0C000E1E1
      E100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F7
      FD00161BC0000000C1000304D4000407DE000403DB000203DE000403DE000304
      E7001217F900090EF400050AE7000304E1000102DB000000DC000406DE000303
      CD00F3F6F900FCFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00F4F4F400AFAFBC0072729100767696009696AE00B8B8C500CFCFD200D8D8
      D800DEDEDE00D6D6D600CCCCCC00E7E7E700ECECEC00DEDEDE00BBBBBB008D8D
      8D00717171007878780093939300B8B6B600CAC9C800AAB3C7004F65AF000B20
      9500000A860000077D0000067800000675000004700000036D0000036A00464A
      9700B6BAD9000000000000000000000000000000000000000000000000000000
      0000F8FBF900D3DFD700AABFB000A5B9AB0093A39A0091A09700A3B2A900A0B0
      A7009FAFA5009FAFA5009FAFA50073978600186847000B6A43000B6A43000B6A
      44000B6A44000B6A44000B6A44000B6A4400146D4800246E4E0027694B009FAF
      A5009FAFA5009FAFA5009FAFA5009FAFA5009FAFA5009FAFA5009FAFA5009FAF
      A600A4B4A900E9EBEA00F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200EBEBEB00C4C4C400E5E5E500FDFD
      FD0000000000000000000000000000000000FAFAFA00F0F0F000EFEFEF00FDFD
      FD00FEFEFE00EFEFEF0000000000E9E9E900F6F6F600909090009C9C9C007E7E
      7E007C7C7C00CECECE0084848400C4C4C400777777000000000051515100ABAB
      AB00A7A7A700000000000000000000000000F9F9F900F9F9F900F7F7F700FAFA
      FA00FBFBFB00F8F8F800EEEEEE00E8E8E800DDDDDD00E8E8E800F4F4F400FEFE
      FE0000000000FEFEFE00F4F4F400EBEBEB00EBEBEB00FAFAFA0000000000D8D8
      D80098989800FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0
      F000D7D7D700DCDCDC00DFDFDF00DFDFDF00E0E0E000E0E0E000E0E0E000E1E1
      E100E3E3E300E1E1E100DEDEDE00DBDBDB00D7D7D700D1D1D100C8C8C800F9F9
      F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FD005454D7000000CD000306D5000A10F1000509E6000305E7000505E700080A
      F6000B12FC001119FD000305EE000000E3000302EA000609F3000406ED004847
      D000FFFFFC00FAFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8E8ED009595B000777797008B8BA200A7A7B400B3B3B800BCBC
      BE00DDDDDD00DCDCDC00DCDCDC00E3E3E300E9E9E900D0D0D0009E9E9E007C7C
      7C00888888009F9F9F00A5A5A500B8B8B700A7B1C2005B71B300192B9A00000B
      8A00000985000008800000077B000005730000036F0000036B00141977008B8E
      BD00EEF0F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFAFA00E4E4E400CECECE00F7F7F700F6F6
      F600F2F2F200F2F2F200F2F2F200ACC4BB001D6A4A00126C4800136D4800146D
      4900146D4900146D4900146D4900136D49001C704D002F72550041765F00F1F1
      F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200DBDBDB00CBCBCB00ECECEC000000
      000000000000000000000000000000000000FDFDFD00EDEDED00F5F5F500FCFC
      FC00FEFEFE00FCFCFC00F0F0F00000000000F5F5F500FEFEFE00F5F5F500F5F5
      F500CBCBCB00EBEBEB00848484000000000073737300BCBCBC0035353500ACAC
      AC008E8E8E00858585005A5A5A00B4B4B400DFDFDF00F2F2F200F4F4F4000000
      0000F8F8F800F8F8F800FDFDFD000000000000000000F8F8F800EEEEEE00E8E8
      E800E6E6E600EDEDED00F2F2F200FAFAFA0000000000FEFEFE00FEFEFE00AEAE
      AE00CFCFCF00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E0E0E000E1E1E100E4E4E400E4E4E400E6E6E600E4E4E400E4E4E400E6E6
      E600E6E6E600E3E3E300E3E3E300DFDFDF00DCDCDC00D6D6D600DFDFDF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFF
      FD00E3EBF6000200D0000103DF001116FD00070AF4000406F0000506F000090A
      FC001E21FC001E32FD000207F3001014F1001821FD00070DF9000101EA00C1C4
      F000FFFFFF00FAFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E8E8ED00B5B5C500A9A9B400ACACB100A5A5AE00B0B0
      B900D7D7D900DDDDDD00DDDDDD00DCDCDC00D2D2D200A6A6A6008C8C8C00A5A5
      A500C4C4C400BCBCBC00B0B0B000AAB2C1005872B40016299900000C8D00000C
      8B00000A88000009840000087E000005710000036D0005096F00575DA400C6C9
      E200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00F2F2F200C2C2C200EDEDED00F7F7
      F700F4F4F400F2F2F200F2F2F200AEC5BC00236C4E001B6F4C001D6F4C001D6F
      4E001D6F4E001D6F4E001D6F4E001C6F4D00257251003775590042775F00F1F1
      F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F1F1F100EDEDED00C8C8C800DBDBDB00F5F5F5000000
      00000000000000000000000000000000000000000000F5F5F500F0F0F000EFEF
      EF00F1F1F100F4F4F400F6F6F600F2F2F200F9F9F90000000000FCFCFC00FAFA
      FA00F5F5F5000000000000000000FBFBFB00D9D9D900CCCCCC00C8C8C8008989
      8900D2D2D200A7A7A700F5F5F500FDFDFD005151510059595900B3B3B3008282
      8200EDEDED00FBFBFB00F9F9F900F1F1F100FEFEFE0000000000FAFAFA00F2F2
      F200FEFEFE00F7F7F700EEEEEE00F0F0F000F7F7F70000000000000000009090
      9000E9E9E900FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F4F4F400E6E6E600E8E8E800EAEAEA00EAEAEA00EBEBEB00EBEBEB00EBEB
      EB00EAEAEA00E8E8E800E8E8E800E6E6E600E1E1E100DADADA0000000000FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FFFFFD005454DC000000E3000910F9000C0EFA000408F9000306F4000406
      FC002630F9001822FC00181FF7003B41FC001015F7000406FA002D2DDB00FCFC
      F900FDFCFD00FAFDFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00FDFDFD00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F900C7C7D1008D8DA3007B7B98009595
      AD00BEBEC900D9D9DC00DCDCDC00DADADA00B3B3B300A5A5A500C8C8C800EAEA
      EA00DEDEDF00CACCCE00B7BBC7004869B2000C1F9600000D8C00000F8F000010
      9100000C8E00000B870000087F0000046F0002056D00292F8B00BBBDDB000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00D8D8D800D8D8D800F3F3
      F300F6F6F600F2F2F200F2F2F200B0C6BD00296E510023715100237151002471
      5100247152002471520024715100247151002D7556003E785C0043786100F1F1
      F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F1F1F100ECECEC00D6D6D600BFBFBF00EEEEEE00FEFEFE000000
      000000000000000000000000000000000000F9F9F900FEFEFE00FDFDFD00FBFB
      FB00F3F3F300ECECEC00ECECEC00E3E3E300F5F5F500F2F2F200FCFCFC00F6F6
      F60000000000F8F8F800F9F9F900FBFBFB00F6F6F600F7F7F70000000000EFEF
      EF00FBFBFB00EDEDED0087878700F6F6F60031313100BDBDBD0058585800FDFD
      FD00F4F4F400FDFDFD00FEFEFE00FAFAFA0000000000FEFEFE00FCFCFC00FCFC
      FC0000000000FDFDFD00F7F7F700FBFBFB0000000000FBFBFB00FBFBFB008282
      8200F2F2F200FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00EEEEEE00EDEDED00F0F0F000F1F1F100F1F1F100F1F1F100F0F0
      F000F1F1F100EEEEEE00EDEDED00EAEAEA00E7E7E700F3F3F300FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFF
      FD00FDFCF900FFFDFA001412D7000605F700060CFA000A09FC000707FD000706
      FD000B0BFC000D12FC001A22FC000A0BF9000000F9000D0DFD00CBD2ED00FAFD
      F600F9FCFC00FDFDFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9E9EE009C9CB500595982007171
      92009393AB00B8B8C100C2C2C300C1C1C100C7C7C700E7E7E700FDFDFD00F3F3
      F300D8DADC00A6B1C6001D41A70003128F00000D8E000015980000189B000015
      980000109300000B8B000005760000036B0014197E00BABCDB00F8F8FC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB00C4C4C400DFDF
      DF00F5F5F500F6F6F600F2F2F200B2C6BE002F6F54002C7455002C7555002E75
      55002E7556002E7556002E7555002D75550035785900427B5E00457A6200F1F1
      F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200EDEDED00D6D6D600B7B7B700E2E2E200FAFAFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00FBFBFB00F9F9F900F5F5F500F3F3F300F1F1
      F100EDEDED00EEEEEE00FDFDFD00FDFDFD00FBFBFB00FCFCFC00F9F9F900FAFA
      FA00FBFBFB00FEFEFE0000000000F8F8F800EAEAEA0000000000BABABA00FBFB
      FB00FDFDFD00FEFEFE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00DFDFDF009393
      9300FDFDFD00FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F800FFFFFF00FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00FDFDFD00F6F6F600F4F4F400F6F6F600F6F6F600F7F7F700F6F6
      F600F6F6F600F4F4F400F3F3F300F0F0F000EBEBEB00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFDFC00FCFDFA00DBDEF3000203FD00080AFD000B0EFD00090AFC000A0B
      F7000F10F7000A08F9000B0AF9001012F9000F0DFD000000F000FFFFFD00FCFD
      FF00FAFDFF00FDFDFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00FDFDFD00F8F8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00E5E5EB00AFAFC1008686
      9E00AAAAB300B4B4B500AEAEB100CBCBCC00E6E6E700F3F3F300EBEBEB00C5CB
      D5007A8DBC00182F9D0003128E00000F9000021CA0000120A400011DA1000119
      9C000012900000077A0000046D00040A7000AAACD100EFF0F700FEFEFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EEEEEE00CFCF
      CF00DCDCDC00F2F2F200F9F9F900B5C9C100337258003577590036775A003677
      5A0038775A0037775A0036775A0036775A003D7C5D00467F6100457B6300F1F1
      F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F3F3
      F300EAEAEA00CFCFCF00BEBEBE00D4D4D400F7F7F700FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00FCFCFC00FCFC
      FC00FBFBFB00F9F9F900EFEFEF00EFEFEF00F1F1F100F0F0F000FAFAFA00FCFC
      FC00FEFEFE00FEFEFE00FCFCFC0000000000FEFEFE00F3F3F30000000000FAFA
      FA00FBFBFB00FDFDFD00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A3A3A300BDBD
      BD0000000000FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F7F7
      F700F9F9F900F9F9F900F6F6F600F6F6F600F9F9F900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFD
      FF00FCFFFC00FCFDFC00FFFDFC004344E0000000F1000303FA002321FD004140
      FC004242FF003E40FA00292DFA000705F7001515E7009FA3E700FDFFFD00FCFD
      FD00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00FDFDFD00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFC00EEEEF100D1D1
      D700A8A8B2008B8B9F009494A800B8B8C400D3D3D700CFD2D70093A3C600425B
      AC001826950001128F0001199B000226AB000328AE000226AB000121A7000116
      960000097D0001056F00131979009498C800EBEBF400FDFDFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC00ECEC
      EC00D7D7D700D7D7D700E7E7E700B7CBC20039745A003E795D003E795D003F79
      5D003F7B5E003F7A5E003F795D003F795D00448161004A876300477D6400F3F3
      F300F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F5F5F500F7F7F700F0F0F000E0E0
      E000CCCCCC00C4C4C400DDDDDD00F6F6F600FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00FEFEFE00FEFEFE00FEFEFE000000000000000000FDFD
      FD00FDFDFD00FCFCFC00FEFEFE00FEFEFE00F9F9F900F5F5F500EDEDED00ECEC
      EC00ECECEC00F1F1F100F5F5F500F9F9F900F7F7F70000000000F7F7F700FCFC
      FC00FEFEFE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000E7E7
      E70000000000FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD0000000000000000000000
      0000F9F9F90000000000FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFC00D4D5F000494CE7000809DC000000
      F1000404F6000000E7002420E4007C83DF00FFFFFF00FCFCFD00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00F0F0
      F200C4C4CE009595A900A8A8B600B4B8C400889AC0005568AE002A3B9D000A1E
      9400011799000325AA00032FB2000332B800032FB6000228AF0001199900000A
      7F00010671001E247F008B90C100E9EAF500FDFDFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00F0F0F000E2E2E200D7D7D700A1B4AB003E775C00437D6100447E6100447E
      6100447F6100447E6100447E6100447D61004A8565004E8E6600467C6300EFEF
      EF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000EAEAEA00E3E3E300DBDBDB00D1D1D100CCCC
      CC00D5D5D500E6E6E600F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FCFCFC000000
      000000000000000000000000000000000000FDFDFD00FBFBFB00000000000000
      0000FAFAFA00F2F2F200EFEFEF00D7D7D700F0F0F000F3F3F300FEFEFE00FBFB
      FB00FDFDFD000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD0085858500FCFC
      FC00FCFCFC00FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FCFDFA00FFFFFC00FFFFFD00F4F4F700D7D6
      FC00C8C8F100E3E1FA00FDFDF900FFFFFF00F9FFFC00FAFDFD00FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00F8F8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FC00E8E8EE00B6BCD200636FAD00525BA4002D3F9C000E25980004219E00042A
      A8000532B2000539BC00053ABD000437BC00022DB300011B9A00000C7F000106
      7100252A8400858ABE00E5E7F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F6F6F600EBEBEB00ACBFB600417C5E0053936B0054946C005494
      6C0053946C0053946B0053946A0053936A0057986D0057996E004F7F6700DBDC
      DC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDC
      DC00DCDCDC00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDB
      DB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00D9D9
      D900D9D9D900D9D9D900D9D9D900D6D6D600D9D9D900D8D8D800DADADA00E3E3
      E300F0F0F000FCFCFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE000000
      00000000000000000000FEFEFE00FBFBFB00F9F9F900FAFAFA00F9F9F900F0F0
      F000EDEDED00EFEFEF00F5F5F500FDFDFD00000000000000000000000000FCFC
      FC00FEFEFE00FEFEFE00000000000000000000000000EFEFEF00989898000000
      0000F6F6F6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FDFFFC00FFFFFD00FCFDFC00FAFF
      FA00FDFFFF00FAFDFC00FFFDFF00FDFCFD00FDFDFC00FCFDFF00FDFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFE00E0E7F4006B79C10016219000010B8400041E9A00093BB6000A4A
      C3000847C3000742C100053BBC00032AAC0001199600010A7B00050973003438
      8D008F93C200E2E4F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CADDD4005F997B0057976E005B9871005B98
      71005A9871005A9871005A9870005A9870005A9B710064A27B0089AD9A00E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E9E9E900EEEEEE00F6F6F600FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00FDFDFD00FDFDFD00FDFDFD00FEFE
      FE00FDFDFD00FBFBFB00F4F4F400EEEEEE00EDEDED00EEEEEE00F3F3F300F8F8
      F800000000000000000000000000FEFEFE00FDFDFD00BBBBBB00CBCBCB00F8F8
      F800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D8DCF0006369B400181F8B00051E9500093AB2000B48
      BF000942BD000634B1000428A20001108900000572000D1175003C4093009EA0
      CB00F5F6FA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7F2ED00AED1BF008AAF9B008FB19F008FB1
      9F008FB19F008EB19F008EB19F008EB19F008DB39F009EC3AD00DAECE2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD0000000000FEFEFE00FEFEFE00FEFEFE0000000000FAFAFA00F5F5F500EFEF
      EF00EDEDED00F0F0F000F4F4F400F7F7F700F9F9F900D0D0D000F7F7F700FDFD
      FD00FCFCFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D7DAEF006368AF00161D870004158B000624
      9E0005249E00020E86000005700002066E001A1E7B004E54A000B1B4D700F6F6
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00FDFDFD00FEFEFE00FBFBFB00FEFEFE00000000000000
      0000FEFEFE00FAFAFA00F5F5F500EFEFEF00ECECEC00F7F7F700F0F0F0000000
      0000F8F8F8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8DBED006C71B3001A1F82000C0F
      75000A0E73000B0F720011147400252B8400868BC000DFE1EF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FDFDFD00FDFDFD0000000000FDFDFD00FEFEFE000000
      0000FDFDFD00FDFDFD00FEFEFE000000000000000000FAFAFA00FEFEFE00F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F3FA00B3B7DB006970
      B6005C65AF00626BB000959ACA00F3F4F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFFFF00E8F7F500D0F0F000C6ECED00BCEAE900B9E8E800B9E8
      E800B9E8E800B6E7E700C7ECE700CCEEE900C1EAE900BFEAEA00CFEEF000EAF7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00F7F7F700F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F6F6
      F600FBFBFB00FEFEFE0000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFFFF00E7F6F600D0EE
      EE00D4F1EC000083E3000074E1000071E1000098E900BCE8E900C3EAEC00C3EA
      EC00AEE7E9000077E0000078E000007AE1000075E1004EABDA00BAE9E800B8E8
      E800B3E7E700B1E5E500C1EAEA00E5F6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9D9
      D900AFAFAF00A6A6A600A7A7A700A7A7A700A7A7A700A7A7A700A8A8A800A8A8
      A800A8A8A800A8A8A800A8A8A800A8A8A800A9A9A900A9A9A900A9A9A900A9A9
      A900A9A9A900A9A9A900A9A9A900A9A9A900AAAAAA00AAAAAA00AAAAAA00AAAA
      AA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00A9A9A900A9A9A900A9A9A900A9A9
      A900A9A9A900A9A9A900A9A9A900A9A9A900A8A8A800A8A8A800A8A8A800A8A8
      A800A8A8A800A8A8A800A7A7A700A7A7A700A7A7A700A7A7A700A6A6A600ABAB
      AB00D1D1D100FEFEFE0000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFFFF00E7F7F700DAF2F200D9F2F200DAF4
      F200007DE300007BE100007AE100007AE100007AE1000077DF004896D300D4EE
      EE000078E000007AE100007AE100007AE100007AE100007EE3000032AF00C1EA
      ED00C0E9EA00BFE9EA00BFE9EA00B9E8E800B8E8E800CDEEEE00FCFEFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D5D5
      D500F1F1F100E6E6E600E4E4E400E4E4E400E5E5E500E5E5E500E6E6E600E8E8
      E800E8E8E800E9E9E900E9E9E900EAEAEA00EAEAEA00ECECEC00EDEDED00EDED
      ED00EEEEEE00EEEEEE00EFEFEF00EFEFEF00F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100EFEFEF00EFEFEF00EFEFEF00EEEE
      EE00EEEEEE00EDEDED00EDEDED00ECECEC00EAEAEA00EAEAEA00E9E9E900E8E8
      E800E8E8E800E6E6E600E5E5E500E4E4E400E4E4E400E4E4E400E5E5E500FAFA
      FA00D1D1D1000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6FBFB00F1FBFB00F2FBFB00F2FBFB00EEFAFA002BB2
      EE000083E5000083E5000081E4000080E400007EE300007EE3000026AB000043
      C000007AE100007AE100007AE100007AE100007AE100007AE100003CB8000026
      AB000025AB00D9F2F100D6F1F100D6F1F100D6F1F100CFEEEE00CFEEEE00CDED
      ED00EEFAFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFEFE00D6F1F100C7ECED00C3EAEC00C3EA
      EC00C4ECEC00CCECEC001EE5FA0000DFFB004FC6E500C1E9EC00C9F0EC00BAEA
      E800B6E8E800B6E8E800B6E7E700B6E7E700B3E5E700BAE8E800EEFAF9000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEDE
      DE00D8D8D800E5E5E500E0E0E000E0E0E000E1E1E100E3E3E300E3E3E300E4E4
      E400E4E4E400E5E5E500E6E6E600E6E6E600E8E8E800E9E9E900E9E9E900EAEA
      EA00ECECEC00ECECEC00EDEDED00EDEDED00EDEDED00EDEDED00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EDEDED00EDEDED00EDEDED00ECECEC00ECEC
      EC00EAEAEA00EAEAEA00E9E9E900E8E8E800E8E8E800E6E6E600E5E5E500E5E5
      E500E4E4E400E3E3E300E1E1E100E0E0E000E0E0E000E0E0E000E3E3E300EAEA
      EA00DADADA000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFEFE00FCFFFF00FBFFFF0023AE
      EE000088E7000087E7000084E5000083E5000083E5000083E500002EB1000047
      C400007EE300007DE100007AE100007AE100007AE100007AE1000038B800002B
      AF000026AB00E0F4F500E0F5F500DFF5F500DCF4F400DCF4F400D9F2F200D6F2
      F200D6F2F2000000000000000000000000000000000000000000000000000000
      000000000000F0FAFA00D3F0F00059EAF90000E3FF0000E0FF001698E000288A
      D30056A0D70000DDFF0074FCFE007DFFFF0000E1FF00004CC300002FB2000027
      AF000C66C900C9EDED00C3EAEC00C3EAEC00BFE9EA00BFE9EA00BDE8E900B8E8
      E800D0F0F0000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8E8
      E800D1D1D100EAEAEA00DDDDDD00DDDDDD00DFDFDF00E0E0E000E1E1E100E1E1
      E100E3E3E300E4E4E400E4E4E400E5E5E500E6E6E600E8E8E800E8E8E800E9E9
      E900E9E9E900EAEAEA00EAEAEA00ECECEC00ECECEC00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00ECECEC00ECECEC00ECECEC00EAEAEA00EAEA
      EA00E9E9E900E8E8E800E8E8E800E6E6E600E5E5E500E4E4E400E4E4E400E3E3
      E300E3E3E300E1E1E100E0E0E000DFDFDF00DDDDDD00DDDDDD00E4E4E400D4D4
      D400DFDFDF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F4F400F4F3F300F5F4
      F400EDECEC00E1E0E000D8D7D700D6D5D500D6D5D500D6D5D500D3D2D200CECD
      CD00C9C9C900C4C3C300C1C0C000BEBDBD00BABABA00B4B3B300B0AFAF00A7B1
      AD00A9AFB30008A0F4000AA4FF0006A1FF00049BFF000296FB000288FB000072
      ED00003E9B007A6F6F005B655F005F5B5A00535353004F4D4A004A4642004D41
      41003E393B002C2D310012223900122846000F2947000F243B003A3F40007465
      61007A7C7C00919191009B9B9B00A4A4A400ABAAAA00AFAEAE00B1B1B100B0AF
      AF00BABABA00BFBFBF00C4C3C300C5C4C400C7C6C600C9C9C900CCCCCC00CECD
      CD00D1D0D000D3D2D200D4D4D400D7D6D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000009A
      EA00008AE7000088E7000088E7000088E7000084E5000084E5000021A700005C
      CA000083E5000080E300007EE300007EE300007BE100007AE1000043BD000036
      B600002CAF00DCF0F600E9F7F700E8F6F700E8F6F700E7F6F700E7F6F700E1F5
      F500E1F5F500000000000000000000000000000000000000000000000000FEFF
      FF00E7F6F700E4F6F600B6F1F90020EEFF0074FFFF007BFFFF0000E5FF000043
      C700003BBC0014EDFF0074FFFF006FFCFF006CF9FF0000C6F700003BBC000037
      B9000036B800002AB200D4F2EE00CFEEEE00C7ECED00C7ECED00C7ECED00C7EC
      ED00C6ECED00C3EAEC00F2FBFB00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00CFCFCF00F2F2F200DDDDDD00DDDDDD00E0E0E000E1E1E100E1E1E100E3E3
      E300E4E4E400E4E4E400E5E5E500E6E6E600E8E8E800E9E9E900E9E9E900EAEA
      EA00EAEAEA00ECECEC00EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EFEF
      EF00EFEFEF00EFEFEF00EEEEEE00EEEEEE00EDEDED00EDEDED00EDEDED00ECEC
      EC00EAEAEA00EAEAEA00E9E9E900E8E8E800E6E6E600E6E6E600E4E4E400E4E4
      E400E3E3E300E1E1E100E1E1E100E0E0E000DFDFDF00DDDDDD00ECECEC00CFCF
      CF00ECECEC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F7F700F8F7F700F8F7F700F5F4
      F400F5F4F400F8F7F700F5F4F400EDECEC00E8E7E700E0DFDF00D6D5D500D4D4
      D400D3D2D200CFCFCF00CECDCD00C9C9C900C9C9C900C4C3C300BDBCBC00BAB7
      BF00C2B2B300079AF60006A3FD0008A4FF00059DFE000296F900038EFA000079
      F6000041AD005B616A004E546500534E4400434140002D333A001E2632000421
      4100002F7C00004AC7000062E200006CF200006FF2000067E6000650B7007083
      A0009AA19800A4A3A400ABAAAA00B0AFAF00B8B7B700B8B7B700B8B7B700BBBB
      BB00C7C6C600C8C7C700CCCCCC00CECDCD00D1D0D000D2D1D100D3D2D200D4D4
      D400D8D7D700D8D7D700D9D9D900DDDCDC000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00F2F2F200EFEFEF00F1F1
      F100FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000A1
      EC00008DE800008DE800008DE800008BE8000088E7000088E7000021A700005A
      CA000083E5000083E5000083E5000083E500007EE300007EE300004BC100003B
      BC000032B300D6E9F500F2FBFB00F4FBFB00F4FBFB00F0FAFA00F0FAFA00F0FA
      FA00FAFEFE00000000000000000000000000000000000000000000000000F2FB
      FB00F0FAFA00F0FAFA0006E4FE007AFFFF0074FFFF0074FFFF0007E5FE00003F
      D0000093E70053FAFF006CFBFF0063F9FF005FF6FF0000E7FF000041C6000044
      C4000045C600003BBC008DC9EA00D7F2F200D7F2F200D7F2F200D7F2F200D7F2
      F200CFEEEE00CFEEEE00CFEEEE00FCFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0D0D000F5F5F500DDDDDD00DFDFDF00E0E0E000E1E1E100E3E3E300E3E3
      E300E4E4E400E5E5E500E6E6E600E8E8E800E8E8E800E9E9E900EAEAEA00ECEC
      EC00EDEDED00EEEEEE00EEEEEE00EFEFEF00EFEFEF00F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100EFEFEF00EEEEEE00EEEEEE00EDED
      ED00ECECEC00EAEAEA00EAEAEA00E9E9E900E8E8E800E6E6E600E5E5E500E4E4
      E400E3E3E300E3E3E300E1E1E100E0E0E000DFDFDF00DDDDDD00F2F2F200CFCF
      CF00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F8F800F4F3F300F8F7F700EAEA
      EA00E9E9E900DDDCDC00D8D7D700D2D1D100D1D0D000CFCFCF00CECDCD00CCD0
      D100E7C9BB000592FB0008A4FF0009A5FF0006A1FE00059DFF00008EF900007F
      F400004DC3001E3C5F002D2D38000F273C00001C3F00001A4F00002259000029
      7B000048B800006EE600007EF9000386F9000489FB000281FE000270EA000354
      CA009AA6B300B5B6B600BDBCBC00BEBDBD00BEBDBD00BEBDBD00C4C3C300CBCA
      CA00D1D0D000D3D2D200D6D5D500D7D6D600D8D7D700D9D9D900DBDADA00DCDB
      DB00DDDCDC00E0DFDF00E0DFDF00E1E0E0000000000000000000000000000000
      0000000000000000000000000000FBFBFB00E5E5E500AEAEAE00A3A3A300AAAA
      AA00D4D4D400F3F3F300FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000A3
      EC000092EA00008DE800008EE900008BE800008DE800008DE8000021A700005D
      CC000088E7000087E7000084E5000083E5000083E5000083E500004FC4000043
      BD000039BA00F2F7FB0000000000FEFFFF00FEFFFF00FBFEFE00F9FEFE00FEFF
      FF0000000000000000000000000000000000000000000000000000000000FEFF
      FF00FEFFFF00FAFEFE0000D9FF0074FFFF0074FFFF0074FFFF001DEEFF000066
      E10000B6F70055F6FF0060F6FF0057F2FE0050F0FE0000E4FF000045D1000048
      D0000045C4000045C40077B5E800E5F6F600E5F6F600E1F5F500E0F5F500E0F5
      F500E0F5F500DFF5F500DFF5F500E7F6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D7D7D700EDEDED00DCDCDC00DDDDDD00DFDFDF00E0E0E000E0E0E000E3E3
      E300E3E3E300E4E4E400E5E5E500E6E6E600E8E8E800E9E9E900EAEAEA00ECEC
      EC00EDEDED00EEEEEE00EEEEEE00EFEFEF00EFEFEF00F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100EFEFEF00F1F1F100EFEFEF00EEEEEE00EDED
      ED00ECECEC00EAEAEA00E9E9E900E9E9E900E8E8E800E5E5E500E5E5E500E4E4
      E400E3E3E300E1E1E100E1E1E100E0E0E000DFDFDF00DCDCDC00F3F3F300D1D1
      D100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F5F4F40000000000F9F8F800EEEDED00EAEAEA00E0DFDF00D4DA
      DE00E9DAD0002898E60006A1FE000AA8FF0009A5FF0009A3FF000394FD000286
      F7000056CF00003E920000389C0000287900002266000021600000245E00002E
      81000055C400007CF200008DFF000298FF00059FFF000298FF000089FF000072
      F300276FC600D2D0CF00CFCFCF00CBCACA00CFCFCF00D2D1D100D7D6D600D8D7
      D700DBDADA00DCDBDB00DDDCDC00E0DFDF00E1E0E000E2E1E100E3E2E200E4E4
      E400E6E5E500E7E6E600E7E6E600E9E9E9000000000000000000000000000000
      0000000000000000000000000000DADADA005353530008080800060606000505
      05001E1E1E0094949400F3F3F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000002A4
      EC000093EA000092EA000092EA000091EA00008FE900008EE9000021A700005F
      CD00008DE800008BE7000088E7000088E7000088E7000086E500005CCC00004C
      C6000043BF00F4F9FC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000DFFF0074FFFF0074FFFF0074FFFF001EEEFF00008B
      EC0000BDF90059F5FF0052F0FE004FF0FE0047ECFC0000E4FF00004AD600004B
      D6000047D1000047D3007AB8E700F1FAFA00EDF9F900EEF9F900EEF9F900E9F7
      F700ECF9F900E9F7F700E7F6F700F2FBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCDCDC00D8D8D800DFDFDF00DCDCDC00DCDCDC00DDDDDD00DFDFDF00E0E0
      E000E1E1E100E1E1E100E4E4E400E4E4E400E5E5E500E8E8E800E9E9E900EAEA
      EA00EAEAEA00ECECEC00EDEDED00EDEDED00EEEEEE00EFEFEF00EFEFEF00EEEE
      EE00EEEEEE00EFEFEF00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDEDED00ECEC
      EC00EAEAEA00E9E9E900E8E8E800E6E6E600E5E5E500E4E4E400E3E3E300E1E1
      E100E0E0E000DFDFDF00DDDDDD00DDDDDD00DCDCDC00DCDCDC00E8E8E800D7D7
      D700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F7F700F8F7F700000000000000
      0000F4F3F300F4F3F30000000000F8F7F700F5F4F40000000000F5F4F400EAF3
      F800F6F4F2007DC1EB0006A3FE0008A4FF0007A3FF000AA3FF000698FE00038F
      FD000260D7000042A600004CB70000327E000027660000255C0000266900002D
      83000051C000027BF3000294FE0008A3FE000DAFFF000DADFF00059DFA00008E
      FF000361D600E7DFD700E1E0E000E0DFDF00DEDEDE00E1E0E000E3E2E200E2E1
      E100E6E5E500E6E5E500E6E5E500E7E6E600E8E7E700EAEAEA00E9E9E900EAEA
      EA00ECEBEB00ECEBEB00EDECEC00EEEDED000000000000000000000000000000
      00000000000000000000D0D0D0005B5B5B001010100007070700060606000505
      0500070707001F1F1F0084848400F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000091
      EA000096EC000096EC000095EA000095EA000092EA000093EC000022A8000080
      E100008DE800008DE800008DE800008DE800008AE7000088E700005ACF000055
      CA000048C600F4F9FC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000DFFF0074FFFF0074FFFF006FFCFF001AECFF00008D
      EC0000BDF90048EEFE004CEEFE0040E9FC003FE8FC0000E4FF000050DF000050
      DC00004FDA00004FDA008AC3F100FBFEFE00FBFEFE00F6FBFB00F7FCFC00F4FB
      FB00F5FBFB00F5FBFB00F4FBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E4E4E400CACACA00E0E0E000D7D7D700D7D7D700D8D8D800D9D9D900DBDB
      DB00DCDCDC00DDDDDD00DFDFDF00E0E0E000E1E1E100E3E3E300E4E4E400E5E5
      E500E6E6E600E6E6E600E8E8E800E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900EAEAEA00E9E9E900E9E9E900E9E9E900E9E9E900E8E8E800E8E8E800E6E6
      E600E5E5E500E5E5E500E4E4E400E3E3E300E0E0E000DFDFDF00DDDDDD00DCDC
      DC00DBDBDB00D9D9D900D8D8D800D8D8D800D7D7D700DBDBDB00CDCDCD00DCDC
      DC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F6
      F400EDF4F100CEEBFF00009AFF000DA9FE0002A5FD00079CFE00049AFB000696
      FD00027AEA000047B4000055C600003A9D000028760000276900002569000028
      79000040AD000072EC00009BFB000EB2FF001CC1FF0021C6FD0013B7FF000697
      FE000371E600BECFE900F1EFE200E9EAE500E7E5EC00ECEBEB00EDECEC00EDEC
      EC00EEEDED00EEEDED00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F2F1F100F2F1
      F100F2F1F100F3F2F200F3F2F200F4F3F3000000000000000000000000000000
      000000000000C8C8C80060606000171717000A0A0A0011111100121212000D0D
      0D000707070006060600232323007E7E7E00F3F3F30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000095
      ED00009CEE000099ED000099ED000099ED000099ED000099ED000022A8000086
      E4000096EC000093EA000092EA000092EA000092EA00008FEA00006BDA000065
      D700005DD000F4F9FC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000E4FF0060F6FF0060F6FF0059F2FE0012E7FE00008D
      EC0000BDF90037E7FC0037E0FE00004EC400004EC10000C4FB005DE7FC0050E7
      FE0000C3FB0000A7F4008DBFEE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6F6F600C5C5C500DCDCDC00CCCCCC00CDCDCD00CDCDCD00CFCFCF00D0D0
      D000D1D1D100D3D3D300D4D4D400D7D7D700D8D8D800D9D9D900DBDBDB00DCDC
      DC00DDDDDD00DDDDDD00E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000DFDFDF00DDDD
      DD00DCDCDC00DCDCDC00DBDBDB00D8D8D800D7D7D700D5D5D500D3D3D300D1D1
      D100D0D0D000D0D0D000CFCFCF00CDCDCD00CCCCCC00D7D7D700C2C2C200E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F6
      F200EFF3F200E3F3FF000092FF000DAAFF0006AAFE00079DFF00059CFD00069A
      FF000481F1000058C9000054C300004DB800002E840000266B00002265000025
      6E0000379D000081F20001A3FF0017BAFF0026CAFF0026CFFF001AC0FF0014B6
      FF000793FD008CB2DE00F3F0F000F9F2F200EEF2F200F3F2F200F3F2F200F3F2
      F200F4F3F300F4F3F300F5F4F400F5F4F400F5F4F400F5F4F400000000000000
      000000000000F9F8F800F9F8F800F9F8F8000000000000000000000000000000
      0000D0D0D000707070001D1D1D000C0C0C001616160026262600262626001515
      15000D0D0D000606060006060600252525007E7E7E00F2F2F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      EE00009FF000009CEE00009CEE00009CEE00009AEE00009AED000022A8000087
      E4000098EC000096EC000096EC000095EA000092EA000092EA000077E100006E
      DC000065D7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000DFFE0059F2FE0052F0FE004AEDFE000DE3FE000088
      EA0000B6F7000295E100001FA600004FC600004EC10000C6FB003CDDFB004AE0
      FB0059E5FC006CEAFE0030DFFB0000C3FA004AE1FC0000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FEFE
      FE00FDFDFD00FAFAFA00F4F4F400F0F0F000F0F0F000F0F0F000F0F0F000F2F2
      F200F5F5F500BFBFBF00D1D1D100BEBEBE00BFBFBF00C0C0C000C1C1C100C2C2
      C200C3C3C300C5C5C500C7C7C700C8C8C800CACACA00CACACA00CBCBCB00CCCC
      CC00CDCDCD00CFCFCF00D0D0D000D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D3D3D300D1D1D100D1D1D100D1D1D100D0D0D000D0D0D000D0D0D000CDCD
      CD00CDCDCD00CBCBCB00CBCBCB00CACACA00C8C8C800C7C7C700C5C5C500C5C5
      C500C2C2C200C2C2C200C0C0C000C0C0C000BFBFBF00CFCFCF00BABABA00EBEB
      EB00F3F3F300F0F0F000F0F0F000F0F0F000F1F1F100F4F4F400F9F9F900FDFD
      FD00FEFEFE00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F7
      F400F4F3F700F4F6FA000997FB000AACFF000BADFF0007A5FD00039DFD000598
      FF000485F7000467DC00004CBB00005BD20000399D0000267000001D6100001D
      60000050C7000085F20006A8FF0026C7FF0037D6FD002CD5FF001FCAFF0012BB
      FD00058DF200BFDBF600FAF7FA00FDF8FA000000000000000000000000000000
      0000F8F7F700F8F7F700F8F7F700F8F7F700F8F7F700F8F7F700F9F8F800F9F8
      F800F9F8F8000000000000000000000000000000000000000000000000000000
      0000A3A3A300363636000D0D0D001616160021212100545454004D4D4D003636
      36001A1A1A000B0B0B0006060600050505002222220082828200F3F3F300FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      EE0000A1F000009FF000009FF000009FF000009DEE00009FF0000025AB0000A3
      F2000099ED000099ED000099ED000098EC000096EC000096EC000080E5000077
      E100006CDC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000E0FF004CEEFE0045EAFC0040E8FC000ADCFC000086
      EA0000B3F700002BAE000023A800004FC600004EC10000C7FB000FC3F70028D1
      FA003CDCFB0048E0FB0057E5FC0066E9FC0083F1FE000AD4FC0000C7FB00A6F1
      FE000000000000000000000000000000000000000000FEFEFE00FCFCFC00F8F8
      F800E9E9E900D7D7D700CACACA00C3C3C300C1C1C100C0C0C000C0C0C000C1C1
      C100C9C9C900A5A5A500BDBDBD00B0B0B000B1B1B100B2B2B200B3B3B300B4B4
      B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9B900B9B9B900BBBBBB00BBBB
      BB00BCBCBC00BCBCBC00BEBEBE00BEBEBE00BEBEBE00BFBFBF00BFBFBF00C0C0
      C000BFBFBF00BFBFBF00BFBFBF00BEBEBE00BEBEBE00BEBEBE00BDBDBD00BCBC
      BC00BCBCBC00BBBBBB00BABABA00B9B9B900B9B9B900B7B7B700B6B6B600B5B5
      B500B5B5B500B3B3B300B2B2B200B1B1B100B0B0B000BFBFBF00A7A7A700C7C7
      C700C2C2C200C0C0C000C0C0C000C1C1C100C4C4C400CBCBCB00D7D7D700E6E6
      E600F6F6F600FBFBFB00FDFDFD00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDF8
      F400FAF3F900F9F3ED0016A5FE0008ACFE000EACFF000BADFB0006A5FF00069B
      FF000083F7000269DF000045B600005CDA000047B600002A7B00001E64000033
      86000050D6000085FD0006A9FF0031D0FF0044E0FB002CD5FF0020C9FF0006AA
      FF001283ED00FFFDFB00FCF9ED00FCFDFF00FCF1F400F5F4F400F5F4F400F5F4
      F400F5F4F400F5F4F400F5F4F400F5F4F400F5F4F400F5F4F400F5F4F400F5F4
      F400F5F4F4000000000000000000000000000000000000000000000000000000
      00009191910023232300101010001D1D1D002323230067676700676767005656
      560035353500181818000A0A0A0004040400040404001B1B1B008C8C8C00EAEA
      EA00FDFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000A0
      F10000A4F10000A1F00000A1F00000A1F000009FF00000A3F1000028AD0000A3
      F200009CEE00009CEE000099ED000099ED000099ED000099ED000087EA00007B
      E3000078E1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000D9FC0040E9FC0038E7FC0036E4FC0006D9FB000087
      EA0000AFF500002BAE000023A800004FC600004EC10000C7FB0000B1F50014C6
      F7001BCDFA0028D3FA0036DAFB0044DFFB004FE1FC0062E8FE0072EDFE0074EE
      FE0000C9FB000BD0FB00F1FCFF0000000000FEFEFE00FCFCFC00F7F7F700E0E0
      E000BDBDBD00AAAAAA0097979700848484007A7A7A0078787800777777007777
      77007D7D7D006A6C6C00A2A2A200A2A2A200A1A1A100A2A2A200A2A2A200A3A3
      A300A5A5A500A5A5A500A6A6A600A7A7A700A8A8A800A8A8A800AAAAAA00AAAA
      AA00ABABAB00ACACAC00ACACAC00ACACAC00ADADAD00ADADAD00AEAEAE00ADAD
      AD00ADADAD00AEAEAE00ADADAD00ADADAD00ADADAD00ACACAC00ABABAB00ABAB
      AB00ABABAB00AAAAAA00A9A9A900A8A8A800A7A7A700A7A7A700A6A6A600A5A5
      A500A4A4A400A3A3A300A2A2A200A2A2A200A1A1A100A9A9A900717171007D7D
      7D007878780077777700787878007B7B7B008787870097979700A7A7A700B7B7
      B700D4D4D400F1F1F100FAFAFA00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000096D1FE0006ACFD0010B8FB000EB3FD000AA9FF00079D
      FF000684F600006FE9000049BC000047BF00003B9F000B42930000286A000039
      9A000051C7000079F2000AA0F60021BBFF0022C1F90028D5FF0019C4FF0000A1
      FF0078C1F300F6F6F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000009F
      F00000A4F10000A4F10000A4F10000A4F10000A4F10000A6F100002EB10000A8
      F400009FF000009FF000009CEE00009CEE00009CEE000099ED000092F1000088
      EA00007DE4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000D3FC0038E5FC002EE1FB002EE1FB0005D1FB000087
      EA0000ADF500002BAE000023A800004FC600004EC10000C7FB0000AEF50000B6
      F6000ABFF70013C4F7001CCDFA0027D0FA0032D7FB0045DFFB0052E3FC005FE7
      FC0075EEFE0083F2FF0000CCFB0000000000FEFEFE00F8F8F800EDEDED00C4C4
      C400989898007171710062605E00595856005352510053525100515050004F4F
      4F004E4E4E004C4C4C0082828200898989008888880088888800898989008A8A
      8A008C8C8C008C8C8C008E8E8E008F8F8F009090900091919100939393009494
      9400959595009696960097979700979797009898980098989800989898009898
      9800989898009898980098989800989898009797970096969600969696009696
      960094949400939393009292920091919100909090008F8F8F008D8D8D008C8C
      8C008B8B8B008A8A8A0089898900888888008888880088888800525151004D4D
      4D0050504F0050504F005352510054535100595757005F5E5D006D6C6B008C8C
      8C00B0B0B000DDDDDD00F5F5F500FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C4E6FA0000AAFF0012B2FF0010BAF8000EB2FE0007A5
      FF00008FFD000076EF00025BD2008BBAEF00EFF4FB006986A00000277900003A
      A100004FC7000071E7000096F100038DF20013A9FF0016BBFD0014B7F8001CA6
      FD00FCF7F8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000000000000000A4
      F10000A8F20000A7F20000A4F10000A4F10000A4F10000A7F2000034B80000AA
      F50000A1F00000A1F00000A0F000009FF000009DEE00009CEE000091F1000092
      F1000088EA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000C9FB0030E3FB0026DDFB0022DAFB0002CFFB000084
      E90000A6F500002CAE000023A800004FC600004EC10000C7FB0000AEF50000AE
      F50000B6F60000BAF7000ABFF70012C6F9001FCFFA0027D1FA0030D7FA003DDC
      FB0053E4FC005FE8FC001BDAFC0000000000FDFDFD00F5F5F500E5E5E500ACAC
      AC006D6C6A006C6866007873700078747000787370007D797600545251003737
      37003C3B3B003535340058585800676767006565650066666600676767006A6A
      6A006B6B6B006C6C6C006F6F6F00727272007373730076767600777777007A7A
      7A007C7C7C007E7E7E007F7F7F00808080008181810082828200828282008282
      820083838300828282008282820081818100808080007F7F7F007E7E7E007C7C
      7C007A7A7A0078787800777777007373730072727200707070006E6E6E006C6C
      6C006A6A6A00686868006767670065656500666666005F5F5F00373636003B3A
      39003A393900403F3F00736F6C00797673007874720077736F006B6765006967
      65008B8A8A00D5D5D500EFEFEF00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBF7F40002A5FE0021B2FF001FC6FE001EBFFE0013B1
      FF00018FFD000180F7000069DC00669DCC008DB3D10000275C0000399F00004F
      BB00005FD6000072E500008CF6000991F40016A5FF000A9CF800129AF900D3EA
      F300F4F4F400F6F6F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000000000000000A8
      F20000ABF40000ABF40000AAF20000A8F20000A8F20000AEF5000040BD0000AA
      F40000A4F10000A4F10000A4F10000A4F10000A4F10000A1F0000091F1000092
      F1000092F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000C3FA001FD9FB001AD6FA0016D1FA0000C7F900007A
      E80000A3F200002AAE000023A800004FC600004EC10000C6FB0000B6F60000B3
      F60000AEF50000A8F50000A7F40000AEF60000B3F60000B9F70008BCF7000EC4
      F9001BCCFA0023CFFA000ECFFA0000000000FCFCFC00F3F3F300E4E4E4008B8A
      8900807E7A0076726F00767370007774720077747200807E7A003B3939000D0D
      0C00141413000E0E0D0040404000626262005C5C5C005D5D5D005F5F5F006161
      6100626262006464640065656500676767006A6A6A006C6C6C006F6F6F007272
      7200737374007676760078787800797979007C7C7C007C7C7C007C7C7C007D7D
      7D007D7D7D007D7D7D007C7C7C007C7C7C007A7A7A0078787800767676007474
      7400727272006F6F6F006E6E6E006A6A6A006767670066666600656565006262
      620061616100606060005E5E5E005C5C5C00606060004B4B4B0010100F001413
      1300111110001A1919006E6B68007A787600777472007673700076726F007D79
      77006D6A6900C1C1C100F0F0F000F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBF9F20033BCF9001DC0FB0025C7FF002FD1FF0023BC
      FA000D9AFF000B89F8000674EC000661C90000255E0000368A00004FB300005E
      D0000064DF00006BE0000E7CFD000697F600028CEA00068FFB00A1E0F800FFF8
      EA00F5F3FE00F5F6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000000000000000AA
      F40000ABF40000ABF40000ABF40000ABF40000ABF40000AEF5000040C00000AE
      F50000A8F20000A8F20000A6F10000A4F10000A4F10000A4F1000091F1000092
      F1000092F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000BFF70019D4FA0015D1FA0010CFF90000C3F700007A
      E80000A1F100002CAE000023A800004FC600004EC10000C6FB0009C4F70002BD
      F70000C0F70000B9F60000ADF50000A7F50000A7F50000ADF50000B2F60000B9
      F70003BCF7000DC4F90002C4F90000000000FCFCFC00F2F2F200DCDCDC008481
      7F00827E7C007A7774007C7876007C7876007C78760084817F00383737000808
      08000E0D0D000C0C0C001717170021212100201F1F0020201F0020201F002120
      2000212020002121210022212100222221002222220023222200232323002423
      2300242323002424240024242400242424002524240024242400242424002524
      2400252424002524240024242400252424002424240024242400242424002424
      2300242323002323230023232200232222002221210022212100212121002120
      2000212020002020200020201F00201F1F0021212000191919000C0B0B000E0D
      0D000C0B0B0017161500706C6A007F7C79007C7876007C7876007C7876007976
      7300817E7C00B3B2B200F3F3F300F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F7F30053CFFD0022C0FA002CC9FF0037D5FF0033D0
      FF00069AFB000691F700088AF8000971DA0005317100002D7C0000429A000055
      BB000061D500006ADB000080F3000C81EC00007FFB005ABFFA00F5F4FA00F6F6
      F200EFF6F800F5F6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000000000000000AD
      F50000AEF50000ADF50000ABF40000ABF40000ABF40000AEF600004AC40000AE
      F50000AAF40000A8F20000A8F20000A8F20000A7F20000A4F1000091F1000092
      F1000092F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000B9F70010CFF90010CFF9000BCAF90000BDF700007A
      E800009CF000002AAE000023A8000048C300004EC10000C4FB0024D0FA0019CA
      F9000FCCF9000BC4F70004C0F70000B6F60000A7F50000A7F50000A7F50000AA
      F40000AFF60000B6F60000C1F900F0FBFE00FCFCFC00F2F2F200DADADA008684
      8200858180007E7A78007E7A78007E7A78007E7A780086838100373736000A09
      0900141414001716160014141400131212001312120013121200131212001312
      1200131212001312120013121100131211001312110012111100121111001211
      1100121111001211110012111100121111001211110012111100121111001211
      1000121111001211110012111100121111001211110012111100121111001211
      1100121111001211110012111100131111001312110013121100131212001312
      1200131212001312120013121200131212001312120014141300171615001414
      14000F0F0E0015141400706E6B00817F7C007E7A78007E7A78007E7A78007E7C
      780084817F00B4B4B300F2F2F200F8F8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5F6F40075C6EB002DC9FF003CD2FF004ADFFF0044DC
      FF0012AAFF000A9AF7000A97FB001191FA000134770000276C0000296C000037
      8D00055AC1000A74E1000676E2000079E9004FAAEA00FFF7FF00F8F4F200FAF4
      F800FAF2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000000000000000AD
      F50000AEF50000AEF50000AEF50000AEF50000ADF40000B1F600004BC40000AE
      F50000ABF40000ABF40000ABF40000AAF20000A8F20000A8F2000091F1000092
      F1000092F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000B5F6000ACAF90009C9F90007C7F90000BCF600007B
      E800009CF000002BAE000022A800004AC000005DCA0000C3FB004CE0FB003CDC
      FB0032D7FA0021D4FA001CD0F90012CFF9000DC3F70000A6F50000A7F50000A7
      F50000A7F50000AAF50000B5F600CFF4FC00FCFCFC00F3F3F300DADADA008B87
      850087858300807D7A00807D7A00807D7A00817E7C0086838100333231001110
      1000181716001716150017161500171615001716150017161500171615001716
      1500171615001716150017161500171615001716150017161500171615001716
      1500171615001716150017161500171615001716150017161500171615001716
      1500171615001716150017161500171615001716150017161500171615001716
      1500171615001716150017161500171615001716150017161500171615001716
      1500171615001716150017161500171615001716150017161500171616001717
      160017161500151414006664620086838100807D7A00807D7A00807D7A00817D
      7C0087858300B5B4B400F3F3F300F9F9F900F6F6F700F6F7F700F8F6F600F6F3
      F300F8F7F400F6F4F300F8F7F700F5F4F400F6F6F400F4F6F400F6F7F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F4
      F300F8F8F400FAF4F300F4F4EF00A3DAF20029C1F90042D7FF004BDEFF004ADE
      FE001DB2FF000E9CF8000E9AFB000A8CF40000367C0000266600002667000029
      7200003E9A000B66D100027BE5002277DA00FCFDF600DCF9F000F3F7FB00FAF1
      F300F4FAF800F8F4F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000000000000000AD
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000B3F7000050C90000B1
      F60000ABF40000ABF40000ABF40000ABF40000ABF40000AAF2000091F1000092
      F1000092F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000B2F60006C7F90006C7F90002C4F70000B9F600007B
      E800009AF000002AAE000036B6000057CA00007BDC0000C3FB0075EDFE005FE8
      FC0055E4FC004AE0FB003BDCFB0030D9FB0021D9FB001ECDFA0009C3F70000A7
      F50000A7F50000A7F50000AEF600CFF4FC00FDFDFD00F3F3F300DADADA008C8A
      89008887850082807E0082807E0082807E0083817F00868482002D2C2C001212
      1200171716001717160017171600171716001717160017171600171716001717
      1600171716001717160017171600171716001717160017171600171716001717
      1600171716001717160017171600171716001717160017171600171716001717
      1600171716001717160017171600171716001717160017171600171716001717
      1600171716001717160017171600171716001717160017171600171716001717
      1600171716001717160017171600171716001717160017171600171716001717
      1600161616001414130062615F008886840082807E0082807E0082807E008381
      7E0088878500B7B5B500F4F4F400F9F9F900F5F3F400F4F4F100F9F8F700FAF7
      FF00F6FAFF00F9F9FD00FBF9F400F6F3F300FAF6FA00F9F6FF00F4F2F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBF6
      F200F5FAFE0089B3DC005886AC002364A30015BAFF003DD6FF0047DBFF004ADF
      FF002EC4FF0014A8FA000DA0FF00109AFD00003180000027640000266B00002F
      7600002D79000048A8001F6CB700F6F9FF00FCF3F700FFF4F600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0E0E000CCCCCC00ECEC
      EC00000000000000000000000000EBF5F2009CCABA004A9966000B431A00010F
      050004050400080808000909090011111100272727003F3F3F003E3E3E002828
      2800101311000411090001180A0000270C0001360E00013D0F0001451000014A
      1100024C1200024F130004581A0005652800066C2E00066B2B0004662300035D
      18000360190003611A0003631B0003641B0003631B0003651F00066B2A00086D
      3400096E350009743700097336000972360008703500086E3400086C3200086A
      3100086930000867300007662F0007642E0007622D0007612C00075E2B00095D
      2D00186039003F6F5500749E8200D5E4DD00FBFCFB0000000000000000000000
      0000E4E4E400CBCBCB00E4E4E400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000B3F7000059CD0000B1
      F50000AEF50000AEF50000AEF50000ABF40000ABF40000ABF4000091F1000092
      F1000091F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000B1F50002C4F70002C4F70000C0F70000B8F600007B
      E8000095EE000052C400005CCA00006BD600008AE40000C6FB0000C6FB0040E5
      FB0081F2FF0074EEFE0068EAFE005CE7FC0050E3FC0044DFFB0034D9FB002BD4
      FA0024D0FA0000B1F60000AEF600CFF4FC00FCFCFC00F4F4F400DCDCDC00908D
      8C008B89880085838100858381008583810086848200888784002C2B2B001212
      1200171717001717170017171700171717001717170017171700171717001717
      1700171717001717170017171700171717001717170017171700171717001717
      1700171717001717170017171700171717001717170017171700171717001717
      1700171717001717170017171700171717001717170017171700171717001717
      1700171717001717170017171700171717001717170017171700171717001717
      1700171717001717170017171700171717001717170017171700171717001717
      17001616160014141400656362008B8887008583810085838100858381008684
      81008B898800B9B9B800F6F6F600FAFAFA00F8F8F600FCF9F000FAFDFF00141B
      3700141D3D0022273C00CBCADA00F2F8F000F3F6EF00F3F2EB00FFFDF9000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F9
      FF001E62B1000049A50005378500003A8D0015B1FF0038D9F90044DBFF0045E0
      FF003BD4FF001CB3FD000AA1FE000692FD0000358E000025620000266B00002A
      6F00002D800014438500F5FBFB00FDF9EA00EDF1F900FAF9F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000F4F4F400D8D8D800CBCBCB00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000AFF700005DD10000B1
      F60000AEF50000AEF50000AEF50000AEF50000AEF50000AEF5000091F1000092
      F1000091F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000AFF50000C0F70000C0F70000BFF70000B5F500007B
      E8000095EE000071D9000084E000008EE70000AFF50000ADF50000B1F50000C3
      F90000C6FB0000C7FB001BD9FC008BF5FF007BF1FF0066E9FE005DE7FC004BE1
      FC0041DDFB0037DAFB001AD3FB00D3F4FC00FDFDFD00F5F5F500DEDEDE009390
      8F008E8B8900888583008885830088858300888684008B8887002D2C2B001412
      1200191717001917170019171700191717001917170019171700191717001917
      1700191717001917170019171700191717001917170019171700191717001917
      1700191717001917170019171700191717001917170019171700191717001917
      1700191717001917170019171700191717001917170019171700191717001917
      1700191717001917170019171700191717001917170019171700191717001917
      1700191717001917170019171700191717001917170019171700191717001917
      17001816160014141400676564008E8B89008885830088858300888583008886
      84008E8B8900BCBABA00F7F7F700FAFAFA00F5F3FB00FCF4F4008D8DAC000612
      4D000D1047000A0F3C000A1239000E11300064698900D2D6E100F8FAF9000000
      0000F5F6F6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F6F600F6F6F4004F9D
      D9000050C00002429700003780000E5CB8000696F8002CD4FF003ED6FE0041E0
      FF002AD6FF0016BAFF00089BFF000088FB00002F8E000025660000256A000026
      6B00002B7900CBDCF000F6EDFA00F3F7EF00F1F4FE00F8FAED00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000E4E4E400C1C1C100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5FAFE0000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AAF40000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000AFF5000091F1000092
      F1000091F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000AEF50000BAF60000BAF60000B6F60000B2F500007B
      E8000095EE0000B2F50000B1F50000AEF50000B5F600B1EAFA0000AEF50000AA
      F5000083E800008DE40000A0F00000AFF50000AFF50000BFF90000C4FA0000C1
      FB001DDCFC0071F0FE006FF0FE0088EDFC00FEFEFE00F7F7F700E2E2E2009694
      9200918E8C008A8886008A8886008A8886008B8887008E8B89002E2D2D001413
      1300191818001918180019181800191818001918180019181800191818001918
      1800191818001918180019181800191818001918180019181800191818001918
      1800191818001918180019181800191818001918180019181800191818001918
      1800191818001918180019181800191818001918180019181800191818001918
      1800191818001918180019181800191818001918180019181800191818001918
      1800191818001918180019181800191818001918180019181800191818001918
      180018171700141414006B686600918E8C008887850088868400888684008B88
      8700928F8C00BFBEBE00FAFAFA00FCFCFC00F5F0F600F3FAF0001D1C5300121A
      51000A144400071142000812430004123C000B163E000A0F3200262C4900838C
      9A00FFF9F200F5F2F40000000000F4F6F300F3F4F000F2F2F000F6F6F700F8F6
      F800000000000000000000000000F6F7F800F6F2F300FFF4F300DDEBFF000A77
      E2000056C3000036850000327E000058CF0008A0FF001BC7FF002BD2FB0041D9
      FF0029CDFF0014B7FE00049CFF000085FF0000297B0000286E00002967000020
      6000BED4E600FCFBFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000E5E5E500C2C2C200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7F9FE0000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000AFF5000091F1000092
      F1000091F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000AEF50000B9F60000B6F60000B3F60000B1F500007B
      E8000095EE0000B1F50000B1F50000AEF50000AEF50000B2F600005FE100009A
      F600006EE10000AEF50000AEF50000B1F600007EDD00009DEE0000AEF50000AE
      F50000BFF90000C6FB0000C6FB0088EDFC00FEFEFE00F9F9F900E6E6E6009998
      9600949290008D8B89008D8B89008D8B89008E8C8A00918F8D002F2F2E001414
      1400191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      190018181800141414006E6B6800959290009A989700A6A5A4009E9C9B00908E
      8C0094929000C2C2C200FEFEFE00FCFCFC00FBF6F400C4CFDA003A3F89002A34
      74001B255F00121B50000B1547000A134700070E40000E1342000E124100060C
      36002F374D00E9EDF700FAFAFF00F9F8F700F6F4F400F5F3F600F5F3F400F8F7
      F700000000000000000000000000F6F8F800F6F3F900F4F9F10034A5E0000083
      F6000067D900003A890000317B000060D100079AFF000FB4FF0021C7FE002DD4
      FF001EC3FF000EAEFF000798FF00017CF60000328C000032920000268000CFE7
      FB00F1F1EC00FCF7F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000E5E5E500C3C3C300000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00005CCF000065D10000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000AFF5000091F1000092
      F1000091F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000AEF40000B5F60000B3F60000B3F60000AFF500007B
      E8000095EE0000AEF50000AEF50000AEF50000AEF50000B2F6000050E000007D
      EE000047D300005FE4000BABEE0000AAF4000050D60000CFFC0016CCF9002ECC
      F90075E0FA0000ABF50000AFF50000000000FEFEFE00FBFBFB00ECECEC009F9C
      9B0098979500918F8D00928F8D00928F8D0093908E009693910031302F001414
      1300191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      19001919180015151400726F6C0097959300C2C0C000F5F5F500D5D4D3009794
      930097949200C9C8C80000000000FDFDFD00FBF6EF006F79A100141D5F00242D
      6100313B83002F397F001F286700161C530011194E000A1246000B134800070E
      41000610390009123200111630008D91AF00F1ECF800F9F6FB00F3F1F200F4F4
      F100000000000000000000000000FFF1EF00EEF1FB00FFFAF000008FF8000089
      F6000075EC000049AD00002F76000048B200007AF0000596FF000EA8FF0013B8
      FF000EB3FF0005A0FD000691FF000269DB000041AC00003DA4009BBBE700F6F3
      F300FFFAF400F9F9F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000E5E5E500C3C3C300000000000000000000000000000000000000
      0000000000000000000000000000F0FBFE0000A3EE0000B2F7000095E80000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000AFF5000092F1000092
      F1000091F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000AEF40000B3F60000B2F50000B1F50000AFF500007B
      E8000093EE0000AEF50000AEF50000AEF50000AEF50000BDF70000E1FF0000CC
      F900002CAE00002EB1000039B500000000000B7AD4000BDCFC001AC6F90016C4
      F70000ADF5004BD6FB00000000000000000000000000FDFDFD00F2F2F200A19E
      9E0099979500918F8D00918F8D00918F8D0092908E009593910031302F001413
      1300191919001919190019191900191919001919190019191800191919001919
      1900191919001919180019191800191918001919180019191800191918001919
      1800191918001919180019191800191919001919190019191900191919001919
      1800191919001919190019191900191919001919190019191900191919001919
      1900191918001919180019191800191918001919180019191800191918001919
      1900191919001919190019191900191919001919180019191900191919001919
      19001918180015141400706F6C0098969400A09D9C00ACABAA00A3A2A1009492
      900096949100CDCDCC0000000000FEFEFE00F8F3F6006F70940002083800060C
      47000E1A4D001A255A002630660034347A002B2F7400161E5A000A154D000C15
      470006104200091244000913420008113B000F1237002D325300C1C7D700FBFF
      FF00FBF8F700F4F2F100F6F9F400FFF4F000F6F3FA00FCF9FA000D9CFF000493
      FD00007CF2000062D20000347C0000388A00004EC3000061EA000075EF000289
      FD0009A1FF000293FF00087AF7000040B6000045BF004F80AA00FFF4F400F6F6
      F70000000000F4F4F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000E6E6E600C4C4C400000000000000000000000000000000000000
      000000000000000000000000000000A8F40000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000AFF5000091F000008B
      EC000086E9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000AEF50000B2F50000B1F50000AFF50000AEF500008D
      EA0000AEF50000AEF50000AEF50000AEF50000AEF50000D1FC0063F6FF0050F2
      FE0000ABF0000037B9000034B600002FB3000096E8002FEDFE00000000000000
      00000000000000000000000000000000000000000000FEFEFE00F7F7F700A3A2
      A0009C9997009492900094929000949290009492900097959400333232001616
      15001C1B1B001C1C1B001C1C1C001C1C1C001C1C1C001C1C1C001C1C1C001D1C
      1C001C1C1C001D1C1C001D1C1C001D1D1D001E1D1D001D1D1D001D1D1D001E1D
      1D001D1D1D001D1D1D001E1D1D001E1E1E001E1D1D001E1D1D001E1D1D001E1D
      1D001E1D1D001E1D1D001E1D1D001E1D1D001E1D1D001E1D1D001E1D1D001E1D
      1D001E1D1D001E1D1D001D1D1D001D1D1D001D1D1C001D1C1C001D1C1C001C1C
      1C001C1C1C001C1C1C001C1C1B001C1C1C001D1C1C001C1C1C001C1B1B001C1C
      1C001B1B1A0018171700767370009A989700928F8E00908E8C00918F8D009593
      910097969400D3D3D20000000000FEFEFE00F8FDEF00F2F6F200F8F9FF004144
      5A0011123900060A3C000C125500101B4D001E29600026306B0026316E001E26
      64000C1549000A1345000913430007123F0006113E0008123A000D133400141A
      37005B627B00F2F4FF00F2F2F200F9F9E600FFF4EF00F9FAF70007AAFF00069B
      FF000188F700016FDF000648B10000296E00003A94000047C3000051D4000059
      DE000375EA000076E9000055CA000048BF00003FAE00FDFFFF00F4F0F1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000E6E6E600C4C4C400000000000000000000000000000000000000
      0000000000000000000012C1F70000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000B1F5000084E8000080
      E500007BE4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000ADF50000B1F50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000CFFC0060F6FF0062F6
      FF0000D1FC000043C4000044C1000043BF001BA7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00B8B6
      B500B3B1AF00AAA9A700ABA9A800ACABA900ADACAA00B0AFAD004B4B4B002D2D
      2C00363635003737370038383800393939003A3A3B003C3C3C003E3E3D00403F
      3F00414040004242420043444300454444004545450047474600484747004949
      48004A4A49004B4B4A004B4B4B004B4B4B004C4C4C004C4C4C004D4C4C004D4C
      4C004D4C4C004D4C4C004D4C4C004C4C4C004C4C4B004B4B4B004B4B4B004B4B
      4B004A4A4A004949490048484700474746004646450045444400444444004343
      420042414100404040003F3E3E003D3C3C003B3B3B003A393900383838003737
      3700353636002F2F2F0094939200B6B4B200ADACAB00ACACAA00ACABA900ADAC
      AB00ACAAA900E0E0E00000000000FEFEFE00F9F7FF00F5F1F700FFF7FA00FFF9
      FD00FDFEFB00B6BDD2003C42690000063500070D41000E124C00141A59001E27
      65002229690018215B00101A4F000C164700071242000812440006104300070F
      44000A143C00090F2C0027294000A1AEAF00FFF9FF00FCFBFA0008ACFD00029C
      F900018EFB000380F100004FCD00002B7E0000226400002E8500003BA400003D
      A8000047BF000048BC000055C4000058CD000048B700FFFAFF00F5F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000E6E6E600C5C5C500000000000000000000000000000000000000
      00000000000000ADF50000AEF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000B2F600006EDC000066
      D7000063D6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000ADF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000CAFB0069F9FF0060F6
      FF0060F6FF00009FED000068D9000060D3000062D400FAFBFE00000000000000
      000000000000000000000000000000000000000000000000000000000000C8C7
      C600C8C7C500BCBAB900BDBBBA00BEBDBC00C1BFBE00C6C5C3005C5B5B003A3A
      3A004444440045464500484848004A4A4A004C4B4B004E4E4D00505050005252
      5100545454005656560057575700595959005B5A5B005D5C5C005F5E5E006060
      5F00626262006363630065656400656565006666660066666600676767006767
      6700676767006867670067676700676666006666660065656500656565006464
      6400636363006161610060605F005E5E5D005C5C5B005A5A5A00585858005757
      57005555550053535300525151004F4F4F004D4D4D004B4B4B004A4949004747
      4700444444003E3F3E00A7A6A500CDCBCA00C2C0BF00C1BFBE00BFBEBD00C2C0
      BF00BCBAB900E9E9E9000000000000000000FAF2F100F8F4F100F2F7F100F2F9
      F300F4F2F600F3F1F100FBF8F300EFEFF600A1A8C10003103300000A3600060F
      4200141C54001F296A00222A6A001A235C00161D53000B1342000B1643000613
      3C000C124100060F3B0008123D000D13380017193600534F58000D98EF0006AA
      FF000094FE000080F1000060D500003BAC00002E8600002B7000002B6A00002E
      6F00003FA4000253C3000060DB000066DB00004ECD00D1DEF400FAF1F2000000
      00000000000000000000000000000000000000000000F5F6F600000000000000
      00000000000000000000F5F6F600F5F6F600F5F6F60000000000000000000000
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
      000000000000E6E6E600C5C5C500000000000000000000000000000000000000
      000000AAF40000AEF50000AEF50000AEF50000AEF50000AEF5000091E70000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000ADF5000063D400005C
      CF000056CA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000ADF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000BDF90062F6FE0060F6
      FF0060F6FF0000CCFC00007AE1000078E1000072DF00C3E4F900000000000000
      000000000000000000000000000000000000000000000000000000000000CDCC
      CB00C7C6C300B9B8B600BAB9B700BBBAB900BDBBBB00C6C5C300504F4F001A1A
      1A00232323002323230024232300242423002424230024242400242424002424
      2400242424002424240024242400242424002424240024242400242424002424
      2400242424002424240024242400242424002424240024242400242424002424
      2400242424002424240024242400242424002424240024242400242424002424
      2400242424002424240024242400242424002424240024232400232424002324
      2300242323002423230024232300232323002323230023232300232322002322
      22002020200022232200A5A3A300C8C6C500BEBDBC00BDBCBB00BCBBBA00BFBE
      BD00BBB9B800F1F0F00000000000000000000000000000000000000000000000
      0000000000000000000000000000EFF0EB00F1EFF100FDF9FF00F5F3FF003840
      6100020B4000091049000E164C00192359001D2661001E266200162158000F1C
      4F000C15490009124500081144000912420009123E00091237000E173900004D
      9F00006BE200036BE1000064D7000042AE0000267700002F7700002D7700002D
      7F000046B400005ACF00006AE2000066E7000454C3006FA3DB00FBF7F700F8F7
      F700F8F7F70000000000F4F6F600F5F6F600F6F4F400F5F2F200F8F6F400FAF9
      F900F8F9F900F3F6F600F4F6F600F9F9F800F6F7F60000000000000000000000
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
      000000000000E6E6E600C5C5C5000000000000000000000000000000000057DD
      FB0000AEF50000AEF50000AEF50000AEF50000AEF50000A0EE00A0EEFF0000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000A1F0000053CA000053
      CA00004BC40000000000000000000000000000000000FBFEFF00F6FCFF00F5FC
      FF00F2FBFE00EEF9FE00F2FBFE00F4FAFE00FBFEFE0000000000000000000000
      0000000000000000000000ADF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000B3F60025E3FC004EEE
      FE004EEEFE0000CCFB00008BED000088EA000083E7003CB2F200000000000000
      000000000000000000000000000000000000000000000000000000000000D0CE
      CD00BDBBBA00AEADAC00AFADAC00B0AEAD00B1AFAD00BAB8B700656463002B2A
      2A00333333003333320032323200323232003131310032313100313030003130
      300030302F0030302F002F2F2F002F2F2E002F2F2E002E2E2E002E2E2E002D2D
      2D002D2C2C002D2C2C002C2C2C002C2C2B002C2B2B002B2B2B002B2B2B002B2B
      2B002B2B2A002B2A2A002A2A29002A2929002A29290029292900292928002828
      2800282827002827270027272700272626002626260026262600262525002625
      2500252524002525240025242400242424002424240024242400242424002423
      230020201F002B2B2A00A6A5A400B6B5B300B1B0AE00B1AFAE00B0AEAD00B5B3
      B200B4B2B100F7F7F60000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F7F600F4F2F300F8F6F900F5F4F200FDFB
      F200ADA8C400282F580000052E00090E46000E124C0012174F00181F5E001820
      5F00161F5900121B53000D164A000B134A00091146000C1246000A1040000C7B
      E0000189FB000284F8000076EB000166E200003B9F0000297000002A75000032
      8500004EBD000061D500006CE500006AEA000258D0004F8CCC00F9F7F300F8F7
      F700F3F2F200F9F8F800FDF8F800FAF9F900D7D7D700BEC3C300CBCFCF00D2D2
      D100F5F1EC00F4F4FD00F8F6F800F9F6F600F5F3F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BEBEBE00EFEFEF000000
      00000000000000000000ADDCC400078F4400046F220004702200047223000473
      24000473240004742500035A1B0001370F0000370E0001461000014911006EAA
      9100247D53006AB78B009DDEB400B8E3CA00E0EBE600EDEDED00EBEEEC00D0EB
      DC00A9E5BE00A3E5BA00A4E6BB00A5E8BD00A5E8BE00A6E8BF00A7E9C000A8EA
      C100A9EBC100B0EFC900C5F3D900E2F9ED00F8FEFA0000000000F4FDF900BCE5
      D30035936E0003671E0006833400068939000B9855000C9556000A8645000977
      3400066B23000562190005641B0009742F00067328000471230004702200046F
      2200046E2100046E2100046A1F00025B1600589A8200DCEAE600000000000000
      000000000000E7E7E700C6C6C600000000000000000000000000D4F4FC0000AE
      F50000B3F60000B1F50000AFF50000AEF50000AEF500C7DFF20060DAFA0000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000A3F0000047C6000045
      C4000041BD0000000000EAFBFE0000B3F60000AFF50000ADF50000AEF50000A7
      F2000092E5000078E000006ED7000084E9000091F100008DEC001E9FEA000000
      0000000000000000000000ADF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000ADF40006D0FA0030E1
      FB003BE7FC0000CCFB00008FF0000092F1000092F100008BF000000000000000
      000000000000000000000000000000000000000000000000000000000000D4D3
      D200B4B2B000A8A7A500A8A7A500A8A7A600A8A7A600B1AFAD00727270003130
      3000383838003838370037373700373737003737370037373600363636003636
      3500353535003535350034343400343434003333330033333300333332003332
      31003232310032313100313130003030300030302F002F2F2F002F2F2E002F2E
      2E002E2E2D002E2D2D002D2D2C002D2D2C002D2C2C002C2C2B002C2B2B002B2B
      2B002B2B2B002B2B2B002B2B2A002A2A2A002A2929002A292900292929002928
      2800282828002828280027272700272727002727260026262600262625002626
      25002222210035343400A6A4A200ABA9A800A8A7A600A8A7A600A8A7A600AEAC
      AB00B3B2B000FBFBFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000F5F3F600F6F4F600F6F7F600F5F4F600FAF7
      FA00F6F8EF00F6F6F000E3E6F200888FB300060C300002093200091042000E15
      4A00121B5300161F580017205A00121D53000E184D000C144A000A0F4500029D
      FB000A9BFD00029CFD00008FF3000076F1000970D400122D6900092F65000032
      80000050BF000062D600006CE500006AE6000058D6002D6EB400FAF8F300F8F7
      F70000000000E4E4E400ABA0A1008C858600969A98008C949300999F9F00A2A1
      9C00A19D9100A49F9B00A9ACAC00C9DBE400EAF8FE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00EFEFEF000000
      00000000000000000000ADDDC500089047000471230004732300047425000476
      2500047626000477270002551B0000300E00003E0F0001481100025015006EAA
      90002C926D006EC19700A3E0BA00C7E7D300EDEDED00EDEEED00E2EDE600ABE8
      C100A4E6BB00A4E6BB00A5E7BC00A6E9BE00A6E9BF00A7E9C000A8EBC100AAEB
      C300AFEFC800CBF5E000F1FDF600FDFFFE000000000000000000F8FEFC00D6EF
      E40078B39700024F1400067D3100068A39000A964F00109C60000F9257000B82
      43000A7D3B0008712C0009752F000B7F3F0006772B0004732400047223000471
      230004702200046F2200046C2000035D1700599B8200DCEBE600000000000000
      000000000000E7E7E700C7C7C70000000000000000000000000000AEF50000B9
      F60000B9F60000B5F60000B3F60000AFF5000033B3000000000060DAFA0000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF500009FED000040BD000039
      BA00004CC0001BC6F70000ADF50000AEF50000AEF50000A6F400008FF1000091
      F000007DE400006CDA00005CCF00005ACF000092F100008AEC00006FDC000055
      CC0086B8E5000000000000AEF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000B1F50000CDFB001BD7
      FA0022DAFB0000CDFA000092F1000092F1000092F100008EF000000000000000
      000000000000000000000000000000000000000000000000000000000000DBDA
      D900B1AFAD00A7A5A300A7A5A300A7A5A300A7A5A300ACABA90081807E003838
      38003E3E3E003E3E3D003D3D3C003D3C3C003C3C3C003C3C3B003B3B3B003B3B
      3A003B3A3A003A3A390039393900393938003938380038383700383737003737
      3700373737003737360037363600363635003635350035353400353434003434
      3300343333003333320033323200323232003231310031313100313030003030
      300030302F00302F2F002F2F2F002F2E2E002E2E2E002E2D2D002E2D2D002D2D
      2D002D2C2C002C2C2C002C2C2C002C2B2B002B2B2B002B2B2B002B2B2B002B2B
      2A002424240044434300A8A7A500A7A6A400A7A5A300A7A5A300A7A5A300AEAC
      AB00B8B7B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5F6F4000000000000000000000000000000
      0000000000000000000000000000F6F4F400FDF7F900F4F0FF002A2D4E00060D
      3700020A3700000E3F0012194D001D1E5400152259001F205B000A3B7E000AA4
      FE0010AEFB000AA4FF0008A5FE0017A0F8000277DA0015092B000F1637001729
      4E00004AB400005AD600026EE200016EE6000058D100064EAF00FAFFEB00EEF3
      F400DEEBEC00AC9C9300799FB3003D7598002C6AAA003471C700446F9B003860
      8E002647740060595900887B7F00989D93000A61920096C0E100FBEFEC00E9FA
      F600F8FAF400EAF8F100F9F4F600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00EFEFEF000000
      00000000000000000000AEDEC70009924C000473250004752500047726000478
      2700057927000578290003521C00002C0D0001410F00024D13000766290056A3
      87003B9E7D0078C8A000ACE3C400D0E9DD00EDEDED00E8EEEA00CCECDB00A3E6
      BA00A4E6BB00A5E8BD00A6E9BE00A7E9BF00A8E9C000A9EBC100AAEDC300B0EF
      C900C8F6DF00F9FEFB0000000000000000000000000000000000FDFFFE00E8F9
      ED0095D3AC00013E100004782B00068A3A0009964F0018A06A00199965000D8B
      5000108F5600108D55000E8C51000A844200057A2C0004762600047425000473
      24000472230004712300046D2100036018005B9C8300DDEBE700000000000000
      000000000000E7E7E700C8C8C80000000000000000000000000000AEF40000C0
      F70000C0F70000BCF60000B9F600009CEC000B65C4000000000060DAFA0000B1
      F50000AFF50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000A0ED000034B600002E
      B1000084E00000AEF50000AEF50000AEF50000AEF5000092F1000092F100008B
      EC00007DE400006CDA00005CCF000053C9000092F1000081E700006BDA000052
      C9000039BC00D1DDF00000AEF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000B3F60000C7FB000CCC
      F90012CFF90007C6F700009DF2000092F1000092F1000091F100000000000000
      000000000000000000000000000000000000000000000000000000000000E4E3
      E300B0AEAC00A7A6A400A7A6A400A7A6A400A7A6A400ACABA9008E8D8B004343
      4200464545004545440045444400444444004444440044444300444343004443
      4200434242004242410042414100414140004140400040403F00403F3F003F3F
      3E003F3E3E003E3E3D003E3D3D003D3D3C003D3C3C003C3C3B003C3B3B003B3B
      3A003B3A3A003A3A39003A393900393838003938380038383700383737003737
      3700373737003737360037363600373635003635350036353500353534003534
      3400353433003433330033333200333332003332320032323100323231003131
      31002A2A290055545300ADACAA00A7A6A400A7A6A400A7A6A400A7A6A400B1AF
      AD00C0BFBE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6FAF100F9FEF100F8F8F400FFFF
      FF008796B6001C23470000022E000A1244000E134400091351001798EF001BBD
      FF002DCCFF0015B7FE0016BCFD000AAAFF00064AAF0010113C0008113F00070F
      2B000250A900005EE2000369DA00066EDF00005CD5000041A900FFF7FE00FFF6
      F800ADADAE002B6C9F00A6BAC300D4D6DC00DDD5D000E1DCCF00DBD9D200DEDB
      D500E4E1DB00B8D4DF00A7B2BF006876790037454F00265C79001E628F007E9F
      B800F8F4F300F4FAF900F4F3F300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000EFEFEF000000
      00000000000000000000AEDFC9000A955000047726000578270005792700057A
      2900057C2B0004732500024B1700002C0D0001431000025117000B7A45002091
      690055A88E008ACFAB00B6E5CA00DAEBE300EEEEEE00E1EDE600B0E9C900A4E6
      BD00A5E8BE00A6E9C000A7EAC100A9EAC200A9EBC200AAEDC200B0F0C800C8F6
      E000000000000000000000000000000000000000000000000000FDFFFE00EAFD
      F1009EE1BA000240100005792B00068B3B00089449002AA46F002A9D6A000D8C
      4D00169762001595600011915B00078034000579290004782700047726000476
      260004742500047325000470220003611A005B9C8600DDEBE700000000000000
      000000000000E8E8E800C9C9C90000000000000000000000000000B3F50002C4
      F70000C0F70000C0F70000B9F600006CD3000024A8000000000030CDF90000B5
      F60000B3F60000B2F50000B1F50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF5000091E700002BAE00002E
      AF0000AEF50000AEF50000AEF50000AEF5000098F2000092F1000092F100008B
      EC00007DE400006CDA00005CCF000052C9000092F100007EE4000068D900004B
      C6000039BC00001FA60000AEF50000AEF50000AEF50000AEF50000AEF50000AF
      F40000AEF50000AEF50000AEF50000AEF50000AEF50000B3F60000AFF40000BF
      F70002C3F70005C6F70000A1F4000092F1000092F1000092F100E3F5FA000000
      000000000000000000000000000000000000000000000000000000000000EBEB
      EB00ACABAA00AAA8A700A9A7A600A9A7A600A9A7A600ACABAA009A9897004E4D
      4D004D4D4C004D4D4C004D4C4C004C4C4B004C4B4B004B4B4B004B4B4B004B4B
      4A004B4A4A004A4A49004A494900494948004948480048484700484747004747
      4600464645004646450045454400454544004444440044444400444443004443
      430043434200434242004242410042414100414140004140400040403F00403F
      3F003F3F3E003F3E3E003E3E3D003E3E3D003D3D3C003D3D3C003C3C3C003C3C
      3B003B3B3B003B3B3A003B3A3A003A3A39003A3A39003A393900393938003938
      38003131300067666500B0AEAC00A9A7A600A9A7A600A9A7A600A9A7A600B5B3
      B100C9C9C8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F0F600F9F6FD00FFF8FD00FCF2
      F700FFF9EC00FFF4EC007BB1E60000387E0008113C00080536000AAAF4001CC0
      FF0029C6FB0017BBFF001ABAFF000E97FF00001250000A124600021047001516
      2E008694AE002266B3000465CC000060DE00005FD600003D9C00EEEDFA00306E
      9300707C8100C2BCCF00BBC3C700CECDD100DBD2D100D7D4CF00D9D2D500DBD4
      D600DCD6D700F4DFCD00DED6D100A8CADF003D75B40092A4B200433A37003165
      9400F3EFF300FFEDED00F2F4F700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2C2C200F0F0F0000000
      00000000000000000000AFE0CB000EA06200119D6300119D64000D9A5C000B97
      56000B96540007713000023E1000002E0D0001461000035318000A7A45001D8E
      650056A88E008DD0AC00BCE6CD00DEECE600EEEEEE00DEECE300A5E6BE00A5E8
      BE00A6E9C000A8EAC100A9EAC200AAECC300AAEDC300ADEEC600BFF2D500F5FD
      F800000000000000000000000000000000000000000000000000F9FFFB00DEFC
      EC009FE1BB000241100005782900068B3C00079446002EA570002E9E6A00088B
      40000A954D000B944E0007853B00057E2D00057B2A0005792A00057828000578
      270004762600047526000471240003631C005C9E8600DDEBE700000000000000
      000000000000E8E8E800C9C9C90000000000000000000000000000ADF50015D3
      FA000ECDF9000DCCF9000BCAF90000A6F1000026AB00146CC90033CFF90000C0
      F70000C0F70000BFF60000BAF60000BAF60000AFF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF500007BDC000022A80000B2
      F60000AEF50000AEF50000AEF50000ABF4000092F1000092F1000092F100008B
      EC000088E4004BEEFE006BFBFF005FF7FF003DE8FC0008C9F700008EE5000044
      C4000032B300001FA60000AEF50000AEF50000AEF50000AFF40075D4E50071D4
      E5006FD4E5000CBDF00000AEF50000AEF50000AEF50000B5F700008EE90000AE
      F50000AEF50000AFF50000A6F4000092F1000092F1000092F1007DD0F9000000
      000000000000000000000000000000000000000000000000000000000000F4F3
      F300ACA9A900ADACAB00ABA9A800ABA9A800ABA9A800ACACAA00A3A2A1005A5A
      5900555454005656550055555500555554005454540054545300535353005352
      52005252520052515100515151005150500050505000504F4F004F4F4F004F4E
      4E004E4E4D004E4D4D004D4D4C004D4C4C004C4C4B004B4B4B004B4B4B004B4B
      4A004B4B4A004A4A4A004A4A4900494949004948480048484800484747004747
      4700474646004646460046454500454545004544440044444400444444004444
      4400444443004443430043434200434242004242410042414100414140004140
      4000383837007F7D7D00B2B0AF00ABA9A800ABA9A800ABA9A800ABA9A800B8B7
      B500D4D3D3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F6F100F9F7F200F5F9F700F6FD
      F900EAF0FA00F2FBF8000C89EC000084FF0004AEFF000880D9000A9DFF0013B3
      FF001CBFFF0012AFFF000A9DFF000655BC00151B47000E174D0007164D004A4C
      7100D4DECD00C8C1AE00A6A5A6006F9FD0002765A8000045AA0003569F006189
      AF00AC9C9300ACBCBA00C7C3C100C9CFC700CBCDC400E1D4CA00D2D1D000D4D5
      D200D6D7D600C8D2E900E0DAD100E9DCD900175AB7001C75CF004FADD5007980
      7A000C4E850070A4C000FCFAF100F5F4F600F8F6F600F5F6F400F8F6F6000000
      0000F6F4F60000000000000000000000000000000000C3C3C300F0F0F0000000
      00000000000000000000AFE0CD0014A36C0027AB7E0026AB7D0025A97B0023A8
      78001AA26F000E884C000551230000300D000148110003531700087337002293
      690043A2820084CEA700BDE7CD00DFECE600E8EEEB00D0ECDD00A5E8BE00A7E9
      C000A8EAC100A9EAC200AAECC300ABEEC500ABEEC500BCF1D200E3FAEE00FEFF
      FE00000000000000000000000000000000000000000000000000F6FEF900D8FA
      E900A0E3BC000243110005772900068C3C000A99530031A879002FA06C000790
      430008964A0008964C000892460005813100057D2C0004742500036B1E00046F
      200005782700057727000474250003661D005C9E8700DDEBE700000000000000
      000000000000E8E8E800CACACA000000000000000000000000009AE8FC0000B8
      F60017D3FA0012CFF90012D0F90000B5F5000037B5000025AB0008B8F40008C9
      F90005C6F70000C1F70000C0F70000C0F70000BCF60000AEF50000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF500007BDC000036B60000AE
      F50000AEF50000AEF50000AEF50000A7F4000092F1000092F1000092F100089D
      F100000000000000000020C6F70023DCFB0033E3FC001BD7FA0002C3F7000077
      D900002CAF00001FA60000AEF50000AEF50000AEF5006FD3E70074D6E5007AD7
      E70084DAE8008ADCE90000B2F40000AEF50000AEF50000B5F7000078E40000AE
      F50000AEF50000AEF50000A7F2000092F1000092F1000092F1005CC4F6000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00B5B4B200B2B1AE00ACABA900ACABA900ACABA900ADACAB00ABA9A7006767
      67005B5B5B005D5D5D005D5D5D005C5C5C005C5C5C005B5B5B005B5B5B005A5A
      5A005A5A5A005959590059595900585858005858580057575700575757005757
      5700565656005656560055555500555555005454540054545400535353005353
      53005252520052525200515151005151510050505000505050004F4F4F004F4F
      4F004E4E4E004E4E4E004D4D4D004D4D4D004C4C4C004C4C4C004B4B4B004B4B
      4B004B4B4B004B4B4B004A4A4A004A4A4A004A4A490049494900494948004848
      4800434343008E8D8B00B3B1AF00ACABA900ACABA900ACABA900ACABA900B9B7
      B400E0DFDF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4FAF900BAE1F600009BF900039AFF00049CFF0007A1FF0007A4FD0005A1
      FD0016BAFF000EA5FF000641A40007053C00061241000A164D0000012700E8E2
      F100DBE2E500DCE2E500DDE0E000D8D0C700BBBFBF007B98AA003860800090A0
      B40087817A00B2B3B700C4C0BF00CBC7C600CECAC900D2CFCD00D8D1D200D6D2
      D200D7D5CF00D9D6CD00E7DBD9002E76C1001B6ABB00127AD5001688D400339C
      E40081746700416C8E003571A800FFFFF200EFF4F600F6F1F600F3F8F800EFF4
      F400F1F3F60000000000000000000000000000000000C4C4C400F0F0F0000000
      00000000000000000000B0E1CE0018A5710035AE850033AE850030AD840030AD
      830029A87E001E9B6A000D623A0000300E000148110002521500045E1F003E9C
      7900319976007ACAA000B9E7CC00DAECE400E3EEE900C3ECD700A6E9BF00A8EA
      C100A9EAC200AAEBC300ABEDC400ACEFC600B0F0CB00CBF5DE00F9FEFC000000
      0000000000000000000000000000000000000000000000000000F0FDF700C6F1
      DB0085C0A200024A1200057C2D00068D3E000C9C5A0025A67600229E69000893
      490009984E0009984F0009994F00068A3E0005812F0004681E00025614000361
      1B0004772700057928000576260003681E005D9F8800DDEBE700000000000000
      000000000000E9E9E900CBCBCB000000000000000000000000000000000000AA
      F4001AD6FA001BD6FA001AD6FA0013D0FA0000AFF5000024AA00008EE4000DCC
      F9000BCAF90008C7F90007C7F90003C4F70002C4F70000C0F70000AFF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF500007BDC000072D60000AE
      F50000AEF50000AEF50000AEF5000095F1000092F1000092F1000092F100CDF1
      F600000000000000000000000000A3E9FB0013D1F90012D0F90004C4F70000B2
      F5000026AB00001FA60000AEF50000AEF50000AEF5007ED7E70086DAE80087DA
      E80093DFEC0092DFEC0000B2F40000AEF50000AEF50000B5F7000078DD0000AE
      F50000AEF50000AEF50000A8F2000092F1000092F1000092F1003CB8F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0BEBD00B8B6B500AEACAC00AEACAC00AEACAC00AFADAC00AEADAC007979
      7800636363006666660066656500656565006564640064646400646363006363
      6300636262006262620062616100616160006160600060605F00605F5F005F5F
      5E005E5E5E005E5E5D005E5D5D005D5D5C005D5C5C005C5C5B005B5B5B005B5B
      5A005A5A5A005A59590059595900595858005858580058575700575757005757
      5700575757005756560056565600565555005555550055545400545454005453
      5300535353005352520052525200525151005151510051505000505050004F4F
      4E004D4D4D009B9A9900B3B1B000AEACAC00AEACAC00AEACAC00AFADAC00B4B2
      B100EBEAEA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6F3FA0092DCFB0007A1FE0007A1FF0007A0FF0006A0FF0006A0FF0008A6
      FF00009AF7000C83F300052B5E000E2151000714450006063B005875A100BDD5
      D900ECE5E000E7E7D900EDE9E600DDDFE400CED0D000CCC9C100A1988D00ACA6
      A1009E968D00A9ADAF00C1BDBC00C8C4C300CBC7C600D1CDCC00CBC6C600D3D0
      CC00D7D2C600E2DBD9002667B1001869BB000A6CCC001A7CD7001E86DA00198D
      D700C5FFFF00A89FA4005F8084000E4E8F00FFFFFF00EEFBF900F9F2ED00FFF1
      F400FFF8F00000000000000000000000000000000000C4C4C400F0F0F0000000
      00000000000000000000B1E1D0001DA775003EB089003CB089003AAF88003AAF
      88003BAD880047AA87002D775400023D120001481100025314000256150048A2
      7F001F7B510072BC9000B2E7C900D4EBE000E0EEE700BDECD300A7EAC100A9EA
      C200AAECC300ABEDC400ACEFC600ADEFC800BDF3D400E0FAEC00000000000000
      00000000000000000000000000000000000000000000FEFFFE00E8FDF200ADE9
      CD005CA488000254150006833500079141001EA3680024A77800159E65000997
      51000A9A53000A9A53000A9B540008934B00067D2E00045D1800034C10000356
      1600046D2100057B2A0005772800046A20005DA08900DDEBE800000000000000
      000000000000E9E9E900CCCCCC0000000000000000000000000000000000DDF7
      FE0000AEF50025DDFB001ED9FB001FD9FB0000C3F7000050C700008EE40018D3
      FA0010CFF90010CFF9000DCDF9000ACAF90007C7F90007C7F90002C4F70000B6
      F60000AEF50000AEF50000AEF50000AEF50000AEF500007BDA0000B3F70000AE
      F50000AEF50000AEF50000AFF5000091F1000092F1000092F100008EF1000000
      00000000000000000000000000000000000000B5F6000ACAF90000BDF60000B2
      F6000078D900001EA40000AEF50000AEF50000AEF50084DAEA0099E0EE00AFE5
      E800B1E5E700B2E5F50000AAF50000AEF50000AEF50000B6F9000072D70000AE
      F50000AEF50000AEF50000ADF4000092F1000092F1000092F1001DA8F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CCCBC900BDBBBA00B0AEAD00B0AEAD00B0AEAD00B0AEAD00B3B2B0008887
      86006C6C6B007270700070706F00706F6F006F6F6E006F6F6E006F6E6E006E6C
      6C006E6C6C006C6B6B006C6B6B006B6A6A006B6A6A006A6868006A6868006867
      6700676766006766660066666500666565006665650065646400656464006463
      630063636200636262006262610062616100616160006160600060605F00605F
      5F00605F5F005F5E5E005E5E5D005E5D5D005D5C5C005D5C5C005C5C5B005C5B
      5B005B5B5A005B5A5A005B5A5A005A5959005A59590059585800595858005757
      56005A595900A7A5A300B3B1B000B0AEAD00B0AEAD00B0AEAD00B3B2B000B2B1
      AF00F5F4F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFF6F80095DAFA0015ACFD000AA8FF0006A3FE00049CFF00049BFF0009A0
      FF000079F200002D7C0000265600002356000024540001265A00001D51000E41
      7E009AC1E900F1F0F200E7E2DE00E6E9E600E8E7E700D9D7DC00706F7400B1AF
      AF00B9BBBD009A989800B9B6B400C1BDBB00C5C1C000CBC7C600CECDC900D4CF
      BF00ACC1D9001250A5001062B6000D69C4001F7ECC001586CF001A8FD5001D8F
      D5001E8FDB004FB6EB0069797C00667C83000F4C81007D8C9F00001841000F43
      86005E91C300FAF9F800000000000000000000000000C4C4C400F0F0F0000000
      00000000000000000000B3E1D10023A97A0046B18D0044B18C0037AC84003FB0
      8A0046B08C006AB59B005093750009582A000147110002541400025715002D98
      6B00116D3B0068AF8500A6E1C000CCEBDA00E0EEE700BEECD400A8EAC100A9EB
      C200AAEDC400ACEEC600ACEFC700AEF0CA00CBF6DE00F4FDF900000000000000
      00000000000000000000000000000000000000000000F6FEFA00DAFCEA0099DF
      BB002A80540003621B00068B3D00079446003BAD7B002FA877000E9A5C000B9B
      58000B9C59000B9C59000B9C59000A9954000780370005621E00045414000357
      140004681D00057D2B0005792900046C20005DA08900DDEBE800000000000000
      000000000000E9E9E900CDCDCD00000000000000000000000000000000000000
      000000B2F60022DAFA0027DFFB0026DDFB0024DCFB0000B2F6000098E90020D9
      FB0019D4FA0016D1FA0013D0F90010CFF90010CFF9000BCAF90009C9F90007C7
      F90003C4F70000ADF50000AEF50000AEF50000AEF5000098EA0000AEF50000AE
      F50000AEF50000AEF50000A8F2000092F1000092F1000092F1001EA8F2000000
      000000000000000000000000000000000000FAFEFF0000BFF60000B8F60000AE
      F50000AEF5000033B50000AEF50000AEF50000AEF50071D9F500AFE4F400B2E4
      F000B1E4F500CCEEEE0000ABF40000AEF50000AEF50000B6F900006FD60000AE
      F50000AEF50000AEF50000ADF4000092F1000092F1000092F1001EA8F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9D9D800C1BFBE00B1B0AF00B2B0AF00B2B0AF00B1B0AF00B6B4B3009392
      9100777776007C7A7A007A7A7A007A7A79007979790079797800787878007878
      7700777777007777760077767600767674007674740074747300747373007373
      720073727200727270007270700070706F00706F6F006F6F6E006F6E6E006E6E
      6C006E6C6C006C6C6B006C6B6B006B6B6A006B6A6A006A6868006A6868006868
      6700686767006767660067666600666665006665650065656400656464006464
      6300646363006363620063626200626261006261610061616000616060005E5D
      5D0068676700ADACAB00B4B2B100B2B0AF00B2B0AF00B2B0AF00B9B7B600BBB9
      B800FDFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDF4F800A7DEFF000ABAFF0013B2FF0005A3FF00059BFF000E9DFF000079
      ED000055D6000247AE000021590000225100002160000026500000245E000025
      6200002F7E00003883006E9DC600C9D5E200D8DCD500DCD7CD009B8F9400E2D9
      C600A3A0A900988C8600ABAAAD00BEBABB00C4C0C000C8C6C900D2C7C10096B1
      C4000A499D000C5BB1001066BB001374C600167FCD001688D0001A8ED2001A8F
      D4001B8FDB001A8FD0003CA0DA007F96A60057666600055497006E9CB8000035
      8900004AA300003A7A00FFF7FF00FDF8F60000000000C6C6C600F1F1F1000000
      00000000000000000000B5E2D30028AA7E004AB290003DAE8700249F6F0036AB
      820044B08C0068B89C0057A78C0016724C000141110002551500025A16000B7E
      41000F7F4A00479D760089CEA900C2EBD200DCEEE500C5EDD800A9EBC200AAED
      C400ACEEC600ADEFC800ADF0C800B2F2CF00D6F9E60000000000000000000000
      000000000000000000000000000000000000FDFFFE00E7FDF100BEF3D8007FC4
      9E00055A1D00057426000791430009984D0052B688003BA873000B9653000C9E
      5D000C9F5E000C9F5E000D9F5E000C9D5C000E9052000A78350006661F000565
      1F0006722900057F2D00057C2A00046E21005DA18900DDECE800000000000000
      000000000000EAEAEA00CECECE00000000000000000000000000000000000000
      00000000000000AEF40036E4FC0030E3FB002EE1FB0028DFFB0011CFF90020DA
      FB001FD9FB001ED7FB001BD6FA0019D4FA0017D3FA0012CFF90011CFF9000FCD
      F9000BCAF90008C9F90000C1F70000B1F50000ADF50000AEF50000AEF50000AE
      F50000AEF50000AEF50000A0F2000092F1000092F1000092F100A8DFF9000000
      0000000000000000000000000000000000000000000000B1F50000B2F50000AE
      F50000AEF5000039B80000AEF50000AEF50000AEF5002CCCF700BFEAF200CAED
      F000CCF0F700E7F6F50000ADF50000AEF50000AEF50000B6F900006CD30000AE
      F50000AEF50000AEF50000ADF4000092F1000092F1000092F1000599F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6E6E500BFBDBB00B4B3B100B4B2B000B4B2B000B4B2B000B8B6B4009D9B
      9A00807F7F008382820083828200828282008281810081818100818080008080
      8000807F7F007F7F7F007F7F7F007F7E7E007E7E7E007E7D7D007D7D7D007D7C
      7C007C7C7C007C7A7A007A7A7A007A7979007979790079797900797878007878
      7800787777007776760077767600767474007674740074737300747373007372
      7200737272007270700072707000706F6F00706F6F006F6E6E006F6E6E006E6C
      6C006E6C6C006C6C6B006C6B6B006B6A6A006B6A6A006A6868006A6868006464
      64007A797800B4B3B100B4B3B100B4B2B000B4B2B000B4B2B000BFBEBC00C8C6
      C500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F6
      F600EAF7F300E7E9FD000FBBF6001CC3FE000FACF9000DA3FF00028AFD00007E
      F4000074F3000062DB000024580000254F0000225C000026560000235A000024
      5F000030750000358D0000318400003786006596BB0076819100AFC9D6002B6C
      BC008B9BB100545954009B938C00B0ADA900C2BDBA00C7BDB40098B1C9000640
      93000B56AC000E62B700126EC0001477C7001680CC001684CF00198AD1001A8D
      D1001E85D700148DE1001E88D700B1D0E100989C9A006B727400114F7E005B8A
      B600004DA400004DAD006F9ABB00FAF3F00000000000C7C7C700F1F1F1000000
      00000000000000000000B6E2D4002EAC83004CB29000209D6C000F8C5200209D
      6C0040AD880050B3920047AE8D0026815D00003C100002561500025B16000464
      1D00158E5800118355005BAF8700ADE3C600CEEDDD00D3EEDF00AAEDC300ABEE
      C600ADEEC700ADEFC900AEF1C900BBF5D500DEFBEC0000000000000000000000
      0000000000000000000000000000FDFFFE00F0FEF600D0FAE30097D9B8004A8F
      6C00025A19000686360008954800179F610055B98C0038A971000B9956000DA0
      62000DA062000DA063000EA163000EA163001FA171001E905C00107A3C000A7A
      3A000B84420005802F00057D2C00047022005EA28A00DEECE800000000000000
      000000000000EAEAEA00CECECE00000000000000000000000000000000000000
      0000000000000ABFF60025DCFA0040E9FC003BE7FC0037E4FC002EE1FB002FE1
      FB0027DDFB0027DFFB0023DAFB0020D9FB001FD9FB001AD6FA001AD6FA0016D1
      FA0015D1FA0011CFF9000DCCF9000BCAF90008C7F90006C6F70000BAF60000B3
      F50000B1F50000AEF5000092F0000092F1000092F1000091F100000000000000
      0000000000000000000000000000000000000000000000B1F50000AEF50000AE
      F50000AEF5000041BD0000AEF50000AEF50000AEF50000ADF500CCF0F600D7F2
      F400E1F5F500D6F5FB0000AEF50000AEF50000AEF50000B6F9000069D10000AE
      F50000AEF50000AEF50000ABF4000092F1000092F1000092F100059AF2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3F3F300B6B5B400B7B6B500B5B3B200B5B3B200B5B3B200B8B7B600A4A4
      A300868686008888880088888800888888008888880088888800878787008787
      8700878686008686860086868600858585008585850084848400848484008383
      8300838383008282820082828200828282008181810081818100808080008080
      80007F7F7F007F7F7F007E7E7E007E7E7E007D7D7D007D7D7D007C7C7C007C7C
      7C007A7A7A007A7A7A0079797900797979007979790078787800777777007777
      7700767676007676760076767600747474007474740073737300727272006C6C
      6C0087878700B8B7B500B5B3B200B5B3B200B5B3B200B5B3B200C5C2C100D6D6
      D500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F6
      F400F6F9EF00FFF3F80040CDF80023CAFE0026CAFF0017B3F9000BA6FF000596
      FD00008DFB000072F100004AAE000021550000225B0000225500002359000026
      5F00002F650000306A0000347600003286007BA6D1002667AF00004DC000066B
      D4009FC6DA00888D8300616A7200A4A09C00B4B1AD00B2B8C30012478C000651
      B2000F62B3000E66BA001270C1001176C100127CC600157FCD001885D1001A89
      D100148CDC002788BB00CFCFD400D8DFE200FBE1DB0022374E0040778F00306A
      84001B478C00003797003A729A00FFF9F10000000000C8C8C800F1F1F1000000
      00000000000000000000B8E3D50035AE860051B08E000B8141000D874C000E8B
      51003CA87F0054B5940052B5940037906C00034C190002541500035C17000360
      19000B8446000B7F46003D916B0083C3A600BCE9D100D9EFE300AFEEC900ACEE
      C600ADEFC700AEF1C900AFF2CA00C4F6DA00E7FCF10000000000000000000000
      00000000000000000000FEFFFE00F1FEF800D0FCE500ADECC80069B184000660
      21000471270008964A0009984E004AB2890033A87E0014A069000EA065000FA2
      67000FA267000FA267000FA269000FA2690039A9830053A98D00379A72001894
      5F000F92540005823100057E2E00047223005EA38A00DEECE800000000000000
      000000000000EAEAEA00CFCFCF00000000000000000000000000000000000000
      0000000000000000000043D1F90021D9FB004FF0FE004EEEFE0048ECFE0047EA
      FE0041E9FC003DE8FE0037E5FC0036E4FC0033E3FC002BE0FB002BE0FB0026DD
      FB0024DCFB001FD9FB001ED7FB0018D6FA0018D4FA0016D1FA0013D0FA0012D0
      FA000BCAF90000A3F100007DE4000084E800008DED008DD7F600000000000000
      0000000000000000000000000000000000000000000000B6F60000AEF50000AE
      F50000AEF5000066D00000AEF50000AEF50000AEF50000AEF500FFFEFA00FBFE
      FE000000000012C3F70000AEF50000AEF50000AEF50000B1F6000099EA0000AE
      F50000AEF50000AEF50000A8F2000088EA000088EA00008EEE00059AF2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00BFBEBC00BEBCBB00B7B5B400B7B5B400B7B5B400B9B8B600AAA9
      A9008C8C8C008E8E8E008D8D8D008D8D8D008D8D8D008C8C8C008C8C8C008C8C
      8C008B8B8B008B8B8B008B8A8B008A8A8A008A8A8A0089898900898989008888
      8800888888008888880088888800888888008787870087878700868686008686
      8600868686008585850085858500848484008484840083838300838383008282
      820082828200818181008181810080808000808080007F7F7F007F7F7F007F7F
      7F007E7E7E007E7E7E007D7D7D007D7D7D007C7C7C007C7C7C007A7A7A007474
      740094939200BBBAB800B6B5B400B7B5B400B7B5B400B7B5B400C5C2C100E5E4
      E400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F6
      F600F4F4F000FFF4F100B2E9FF0026D5FF0036DCFD003AD7FF001EC4FF0011B2
      FA00019AFF000280FD000062E7000022660000255A0000225600002359000026
      5E00002B6F00002D6C00002D6C00002D6600003781000054DA00077CCF00E1E7
      ED00EEE9E400BEB8B800748992005D647100B5AA9B00215689000B4FAC001059
      AA000D64B2000D6AB800106EBC001071C0001072C300147AC900167CC7001A7F
      C300247CC600DBDAE000DCD9D600E0DED600DEE2E200DBDBD7001D232D002D79
      91009EB1BF0000206200547CA100F6F6F20000000000C8C8C800F1F1F1000000
      00000000000000000000BBE4D6003DAF8A0056B290000A7D3D000F8D57000D86
      4B0040A57D0059B6980059B6980041A985000E7F4F0001471100035F18000361
      190003631B000E8B4F000B753E003E83590097CEB600BBEED500BBEED500ADEF
      C700AEF2C900AFF2CA00B0F3CC00C4F7DB00E7FCF10000000000000000000000
      00000000000000000000F5FEFA00CDFBE500B9FAD9006AB98C00066225000365
      1F00068D420008984E000C9C5A0077C99D0037A467000D995A0011A46C0010A3
      6A0010A3690011A46B0011A46D0011A46D001FA7790074B8A00089B8A80048A5
      7E00098E48000583310005813000047325005FA38B00DEECE800000000000000
      000000000000EBEBEB00CFCFCF00000000000000000000000000000000000000
      000000000000000000000000000000ABF5005CF4FE0059F2FE0053F1FE0052F1
      FE004BEDFE0048ECFE0043EAFC0040E8FC003CE7FE0038E5FC0037E4FC0030E3
      FB002EE1FB002ADFFB0028DFFB0021DAFB001ED9FB001CD7FA001BD6FA001AD6
      FA0000AEF500006FDD000074DF00007AE3000080E500E7F6FC00000000000000
      0000000000000000000000000000000000000000000000B5F60000AEF50000AE
      F50000AEF50000A1EE0000AEF50000AEF50000AEF50000AEF5009FE9FB000000
      00000000000000B9F60000AEF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000AEF50000B2F50000A4F200007DE4000080E5000086E8000293ED000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CDCBCA00C6C5C200B8B6B500B8B6B500B8B6B500BAB8B700B1AF
      AE00939392009392920093929200939292009292910092919100929191009191
      90009190900090909000908F8F00908F8F008F8F8F008F8E8E008F8E8E008E8D
      8D008E8D8D008D8D8D008D8C8C008D8C8C008C8B8B008C8B8B008C8B8B008B8A
      8A008B8A8A008A8A89008A898900898888008988880088888800888888008888
      8800888787008887870087868600878686008686850086858500858584008584
      8400848483008483830083838200838282008282810082818100828181007C7C
      7C009E9C9C00BDBBB900B8B6B500B8B6B500B8B6B500BAB8B700BBB9B700F1F1
      F100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F6
      F400F4F2F400F8F9F000F4F9FF0047CFF7003AE7FF003EE5FB0034DAFF0022C6
      FF000BA9FF00058EFF00006FF9000048A800001C500000225600002359000029
      61000029660000296600002A6700002A6900002A7000139AE700DDDEF800E6E5
      E500E8E7E700E1E0E000C1AFA500042D6000847B7600094383000958A8000E5F
      B1001169B6000E6BB7000F6BBB00116CBF00126FC3001371BD000F70C7000E70
      CF00E2DCDA00CED5D100DCD6DA00DEDBDA00E0DCDB00E2DFDE00A2BAC0004742
      4F008C91940084A6D000EFFAFF00FDF7F80000000000C9C9C900F1F1F1000000
      00000000000000000000BFE5D80047B28E005BB694000E8C520011905A001293
      5D0046AD86005FB99B005FB89B005BB69800439C7800044F1600035F18000362
      1A0003651C00057128000B894A00117E47003B81540097CEB300B2EFCE00AEEF
      C900AFF2CA00B0F3CC00B1F4CE00C5F8DD00E8FCF2000000000000000000FEFF
      FF00FBFFFB00DDFBEC00C4FADE00B3F0CF005CAB7C0010682D0003631F000683
      350008964B000999500057B78F0032AB7D0017A16B0012A36C0014A5700012A5
      6E0011A46D0011A36B0011A46D0015A5710017A6730020A776001DA069001091
      4D00068738000685330005833200047726005FA48B00DEECE800000000000000
      000000000000EBEBEB00D0D0D000000000000000000000000000000000000000
      0000000000000000000000000000A8EAFC0000B2F50069F9FF0062F6FF005FF5
      FF0059F2FE0059F2FE004FF0FE004EEEFE0048ECFE0044E9FC0041E9FC003BE7
      FC0039E7FC0037E4FC0032E3FB002EE1FB002EE1FB0026DDFB0024DCFB0000B2
      F4000080DF000065D7000069D900006FDC000075E10000000000000000000000
      0000000000000000000000000000000000000000000002BCF60000AEF50000AE
      F50000AEF50000AEF50000AEF50000AEF50000AEF50000AEF50037CDF6000000
      00000000000000AFF50000AEF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000B5F60000BCF60000A1F1000071DD000077E000007BE300018BE9000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDE00D1D0CF00B9B8B700B9B8B800B9B9B800BBBAB900B6B5
      B400989797009595950096969600969696009695950096959500959595009595
      9400949494009494940094949400939393009393930093939200939292009292
      9200929291009191910091919100919190009090900090909000908F8F008F8F
      8F008F8F8E008E8E8E008E8E8D008D8D8D008D8D8D008D8D8C008C8C8C008C8C
      8B008B8B8B008B8B8A008A8A8A008A8A8A008A8A890089898900898988008888
      8800888888008888880088888700878787008787860086868600868686008282
      8100A6A6A500BEBDBC00B9B9B800B9B8B800B9B8B700C6C5C300C0BFBF00FDFE
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F6
      F600F3F2F600F4FAF400FCF6F000CEEDFF0031D5FD003FE9F90045E5FE0034D7
      FF001ABDFB00069DFD000081FE000060D900002876000026610000286A00002E
      7400002D7200002E7400002E7400002D7500002A7500B4CFF300E9ECD000E6E5
      E500E6E5E500E9E9E900B4D1D900606A8C0012418100305B77000E599A000A66
      AA00106BB2000E6BB4000E6AB7000E69BA000D66B8001569B6000E66CD001E69
      B700E0D5C900D9CFD500D9D9D000DCD9D700DDDAD900E1DEDC00DDE7E4004E67
      69008F7E83008B888600FDF7F400FDF6F70000000000CACACA00F2F2F2000000
      00000000000000000000C1E5D9004CB4900065BB9B003DA67F001A9967003CA8
      7E005BB7950065BB9D0064BA9D0062BA9C0056B191002A8B6100014211000364
      1C0003671D000469200006772F0009833E00107A3E002973450052B08C00A7E4
      BE00AFF1CB00B1F3CE00B2F4D000C0F8DB00DCFCEC00EDFEF400E5FDF000D4FB
      E800C5FBDD00BEFADB0087CAB100438A5F0013662A0004692300068135000894
      47000D9B540034AB7E0067B89B0023A16A0015A36C0018A6740017A7730015A6
      710014A56F0013A56D0011A46D0012A36C0014A56F0018A7730015A36E000C96
      540006883A0006863600068434000578270061A58C00DEECE800000000000000
      000000000000EBEBEB00D0D0D000000000000000000000000000000000000000
      00000000000000000000000000000000000088E4FC0000ABF5005FF6FF0066F9
      FF0066F9FF0060F6FF005CF4FE0059F2FE0059F2FE004FF0FE004BEDFE0048EC
      FE0048ECFE0041E9FC003CE7FE0039E7FC0036E4FC0004C6F70000AEF500005D
      CC000053CA00005ACD000060D3000065D700EAF7FE0000000000000000000000
      0000000000000000000000000000000000000000000002BCF60000AEF50000AE
      F50000AEF50000AEF50000AEF50000B1F50000B2F50000B3F60000BDF7000000
      00000000000000ADF50000AEF50000AEF50000AEF50000AEF50000AEF50000AE
      F50007C7F90008C9F9000093E700006BDA00006BDA000071DD00168FE4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFA00C3C2C100CCCBCA00C0BFBD00BEBDBC00BFBEBC00BDBC
      BA00A0A0A0009796960097979700969696009595940095949500959494009494
      9400949493009393930093939200929292009292910091919100919190009090
      900090908F008F8F8F008F8F8E008F8E8E008E8E8D008E8D8D008D8D8D008D8D
      8C008C8C8C008C8C8B008B8B8B008B8B8B008B8B8A008B8A8A008A8A8A008A8A
      89008A8989008989890089898800898988008988880088888800888888008888
      8800888888008888880087878700878787008787870088888800868686008787
      8700B0AFAE00C1C0BF00BEBDBC00BFBEBC00C5C3C200C1BFBE00E5E4E4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEFAF800FFEDF800F3F8FE00FFF8EA0037D5FF0058E5FB0046E6FF0040E0
      FE002AD2FD0009ACFF000993F8000072F300024CC3000025710000338C000037
      9100003892000039930000399300003C8C0000389B005585A500E9E5F000E9E9
      E900E4E4E400E2E2E200E8EBD600C5BFCD0009367A001A53810014437E000C66
      A3000A6BAF00116CB3000F6BB6000E67B3000E67BA001162B1000753B400B5C9
      CD00D6CDCD00DED7C700D4D4D900D7D4D200DDDAD900DDDAD900E8E5E400E0DA
      E700374D5100989B9400CFD6D600F2F6F60000000000CBCBCB00F2F2F2000000
      00000000000000000000C3E6DA005AAA80008D8E50007C9E6A00689F6C0070AA
      820070B595006BBB9E0068BD9F0067BD9E0063BB9B0050AF8D000F774A000358
      1C0003681E00046B2000046F230005782C00067C330008783400168141003879
      4A0043A0780077BEA2009BD7B800B2EDCC00C0F9DA00C6FBDE00BCF1D60098CD
      B70072BFA100459163002A7445000E652800046F270006843800089246000B9A
      530022A871007BCAA40041A2720064A06C0069A4700051A6720041A671003FA4
      6F0040A26B004CA065005E9B5C006E94520073904B007B8A4300768A43006B85
      3900637928005E73210054711F00156D1D0063A48B00DEEDE800000000000000
      000000000000ECECEC00D1D1D100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8F7FF000088E40000B2
      F70000B5F60000B9F60000B8F60000B3F60000B6F60000B6F60000B6F60000B2
      F60000B3F60000B3F70000B3F70000B3F7000098EA00004FC4000038BA000043
      C0000047C6000052C9000052C900AED4F1000000000000000000000000000000
      000000000000000000000000000000000000000000000BBFF70000B2F60000B5
      F60000B5F60000B9F60000B9F60000BDF70000BFF70000BFF70000BCF7000000
      00000000000000ADF50000AEF50000AEF50000AEF50000AEF50000AEF50000B6
      F50013D0FA001CD7FA000087E300005DD000005FD1000066D700329DE5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F500CCCCCC00B9B7B600B6B5B400B3B1B100B5B2
      B100A09F9F00929190008F8E8D00929292009696950096959500959595009595
      9500959595009595950096959500959595009595950095959400969594009595
      9500959595009594940095959400959494009594940094949300949393009493
      9300939393009392920093929200929291009292910091919100919190009090
      9000908F8F008F8F8F008F8E8E008E8E8D008D8D8D008D8D8C008D8C8C008C8B
      8B008B8B8B008B8A8A008B8A8A008A8A89008887870082818100878786008989
      8800B0AEAD00B3B2B100B5B3B200B8B6B500C0BFBE00E2E2E200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EEF6F900C7EBFB002EE1FB0054EAFE0044E5
      FB0037DCFF0019BCFF00079CFF000084F8000266E0000045B7000045B2000047
      B100004AB200004CB300004DB400004DB600004AB4000050A600E7E9EA00E2EA
      E600E6E9E900E8E6E500E7E1E700E4E6DA008997B400033B890015508E000544
      75001367A6001372B200126EB3000E64B1001069B6000A53BD006E9AC100D1CD
      C700D4D1D000D6D2D100D8D4D400D9D6D500DBD7D600DDDAD900E1DCD700E0DB
      D700B6C0CC007F847C00A8A1A100FDFBFB0000000000CCCCCC00F2F2F2000000
      00000000000000000000C5E6DB0064A27800A6621900A27230009F7938009C7F
      410097864B00948C5100939156009394590094985C0091995C00738C4D001E56
      1A00065C1900046C2100047123000472240004782900057F3000057929000469
      270009793900297F4C00408356004B8B5F004F906500508F66004B8B63003A7E
      5200247A480008682600046A220005792D0006893C0007934600129B570033AB
      770060BF94004EAE7A00759E6C00B0A27200B6A26C00A4A16700979F6300949C
      5E00929859009A935000A58E4700AD863A00AE803000B2782600AD752300A772
      1F00A36A18009F631300916112003265160066A48B00DEEDE900000000000000
      000000000000ECECEC00D3D3D300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000044
      B500001FA6000020A7000020A7000020A7000022A7000022A7000022A7000022
      A7000022A8000023A8000023A8000024AA000028AD00002FB1000034B600003B
      BC000039BA000868CC00F0F6FA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066DCFA0000BCF60000C1
      F70000C1F70002C3F70005C6F70005C6F70008C9F9000ACAF9000CCCF900FFFF
      FE00DAF6FC000FCDF90000ADF40000ADF50000AEF50000ABF50000C0F70023DC
      FB0026DDFB0014D1F900006FD6000053CA000056CC00005CCF004EAAE5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE000000
      0000D3D2D1008B8988007A77740096959500ABABAB00AAAAAA00ACACAC00ADAD
      AD00AFAFAF00B1B1B100B4B4B400B6B6B600B8B8B800BABABA00BDBDBD00BFBF
      BF00C1C1C100C3C3C300C6C6C600C8C8C800CACACA00CBCBCB00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CBCBCB00CACACA00C8C8C800C7C7C700C3C3C300C2C2
      C200C0C0C000BEBDBE00BBBBBB00B9B9B900B6B6B600B4B4B400B2B2B200AFAF
      AF00ADADAD00ACACAC00ABABAB00A8A8A9009A9A9A007673720094918F00A4A1
      A10000000000FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFF8EF00FFF3FA0052E2F30042E5FF004CE9
      FF0042E5FF0027CFFF000CACFF000294FF00007FF8000066E200005FDC00005F
      D900005AD200005BD500005ED600005CD9000061D4000058CD00579FE500F6EA
      E600E2E5DF00DEE2E500EAE4EB00E8EBE500F1EAED0064839800024398000D4E
      A300074874000B659D00106CAA000F6EB3000761AE001D60A400D4CFCF00C9CC
      C300D2CFCD00D4D1CF00D4D2D200D8D4D400D9D6D500DCD9D700DEDBDA00DEDA
      D600CBD0D50052595F008B8A8900FCF8F40000000000CCCCCC00F2F2F2000000
      00000000000000000000C7E6DC006A9F7900AB510D00AD550E00AD590F00AF5D
      1000B0611200B2671500B36E1B00B5732000B77A2600BA802D00BD843800726F
      2A00365F1C000F621D0004702300047727000476270004782700057C2B000682
      3200057C2A000470240003642000025E1E00025B1D00025A1D00025C1D000469
      220004712700057E30000587360006904000089549001FA15F0044AF7E0053B2
      8D005CB0800060996600BFA47B00D3A47300D2A16700CF9D5F00CB9A5900C796
      5200C3904B00C18B4400BE863C00BA813100B87B2800B6752200B4701C00B26A
      1700B1641400B05F1100A25C10004363150068A48B00DEEDE900000000000000
      000000000000ECECEC00D3D3D300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFFFF00FEFEFE0074B1
      E1000B72D3000B72D300398BD300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000ABF5001AD6
      FA001FD9FB001ED9FB0026DDFB0026DDFB002EE1FB002EE1FB00FFFFFC00FAFE
      FE00FAFEFE00FFFFFE003FE8FC0043E9FC0048ECFE0047ECFE004FF0FE004FF0
      FE0006C6F900006BD100003BBC000043BF000043BF000044C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDDBDA009593920085838100A5A5A400B7B7B700B6B6B600B8B8B800BABA
      BA00BCBCBC00BEBEBE00C0C0C000C3C3C300C5C5C500C8C8C800CBCBCB00CDCD
      CD00CFCFCF00D1D3D300D4D4D400D7D7D700D8D8D800D8D8D800D9D9D900DBDB
      DB00DBDBDB00D9D9D900D9D9D900D8D8D800D7D7D700D5D5D500D3D3D300D0D0
      D000CDCDCD00CCCCCC00C8C8C800C6C6C600C3C3C300C1C1C100BFBFBF00BDBD
      BD00BBBBBB00B9B9B900B7B7B700B6B6B600A8A8A800848281009A999700ADAC
      AB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDF4F300F2F6F100E2F1F60037DCFF004EE7
      FF0048E9FF0035DBFE001EC6FF000AA6FD000293FF000081F4000079F1000074
      EA000075EB000074EB000072EA00006FEC000375E200006AEC00005FD500B1D4
      F600F5E7D900E0E5EC00F2E1E400DDE6E600EFE4E700ECF0EA007189A6000246
      98000E5CA5000042720012619800126AA9000D6BB7005280B100CCC7BA00CBC6
      C400CFCCCA00D2CFCD00D3D0CF00D6D2D100D8D5D400DBD7D500D9D9D900DDD7
      D000C9C9C700909BB200989D9B00D9D9CF0000000000CECECE00F3F3F3000000
      00000000000000000000CAE7DD006FA17B00AB500D00AD540E00AD580F00AF5B
      1000B0601200B2661500B36C1A00B5721F00B6782500B97F2C00BC833600BF88
      3F0089783100496523001966210005732600057C2C00057F2F00057D2E00057D
      2B00057F2D000582300005833100058332000583320005843200058433000689
      3800068E3E000690410007944700169B57002BA6690046B280005EB58F0063A6
      810062966500C9A98500D5A67D00D4A37000D1A06500CD9C5D00CA995700C694
      5000C38F4900C18A4200BD853900BA802F00B77A2700B6742100B46F1B00B269
      1600B0631300AF5F1100A25B10004463150069A58B00DFEDE900000000000000
      000000000000ECECEC00D4D4D400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000892E3000072DD000074DF000068
      D3000053C700004CC6000047C1000041BF000041BD0069ABDF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000062DAFB0012D0
      F90034E3FB0037E5FC003DE7FE0040E8FC0045EAFE0045EAFE00A4F5FE00B6F1
      FC008BF0FE0069F2FE005AF2FE005FF5FF0063F7FF0069FAFF0052EEFC0000B3
      F6000055C9000030B2000032B3000037B800003BBC0060A7E000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDDDDC009F9D9B008F8D8B00B4B4B300C3C3C300C3C3C300C5C5C500C7C7
      C700CACACA00CBCBCB00CDCDCD00D0D0D000D3D3D300D5D5D500D7D7D700D9D9
      D900DBDBDB00DDDDDD00E0E0E000E1E1E100E3E3E300E3E3E300E4E4E400E5E5
      E500E5E5E500E4E4E400E4E4E400E3E3E300E1E1E100E0E0E000DFDFDF00DCDC
      DC00D9D9D900D8D8D800D5D5D500D3D3D300D0D0D000CFCFCF00CCCCCC00CACA
      CA00C7C7C700C6C6C600C3C3C300C3C3C300B5B5B500908F8E00A2A19F00B5B3
      B200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F9F300F6F3F400F8F4FE00ACE7EB004CE7
      FF0047E9FE0035E6FB002DD6FF001EBCFE0009A3FF000092FF00018EFD000088
      F7000084F2000081F200017FF400027CF2000076EC000077EC00006FE400176A
      D500FCE7E600E7EAF300E3E4E400E6E5E500E7E6E600E7E6E600E8EDED00889C
      BC00004598001262C600053C6E00185C8C000864A900607E9C00BDBBC000CBC1
      BF00CCC9C700CFCCCA00D2CFCD00D4D1D000D6D2D100D7D4D200DCD9D700DCD9
      D700D9D6D500CCC6C600A4A39800D2D0D10000000000CFCFCF00F3F3F3000000
      00000000000000000000CBE8DE0073A37C00AB500D00AC540E00AD580F00AE5B
      1000AF5F1100B1651400B36B1900B4711D00B6762300B87D2A00BB823200BE86
      3D00C18C4400A8853F005E6B2C00226623000F7B2D0006833700068337000784
      3600078638000687390007883900078A3C00078C3F00078F4100079044000892
      47000E954F001B9A560020A0630034A97C005FB892005CB288004D9E700091A0
      7700DCAC8D00D8A88200D5A47600D2A36C00D1A06700CE9E6500CC9C6100C998
      5C00C7945600C5905000C28B4900BE873F00BB813700B7792B00B46F1E00B267
      1500B0621200AF5D1000A25B10004464150069A58C00DFEDE900000000000000
      000000000000EDEDED00D5D5D500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000039B8F1000077E100007AE100007AE100007AE100007A
      E100007AE100007BE3000060D1000050C700004EC4000048C3000050C1000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000A3
      ED000DCCFA005CF4FE0057F2FE005CF4FE0062F6FF0069F7FF006BFAFF0048EC
      FE0022DCFB0012D3FA0001C7FA0000BCF900009DEE00008AE3000056C6000020
      A6000026AB000026AB00002AAE000027AE0072AFE30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0E0DF00A6A4A30099979700C2C2C200D0D0D000D0D0D000D1D1D100D4D4
      D400D5D5D500D8D8D800DBDBDB00DCDCDC00DDDDDD00E0E0E000E3E3E300E4E4
      E400E5E5E500E6E6E600E9E9E900EAEAEA00EAEAEA00ECECEC00EDEDED00EDED
      ED00EDEDED00EDEDED00ECECEC00ECECEC00EAEAEA00E9E9E900E8E8E800E6E6
      E600E5E5E500E4E4E400E1E1E100DFDFDF00DCDCDC00DBDBDB00D8D8D800D7D7
      D700D4D4D400D3D3D300D0D0D000D0D0D000C0C1C1009B9A9900A8A7A600BBB9
      B900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6F6F400F3F2F300FBF4FA00F1F7FE0033DF
      F60045E9FF004FE9FB003CE1FF002AD1FF0017BAFF000AA6FE00069BFF000393
      FE00028AF8000288F8000081F7000280F600007AF0000077EF00006CE600005B
      DB00397BC600F3EDD600E8E7E700E6E5E500E9E9E900E7E6E600F8EBE400FBEC
      E600A1B7C40009589A00025AB60000478F000C47720013619B00BBAEB400B5B7
      B300C7C3C100CBC7C600CFCCCA00D1CDCD00D4D0CF00D6D2D200D8D5D400D9D6
      D600DBD7D600C7C4C40091918600C4C3C40000000000CFCFCF00F3F3F3000000
      00000000000000000000CDE9DF0077A57E00AA4E0C00AC520D00AD560F00AE5A
      1000AF5E1100B1641300B26A1700B46F1B00B5742100B77A2700BA802F00BD84
      3900C08A4200C28F4900BC904D008C823E00426B270018682700138240000D97
      59000B9453000A9553000A9451000C9754000E9A59000E9C5C000E9C5E00119F
      640027A87D005AB6940068B69A0040A782003E9D72007EA28000C7AF9600DDAD
      9200DCAB8900D8A87F00D6A67700D6A77800D7A87F00D9AB8A00DAAD9200DAAE
      9300D9AD9200D7AB9000D6A98C00D3A78900CFA37F00C5935F00BB7C3900B56C
      2100B0631700AE5B1000A25A1000446615006AA58C00DFEDE900000000000000
      000000000000EDEDED00D6D6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000099EA000086E5000083E500007EE300007AE100007AE100007A
      E100007AE100007AE100007AE1000074DC00005ACD000056CA00004FC600004E
      C100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003DAEEC000091E8000099EC00009DED000093E8000088E1000068D1000048
      C000001FA6000020A7000023A8000025AA000024AA000023AA000021A8000030
      AF000040B5000355BF0087B8E400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E3E2E200ACAAA800A2A1A000CFCFCF00D9D9D900D8D8D800DBDBDB00DDDD
      DD00DFDFDF00E1E1E100E3E3E300E5E5E500E6E6E600E8E8E800EAEAEA00ECEC
      EC00EDEDED00EEEEEE00EFEFEF00F1F1F100F2F2F200F2F2F200F2F2F200F3F3
      F300F3F3F300F2F2F200F2F2F200F2F2F200F1F1F100EFEFEF00EEEEEE00EDED
      ED00ECECEC00EAEAEA00E9E9E900E6E6E600E5E5E500E4E4E400E1E1E100DFDF
      DF00DDDDDD00DCDCDC00D9D9D900D8D8D800CBCBCB00A5A4A300AEACAB00BFBE
      BE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5F2F400FAF6F600F3F2F300FFF1F400BFE9
      FB003BDCFD0045EBFF0043E6FB0037DEFE0026CDFF0015BBFB0008A6FE00069B
      FF00038FFD00028AFA000184F800007EF600007BF3000077F1000066E2000040
      BA00002F98007B98C600E6E5E500E7E6E600E8E7E700E8E7E700E1E5F100E7E6
      E700EAEAE700E0E5E7003F5F8900B1C7E600D4CDC300244971001A598000BDAE
      AC00C1BDBC00C2BFBD00C8C4C300CBC7C600CFCCCA00D2CFCD00D7D4D200D7D4
      D200D8D5D400CECFCF009DA09300D3D7D70000000000D0D0D000F3F3F3000000
      00000000000000000000CFEAE0007BA78000AA4E0C00AB500D00AD540E00AD59
      0F00AE5D1000B0611200B1671600B36D1A00B5731E00B6792400B87E2B00BB82
      3600BF883F00C18D4600C4914C00C7965300C4995900AD996200738D64001677
      4F00086527000A7D41000C884E001A98660029A57C0029A47A001B9D6D001899
      68000D8C5400108A5A00449B7C009FBFB500E0D9DD00F2DCDE00EBCBC300E3B7
      A700E1B4A100E4BAA900E8C1B300EAC6B900EAC8BB00EAC9BB00EAC9BC00EAC9
      BD00EACABD00EAC9BD00EAC9BD00EAC9BB00EAC7BA00EAC7B900E6BEB000D4A5
      8700BA7D4200AE5A1000A2581000446615006AA68C00DFEDE900000000000000
      000000000000EDEDED00D6D6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000EABED000092EA00008DE8000088E7000083E500007EE300007AE100007A
      E100007AE100007AE100007AE100007AE1000075DC000066D000005ACF000057
      C9000063CD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7FAFE003D91D700002FAE00002BAE00002B
      AE00002EAE000D66C60086B6E400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5E5E400B1AFAE00AAA9A800D7D7D800DFDFDF00DFDFDF00E1E1E100E3E3
      E300E5E5E500E6E6E600E8E8E800EAEAEA00ECECEC00EDEDED00EEEEEE00F1F1
      F100F2F2F200F2F2F200F5F5F500F5F5F500F6F6F600F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F6F6F600F6F6F600F5F5F500F3F3F300F2F2
      F200F1F1F100EFEFEF00EEEEEE00EDEDED00EAEAEA00E9E9E900E8E8E800E5E5
      E500E4E4E400E1E1E100E0E0E000E0E0E000D3D3D300ACABAB00B3B2B000C5C3
      C200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6FAFB00FDF2F400EDF7F400F3F9F300F6F4
      F6007EE1FF0045DAFE004DE7FF003EE0FF002DD5FF001FC7FF000BB2FF0007A3
      FF000491FE00018AFA000081F600007CF3000079F100006FE700004ECA000038
      9700003A9D0000359700CCD5DB00EEEBEB00E3E4E500E7E5E600EAE9DE00E6EC
      E900EAE9E400E7E6EB00E4E6E400A8B3AF00ACB8BA00E2D4C100889FAE00123D
      6100B1AFAF00B9B6B400C2BFBD00C7C1C000CBC7C400CFCCC900D6D2D000D4D1
      CF00D3D1CF00ABB4B600969C9300E7ECEB0000000000D3D3D300F4F4F4000000
      00000000000000000000D1EBE0007FA88100A94C0C00AB4F0D00AC530E00AD58
      0F00AE5B1000B26C2100BA834300C4946400CFA07C00D7A99200DBAE9900DDAF
      9C00E6C4B600EACCC000EACEC300EBD0C700EBD2CA00EAD4CE00E4D3D000DBD2
      D100D9D2CF00ACBBB20099B2A70097B2A9008FB0A50089AEA30098B5AB009DB6
      AC00C4C9C000D7D2CF00DFD5D400E7D4D200EDD5D100EFD5D000EED2CC00ECCC
      C300E9C5B500E9C7B900EAC9BC00ECCABD00EDCCBF00EDCDC000EDCDC000E9C5
      B900DFB5A300D6A99000D4A88C00D3A68900D1A58600CEA48400CA9F7A00C08C
      5500B36F2600AD590F00A2570F00446615006AA78C00DFEDE900000000000000
      000000000000EEEEEE00D8D8D800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0FB
      FE000098ED000095EC000092EA00008DE8000088E7000083E5000080E400007B
      E300007AE100007AE100007AE100007AE100007AE1000075D900006ED7000066
      CF000065D000E9F5FC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A0EEFC004FEA
      FF0048E8FF0047E8FF0065ECFE00F6FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6E5E500BEBCBA00B0AEAD00DFDFDF00E1E1E100E4E4E400E5E5E500E6E6
      E600E8E8E800EAEAEA00ECECEC00EDEDED00EFEFEF00F1F1F100F2F2F200F3F3
      F300F5F5F500F6F6F600F7F7F700F7F7F700F9F9F900F9F9F900F9F9F900FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00F9F9F900F9F9F900F7F7F700F6F6F600F6F6
      F600F5F5F500F2F2F200F1F1F100EFEFEF00EEEEEE00ECECEC00EAEAEA00E9E9
      E900E6E6E600E5E5E500E4E4E400E3E3E300D8D8D800B0AFAF00BEBCBA00C5C3
      C300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F300F5F4F600ABE7FD0024D1F90022D1FE001BC7FF0014B8FF0002A6FF000196
      FE000088F700269BF40068B6F400A1D2F000F3F9FD00EAEDFB000A4E9C000051
      BF00005BCD00005CCF00035BB3007DACE600EFECDA00EAE4F100E1E6E400E3EB
      E900E7E9E600E6E5E600E4E4E400EAEAEA00E1E4E200BEBFBF00A7A5A500B9C3
      C000505C690098989D00AFACAA00BEBBB700BFBCBA00C8C4C100CEC9C700C7C4
      BF00B5C4CA0037678C008B9CA600FFF9F80000000000D3D3D300F4F4F4000000
      00000000000000000000D3ECE10083AA8300A94A0C00AA4E0C00AC520D00B26B
      2700C48B5F00D09D7F00D4A58B00D6AA9600DAAE9C00DDB1A300DFB3A500E1B5
      A800E3BBAF00E5BDB300E6BFB500E3BCB000E0B7A800E1B9AA00E2BBAD00E7C0
      B700EECFC700E7D7D900E4D9DF00E4DAE100E1DAE100DDD1D100DABDB000D7B6
      A600E1BBAD00E6BDB000E4BBAC00E3B9A900E2B8A600E0B69E00DFB39800E0B4
      9C00E1B5A100E5BCAD00ECCBBF00EDCEC200EECFC400ECCCC100DFB99E00CC9C
      6900C38D4C00C0874000BC823A00BB7E3600B9793100B7752D00B5702800B268
      1F00AF5F1400AD580F00A1560F00446615006CA78D00DFEDE900000000000000
      000000000000EFEFEF00DADADA00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000043CC
      F500009DEE00009AED000096EC000095EA00008FE900008BE7000087E5000083
      E500007EE300007AE100007AE100007AE100007AE100007AE100007DDC000074
      D6000075D70050ADE80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFE0062DCFA002BD4FB003DE5FE0021C6
      F60018B5F10025CAF60044EDFF003FE8FF0053DFFB00F9FAFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDEDED00BDBDBC00C2C1C100E3E3E300E4E4E400E4E4E400E6E6E600E9E9
      E900EAEAEA00ECECEC00EDEDED00EEEEEE00EFEFEF00F1F1F100F2F2F200F5F5
      F500F6F6F600F6F6F600F7F7F700F9F9F900F9F9F900FAFAFA00FAFAFA00FBFB
      FB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00F9F9F900F7F7F700F7F7F700F6F6
      F600F5F5F500F3F3F300F2F2F200F1F1F100EEEEEE00EDEDED00ECECEC00EAEA
      EA00E9E9E900E8E8E800E5E5E500E4E4E400DDDDDD00C3C3C300C1C0BF00D6D5
      D400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F6
      F400F3F9F200FFF8F800F4F4F700D7F3FE00CCEAFF00D7E2FE00D1E4FE00CCE5
      F900FCF7F400F4F3F000F4F7F100FDF3F000FDFBFF00004FB6000360E1000075
      EB000077F0000076F000006EF600006FDE004CA1E000FFF1E600EEE4E200E8E9
      E600E6E6E600E2E1E100E6E5E500E6E5E500E3E2E200E7E5E500DEE4E200C5C9
      C700989B9B0071767F00484D5300787B80009A9DA300ACAEB300B1B4BA00969F
      A600486079008798A600F4F2F700FFF3F40000000000D4D4D400F4F4F4000000
      00000000000000000000D4EDE10087AC8400A9490B00AA4D0C00AB510D00AF5D
      1900B76D3100BC763D00BE793F00BE7C4100BF804400C1844800C3884C00C48C
      5000C6905400C7935900CA966000CA976200CA986200CC9B6600CE9F6B00D2A3
      7200D5AB7B00DBB48E00DFBAA200E3BDAB00E2BDA900DFB79A00DBAC8400DAA9
      8100DAAA8300DAA98200D8A87F00D8A77C00D6A77900D5A57300D4A26E00D3A2
      6F00D3A27000D2A37200D3A87600D7AC8400D8AF8A00D3A67900C8965A00BF87
      3F00BA803000B87B2700B5762200B4711E00B26B1800B1661500B0621200AE5E
      1000AD590F00AD550E00A1550E00446615006CA88D00DFEDE900000000000000
      000000000000EFEFEF00DADADA00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000A6
      F10000A4F10000A4F10000A0F000009CEE000099ED000096EC000092EA00008D
      E8000088E7000084E5000080E400007DE300007AE100007AE1000081E3000096
      E700008FE4000083DF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000009A8ED0017B5F0000DA4EC00089CE9000492E7000088
      E400007DE1000072DD000068D9000065D700089AE8003FE8FF000055C70088BA
      E500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600F5F5F500E3E3E300E4E4E400E5E5E500E6E6E600E9E9
      E900EAEAEA00ECECEC00EDEDED00EFEFEF00EFEFEF00F2F2F200F3F3F300F5F5
      F500F6F6F600F6F6F600F7F7F700F9F9F900F9F9F900FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00F9F9F900F9F9F900F7F7F700F6F6
      F600F5F5F500F3F3F300F2F2F200F1F1F100EFEFEF00EEEEEE00EDEDED00ECEC
      EC00E9E9E900E6E6E600E5E5E500E4E4E400E1E1E100F3F3F300E6E7E7000000
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
      A800DDDFE200F6F8F100F8F4F300F4F4F70000000000D5D5D500F5F5F5000000
      00000000000000000000D9EFE30091B68B00A65C1600A94B0C00AA4F0C00AC52
      0D00AD560E00AE590F00AE5D0F00B0611100B1661500B26B1800B4701D00B574
      2200B77A2700B97E2D00BB833400BD863B00C08A4200C28F4800C4924D00C796
      5100C8985500CC9B5C00CF9F6900D2A26F00D3A26F00D2A16B00D1A06700D2A1
      6900D2A16900D2A16900D2A06700D19F6500D09F6300CF9E6100CE9C5D00CC9B
      5A00CA995600C7965200C5934E00C6945300C6925400C28B4700BD843900BA80
      3000B87B2900B6772300B4731F00B36E1A00B1681600B0631300AF5F1000AE5B
      1000AD560F00AC530E009E530F002A6B19007BAF9500E4EFEB00000000000000
      000000000000EFEFEF00DADADA00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000AA
      F40000ABF40000A8F20000A4F10000A1F000009FF0000099ED000098EC000092
      EA00008DE800008BE8000087E7000083E500007EE300007AE1000077E000009F
      ED00009FEC000095E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000020AEEE0012ABED0018B5F10012AEEE000CA3EC00089CE900028F
      E5000087E400007AE400006FDD000065D7000065D70038E1FC0033DCFC000025
      AB00D0E7F5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECECEC00F9F9F900E3E3E300E4E4E400E5E5E500E6E6E600E8E8
      E800EAEAEA00ECECEC00EDEDED00EEEEEE00EFEFEF00F1F1F100F2F2F200F3F3
      F300F5F5F500F6F6F600F7F7F700F7F7F700F9F9F900F9F9F900FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00F9F9F900F9F9F900F9F9F900F7F7F700F6F6F600F5F5
      F500F5F5F500F3F3F300F1F1F100F1F1F100EEEEEE00EEEEEE00ECECEC00EAEA
      EA00E8E8E800E6E6E600E5E5E500E4E4E400E3E3E300FAFAFA00E7E7E7000000
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
      EB000000000000000000000000000000000000000000D4D4D400F5F5F5000000
      00000000000000000000DFF3E7009EC8A0009E814300A9490C00AA4D0C00AC50
      0D00AD540E00AE570F00AE5A0F00AF5F1100B0631300B2671500B36C1900B570
      1E00B6752300B77A2700B97F2C00BB823300BE863B00C08A4100C18D4600C491
      4A00C5934E00C7965100C9985500CA9A5700CC9A5A00CC9B5C00CD9C5D00CD9D
      5E00CD9D5E00CD9D5E00CD9C5D00CC9B5C00CC9A5B00CB9A5900CA985500C796
      5200C5944F00C4914B00C28E4700C08B4200BE873D00BC833700BB803000B87B
      2900B6772400B5731F00B46E1B00B26A1700B1651400B0601100AE5C1000AE58
      1000AD540F00A9530E008F5711000F7724009DC7B100EEF5F200000000000000
      000000000000EFEFEF00DADADA00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000AB
      F40000ABF40000AAF20000A8F20000A4F10000A3F100009FF000009AEE000099
      ED000095EA00008FE900008DE8000087E7000083E500007EE3000077E00000AA
      F10000AAF100009FED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CDF1F9000698E80023C7F6001DC0F40018B6F10012ABED00099DE9000696
      E8000087E400007DE1000077DF00006EDC000065D7000EA7ED0045EEFF000022
      A7000024AA00F7FBFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB00F7F7F700E3E3E300E3E3E300E4E4E400E5E5E500E6E6
      E600E9E9E900ECECEC00ECECEC00EEEEEE00EEEEEE00F1F1F100F1F1F100F2F2
      F200F3F3F300F5F5F500F6F6F600F6F6F600F7F7F700F7F7F700F9F9F900F9F9
      F900F9F9F900F9F9F900F7F7F700F7F7F700F7F7F700F6F6F600F5F5F500F3F3
      F300F3F3F300F2F2F200F1F1F100EFEFEF00EEEEEE00EDEDED00ECECEC00E9E9
      E900E8E8E800E6E6E600E5E5E500E4E4E400E3E3E300F9F9F900E7E7E7000000
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
      0000F5F4F40000000000000000000000000000000000D5D5D500F4F4F4000000
      00000000000000000000EAF8F000B6DEC30097AD8200A65B1D00A94D0E00AB4D
      0D00AC510E00AD540F00AD570F00AE5C1000AF5F1100B0631300B2671600B36C
      1A00B5701E00B6752200B77A2600B87E2C00BB813200BD843800BF883E00C08B
      4200C28D4600C4914A00C5934D00C6944F00C7955200C7975400C9975600C998
      5600C9985700C9985600C9985600C8975400C7955200C6955100C5934E00C491
      4B00C28E4800C18C4400BF894000BD863A00BB823500B97F2E00B87B2800B677
      2300B5731F00B46E1B00B26A1700B1651400AF601100AE5D1000AD590F00AD56
      0F00AB530E0099550F005C691D00248F5100CAE5D800F8FCFA00000000000000
      0000FEFEFE00EFEFEF00DCDCDC00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000AD
      F40000AEF50000ADF40000ABF40000A8F20000A6F10000A4F10000A0F000009D
      EE000099ED000096EC000092EA00008DE800008AE7000084E5000080E40000AA
      F10000AAF10000A6F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000087E4001CBCF20028D3FA0020C3F5001CBDF20015B2F0000EA6EC00089C
      E9000491E7000087E400007DE1000074DD000066D7000071DC0041EAFE000025
      AB000028AD000457BF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB00F7F7F700E3E3E300E3E3E300E4E4E400E5E5E500E6E6
      E600E8E8E800E9E9E900ECECEC00EDEDED00EEEEEE00EFEFEF00EFEFEF00F1F1
      F100F2F2F200F3F3F300F5F5F500F5F5F500F6F6F600F6F6F600F6F6F600F7F7
      F700F7F7F700F7F7F700F6F6F600F6F6F600F6F6F600F5F5F500F3F3F300F3F3
      F300F2F2F200F1F1F100EFEFEF00EEEEEE00EDEDED00ECECEC00EAEAEA00E8E8
      E800E6E6E600E5E5E500E4E4E400E3E3E300E3E3E300F9F9F900E7E7E7000000
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
      F700F8F7F70000000000000000000000000000000000DEDEDE00F0F0F000FCFC
      FC000000000000000000FAFDFC00DFF4E900A5D5B2009F975A00A4662E00A75D
      2100A8602000A9622100AA652100AA682200AA6A2300AB6D2400AD702600AE74
      2900AF782C00B07B3000B0803300B1833700B3863B00B4883F00B58B4500B68C
      4900B8904B00B8914E00B9935100B9935300B9945400BA965500BB975600BA98
      5600BA985600BA985500B9975500B9955400B6935200B5935000B4914D00B290
      4900B18E4700AF8B4400AD893F00AB863900A8833300A67F2E00A47B2A00A378
      2500A17421009F701C009D6C19009B6715009963140098611200975D1100955A
      11008C5A12006A661E00298C4A0082BFAD00F1F8F60000000000000000000000
      0000FAFAFA00EBEBEB00E2E2E200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000077E3
      FB0000AEF50000AEF50000AEF50000ABF40000A8F20000A4F10000A4F10000A1
      F000009CEE000099ED000096EC000092EA00008DE800008DE8000084E50000AA
      F10000AAF10027C1EE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECF7
      FE000088E40036E4FC0037DAFB0043D0FA0022C4F50019B8F10012AEEE000DA4
      EC00089CE9000492E7000088E400007BE1000071DD00005CD40041EAFF00002C
      B3000032B3000026AD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB00F6F6F600E1E1E100E3E3E300E3E3E300E4E4E400E6E6
      E600E6E6E600E8E8E800E9E9E900ECECEC00EDEDED00EEEEEE00EEEEEE00EFEF
      EF00F1F1F100F2F2F200F3F3F300F3F3F300F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F3F3F300F3F3F300F2F2F200F1F1
      F100F1F1F100EFEFEF00EEEEEE00EDEDED00ECECEC00EAEAEA00E8E8E800E8E8
      E800E6E6E600E5E5E500E4E4E400E3E3E300E1E1E100F9F9F900E7E7E7000000
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
      F400F5F4F40000000000000000000000000000000000EDEDED00E3E3E300F5F5
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
      000000AEF50000AEF50000AEF50000AEF50000ABF40000ABF40000A8F20000A4
      F10000A4F100009FF000009CEE000098ED000096EC000092EA000098EC0000AA
      F10000AAF100E1F7FE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B9E3
      F700007BE1003BE9FF0086E4FC006BDCFA004ED4FB001FBFF40018B5F10012AD
      ED000CA3EC000593E700018BE5000084E3000075DF00007ADF0044EDFF00003C
      BC00003BBC000032B300E7F0F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB00F6F6F600E1E1E100E1E1E100E3E3E300E4E4E400E4E4
      E400E6E6E600E8E8E800E8E8E800EAEAEA00ECECEC00EDEDED00EEEEEE00EFEF
      EF00EFEFEF00F1F1F100F2F2F200F2F2F200F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F2F2F200F2F2F200F1F1F100F1F1
      F100EFEFEF00EEEEEE00EEEEEE00ECECEC00EAEAEA00E9E9E900E8E8E800E6E6
      E600E5E5E500E4E4E400E3E3E300E3E3E300E1E1E100F7F7F700E7E7E7000000
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
      00000000000000B1F50000AEF50000AEF50000AEF50000AEF50000ADF40000AB
      F40000AAF20000A6F10000A4F10000A1F000009DEE00009AEE0000AAF10012B6
      F200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003CA4
      E8000074DF0050ECFE00BFF4FC00A0EDFC0086E4FC0066DAFA002BC9F6001BBC
      F20012ADEE000DA6EC00089CE9000492E7000088E4003CE4FE0014AFEE000053
      CA00004EC6000043C300E0EEF700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB00F5F5F500E0E0E000E1E1E100E1E1E100E3E3E300E4E4
      E400E5E5E500E6E6E600E6E6E600E8E8E800E9E9E900ECECEC00EDEDED00EEEE
      EE00EEEEEE00EFEFEF00EFEFEF00F1F1F100F1F1F100F1F1F100F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F1F1F100F1F1F100F1F1F100EFEFEF00EEEE
      EE00EEEEEE00EDEDED00ECECEC00EAEAEA00E9E9E900E8E8E800E6E6E600E5E5
      E500E4E4E400E4E4E400E3E3E300E1E1E100E0E0E000F6F6F600E7E7E7000000
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
      0000000000000000000000AEF50000AEF50000AEF50000AEF50000AEF50000AE
      F50000ABF40000ABF40000A8F20000A4F10000A1F00000A8F00092E0F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000093C9
      EE00006EDC0039E9FF00E5FCFF00C1F4FE00AEEEFC0086E4FC003FD0F9001FC1
      F40018B6F10012AEEE000BA0EA00089AE9000BA0EA003BE3FE00005DD600005C
      D0000053CA00004FC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB00F5F5F500DFDFDF00E0E0E000E1E1E100E3E3E300E4E4
      E400E4E4E400E5E5E500E6E6E600E8E8E800E8E8E800E9E9E900EAEAEA00EDED
      ED00EDEDED00EEEEEE00EEEEEE00EFEFEF00EFEFEF00EFEFEF00F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100EFEFEF00EFEFEF00EFEFEF00EEEEEE00EEEE
      EE00EDEDED00ECECEC00E9E9E900E9E9E900E8E8E800E6E6E600E5E5E500E4E4
      E400E4E4E400E3E3E300E1E1E100E1E1E100DFDFDF00F6F6F600E6E6E6000000
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
      00000000000000000000FEFEFF0028CAF90000AEF50000AEF50000AEF50000AE
      F50000AEF50000ABF40000ABF40000A7F20065D9F90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3F1
      FA000065D70036DFFB00AFF6FE00E1FEFF00C3F5FE009DEDFE0053DAFB0024C9
      F7001CBDF20018B6F10010A8ED000CA3EC002BD4FA000FA6EC00006EDC000065
      D700005DD000004BC90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB00F3F3F300DFDFDF00DFDFDF00E0E0E000E1E1E100E3E3
      E300E4E4E400E4E4E400E5E5E500E6E6E600E6E6E600E8E8E800E9E9E900EAEA
      EA00ECECEC00EDEDED00EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDEDED00EDEDED00ECEC
      EC00EAEAEA00E9E9E900E9E9E900E8E8E800E6E6E600E5E5E500E5E5E500E4E4
      E400E3E3E300E3E3E300E1E1E100DFDFDF00DFDFDF00F5F5F500E6E6E6000000
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
      000000000000000000000000000000000000FEFFFF0078E0FA0000B3F60000A7
      F40000A7F40030CDF900C9F2FC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000062D600006CDA003CE9FF00E7FCFF00E3FCFF00CAF6FE002FD7FB0027D1
      FA0023C7F6001BBAF20013AFEE0020C3F50027CFF9000080E500007AE100006F
      DC000068D90087C6F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB00F3F3F300DDDDDD00DFDFDF00DFDFDF00E1E1E100E3E3
      E300E3E3E300E4E4E400E4E4E400E5E5E500E5E5E500E6E6E600E8E8E800E8E8
      E800E9E9E900EAEAEA00EAEAEA00ECECEC00ECECEC00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00ECECEC00EAEAEA00EAEAEA00E9E9
      E900E9E9E900E8E8E800E8E8E800E6E6E600E5E5E500E4E4E400E4E4E400E3E3
      E300E3E3E300E1E1E100DFDFDF00DFDFDF00DFDFDF00F5F5F500E6E6E6000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFECF9000063D6000086E30040ECFF0053EAFE003BE7FF0039E1FC002FD6
      FB0025CDF9001DBFF40016B3F0001AB9F1000091F100008AEC000081E700007D
      E4000072DF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB0000000000EDEDED00EDEDED00EEEEEE00EEEEEE00F1F1
      F100F1F1F100F2F2F200F3F3F300F3F3F300F5F5F500F5F5F500F6F6F600F7F7
      F700F7F7F700F7F7F700F9F9F900F9F9F900FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00F9F9F900F9F9F900F9F9F900F7F7
      F700F7F7F700F6F6F600F6F6F600F5F5F500F3F3F300F3F3F300F2F2F200F2F2
      F200F1F1F100EEEEEE00EEEEEE00EDEDED00EDEDED0000000000E5E5E5000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000092C7ED000065D700006EDC000EA7ED002ED6FB0030D9FB001BBF
      F5000799E8000CA3EC000DA7ED000091F1000092F1000092F100008DED000087
      E900E7EEF9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00F0F0F000DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00E0E0E000E0E0E000E0E0E000E0E0E000E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E0E0E000E0E0E000E0E0E000E0E0E000DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00F0F0F000EAEAEA000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFEFF000068DA000075DF00007DE1000088E4000492
      E700029AF1000092F1000092F1000092F1000092F1000092F1000092F100A6DF
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ECF7FC0052C0
      F60013A3F000059AF200089AF1003BB9F200CDECFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FEFEFE00FDFDFD00FCFCFC00FCFCFC00F9F9F900F7F7F700F6F6
      F600F4F4F400F2F2F200F0F0F000EEEEEE00EBEBEB00E9E9E900E8E8E800E7E7
      E700E7E7E700E6E6E600E5E5E500E5E5E500E6E6E600E7E7E700E8E8E800E9E9
      E900EAEAEA00EAEAEA00EBEBEB00ECECEC00EFEFEF00F0F0F000F2F2F200F3F3
      F300F4F4F400F6F6F600F7F7F700F9F9F900FBFBFB00FCFCFC00FDFDFD00FDFD
      FD00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FEFE
      FE00FEFEFE00FEFEFE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BF6E6000665430006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006051300064513000665432006F593600785F3C0081633C00A170
      4A00B4785400BD7C5E00C7806400CC8367000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FBFBFB00F8F8F800F5F5F500F1F1
      F100EEEEEE00E8E8E800E4E4E400DFDFDF00DADADA00D6D6D600D1D1D100CFCF
      CF00D1D1D100E1E1E100F5F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE00FDFD
      FD00FBFBFB00FAFAFA00F7F7F700F6F6F600F3F3F300EFEFEF00E9E9E900E5E5
      E500DFDFDF00D8D8D800C1C1C100A6A6A600A0A0A000959595008E8E8E008686
      860085858500868686008686860095959500A0A0A000B9B9B900C6C6C600CACA
      CA00CDCDCD00D3D3D300D8D8D800DBDBDB00DFDFDF00E2E2E200E5E5E500E8E8
      E800E9E9E900ECECEC00EFEFEF00F1F1F100F4F4F400F6F6F600F7F7F700F9F9
      F900FCFCFC00FCFCFC00FDFDFD00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FCFCFC00F9F9
      F900F9F9F900FAFAFA00FCFCFC00FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000DE7B61000E510000005800000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000058000000580000005800000059000000590000005600000056
      000000590000005600000058000000590000F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F4F4F400F1F1F100EDED
      ED00E8E8E800E4E4E400E0E0E000DDDDDD00D9D9D900D4D4D400CFCFCF00CACA
      CA00C7C7C700C3C3C300C0C0C000BFBFBF00BCBCBC00BCBCBC00BABABA00B9B9
      B900BABABA00C1C1C100D3D3D300E7E7E700F2F2F200F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F4F4
      F400F4F4F400F2F2F200EFEFEF00EBEBEB00E6E6E600E0E0E000D1D1D100BABA
      BA00A9A9A9009F9F9F009C9C9C009A9A9A009A9A9A009A9A9A00A1A1A100B3B3
      B300CACACA00D9D9D900E3E3E300E8E8E800EDEDED00F1F1F100F2F2F200F4F4
      F400F5F5F500F5F5F500F5F5F500F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD00FBFBFB00F9F9F900F3F3F300EAEA
      EA00D9D9D900B4B4B400A7A7A700B4B3B300BCBCBC00C1C0C100CDCDCD00E2E2
      E200EFEFF000EEEEEE00E2E2E300DBDBDB00D3D3D300C7C7C700B3B3B3009B9B
      9B007D7D7D005F605F00444444002C2C2C001E1E1E0019191900151515001313
      1300131313001313130013131300181818001F1F1F00333333005D5D5D009D9D
      9D00B4B4B400C1C1C100CCCCCC00D3D3D300D8D8D800DDDDDD00E2E2E200E8E8
      E800EBEBEB00F0F0F000F4F4F400F7F7F700FBFBFB00FCFCFC00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00F8F8F800F3F3F300EFEF
      EF00F4F4F400F7F7F700F9F9F900FBFBFB00FEFEFE0000000000000000000000
      000000000000000000000000000000000000E0786B00144F0100005900000059
      0000005900000055000000560000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005A00000058
      000000580000005900000059000000590000F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200EBEBEB00DADA
      DA00C9C9C900C0C0C000BDBDBD00BABABA00B9B9B900B6B6B600B6B6B600B5B5
      B500B5B5B500B5B5B500B3B3B300B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B9B9B900C7C7C700DDDDDD00EEEEEE00F4F4F400F4F4
      F400F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F4F4F400F2F2
      F200EEEEEE00E6E6E600D9D9D900CACACA00B7B7B700999999007B7B7B007777
      770089898900959595009E9E9E009F9F9F00999999008C8C8C007C7C7C006565
      6500666666008A8A8A00AEAEAE00C1C1C100D0D0D000DFDFDF00EAEAEA00F1F1
      F100F2F2F200F2F2F200F2F2F200F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FDFDFD00FAFAFA00F3F3F300E7E7E700D3D3D300AAAA
      AA00A3A3A300BDBDBD00C1C1C100C6C6C600CACACA00CFCFCF00D3D4D400E2E2
      E300F1F1F100F0F0F000E3E3E300DBDBDB00D4D4D400C7C7C700B4B4B4009B9B
      9B007F7F7F005F5F5F00454545002C2C2C001F1F1F0019191900151515001313
      130013131300121212001313130014141400171717001B1B1B00222222002626
      26005353530085858500A3A3A300B6B6B600C1C1C100CACACA00D1D1D100D8D8
      D800DDDDDD00E5E5E500EAEAEA00F0F0F000F4F4F400F9F9F900FBFBFB00FEFE
      FE00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FCFCFC00F7F7F700EDEDED00E2E2E200B8B8
      B800121211002A2A2A0091919100E8E8E800FBFBFB00FEFEFE00000000000000
      000000000000000000000000000000000000E0786E00144F0300005900000059
      0000005900000056000000560000005600000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      000000580000005800000058000000580000005800000058000000590000005A
      0000005900000059000000590000005900000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200DDDDDD00CACACA00C1C1C100BFBFBF00C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C3C3C300D1D1D100E7E7E700F9F9F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F900E8E8E800CFCFCF00AFAFAF00969696009C9C9C00B7B6B700D7D7
      D900EAE8EA00EDE8ED00E7E1E700E3DDE400E3DDE400E4E0E400E0DFE000D0CF
      D000AAAAAA008B8B8B00898989009F9F9F00BCBCBC00D9D9D900EFEFEF00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00F7F7F700ECECEC00D1D1D100AAACAC00A4A4A600B1B1
      B100BABABA00BDBDBD00C3C1C100C6C6C600CACACA00D0D0D000D5D5D500E3E5
      E500F3F3F300F1F1F100E5E6E600DCDCDC00D5D4D400C9C9C900B7B7B7009E9E
      9E008282820061616100474847002E2E2E001F1F1F0019191900151515001313
      130013131300131313001313130014141400171717001B1B1B00232323003333
      330048484800555555005D5D5D007D7D7D00A3A3A300B3B3B300BFBFBF00C6C6
      C600CCCCCC00D4D4D400DCDCDC00E5E5E500EBEBEB00F1F1F100F5F5F500FBFB
      FB00FCFCFC00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FBFBFB00F6F6F600EAEAEA00DBDBDB00CBCBCB003E3B
      3A00171616000D0D0D000B0B0B00101010008080800000000000FEFEFE000000
      000000000000000000000000000000000000E0786E00144F0300005900000059
      000000590000005A000000600000005F00000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      000000600000006000000060000000600000006000000060000000630000005C
      000000580000005900000059000000590000F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100EFEF
      EF00E7E7E700D7D7D700C6C6C600BCBCBC00B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B9B9B900C1C1C100D3D3D300E6E6
      E600EFEFEF00F1F2F200F2F2F200F2F2F200F2F2F200F4F4F400F2F4F200F1F2
      F100EAEAEA00D9D9D900B7B6B700A1A1A100B3B3B200D6D6D700E1DDE300D4CF
      D400B3B3B300919F910081958000788E770082948100919E9100B3B2B300D4CF
      D400E4E0E400D4D4D400ADAEAD0098999900A9A9A900C6C7C600DDDDDD00EAEA
      EA00EFEFEF00F1F1F100F1F1F100F1F1F1000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FCFCFC00F7F7F700EAEAEA00BCBCBC008C8C8C00A1A1A100ADACAC00B4B4
      B400B9BABA00BFBFBD00C3C3C100C7C7C700CCCCCC00D0D0D000D5D5D500E5E5
      E600F4F4F400F2F2F200E7E8E700DDDDDD00D4D4D400CACACA00B7B7B700A1A1
      A000838383006464640048484800303030001F1F1F001A1A1A00151515001313
      130013131300131313001313130014141400161616001B1B1B00222222003333
      33004949490063636300777777005B5B5B006363630094949400ACACAC00B7B7
      B700BDBDBD00C4C4C400CCCCCC00D5D5D500DFDFDF00E8E8E800F0F0F000F5F5
      F500FAFAFA00FCFCFC00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FBFBFB00F5F5F500E9E9E900DADADA00C9C9C9009A9A9A004B47
      47001514140013131300090909000B0B0B000B0B0B003D3D3D00000000000000
      000000000000000000000000000000000000E0786E00144F0300005900000058
      0000007000000C832900268A1E002C8A1C002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100238B1E001183
      270000791500006300000059000000580000F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F2F2F200E6E6E600D1D1D100C0C0C000B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B9B9B900B9B9B900B9B9B900C0C0C000D1D1
      D100E7E7E700F7F7F700FBFBFB00F8F8F800F5F5F500F1F1F100EAEAEA00DCDD
      DD00C9CACA00A9A9A900A3A3A300BCBCBC00D9D7DA00D0CCD00085948400356B
      2E0014620C000C6903000B7402000B7701000C7302000C69040018641000406F
      39008F9B8E00D4D0D600DFDDDF00CAC9C900BDBDBD00D7D9D900E7E8E800F2F2
      F200F7F7F700F8F8F800F8F8F800F8F8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00FBFB
      FB00F0F0F000C1C1C1005C5C5C007979790091929100A3A1A300ADADAD00B4B4
      B400BABABA00C0C0C000C3C3C300C7C7C700CDCDCD00D1D1D100D8D8D800E6E6
      E600F5F5F500F5F5F400E8E8E800DFDFDF00D8D8D800CDCDCD00BCBCBC00A7A7
      A700898989006C6A6A004F4F4F0036363600232323001B1B1B00171717001515
      15001313130013131300131313001414140015151500191919001F1F1F002C2C
      2C00444444005F5F5F0076767600888888008888880057575700696969009898
      9800B0B0B000B4B4B400B7B7B700BABABA00C3C3C300CDCDCD00D9D9D900E3E3
      E300EEEEEE00F5F5F500FAFAFA00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FAFAFA00F3F3F300E7E7E700D7D7D700C5C5C500B5B5B5003C3A39002323
      2200151515002222210024232200111111000A0A0A00090909006F6F6E000000
      000000000000000000000000000000000000E0786E00144F0300005900000055
      000060BA7700DBF4EB00C2EDD000C5EECB00BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800C2E9D000D3F4
      E700C5EAC400007A0E0000580000005800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700E4E4E400D1D1D100C4C4C400C0C0
      C000C0C0C000C1C1C100C1C1C100C1C1C100C1C1C100C3C3C300C3C3C300C4C4
      C400C4C4C400C4C4C400C3C3C300C3C3C300C0C0C000BCBCBC00B7B7B700B3B3
      B500B7B7B700BCBDBF00B9BABC00A9AAAB009596990086878700777777006867
      66005554510077757500B9B7B900D9D4D900B3B6B30041723A000E6603000D81
      0000169B06001CAD0C001EB510001FB611001FB510001CAD0C00169B06000C7F
      000011650700537A4D00C6C4C600E7E3E600CDCDCD00E1E1E300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC00F6F6
      F600E5E5E500898989005F5F5F007C7C7C0094949400A4A3A300ADADAD00B4B4
      B400BABABC00C0BFC000C4C4C400C9C9C900CACCCA00CACACA00C1C1C100C0BF
      BF00C0C0C000B0B0B000A0A0A00098979700929192008E8E8C00888886008282
      8000797979006F6F6F006363630055555500484848003A3A3A00282828001F1F
      1F001A1A1A0014141400121212001313130015151500181818001F1F1F002B2B
      2B00414141005C5C5C0076767600888888008C8C8C006D6D6D00434343008686
      8600ADADAD00B7B7B700B7B7B700B9B9B900BCBCBC00C4C4C400CFCFCF00DBDB
      DB00E6E6E600EFEFEF00F6F6F600FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00F9F9
      F900F2F2F200E4E4E400D3D3D300C1C1C100B1B1B100838383004F4C4E001312
      12001D1C1B002D2B2A0022222000282826001D1D1D0015141400CAC8C800FDFD
      FD0000000000000000000000000000000000E0786E00144F0300005C00000058
      00008AC99B00006A0300006D0000006A00000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000006F00000C81
      3C00EAFBFF0000762400005A000000580000EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EFEFEF00EFEFEF00EBEBEB00E0E0E000D0D0D000C0C0
      C000BAB9BA00B9B7B900B9B7B700B7B7B700B6B6B600B3B3B300AFAFAF00AAAA
      AB00A3A3A300999A9A008E8F8F0082838400777879006B6B6B00606060005656
      56004F4D4D00514D4A00544E4800564E4700564C4200564940005A4A40005B48
      3B0073665E00A3A0A000BDB9C00098A0960025671D00107402001F960B0024A8
      110027A9180036A8260046AB3A004EAD430043AB380032AD23002CAF1B0028A9
      16001D950B0011720400316D2700A8AEA800CCC7CC00B0B0B000DFDFDF00F1F1
      F100EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FBFBFB00F3F3
      F300D5D5D5006D6D6D00616161008080800098989700A6A4A400ADADAD00B4B4
      B400BCBABA00B9B9B9009D9D9E007070700043434300414141004F4F4F007070
      70008888880095959400949492008988860083827F00827F7D008B8988009A98
      9700A7A6A600ADADAD00B0B0B000B0B0B000AFADAD00A7A7A70095959400807D
      7C006A6964005B595500504F4C002F2E2E0022222200181818001D1D1D002828
      28003F3F3F005959590074747400898989009292920085858500323232007979
      7900B0B0B000BDBDBD00BCBCBC00BCBCBC00BDBDBD00C0C0C000C7C7C700D3D3
      D300E0E0E000EAEAEA00F3F3F300F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F9F9F900EFEF
      EF00E2E2E200D1D1D100BEBEBE00AFAFAF00ACACAC0049454500242323001A19
      18002A2726002D2D2B002726260021202000161516005151510000000000FDFD
      FD0000000000000000000000000000000000E0786E00144F0300005D00000071
      000075C07A00005500000058000000590000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A00000071
      0E00D5F7ED00037E1C00005A000000560000FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FEFCFC00FEFEFE00FEFEFE000000
      000000000000FFFEFE00FBFBFB00F8F7F800F7F1F500EFE8EE00DFD4DD00C3BA
      C100A8A4A80099969900908D90008483840077777700676768005A5A5A004D4D
      4D00454242003E3A38003A3431003A322F003A312A0041362C0045362C004D3A
      2F00503D2F00564132005E46370061493800654D3900664E3D00684F3E006F59
      4A00918E8C00AFADB00096A19600165E0C00056F0000159400001A9A04003A9B
      250077A16D0098A39100A3A39E00A6A4A100A1A39B0094A08E0054A4460021B5
      10001EA8090015930100046C00001E621600AFB6AF00B7B5B700AFAEAE00F8F8
      F800FCFCFC00FCFCFC00FCFCFC00FCFCFC000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FAFAFA00F0F0
      F000CCCCCC006161610069696900858585009A9A9A00A3A3A1009B9B9B008080
      8000605F5F00434343005051500080808000ACACAA00BDBFBD00BCBCBA00B4B4
      B400ADAAAA00A09B98009D948900B3A18F00867D74006D66630074706C008582
      7F0094929100A09D9D00A3A3A100A7A6A600AAA9A900A3A1A100928F8E007773
      700064605C005F595400605B5700635F5B0063605C0064605C00504F4C004341
      40004444440057575700717171008B8B8B00989898008F8F8F004B4B4B007A7A
      7A00B3B3B300C6C6C600C6C6C600C3C3C300C0C0C000C1C1C100C4C4C400CDCD
      CD00D8D8D800E5E5E500EFEFEF00F6F6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FCFCFC00F7F7F700EEEEEE00E0E0
      E000CECECE00BCBCBC00ADADAD00A2A2A200767575005553500015141400211F
      1F003C383700292726002D2B2B001D1D1D0017171700C6C5C500FAFAFA00FEFE
      FE0000000000000000000000000000000000E0786E00144F0300005D0000067C
      000069BC6A000058000000590000005C00000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005A00000073
      0900BDF4D80006831500005A0000005600000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFF00FFF5FE00F9EE
      F800EEE4EE00E0D4DF00CAC0CA00B0AEAF0099A19900829684006D9071005189
      590038894200278032003550370046373A00463A3800463A35004D3E36005342
      3800584639005E493E00614A4000684F43006B5345006C5547006F594900725C
      4E00776153007A6659007F6B5F008372650087776B008D7C71009A867900998F
      8A009C9C9F00B0AFB20032712800076C00001A910200209309006FA55E00B9B6
      B600C4B5C100BCAFB700BAADB500B7A9B200BFA9B900A0A89C004FB9450031CC
      1D002DB9160025A50C001B910400086800004E7F4600C3C0C4009F9E9F00D3D3
      D300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F9F9F900EFEF
      EF00C7C7C700595959006F6F6F00888888008C8E8C006A696A006C6C6C008B8B
      8B00A3A3A300B9B9B900C0C1C000C0BFC000BDBCBD00B7B6B600B0AFAD00A9A4
      A000AC9B8B00B9A08500CFB39500D7BCA000C1B09D0057504B005C5550006761
      5D0077736F0083807D008B8885008F8C8B00918E8C00898885007A7471008274
      6700796A5D0073665B005F574D004F484300504B4500544F490058534D005C57
      5400605D5B00605C5B0064646100807F7F009B9B9B009A9A9A00797979007F7F
      7F00BDBDBD00CCCCCC00CCCCCC00C9C9C900C6C6C600C4C4C400C7C7C700CCCC
      CC00D5D5D500E1E1E100ECECEC00F4F4F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FCFCFC00F7F7F700ECECEC00DFDFDF00CECE
      CE00BBBBBB00ADADAD00A2A2A200A5A5A5005A575600252424001C1C1B003531
      300035313000302E2E00252424001A1A1A0056545400FCFCFC00FCFCFC000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000EDEDED00EDEDED00EDEDED00F1EE
      F100FCF4FB00F7EBF500E0D1DF00BDB5BD00A1A8A3008D9E8E007C9980006795
      6C00549C5B00429E4A0035A33E0027A1320021A12A0019A3230013A61E0011A4
      1D0010A01C000E9A1B00138A1D003F6B3200725B4F0072584D006F5A4D00735E
      5300786456007B685E00806E6400857469008A796E008C7C73008F8177009383
      7A0094847E0094857F0095878000998981009F8F8600AD9A9000AE9E93008C8A
      8A00A09CA100698B6500095F0000188402001F85090083A37700C7BAC700B9B0
      B600B9B0B600B6ADB300A4A6A100A0A49E0085A5840042BF3F0035D4290037C7
      220034B71A0027A40E001F900600188303000E5F010083997F00A4A0A4009A99
      9900E8E8E800EEEEEE00EDEDED00EDEDED000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00F7F7F700F0F0
      F000BCBCBC007D7D7D00707070007F7F7F00BDBDBD00C3C3C300C9C9C900C7C6
      C700C6C6C600C0BFC000B3B0AF00ACA19500B0988000B6957300BA987300C7A9
      8800D7BDA100D8C0A400D7BFA300D5BAA000DBC0A400CFB9A100635950004F48
      410058514B00615C5500645F5900645D570082716100A48B6D00B1947600B79A
      7C00BC9E8200C0A48800C4AA8E00CAB09700D7C3AD00DBCAB600CCBCAA00A094
      8800706760005D57510058534C0057534D0057534F00514F4D005D5D5D007F7F
      7F00CDCDCD00D3D3D300D4D4D400D4D4D400D1D1D100D0D0D000CFCFCF00CFCF
      CF00D5D5D500DFDFDF00E9E9E900F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FCFCFC00F6F6F600ECECEC00DDDDDD00CCCCCC00BBBB
      BB00ADADAD00A3A3A3009D9D9D00717070005654530017161600242324004643
      4300302E2D00353333002020200017161600D7D7D700FBFBFB00FEFEFE000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000000000000000000000000000F1FB
      F200ADE1B60080CD8A004CAD580029A0380020AA2A001AB7230014C91F0012CF
      1D0011D31D0011D11C0010CF1A000EC91A000EC11A000CB918000BAF18000AA8
      1600089E130006951300028E100002820D002C772800958B7900A48A83009986
      7F0098897F0099897F0096897F00968A7F00998980009A8A81009A8A80009987
      7E0096857A0095827700988375009C847400A6867300B28C75009C8A7E008786
      8B00A0A6A00018640F00016500000B79000062994900DDD1DD00C9C4C900CCC3
      CA00A0B59C0060B25A0045C7430043D3460037DA39002FEA29002EDA22002ACC
      180022B70A00429A2400428C25000E7E0000006100002C722200AFAFAF008987
      8A00DADADA000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00F9F9F900F2F2
      F200B4B4B4006A6A6A0055555400575757008F8F8F00D3D3D300D8D8D800CACA
      CA00C3C3C300B4AAA000B0927100B38F6900B7946F00BC987300CAAC8B00DCC4
      A900DBC3A900D9C1A700D7C0A400D4BA9D00D3B69700DBC1A700988877004C44
      3F0050494300554F49005F574F00957A6000A7896A00AC8E6F00B0947400B69A
      7C00BC9E8200C0A48600C4A98C00CAB09500D7C3AD00DCC9B600DDCDBA00DFCF
      BC00D3C3B1008B7F73006A635C00635D5800615B57005C585500494744004D4D
      4D00C3C3C300D4D4D400D7D7D700D5D5D500D3D3D300D1D1D100D0D0D000D1D1
      D100D7D7D700E1E1E100EBEBEB00F4F4F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FBFBFB00F5F5F500EAEAEA00DBDBDB00CBCBCB00BABABA00ADAD
      AD00A5A5A5009F9F9F009D9D9D00625E5D00242322001F1E1E00403E3B00403C
      3B003B3C3B002A2928001C1B1C005E5D5B00FEFEFE00FEFEFE00000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FBF9FB00FBFBFB00FCFBFB00ADDD
      B500089618000BA91A000EBF1D0014D122001ADA26001DDF29001EDD2A001ED9
      2A001DD429001DD029001DCA28001DC426001ABD250018B6240016AF220014A8
      1F0013A01F0011981D000E901B000B89180006801300318A3900B3B29B00D6B5
      AE00BCA59B00AF998E00A48E8100998474008E796800846C5C007C625100785C
      4800795A43007E5C450085624900916F58009E7A6100956F540091857E009591
      9900879F8400095A00001179000027801100C7CFC100DAD3D900D9D0D9009CB6
      93003BB0290032D726003BE834003DEB39003DE838003DDD31003AD3270035CA
      1B0030A4180098A48F00ABA9A500277E11000E770000126106009CAB9B00908C
      9000B7B7B700FBFBFB00FBFBFB00FBFBFB000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FAFAFA00E3E3
      E200838383005D5C5C006D6D6D008C8C8C0097979700A1A0A100B9B9B900BAB7
      B300B69A7C00B18C6400B48F6900B7956F00BF9D7900D1B49700DDC7AF00DCC6
      AA00DBC4AA00D9C3A900D8C0A700D3B79B00CAAC8B00D3B79A00D5BDA4006359
      500050473F006F5D4C00977A5D00A4856400A7886900AC8E6F00B0927400B698
      7A00BA9D8000BFA38600C3A98B00C9AF9500D7C3AC00DBC9B600DDCDBA00DFCF
      BD00DDCDBA00D1BDA600A9947F008B7D70007F7971008B8682007D7A77004C4B
      49009D9D9D00D1D1D100D5D5D500D5D5D500D3D3D300D1D1D100D1D1D100D5D5
      D500DBDBDB00E5E5E500EFEFEF00F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FBFBFB00F4F4F400EAEAEA00DADADA00CACACA00BABABA00AFAFAF00A7A7
      A700A2A2A200A0A0A00075747400545150001B1A1A002A282A0054504E003739
      34003C393900262424001B1B1B00ECECEC00FEFEFE0000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000EFEEEE00EEEEEE00F2EFF2009FD4
      A800059B15000DB01D0013BD210018C724001ACF25001BD126001CD026001CCD
      25001ACA25001BC625001AC0240018BA220017B5220015AD200013A61F00119F
      1D000E981B000D8F1A000C8918000A821600087B1500006E0D0011721B007180
      4E00AA7B65009975600096776000967B6700967F6E009683770098897F009F93
      8C00B0A8A100C4BDB700D7D0CC00DFDDDC00E1DCD600A99385008F8D8D009996
      9B0056855000015100000968000068985300E6DDE800D7D0D700AABCA3002D9E
      160029C3150035C9210036CD250037D0280036CF260035C7220032C31D0026AA
      11006F996000B3A6B000B3A6B0008094730011690000045600006F936C009591
      960099999900EFEFEF00EEEEEE00EEEEEE000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F3F3F300DDDD
      DC006A69690083828300A7A7A600A4A3A3009D9B9B00979595008B8B8B00A48B
      7300B38C6600B4916A00B9957000BD9B7700D7BFA100E1CAB000E0CAB000DDC7
      AD00DCC6AC00DCC4AC00D9C3AA00D0B49800C6A68500CDAF9100D4BCA000CDB9
      A0008C7158009A7A5900A07F5D00A3836100A7866700AC8C6D00AF917100B397
      7900B99B7F00BFA18300C1A68900C7AD9400D5C1AC00DBC9B400DDCCB900DFCF
      BD00D8C6B300D9C7B100C3AD9400BCA48900BAA48E00A9A09A00ADAAA7008B88
      85009D9B9A00B7B7B600D4D4D400D3D3D300D1D1D100D3D3D300D5D5D500D9D9
      D900E0E0E000EAEAEA00F2F2F200F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00FAFA
      FA00F4F4F400E8E8E800DADADA00CACACA00BCBCBC00B1B1B100A9A9A900A5A5
      A500A3A3A3009C9C9C00625E5D0021202000222020004B4746004A4645004544
      43002F2D2D001D1C1C006A696700000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000000000000000000000000000A9E3
      B50000A30F0008BA18000DC71D0011D41F0014DC210015DD210015DA210014D7
      1F0013D31E0012CD1D0010C61A000EBF1A000CB718000BAE17000BA8170009A1
      1600099B16000794140003850E00017E0D0000750C00006D0A0000620500004D
      000056834800F2F1EA00FBF1F100EFEFEF00EFEFF100EAEBED00E4E6E700E4E6
      E700EAEDED00EEF1F200EDEEEF00EBEEF100EDE6E100A48B7B0087838300A4A4
      A5002F742600014A00000F5C0000A1BF9800F9F4FB00F4EBF50077A465002294
      0B002CB3130028C4130029CA17002CCD18002CCC17002AC7140021BA0900439C
      2700B6B2B200B9AFB300B3ABAE00BDB0B900437C2E0000400000548B4D00A6A3
      A800939193000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1E1E000E8E7
      E600B6B6B400B7B6B400B1B0B000ACAAA900A3A1A100AAA6A100DDD1C100BA97
      7100BA977100C3A48200E0CAB300E6D3BD00E5D1BA00E1CFB600E1CCB400DFCA
      B100DDC9B000DDC7B000DBC6AF00CDB09200C6A68500C9AA8B00CDB09400D3B7
      9D00C4AA8C009D7C5B009E7C5B00A1806000A4856400A9896900AD8F6F00B194
      7400B4987A00BA9E8000BFA38600C4AA8F00D3BFA900D9C7B100D8C7B000DBC9
      B600DBCCB700DCCAB700DCCAB400D9C6B000DCC9B300DBC7B300B3AFAA00BCB7
      B400A7A4A100AAA9A700C6C6C600D3D3D300D7D7D700D9D9D900E0E0E000E6E6
      E600EEEEEE00F4F4F400F9F9F900FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD00FDFDFD00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FAFAFA00F3F3
      F300E8E8E800DADADA00CBCBCB00BDBDBD00B3B3B300ADADAD00A8A8A800A6A6
      A600A8A8A80076747400555150001D1C1C00373333005B57570041413E004341
      4100292627001F1F1E00F0EFF000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F7F7F700F7F7F700F8F7F800A9DD
      B2000CA91D0015BF24001ACA29001ED42D001FD92D0020D72D0021D32E0022D3
      300027D337002ED43E0036D3450039CD490039CD4A0038CD4A0032C6450029BF
      3B0022B731001CAF2800149C20000C8319000B79180009741600086D15000465
      110000560D004A8E5B00E3EEEA00F9F2F900E7E6E700E8E7E800E8E6E700E8E6
      E800EAE7EA00EBE8EA00EEEAED00F1EDF100F5E8E700AE9385008A868500A5A9
      A60036712D00A0BD9800D7DDD300E3E6E300E7E6E700E3E1E300C9CFC300CCD3
      C70065AA4D002AAF110035BA1A0036BC1A0036BA1A0031B91600359E19009EAD
      9500C4B9C400B6B2B200B3AEAF00B9AFB500ABABA50015550B0043823D00A9A6
      A900908F9000EFEFEF00F7F7F700F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFDFDC00E6E5
      E300DBD9D900B9B9B700B1B1B000ACAAAA00A6A4A300D5C9BC00E5D7C700BC98
      7400CAAC8E00E8D5C100E8D7C000E6D3BD00E5D1BC00E2CFB700E1CDB600DFCA
      B300DFCAB300DDC9B000D9C3A900CAAD8E00C6A78600C7AA8B00CCB09200D0B6
      9A00D3BAA000A68564009D7C5B00A1805F00A3836300A7886900AC8C6D00B092
      7300B4977900BA9D7F00BFA18500C4A98E00D3BDA900D8C6B000CDB7A000D4C0
      AA00DFCDBA00DFCDBA00DDCDB900DCCAB400DCC9B300DBC7B100C4BAB000BAB7
      B300A6A3A000A9A6A400C4C4C400D8D8D800DCDCDC00E2E2E200E8E8E800EEEE
      EE00F4F4F400F7F7F700FBFBFB00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00F4F4F400DFDFDF00E2E2E200F2F2F200F8F8F800FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00FAFAFA00F3F3F300E8E8
      E800DADADA00CCCCCC00C0C0C000B6B6B600B0B0B000ABABAB00A9A9A900A8A8
      A800A3A2A200656160001E1D1D002625250056504F00504E4D004B4847003534
      33001E1D1D007573730000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000058000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005800000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000590000067F1F000C832A000C85
      2900005800000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F1F2F200F2F2F200F5F2F5009FD9
      A80005A6140011B91F0015C0210018C424001FC72C0027CC380037D4470042DA
      54004CDA5E0049D65C003DCA4E002DBF3F001FB02D0016A621000E9F1A000999
      150006961200069511000B9F16000C9B1800057A110001660D0001620D00005B
      0C0000540900003F00000D561A00A8C6AF00FCF8FC00F7F4F500F4F2F200E8EB
      EA00DFE3E000D7DDD900C1D0C600AAC1B30099AF9800677153007E7C7B00A8A6
      A8001E5F1800487E3D0000000000EEEDEE00E6E6E600E1E1E300F2EAF400BACA
      B200278C0E0023A3060026A50B0026A60C0026A60B001F9B04006EA05600D0C4
      CF00B7B5B300B5B2B200B0AEAE00B2AEAF00C6B9C10068845E003B743600A1A1
      A3008C8B8C00EDEDED00F2F2F200F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDDCDB00E5E3
      E200F0EFEE00CDCCCA00B3B1B100ADADAA00CFC3B700E5D9CC00E3D5C600D3B7
      9A00E8D5C000EAD9C600E9D7C300E6D4BF00E6D3BD00E3D0BA00E1CFB900E1CC
      B600DFCAB400D9C1A900C9AA8B00C4A68500C7A98900C9AC8C00CCAF9100CDB1
      9700D3B9A000C6AA8E009B7A5900A07F5D00A1826100A6866600A98B6A00AF8F
      7100B3957600B69A7C00BC9E8200C1A68B00D1BCA600D0BDA600C1A98F00C7B1
      9A00D1BFA700D8C6B100DCCAB600DBC9B300DBC7B100DBC7B100D1C3B100B9B4
      B100A7A4A000A6A3A000C9C7C700DFDFDF00E5E5E500EBEBEB00F0F0F000F5F5
      F500F9F9F900FBFBFB00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00E8E8E8006E6E6E00CDCDCD00ABA9A70081808000DCDCDC00EDED
      ED00F8F8F800FDFDFD00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00F9F9F900F2F2F200E7E7E700DADA
      DA00CDCDCD00C1C1C100B8B8B800B4B4B400B0B0B000ADADAD00ACACAC00AEAE
      AE0083838300514F4D00201E1E003D39380064606000484645004C4A48002E2E
      2B0023222200E8E8E80000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC690000590000005900000059000000560000005D0000006D0000006D
      0000006D0000006C0000006C0000006C0000006C0000006C0000006C0000006C
      0000006A0000006C000000640000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000AFDFBA00BDEAD400BFF0
      D100005600000058000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000000000000000000000000000C9EF
      CF0012A51F0001A00D00059F1100089E1300099E16000A9C17000BA117000AA3
      1600069E110003990E0000980B0000980A0000990B00019A0C00029B0C00039C
      0E00039E0E00049E0E00039C0E0005A1100009A4150004801000005B06000055
      0600004F0500004804000037000000450B004C895B00427C50002C6B3B001A59
      25000C47190005380F00002A070000220100001B0000001F00006C776F00B5AF
      B5002A732500002A0000A3BF9B0000000000FCFCFE00FCFBFE00FBF9F9004E95
      2C001C93000025A0060027A3080027A4080027A40800259F05003B981900428A
      22008FA68100D6CFD600D3CAD100839A7A001F5F12000846030058895100ABA8
      AB00999999000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00DDDCD900E3E2
      E100F6F4F400EEECEB00CACAC900C6BFB900E5D8C900E8DDD100E9DFD300DBC4
      AC00D5C0A700E3D0BA00E8D7C100E7D5C000E6D3BF00E3D1BC00E2D0BA00E0CC
      B600DBC6AD00C7A68500C3A18000C4A48500C7A98900C7AA8C00CAAD9100CCAF
      9200CFB39800D1B79D00AA8B6A009E7D5C00A1806000A4856400A9896900AD8F
      7000B1947400B6987A00BA9D8000C0A48900CFB9A100BFA48B00BCA38900C0A9
      8F00C7B19A00D5C1AA00DCC9B400DBC7B300DBC7B100DBC7B100DBC7B100BAB6
      B100ADAAA600A6A39E00CFCDCC00E8E8E800EEEEEE00F2F2F200F6F6F600FAFA
      FA00FCFCFC00FEFEFE00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00F9F9F9009E9E9E0000000000FCFCFC00D1D3D600AC9D9200A1998F007D7C
      7C00DFDFDF00EEEEEE00F9F9F900FDFDFD000000000000000000000000000000
      000000000000FEFEFE00FDFDFD00F8F8F800F1F1F100E7E7E700DBDBDB00CECE
      CE00C3C3C300BCBCBC00B7B7B700B4B4B400B2B2B200B1B1B100B2B2B200B6B6
      B6006A646300201F1E002D2A28005F5B590059555400504E4C003C3B38001F1F
      1F00828181000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005600000C7E1F00EFEECF00C7F3
      EF00C7F3EE00C5F1ED00C5F1ED00C5F1ED00C5F1ED00C5F1ED00C5F1ED00C5F1
      ED00C2F0EE00B4E7D6004CAF3500005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000CCECE400D3FBFD00C7FC
      FA00005C000000600000005C0000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F2F2F200F2F2F200F2F2F200F7F4
      F700B2D0AF002E8D2E000E8D18000B8F16000C9117000B9117000B9117000E99
      18000FA11A0010A31A0010A11A0011A11B0011A31A0011A31A0011A31A0011A3
      1A0011A31A0011A31A0011A31A0010A11A0011A41B0019AE2400169022000660
      130003530E0004541100044E0F0000430A0000350300002F0200002A02000029
      020000280300002804000027040000290500002A0600002907005C736400B0A9
      AF00628D5E00014300002A6D1D00E3E8E100F5F4F500F9F7FB0094B685002886
      0B00379A13003A9B16003A9E16003B9F17003B9F16003A9E16002D980C003185
      1400B3BFAA00D3CCD100D9D0D7005B8A4900095B0000004500007C9B7A009B99
      9C00A6A6A600F4F4F400F2F2F200F2F2F2000000000000000000000000000000
      00000000000000000000000000000000000000000000E9E8E800EBE9E800ECEB
      EA00F9F7F600F6F5F400F4F3F100F0E9E500EEE6DD00EEE6DD00E8DDCF00D3BC
      A300D3BCA300D3BCA300D1B9A000CCB39800E3D0BA00E1CCB600D3A48000BF98
      7100BA957100BD9A7600C09D7A00C09E7C00C1A07F00C1A18000C4A48300C4A6
      8600C6A68600C4A48500C3A38300A38360009E7D5C00A1826000A6856400A98B
      6A00AD8F7000B1947400B4987A00B79A7C00B1987C00B69D8000BAA18800BFA6
      8C00C4AD9500CCB7A000D0BDA400D3BFA600D8C3AD00D8C4AD00D8C4AD00D0C1
      B300C0BCB700A9A4A000CFCDCC00F5F5F500FBFBFB00FCFCFC00FDFDFD00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00C7C7C700E3E3E300F0F0F000DDDDDD00B3B5B800BDAC9C00AF9F9300B5A5
      9800978D85008C8C8A00DADADA00F1F1F100F9F9F900FEFEFE00000000000000
      0000FEFEFE00FCFCFC00F8F8F800F0F0F000E5E5E500DBDBDB00CFCFCF00C6C6
      C600C0C0C000BABABA00B8B8B800B6B6B600B5B5B500B6B6B600BCBCBC008884
      84004B49470022212000423E3D00706B68004F4D4C004F4E4D00313130002524
      2300F3F3F3000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005800000C802D00DDFBF000D5FF
      FE00D5FFFE00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FF
      FD00D3FFFF00BFF4E20057B53F00005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000CFEBE600D3FFFF00C7FF
      FF00005D0000005F0000005A00000059000000580000005A0000005A0000005A
      0000005A00000059000000580000005800000059000000590000005900000073
      0700B4F5D500038414000059000000560000F5F7F500F7F5F500F5F5F500F7F7
      F800F2DDE000AA917F003DA93A00069E1200038F0E0005930F00059310000591
      100005941000079C110009A3130008A3120008A1110008A1120008A1120008A1
      120008A3120008A1120008A1120008A1120008A1110007A1110010B01B0019A8
      250001600D0000390100003D04000038030000320200002E0100002900000025
      00000023000000210000002000000020000000200000001A0000295335009E96
      9E008BA48A000C5605000B5B00005E8D4D0000000000D1DDCA002A7B1100298C
      0C003190110035931100359611003496110034961000298E09002D8210009FB7
      9100E6E0E700DDD6DC00C1C9BD00266F160012670400135C0C009CAF9C008A86
      8A00C3C3C300F7F7F700F5F5F500F5F5F5000000000000000000000000000000
      00000000000000000000000000000000000000000000E5E5E300EEEAE800F0EF
      EE00FBFAF700F9F6F500F6F4F200F1EEE900EEE6DD00EEE6DD00E6D9CC00D3BC
      A300D3BCA300CDB39A00B99D7F00B0917300E0CCB300D8AC8600C0592200B98C
      6100BA8F6600BC8B6100BD855900BD7F5400BC7D5000BC825700BF977300C09E
      7C00C09E7C00BF9D7A00BF9B7900B18F6F00A07F5D00A1805F00A4856300A989
      6900AC8E6D00B0927300B4957600B1916F00B49A7C00B69D8200BAA18800BFA6
      8C00C3AC9400CDB7A100D9C6B100E1D0BD00E1D0BD00DDCCB600DBC7B100D3C4
      B300C4BFBA00ADA9A300CDCAC700F5F5F500FCFCFC00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00F7F7
      F700A7A7A700FCFCFC00F4F4F400F3F3F2009D968F00D4BDAD00C4B5A400BFAD
      9F00AB9B9000BBA89B009489800099969600D6D6D600F2F2F200F9F9F900FCFC
      FC00FBFBFB00F7F7F700F0F0F000E5E5E500DBDBDB00D1D1D100C8C8C800C2C2
      C200BFBFBF00BBBBBB00BABABA00BABABA00BBBBBB00C1C1C100CACACA007270
      6C002221200034302F006B6464005D5A590055515100413E3D00252423009A9A
      9A00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005A00000C832F00D1F9F600D1FF
      FD00D1FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FF
      FD00D5FFFD00BFF3E20064B34500005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000C5EBE700D3FFFF00CFFF
      FF00005A0000005C0000005A0000005800000056000000560000005800000058
      000000580000005800000056000000560000005C0000005A0000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F5E6E300A59B7C0025D4310017DD240010B91C00089E1300079A1300089E
      1300089C1300089C130009A113000BAD16000BAE16000CAD16000CAD16000BAD
      16000BAE16000BAD16000BAD16000CAD16000BAD16000BAE160009AB140011B7
      1C0025C437000E7A1D00003500000032010000320200002E0000002800000025
      000000220000001F0000001E0000001D0000001D000000180000062D10008D8C
      8E00ADB2AD002A712500176D0C00206E1300A6C39C006D9E56002A8511003B93
      1A003E961B003B9619003A9119003D911A0042931E00659F4600BCD4B000F9F5
      FB00EDEAED00FBF5FC0080A472001E710D0017690C003D7A3700B3B7B5009494
      9400F2F2F2000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E3E100EBE8E600F4F3
      F100FDFCFA00FBF9F700FAF7F500F4F1EE00EEE7DD00EEE6DD00E3D7C700D3BC
      A300C9B09500B79A7C00AF8F7000A7886700D3B19400C9672E00C0471400BC50
      1B00BC481500BC3D1000BA340B00B92F0800B62A0600B62A0500B7491800BA94
      6F00BA977100B9957000B9946F00B6926D00B3916C00BC9D7F00BFA08200B192
      7100A9896A00AC8E6F00B1917000BC987400CAAF9200CDB79D00C1AA9100BFA9
      8F00CAB49D00DCCAB600E3D4C400E5D7C400E3D3C000E1D0BC00E0CFB700DCCD
      BA00C7C3BC00B4AFAA00CCC7C300F7F7F700FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F900B3B3
      B300F3F3F300FEFEFE00E9E9E900989DA100DFCCB800DCC6B400CFBBAB00C7B3
      A300C1B4A100BBA79900A8998D00B5A594008E847B0096959400DDDDDD00F0F0
      F000F3F3F300EEEEEE00E6E6E600DBDBDB00D3D3D300CBCBCB00C5C5C500C2C2
      C200BFBFBF00BDBDBD00BEBEBE00C0C0C000C5C5C500CFCFCF00959393004240
      3F00242322004D4847007E76750054515000514F4E00353433002A292900F6F6
      F600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D3FF
      FD0000590000005C0000005A00000067000000802C00148A4A001A8E4D00178E
      4D00178E4D001D8E4D00238F4E001A8C4100005F0000005A0000005900000073
      0700B4F5D500038414000059000000560000EEEEEE00EEEEEE00EEEEEE00EFEF
      EF00E6D4D3009F9A7B0027CA32001FD72A0022D62F001DC4290016AB2100139E
      1D00139E1D00149F1E00139F1D0017AB200018B0210018AF210018AF210018AF
      210018AF200018AF210018AF200018AF210018AF210018AF210018AF210016AD
      1E0019B2220038D34D002D9C3F0004460F00002D0400002A0300002704000028
      050000290600002C080001320900033A0A0005410B0003470A00004D09006284
      6800A9A1A9006D8B6D00256E1F003A832A003A7E270042862A004A8F30004D93
      310048912A0056913B00A8C19C00BCCCB500C9D4C300EBEAEB00F1EDF400E4E3
      E600F1EDF200ABC0A50040802D003A852900256D1F0080968000A39FA400AFAF
      AF00F2F2F200EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00E6E5E100E7E5E100F6F5
      F300FDFCFB00FDFBF900FCFAF700F9F5F200EFE7DF00EEE6DD00E1D3C000CAAD
      8E00BC9B7D00B3957700AD8E6F00A6866600BD7C4F00C14D1700C0411100BD3C
      0E00BD360B00BC300800BA2B0600BA270400B6240200B6220000B4200000B455
      2200B38C6400B18C6600B38E6600B0896300AF886000A17F5B00A3805C00AD8C
      6700AA896900AD8E6F00B7946F00BC9A7600CDB39700D8C4AC00D3BFA700C0A9
      8F00C6AF9700CCB6A000D1BDA700D4C0AA00D7C3AD00D8C4AF00D8C4AD00D9C6
      AF00CDC6BD00BFBAB600D0CAC400F7F7F700FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F0F0F000BDBD
      BD00FCFCFC00E1E1E100E4E4E400B5AB9F00E9D1BD00DCC4B300DCC4B300DCC4
      B300CAB4A400C1AD9C00BFAC9C00B5A39400A8948600AB9C8D0096887D008A8B
      8B00DADADA00DBDBDB00D9D9D900D2D2D200CCCCCC00C8C8C800C4C4C400C3C3
      C300C1C1C100C2C2C200C5C5C500CACACA00D3D3D300DADADA00797471002322
      21003935340079726D005F5B5A005C595900454343002A2828008F8F8F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D3FF
      FD0000580000005C0000005A0000007D1F009BDDBD00D3FCFF00D7FFFF00D3FF
      FF00D3FFFF00D9FFFF00DEFFFF00D7FBED0000600000005A0000005900000073
      0700B4F5D500038414000059000000560000FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00EEDDDC009F9877001DCF260012D91F0016D4200016D4210016CF200011B9
      1A000BA416000A9E15000BA016000FAE1A0011B51A0011B51A0011B31A0011B3
      1A0011B31A0011B31A0011B31A0011B31A0011B21A0011B21A0011B21A0010B0
      190011BC1F0011C7260028E0460038C04E001B7F2800258C3800319B45002DA3
      420028A83E0023AD36001BAA2A0014A922000EAA1D000CAE1D0031BA450096BF
      9B00999399009A9E9A002D642C0034812900428A3400458C3200498F36004A90
      320062984D00D0DDC9000000000000000000FFFEFF00FBF8FB00FCF9FE00FCFB
      FC00AFC9A800488638003F8A2F002E7B25003B693900AFAEB000A19FA100E8E8
      E800FBFBFB00FBFBFB00FBFBFB00FBFBFB000000000000000000000000000000
      000000000000000000000000000000000000F5F5F400F6F2EE00E1DCD900FCFA
      F900FEFCFA00FEFCF900FDFAF600F0DDCC00D99E6F00D07D4400CF763900CC71
      3600BF8B6100B3957700AC8C6D00B7673700C4501800C3491500C0411100BF3C
      0E00BD360B00BC300800BA2B0600B9270400B6240200B6220000B41F0000B31F
      0000BF4C1A00D3B69A00D3BCA300D3BCA300CFB69A00C09E7D00B18C6300AD8B
      6400B08E6C00CCB19500C9AD9100C09E7C00D3BAA000DDCDB600E0D0BC00C1AA
      9100C7B09800CCB7A100D4C1AC00D8C7B100DBC9B300D9C7B100D8C4AF00D5C7
      B700D5D3CF00DDDBD800E8E3E000EAE9E8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA009E9E9E00F8F8
      F800ECECEC00F4F4F400A9ACAF00E8D0BB00DCC6B100DFC6B500D6BFAC00CAB8
      A700D0B9A700CDB7A400BCA99800B7A38F00B4A39200AC9B8B00A3908300A594
      84008F8278007C7B7A00C3C3C300C6C6C600C7C7C700C6C6C600C6C6C600C6C6
      C600C5C5C500C8C8C800CECECE00D7D7D700E9E9E9009E9B9A003D3B3A002826
      250056525000817C79005A565500555151003C38390032323100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D3FF
      FE00004C0000005D0000005800000C7D1500B2DD9E00C2FFF000D3FDFE00D1FF
      FD00CFFCFA00CFFCFD00CFFDFF00CAF7E6000063000000510000005400000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F5E4E400A9A1800025D7300019E126001CDA27001AD7240019D1230019CD
      230018C1230017AF220015A91F0017AB220018B023001AB524001BB925001DBD
      26001DBF27001DC027001DC027001EBF26001DBF26001DBF26001DBD25001DC6
      2D001FD33A001ED13A001ACD35002ADD48004FF469004CF1670040E85E0031DC
      4F0026D345001FCD3D001ACC370013C72F0024C6400071BC6F00F2FFF8000000
      0000BDC0C100AFADB000808D810028642500599B5000619E5600609C5100619A
      5000BDD4B6000000000000000000000000000000000000000000DDE7DA0094B6
      8C005B944E005F9F510053984A002A6027009BA39B00BCB9BC00D4D4D4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F1F000F9F4F000DDD9D500FEFC
      FA00FEFCFA00FDFBF600EACAAD00D58E5900D1804800D07C4100CF763900CC71
      3700C08F6700B4987A00B1866300C3581F00C44F1800C1481500C0411100BF3C
      0D00BD360B00BC300800BA2B0600B9270400B7240200B6220000B4200000B31F
      0000B4220100C7794B00D3BCA300D1BAA100BC9A7600C4A78900D1BAA100D3BC
      A300D3BCA300D3BCA300D1BAA100C6A78800D5BFA600E0D0BC00E6D8C600C3AC
      9400C6B09800D1BFA700D8C7B000DCCCB700DDCCB700DBC7B300D9C6B100CCC6
      BD00D7D4D100E2E0DD00EBE8E200E6E3E1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00E3E3E300BFBFBF00FCFC
      FC00F3F3F300CFD0D100A0968A00D9C1B100D0BCAB00C7B3A100C4AFA000C9B1
      A000C0AB9900BCA59300BDA79600B9A39200B0988A00A8968600AB988900A190
      8300948575009B897A006D615B007C7C7B00B8B8B800C2C2C200C5C5C500C9C9
      C900CCCCCC00D2D2D200DCDCDC00E6E6E600E2E1E10077716F00222020003E3B
      3800807C7B00645F5D005F5C5B004846450027262500A29F9E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D7FF
      FF00005400000058000000580000087B15009BD59E00D3F7F400CFFCF700DBFF
      FA00DBFFFA00DBFFFA00D7FDFA00CFF5E4000061000000540000005600000073
      0700B4F5D500038414000059000000560000EDEDED00EDEDED00EDEDED00EEEF
      EF00E6D6D400A19E7F001DBC260015C1220021C934002ACA3D0039D04A0046D6
      580053DC65005EDC6D0040C44F0021A52F0021A5300021A5300021A62F0022A8
      300023A9310024AD310026B0340029B535002AB7360029B9370029C13F0029CA
      460027CA460027C9450028C9460025C9430022C03F001FBC3A001DB739001FB9
      3B001FBA3B001CBD3A0024B33D0066B66C00B6BA9B00B98E7F00CCA99C00BCA0
      8E00AE917F009B8F8600B3B2B6007381740030602F005F985B0077A96F0072A1
      6900779F6E0087A9800095B390009BB7960094B38F0087AA8200719B67006B9B
      600075AA6F00568F5300325C31008B938C00C4C1C400C6C6C600EEEEEE00EEEE
      EE00EDEDED00EDEDED00EDEDED00EDEDED000000000000000000000000000000
      000000000000000000000000000000000000F2F1EF00F2ECE800E3E1DD00FEFC
      FA00FEFCF900F6ECE000D48C5500D3884F00D1804800D07C4100CF763A00CC73
      3A00C0946F00B79A7D00B48B6600C4591F00C44F1800C1491500C0411100BD3C
      0E00BC360B00BC300800BA2B0600B9270400B7240200B6220000B3200000B31F
      0000B31F0000B4230200CFA07D00C0A18200B18B6400C0A08000D1B79E00D3BC
      A300D3BCA300D3BCA300D3BCA300D0B69B00D9C3AA00E2D1BF00E8DBCA00C7B1
      9A00C4AF9500D0BCA400DDCCB900E2D3C000E3D4C100DDCCB700D0C4B900C6C0
      BC00D4D1CF00E1DFDC00E8E2DF00E5E2DD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB009696960000000000E8E8
      E800E0DFDF00B0B0B000DDC7B500BBAC9D00BDA99900BCA99800B7A39300AD9D
      8900B19D8E00B49F8F00B09B8A00AD988800AF998900AD978800A48F7E00A08B
      7A009C8E7E0093806F00806E5F00897767005550490086858500B6B6B600C8C8
      C800D4D4D400DEDEDE00EAEAEA00FAFAFA00989694003C3838002D2928005D5C
      590086807E005B56570056555400424040003735340000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE900D5FFFF00D5FF
      FF005BB37B00006A000000590000067B150098D4A100D9F8F70098D7B00060B7
      670066B8680066B8680064B867005BB35B000058000000560000005800000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F1E4E000AE9B81006CB360004CA941002F9825002EAE350030BA41002EC1
      430028BF410026B73D0025B3380020AD300021AB300021AB300021AB2F0021AB
      300021AB300021AA300021AA2F0021AB2F0021B2320022C33B0022CD430023CF
      450025D1470026D3480025D1460021CA41001EC33E001EC33E001EC43E001AC1
      3A001BC03B0042B34E008A946000BC8F7A00BD8E7B00AA7F6100BF9A8400C0A0
      8C00C7AA9600D3C3B700C1C1C100C7C4C7008089820029512900437B400072A8
      6D007FB378007BAF740078AA6E0077A96E0078AA6F007CAF74007EB378006DA4
      68003D743A003053300094999500DCD7DA00DADADA00FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F0EE00EAE5E000EAE7E300FEFC
      FA00FEFBF700EBCFB100D48C5400D3864F00D1804800D07C4100CF763A00CC73
      3A00C1987600BC9E8200BDA08300CA865800C4501900C1491500BF411100BD3C
      0E00BD360B00BC300900BA2B0600B9270400B92B0700BA370C00BA3D1000BC45
      1600BD491800BA3F1100BC551F00B3886000B48F6A00C1A18000D0B79E00D3BC
      A300D3BCA300D3BCA300D3BCA300D3BCA300DCC9B100E2D3C000E9DBCC00D3C0
      AA00C3AD9500CAB69E00D8C7B300E8D9CA00EADCCD00E6D7C600DDCDBC00C4BF
      BA00CDCAC600DBD7D400DDD8D300E3DFD900FFFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB00C5C5C500F7F7F700E7E7E700F0F0
      F000DFE1E30092867D00B4A39600B7A59700B3A19300A9988A00AB988A00B09D
      8D00AC998A00AB968300AB978800AF998900A9948400A8928000A9938100A790
      7E009C88750094806E00907D6B00867263007764560085756400655950008988
      8800CDCDCD00E2E2E200F1F1F100D6D5D50075716F0021201F00403C3B008984
      83006A6564005D5B5A004B48470025252400B0AEAE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000095D4A400C5F7E600D3FF
      FD00DBF9F20043AB670026913F00007B15009ED6A100D3F9F6005BB47500006D
      0000006F00000070000000700000006F00000055000000580000005900000073
      0700B4F5D500038414000059000000560000FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00EDE4DD00BC9B8A00EAC6BC00DDAA8E0074320D00693E0F005A5416004D6E
      2000468A2F0040A340003BB34A003ABC500037B74C0031B0420034B2450037B3
      480038B3490038B34A0038B74A0036C04E0034C7540032C9550031C7540032C7
      540034C9540035CC560034CA550031C7530032C954002EC9500027C34A0041C7
      610099E1A800E8E7DF00F8E7E700F5EFEE00EFEAE300C1AB9B00FBFBFB00F5F8
      FB00F2F5F800F2F4F500E8E8E800D0D0D000D9D7DA00B5B5B5005F716000395F
      3A00437442005A8C59006D9E69006FA06C006C9C6900598A5600427141003A5E
      3A006D7A6E00C7C7CC00E3E3E400E4E3E300FCFCFC00FEFEFE00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC000000000000000000000000000000
      000000000000000000000000000000000000F0EEEA00E1DBD500F0EEEA00FEFB
      F700FCF6F100E1B18800D38C5400D3864F00D1824800D07C4100CF763A00CC76
      3F00C4A07F00BFA38600CAAF9500D3B79E00C7662C00C3491500C0441300C351
      1C00C4612B00C7744400C7774800C7744400C3602A00C0501C00B9340B00B424
      0300B6240300B72C0800B4592400B3855C00BC9A7600C7A98900CFB49B00D3BC
      A100D3BCA300D3BCA300D3BCA300D4BDA400DDCCB700E5D5C400EADDCD00DDCC
      B900C1AC9200C9B39D00D0BDA600E2D3C000F0E5D800ECE0D100E6D5C300CFC4
      BA00C6C3BF00D3D0CC00D1CCC600E7E1DC00FAF9F90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00FCFCFC00A1A1A10000000000FBFBFB00DDDD
      DD0093909300BFAC9B00B1A19400AC9B8D00AC998800B09D9000B19F9000AD9B
      8B00AD9C8A00B59F8F00B39D8D00AC998900AF998900B39C8A00AD978400A892
      8000A7928000A38B780097836F008F7A64008E7A670089746300867265009481
      6E008B7D6F0093939300EFEFEF009694910034302F002C2C290067615E008883
      8100615E5C005653510043414000323031000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000590000005A000037920F007BD09600BAF1
      E400D9FFFF00D5FFFF00D7F9DD00208C4200A1D9A500C2F5F4003AA976000056
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000EEEEEE00EEEEEE00EEEEEE00EEEF
      EF00E1D7D100B3968500D0B7A900D6A58B00A65E3500AE643D00B36B4500B76C
      4700B5724C00AB825600A58B5A0090864F0080965C0079BC7E005FB66F0047B2
      5E0037B6540031BA510030BF550031C3590035C35A0037C35C0039C35C0038C3
      5B0038C35B0037C15B0039C35C0037C35B002EBF54003FBF60008AD39A00D9E6
      DC00F1E7EF00E7E4E700E1E4E600E1E4E600DFDAD700B7A39300E4E3E000E1E0
      E100E0E0E000DFDFDF00DFDFDF00E0E0E000D6D4D400D4D3D400D3D0D300B6B5
      B7008E958E006F807100617362006574660061736200718072008F959000BDBD
      C100DAD9DC00C7B3A600BDA48F00EFEFEE00EEEFEF00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      000000000000000000000000000000000000EEE8E300D3CAC300FDFAF600FEFB
      F700F0D9C100D4915B00D38C5400D3864F00D1804800D0834C00BF7C4B00CAA0
      7C00CAB09500CFB49B00D3BCA300D3BCA300D3B79D00C9744300D0A78600D3BC
      A300D3B9A000C4632C00BA2B0600B9270400B6240200B4220000B3200000B31F
      0000B31F0000B31F0000B1491900BA957400C9AA8E00D5BDA300D3BAA100D1B9
      A000D3BCA300D3BCA300BDA48600AA8C6C00BDA48B00C6AF9700D0BCA600E5D7
      C400BFA78F00C3AD9500CCB6A000D3C0A900D7C4AF00E1D1BF00E8D9C900DFCD
      BA00C9C0B900C9C4C100BAB4AF00E6E0D700EEEBEA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00ADADAD00FEFEFE00F0F0F000DADADA00D6D9
      DA00998E8500AFA09400AD9D9200B3A19400B7A59800B8A59600B8A49400C0AB
      9B00C3AC9D00BDA59600BFA89300C4AC9900C3AC9600B9A19000BBA38F00B9A3
      8F00B4998800AC938000A88F7D00A08A770099836E0096806C00998571009C88
      7400A18D7A00B0998600867A710056555400252423004A4443008D8684006A63
      6100635F5E004B49470025252500C1C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000590000005500000055000040A8
      7500C2FFFA00E2FFFA00D1FFEE00E6F5F300B4E2C600C7F9F70040AB77000056
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F2E8E100BF9B8A00DCC1B000E6B09300B0683800AA5F2F00A35827009B4D
      1F00934118008C361100862C0C00781D0100AE6F4A0000000000F4FCF800D3F5
      DD00B0EEC3008FE1A4006FDA8B0055D3780042CC690037CC600031CC5C0034CD
      600036D0620037CF610034CD5E0038CA610072DA8D00D0F2D900FFFBFF00FBF5
      F900F5F5F500F5F5F500F4F4F400F4F5F700F1EBE700C3AA9800F8F5F200F1F2
      F400F2F2F200F2F1F100EFEFEF00EFEFEF00F1F1F100EEEEEE00E7E7E700E3E1
      E300E3E1E300DCD9DC00D3CFD100D3CDD000D0CCCF00D6D0D100DDDADC00D3C3
      B500B7917400AE7A5000C1967800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAE3DC00D9D1CA00FEFBF700FEF9
      F500E2B38B00D8986400D99D6A00DCA17100E2BFA100D9C4B000A78B6C00AD91
      7100CDB49B00D3BCA300D3BCA300D3BCA300D3BCA300D3B79D00D3B9A000D3BC
      A300CF9A7300BD370C00BA2B0600B9270400B7240200B6220000B31F0000B31F
      0000B31F0000B6270500B07C5400BC9D8000CDB19500DBC4AD00DBC6AF00D1B9
      9E00D1BAA000BCA18300A4866600A7896900BDA38900C6B09800CAB49D00C6B0
      9A00BDA68C00C1AC9400CAB49D00D1BDA700D4C1AC00D7C3AC00DCCAB700DCCA
      B600D7C9B900CFCCC700C1BAB600DCD3CC00EBE9E700FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F6F6F600C0C0C000F4F4F400ECECEC00E8E8E8008585
      8400B4A39600B5A59800BCAC9F00BFAC9F00C1B09F00CAB7A500D0BBA900CFB8
      A700CFB8A500D3BCA900D7BBA800D1B5A100D1B5A100D6BBA400CFB39D00C4AB
      9600C3A79300C1A59200B49C8800AD938000AB907D00A48D7700A1897400A58D
      7A00B0988600B8A088006A615E0033322F00383434006F69680097908E00625F
      5F00545150003B383A00312F2E00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000590000005A000000580000005C0000006C
      0000D3FBE800CCFFF700DBFFF200D7FCFE00DDF9EA00D1FFFD0040A976000056
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F8F8F800F8F8F800F8F8F800F8F8
      F800EBE3DC00C0A08E00DAC3B500DAA98D008336120083320E00843210008232
      10008232100082321000823210007A270900AD795600F9F8F800F8F7FB00FEF7
      FB00FFF8FF00FFF8FE00F7F5F700E8F2EB00CDEBD600ABE3BD008DDAA30071CD
      89005EC778004FC9740062CD8100ADE3BD00F4F4F400F9F1F700EFEEEE00EBEB
      ED00EBEBEB00EDEDED00EDEDED00EBEDED00E8E4DF00C0AB9B00EFEDEB00EAEA
      EA00E8EAEA00EAEAEA00E8EAEA00E8E8E800E7E7E800E7E8EA00EAEAEB00EAEB
      ED00E7E8EA00E4E7EA00E6E7E700B59A8B00CFB9AB00D9C6BA00E8DAD000CCAA
      9100AA794F00B3805900C39E8200F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F8000000000000000000000000000000
      0000000000000000000000000000FEFEFE00E6DFD700E2DCD400FEFBF700FAF1
      E900E7C3A300E2B18900DDA77900E1B69400E6D8C900D9C9B700A7896A009A7C
      5D00C9AF9400D3BCA300D3BCA300D3BCA300D3BCA300D3BCA300D3BCA300D1B1
      9200C14D1900BC320900BA2B0600B9270400B7240200B6220000B3200000B31F
      0000B4220100C77D5100B6977900BFA18500D0B69A00DFC9B100E3D1BC00CDB3
      9A00B3977900A3856400A4866400A9896A00B79D8000C1A99100C6AD9700BAA3
      8800BCA48B00C0A99100C6B09A00CDBAA300D0BDA700D3BFA900D4C0A900D7C3
      AC00D9C6AF00E0D9D300D4D0CA00D9D0C600ECE9E600FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFA0096969600FEFEFE00FCFCFC00E0E0DF00C7C7CA00A79B
      8F00C1B3A500C1B1A500C7B5A700D0BDAF00D9C6B400D9C3B100D9C1B000E0C7
      B500E0C7B800DCC0AB00DABFA900E5C9AF00E0C3AD00D9BBA400D9BBA400DAC0
      A900D4B7A000CAAC9600C6A99400C1A58F00B4998400AC927D00AC927D00AD93
      7E00AD937E00B89F88005554530029272700514C4C009F989800756F6C006C68
      6500504E4D0029292700D1CFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005900000059000000580000007A
      1500067F1B000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005600000056
      0000005800000055000000560000005800000058000000580000005900000058
      000037AB6200A1F0D100D1FFEF00D3FFFF00D9FFFC00C7FBFC0046AB75000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F1F1F100F1F1F100F1F1F100F1F1
      F200E4DCD400B99B8900D6BDAD00D6A589008638130086351000853510008434
      10008331100082310E00812F0D0077250700A8745000F2F1EF00EDEEEF00EDED
      ED00EDEDED00EDEDEE00EEEDEE00EFEDEF00F4EEF200F8EFF500FBF4FB00E3D9
      D000C9BAA400D4EBE000E1EAE600F5EDF200EBE8EA00E7E7E700E7E8E800E7E8
      EA00E7E8EA00E6E7E800E7E8EA00E7EBEE00E6E3E000BFA99B00EDEEEF00EAED
      EF00EAEDEE00EAEDEE00EBEDED00EAEAE800E7E6E400E3E0DF00E0DCD900DDD6
      D000DACFC600D4C7BC00D4BFB000A57B5E00D0AF9C00D7C0B200E3D3CA00C9A8
      8F00A8774E00AB7A5100BC967A00F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F1000000000000000000000000000000
      0000000000000000000000000000F5F4F300E5DDD400E7E2DD00FEFBF600F5E7
      D800DBA67400D48F5800D48B5400D89A6900E5D4C000D9C3AD00A98869009D7D
      5F00C9AF9500D3BCA300D3BCA300D3BCA300D3BCA300D3BCA300D3BCA100CA7F
      5000BD360B00BC320800BA2B0600B9270400B7240200B6220000B3200000B31F
      0000BF4B1A00D1B79B00BFA38800C0A38800D1B79D00DFCAB300E6D3C000BDA1
      8300A4856400A4856400A7886700A98B6C00B79D7F00BCA38600B0957900B9A0
      8300BDA48900C1A98F00C6AD9500C9B19A00CCB69E00D0BDA700D1BFA700D4C1
      AC00D9C4B000E3D9CD00EAE8E600DBD1C900EEE9E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00E9E9E900D2D2D200FAFAFA00DADADA00D3D3D3008B898B00C6B7
      AC00C7B8AB00D1C0B300E3C9BB00E0CCBB00DFCAB800E4CDBC00ECD6C300E5CC
      B900E0C1AD00E7C9B100E8C9B700E0C3AC00DFBCAB00E3C6AC00E4C6B000DCBC
      A400DCBBA400E1BCA400D6B79F00C4AB9300C4A79000BCA18B00B1978100AD93
      7A00B3988100C0A38B0047423B003B3738007D787500A19B97006E6A68005F5C
      5B00413F3D0039393900EFEFEF00F8F8F800FDFDFD00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005600005EB4
      7A004FA4530000690000006A0000006A0000006A0000006A0000006A0000006A
      0000006A0000006A0000006A0000006A0000006A000000690000006A00000061
      0000005A00000066000000690000006A0000006A0000006A0000006A00000069
      0000006C000092E8B700CAFDEE00D3FFFD00CCFFFC00BDF9F90043A66B000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F5EDE400C6A49000E7CCB900E7AF8F0087310D00872F0A00862F0B00852D
      0A00842C0900822A080082290800771F0000AF784F0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7EA
      E300E6CAB70000000000000000000000000000000000FCFFFF00FBFBFB00FBF7
      F400F8F2ED00F2EDE600EFE6DC00EEDFD400E7D0BF00C1A08700E0C6B300DABC
      AA00D4B39F00CCAA9400C6A38B00C49E8500C3998100BD947B00B7907800B790
      7800B98F7900B7917A00B7917A00A97A5900E0BDAB00E4CCBD00F4E4DA00D6B2
      9600AB784D00B07B5000C49B7E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E1DCD800E8E0D500F6F2EE00FDF7F300E6BD
      9B00D5955D00D48F5800D38C5400D3864F00D1804900D7AF8B00B6957300B192
      7100D3BCA300D3BCA300D3BCA300D3BCA300D3BCA300CCB39800CCB09700D3B9
      A000D7B69700CC703A00BD300900BA270400B6240200B6220000B41F0000C66C
      3900D3BCA300D3BCA300CCB39A00C1A48900CDB39800D9C4AC00E2D0BC00EAD9
      C700ECDDCC00AD8F7100AC8F6F00AF917100BCA18600C1A78E00B69A7C00B79B
      7A00C0A38300C9AC8C00D0B69A00CFB39800C9AF9200BDB6AD00D1CCC700E7E3
      E000F6F4F200FDFCFB00FDFCFB00D9D1C900EEE7E000FFFFFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC008E8E8E00F7F7F700E9E9E900E5E5E500C4C4C400B7AB9D00D4C3
      B700DDCDBF00E5D0C100E1D0C000E7D4C100EBD6C400E9D3BF00E5CDBB00E9D1
      BD00E8CDB800E3C7B000DFC4AD00E4C6B100E9C9B000E0C1A900DABCA500ECCC
      B300F8DFC300F3D7BB00F4D7B800DFBCA400C4A89200CDAC9400CCAC9300C7A8
      8F00CAA88F00B7977D00B4AFAF00968E8B009B9390007B777700746E6E00514F
      4E0023242400A49082009B8A7D00B8B9B900F7F7F700F9F9F900FDFDFD00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB148000059000000590000005F000000751800BFE5
      D90084BF79003D9917003D9A17003D9A17003D9A17003D9A17003D9A17003D9A
      17003D9A17003D9A17003D9A17003D9A17003D9A17003D991700499D18000E7B
      0000006700001A951800329917003D9A17003D9A1700409918003D9A17003596
      1700067E2F00B4EDCB00D1FFF200D3FFFA00D1FFF300BFFFF90026913E000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F4F4F400F4F4F400F4F4F400F4F4
      F400E8DFD900C3A49400DCC4B500DDAD90008E411A008C3D16008B3D1700893A
      160086371300843612008332110079270900AE7B5A00F8FBFE00F7F9FC00F5F5
      F500F4F2EF00F2EEEA00F2EAE700EEE6DF00EAE1D700E6DCD000E4D7CD00DDC1
      AF00D0AE9600DCC7B700D9BDAB00D6B6A400D1B09E00CCAB9600C6A69000C6A4
      8D00C3A08A00C09E8900C09C8600C09C8500C19B8200B78F7500BF9F8900C1A4
      8F00C7AA9800CCB0A000CFB7A900D3BFB000D9C7BA00DFD0C400E0D9CF00E4DC
      D600E6DFDC00E8E6E600EEEDEB00B2907A00D3B3A500DAC4B900E7D9D000CDAD
      9600AB7E5500B0805900BF9A8000F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F4000000000000000000000000000000
      0000000000000000000000000000E1D9D100E7DDD300F9F4F000FDF7F300E7C4
      A100D5955D00D48F5800D38B5400D3884F00D7946100DDC7B000BD9A7700C0A1
      8200D3BCA300D3BCA300D3BCA300D3BCA300CCB19800C0A48800C7AC8F00D0B6
      9D00D7C0A700DDC7AF00DDB79700D37A4900C3441400B7240200BD481700D1B6
      9B00D3BCA300D1BAA100CFB69D00C3A78C00CCB39800D9C3AA00E1CFB900E8D8
      C400ECDDCC00B4987A00AF927300B3957700C0A78C00C1A98E00B1957600B99B
      7D00C4A68900C9AD8E00CCAF8F00CFB19500CCB19700C6BAB000D3CFC900E5E1
      DD00F5F3F100FDFCFB00FEFDFC00DFD8D000EAE2D900FFFFFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00D7D7D700E1E1E100FAFAFA00E7E7E700CACACC008B898900E5D4C700E1D3
      C300E3D3C600E8D6C600EDDACA00EBD7C900E8D3C100E9D4C300EBD4C100E8D3
      C000E1C4AF00E3C7B300E7C9B300E1C3AB00EBCFB700EDCCB300B9A893007B68
      5E0049423C0027252400181819001415150011121200161616001C1C1C003433
      340047444000857B74009F949300FBF8F700FBFAFA00A8A5A100686461003837
      3A0036363300D7B79B00BDA48D00C0A58F0097897F00BBBBBB00F7F7F700F9F9
      F900FEFEFE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005C0000005C000000710E00EAFDFF00CCFF
      FD00CFFDFD00D9FFF900D9FFF900D9FFF900D9FFF900D9FFF900D9FFF900D9FF
      F900D9FFF900D9FFF900D9FFF900D9FFF900D9FFFA00D9FCFD00E6FFFF0066B0
      880000743000D3FDFF00D7FFFC00D9FFFA00D7FDF900DDFBFF00CFFFFC00DBFF
      F900F5FFFF00E0FFFC00D7FFFD00DDFFFC00EFFDF900CFFFFF00005600000059
      0000005C00000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F4F4F400F4F4F400F4F4F400F5F5
      F500E7DFD700C0A18E00DCC3B200DDAA8C008D4017009042180095481D009A4E
      22009E542600A35B2D00A8613500A9613500C68C6700DDBAA300D4B39C00D7AE
      9500D6AB9000D1A88D00CFA58A00CFA68B00CFA88D00CFA98F00CCAB9500CDA6
      8E00CCA38700D7BCA900D7C0AE00DCC6B600E0CCBD00E4D4C700E6DCD000EAE0
      D700EBE4DF00EEE8E600EFEEED00F1F1F100EDE8E300C6AF9F00F4F4F400EFF2
      F400EEF1F200EDEFF200EDEFF200EBEEF100E8EBEE00E7EAEB00E7E8EA00E7E8
      EA00E4E6E700E3E4E700E7E6E300AF8A7300D1B2A000DAC0B600E7D7D100CCA9
      9100A6744A00AB784E00BC947700F5F5F500F4F5F500F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F4000000000000000000000000000000
      0000000000000000000000000000E0D5CA00E6DDD300FBF5F100FEFAF300ECD0
      B300D5955F00D48F5800D38C5400D3885000E1BD9E00E0CCB600C19D7900C7AA
      8E00CDB69D00CDB49D00CDB49D00CAB19800B1947600B79A7D00C1A68900CAB0
      9700D3BCA100D9C4AC00E1CDB700E8D5C100EBD0B700E0AA8500D0A98800D1BA
      A000CDB69D00C7B09700C7AF9700C3A98F00CCB49B00D7C1AA00DFCCB600E7D5
      C100EADBC700BDA38500B3977900B69B7D00C9B19A00C6AD9200B3977900BA9D
      8000C3A98C00C9AF9100CAAD8F00C7AA8B00C9AF9100D1C4B600E0DBD500EAE7
      E300F7F5F200FDFCFA00FEFDFC00E6E1DB00E5DCD100FFFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB009C9C9C0000000000E0E0E000D1D0D000B5B8B700D4C3B900E1D4C700E9D7
      CC00EFDFD000EDDCCF00E9D7C700ECD7C700EDDAC900EBD6C400E7D0BD00E7CD
      B900E5CAB700E5C6B100E4C7AF00D7C4AC00776860002D2D2D003A3A3C005553
      4F005F5A5800615C5E006B676500726E6C0065616000413D3D002A2827002B29
      28004A4645003A363700ADA59F000000000000000000FFFEFE00A3A5A700DABC
      A300E0BDA000CAAC9200C9AB9200BDA38B00B99D8800C4A98B0083786F00C9C9
      C800F1F1F100F9F9F900FEFEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005A000000590000006700006CBA6100C5FB
      F400CAFFF100CCFFF700CCFFF700CCFFF700CCFFF700CCFFF700CCFFF700CCFF
      F700CCFFF700CCFFF700CCFFF700CCFFF700CCFFF700CCFFFA00DBFFFF005EB1
      880000763000C7FDFF00CAFFFC00CFFFF700D3FFFA00D5FFFA00CFFFF900D1FD
      F900CAFCEF00D5FDFE00D3FFFF00D1FDFF00BFF3F0006CC46B0000590000005A
      000000590000005A000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F5EEE600CAAB9600E7CDBA00F2C09F00D38B5E00D68C6000D48B5F00CF85
      5900C97F5100C37A4D00BD744500AE643200CD8E6900F2DFCC00F2E4D400F7EA
      DC00FBEFE400FEF5EE00FEF9F500FEFBF800FFFEFB000000000000000000F8EE
      E400E8D1BC0000000000000000000000000000000000FEFFFF00FCFEFF00FEFE
      FF00FBFEFE00F9FBFC00F9F9FB00F9FBFE00F7F2EE00CFB6A500FBF8F700F7F7
      F800F7F7F700F7F5F500F5F5F500F5F5F500F5F5F500F4F4F400F4F4F400F4F4
      F400F4F4F400F2F4F400F5F4F100BA917A00DFBDA900E6CFC000F4E7DF00D7B2
      9900AD774D00AF7B4F00C19A7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFBFA00E7DCD000E5DBD100FBF5F100FDF9F300F3E2
      CF00D4955D00D48F5800D38C5400D8986600F1E2D300E0CAB400BD987600C0A6
      8800BFA78F00BDA48C00BAA189009E8063009B7D5F00A9896A00B9927300C49A
      7700CDA68500D7C0A600DDC9B100E5D3BD00EBDCC900EBDCCA00D5C0A600CAB3
      9B00BFA78F00B49D8500B19A8200B6A08800C4AD9700D0BCA600D8C6B000E0CF
      BA00E5D4C000C0A78B00B49A7A00BA9E8000CCB69E00C6AF9500C0A78E00BDA4
      8900BCA48900BCA38B00C1A78C00C1A48600BFA18000D5C3B000ECE9E500F3F0
      EC00FAF6F400FDFCFA00FEFDFB00EEEAE600E5D9CD00F7F6F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB00B0B0
      B000FBFBFB00E5E5E500E9E9E900DDDDDD0098949000F3E3D700EFE0D400EFE0
      D300ECDCCF00ECDCCD00EFDFCF00EFDCCA00E9D4C400E9D3C300ECD7C600E8CC
      B800E5C7AF00DFC6AF004A454300413F42005E5A5900615E5B006E6867007A75
      7400837E7D00807D7A007D77750072727100747271007B777500807B7A006F6C
      6B00686564007D78770086838100FEFCFB0000000000F3F2EF007E7D7A00ECC4
      A500DABB9F00D9B79B00CFAF9300CAAB9000C7A99200BCA18600B3967500C4A7
      7E007D726500D0D1D100F2F2F200FBFBFB00FEFEFE0000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB148000059000000590000005F00000377000072CE
      82005BBE78002094560023945600269456002694560026945600269456002694
      56002694560026945600269456002694560026945600269456002F955A000E77
      1F00006700001A8F5B001D925700209456003DA56A00C2FDE900D1FFF400D1FF
      F300C5FBEF00D1FFF700D1FFFD00D5FFFF00CAF1E60014800F00005900000058
      000000580000005A000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000EFEFEF00EFEFEF00EFEFEF00F1F1
      F100E6DFD700C4A89500DCC4B300DFB094009850240091471D008E421A008C40
      19008A3D170087381500853713007C2C0B00B27F5E00F5F7F900F2F5F800F1F2
      F500EFF2F400EFF1F200EFF1F200EEEFF100EDEDEE00EBEDED00EEEFF100E4DA
      D100D9C3B000EEF1F100EBEBEB00EBEBEB00EBEBEB00EAEAEB00E8E8E800E7E8
      E800E7E8E800E8E8E800E7E7E700E7E8E800E6E1DD00C6B2A100EAE7E600E4E4
      E400E6E4E400E6E6E600E4E4E400E3E3E300E3E3E300E4E4E400E3E3E300E3E3
      E300E3E3E300E3E3E400E7E4E100B6937C00D4B5A400D9C4B600E6DAD000CCAB
      9500AA795300AB7C5500BA967A00F1F1F100EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF000000000000000000000000000000
      00000000000000000000EFECE900FBF0E300E2D9D000FDF9F300FDF9F300F7EB
      E000D4975F00D5925D00D5976300E7D1BD00E5DBD000CFB79E00CFAA8600D7BC
      9E00D5BA9D00D3A37F00CA662B00C6551B00C44F1800C1491400C0411100BD3C
      0E00BC360B00C0642F00C7AD9200C6AF9800C6B09A00C7B19D00D0BAA300DBC6
      AD00DBC4AD00D7BFA700BDA68E009B866F0089766300AF9B8800B6A39100BDA9
      9500C1AD9A00B19B8500A1886C00AA917700C1AF9800CCB7A100D8C6B100D7C6
      B300B4A79A00ACA09500B3A79A00BDB0A400C4B9AF00CDC3B900D7CFC600E0D9
      D400E6E2DF00EEEAE800F2F0EE00F1EFEB00E6DBCF00E0DBD500FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD0000000000B1B1
      B10000000000F2F2F200C6C6C60093969700E5D6CC00EDE3D400EFE0D400EDDF
      D100EFE0D300EFE0D100ECDCCC00E9D7C700EBDAC900EDD9C700E9CFC000F6E0
      C6005B5551004A4747005B585800605C5B0068646300716B6C006C6865007E78
      7500ABA7A400DCD7D600EFEDED00F7F6F700FBFCFE00FCFEFF00FCFEFF00FBFC
      FE00F7F7F800ECEBEC00D0CCC900A19B99009F9B9800858383002F2F2D002425
      2800C7B09800DFB99B00DCB89B00D7B59700CFAB8F00C9A98E00C6A78F00BC9D
      7D00B8986B00B99C6E00947E6A00D8D8D900F8F8F800FDFDFD00000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB148000059000000590000005F00000377000072CE
      82005BBE78002094560023945600269456002694560026945600269456002694
      56002694560026945600269456002694560026945600269456002F955A000E77
      1F00006700001A8F5B001D925700209456003DA56A00C2FDE900D1FFF400D1FF
      F300C5FBEF00D1FFF700D1FFFD00D5FFFF00CAF1E60014800F00005900000058
      000000580000005A000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F9F9F900F9F9F900F9F9F900F9F9
      F900EDE4DF00CAA89400E3C9B700E3AF8F008E3A11008C360E008C370F008B36
      0E008A340E0089320E0087310D007E250600B57C5600F9F9F900F8F9F900F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700F5F5F500F7F8F900EBE1
      D700E0C7B300F8F9F900F4F4F400F2F4F400F4F4F400F4F4F400F4F4F400F1F1
      F100EFF1F100F1F1F100EFF1F100EFF1F200EEE8E300CAB3A100F2F2EF00EEEE
      EF00EDEDED00EDEDED00EDEDED00EDEDED00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EAEAEA00E8EAEB00EDEDEA00B7907800D9B6A400DFC6B700EEE0D700CFAB
      9300A5714500A9734700B9917300F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F9000000000000000000000000000000
      00000000000000000000EEE9E500F5E9DC00E5DDD400FDF9F300FCF6F000EBCF
      B000E2BA9400E9CFB400E6D4C300E1D4C600DCC9B600D1916000D0804B00D5B6
      9800D7BC9E00D7BA9D00D0926100C6571D00C44F1800C1491500BF411100BF3C
      0E00BD360B00BA3A0E00956D51008F7A670094806C00BDA48B00CDB39A00CDB3
      9A00CDB19800CCB19700CCB19800CDB39A00C6AC9200C1A79100C0A99200BAA3
      8E00B39E8900A9947F00957C63009A806700B7A38C00D0BAA400DDCDBC00E7DB
      CC00EBE0D300EADFD300E5D9CD00D9CDC100C9BCB000BFB3A600BFB3A900C4BC
      B300CAC6C000D4CFCA00DCD8D400DFDCD800D7CABD00D5CCC300FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA00959595000000
      0000E8E8E800CFCFCF00D7D6D600B0A9A500F6EBE100EFE3D900F2E4DA00F2E3
      D700EFE0D100ECDCCF00EDDDCF00EDDDCD00ECD9C700EDDCCC00D7C6B800423D
      3F00595351005A5655005F5A59006A6564007A747100B5B0AC00E8E7E5000000
      0000F6EDE700E8D4C100E0C0A900D3B19800D3AD9000D4AF9300D9B39600D9B4
      9600DCB99D00DCC0AC00E8D6C900FBF8F600F7F8F800C4C1C1008F8D8A007D77
      7500494A4C009F8F7E00E5BC9F00D9B49600DAB59700D7B19400CDA98D00CAA7
      8800C6A48500BB9B6F00BF9D6700B1976700A7A2960000000000FEFEFE000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005A0000005A0000005900000E8B
      0E00007901000055000000550000005500000055000000550000005500000055
      0000005500000055000000550000005500000055000000550000005500000058
      000000590000005100000054000000550000006F0000BDF5E400D1FFF600D1FF
      F400CFFDF700D1FFF700D1FFFE00B4EBDB0069B87B0000610000007A0E001A86
      2100006A0000005A000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F5EDE700D3B09B00EDD1C100EDB9990096451800953F140094401500913F
      1400913D13008F3B12008E391300842D0A00BF85600000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5EA
      E000E8D1BD0000000000FEFEFE00FCFCFC00FCFCFC00FCFCFB00FCFCFC00FBFC
      FC00F9F9F900F8F9F900F8F9F900F8FBFC00F7F2EE00D3BDAB00FBFBFB00F8FB
      FC00F8F9FB00F7F9FB00F7F9FB00F8FBFC00F8FBFE00F8FBFE00F8FBFE00F9FB
      FE00F8FCFE00F7FCFF00FCFEFE00C19A8200E0BFAA00E7D0C100F7E8E300D6B3
      9B00AA774A00AE784D00C0967A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EEE7E100ECE0D100EBE5DC00FDF9F300FDF6F000FCF3
      EA00F7F1E800E9DFD300E0D3C300DFCAB900D4915F00D07C4100CF763C00D39A
      7000D7BC9E00D7BA9D00CF804D00C6541C00C44F1800C1481500C0411100BF3C
      0E00BD360B00BC300800B4491A00BDA38900C3A98E00C6AA8F00C1A68B00BFA3
      8600BDA08500BD9E8200BC9E8300BDA08300BDA08300C0A38600C1A48900C3A6
      8C00C4AA8E00BDA18600A6896F0094795F00BAA38B00D5C1AD00E1D1BF00E8DB
      CC00ECE1D400F1E6D900F2E9DD00F3E9DF00F2E8DC00EBDFD100D8CCBC00C0B4
      A700B9AFA700BCB6B000C1BDB600C6C1BC00BFB3A600C7BAAD00F6F6F600FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00EEEEEE00D6D6D600EFEF
      EF00E8E8E800D7D7D7008F949600E8DDD700F2E5DA00F4E7DD00F0E4D900EFE0
      D600EFE1D400F0E1D400ECDDCD00E9D7C700F7E4D600B0A59F00302E30005F5B
      580055535100656160007D787700BBB4B100FCFCFC00F7F2EC00E3CCBC00CAA4
      8500CFA58600D7B39600D9B59800DAB59B00D7B39600D4AF9300D3AF9200D7B3
      9700DAB59800DDB79900D9AF9000CFA38100D3B39B00EDE4DA0000000000BCBB
      B80084817E0054545500A5928100E5BF9F00DAB49600D7B09300D9B79300D4B0
      9200CCA88100C9A57E00C2A17500BD875F00B57A4F00EDE1D900000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005500000060
      0000005D00000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005A0000005A000000710000C5F1E700CCFFFA00CFFF
      FC00D3FFFE00D3FFFE00D5FFFF007ECEA400005C00000059000060B76900A6DB
      9D002F972900005F000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00E4DDD600C9A99800DDC4B700DFAF9400964C1F0095471D0094471D009347
      1D0093461B0091431A008F421A0086381300B7846200F1EFEE00EEEEEE00EEEE
      EE00EEEEEE00EDEDED00EDEDED00EDEDEE00EDEDEE00EDEEEE00EEEFF100E6DC
      D600DCC6B500EFF2F400EDEEF100EDEFF200EDF1F200EBEFF200EDF1F400EDF1
      F200EEEFF100EDEEEE00EBEDED00EBEDEB00EAE3DD00CAB3A000E7E1DD00E1DD
      D900E1D9D300E0D3C900DCCCC000D9C4B600D6BFAF00D3B9A600CDB2A000C9AD
      9A00C4A89400BFA38F00BD9E8900B58A6D00D4B9A800D9C1B500E6D9D300CAAB
      9400A6754D00A9784E00B7907500EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      000000000000FFFEFE00EEE6DF00E2D4C600F0E9E200FDF7F200FDF7F100FAF2
      EA00E0D3C100E1D3C400E0CFBD00D7A07100D1824900D07C4100CF763A00D07D
      4800D7B49400D5AA8800C9632600C6541C00C44F1800C1481500C0411100BD3C
      0E00BD360B00BC300800BA2C0700C17F5500C0A48800BDA08300B79B7D00B395
      7700AF917300AC8E6D00AC8C6C00AC8C6D00AC8E6F00AF8F7100AF917300B194
      7400B3957700AF8F71009A7A590097745400C4AD9400D8C6B300E1D3C000E8DB
      CC00EBE0D100EFE3D700F1E6DB00F1E7DB00F0E6D900ECE1D300E7D8C600DFCD
      B700D1BFA900C6B3A300BFB0A300BCB1A900B1A69A00C6B6A700F2F1F100FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA008383830000000000F3F3
      F300D0D0D000B7B7B700B0A8A300F8F0E700F2E7DF00F0E5DC00F2E5DC00F2E5
      DA00EFE1D400EDDFD100EDDDD000F7E7D7009B938B003C3A3C00555151005A55
      5500746F6F00A8A19F00FFFEFE00FAF7F700CFB09400D6AD8D00DCB59800DAB5
      9700D6B09400D3AF9200D3AF9200D6B19300DAB59800DCB59700D6B19400D4AF
      9200D4AF9200D6B09300DCB49800DAB59700D9B39400D1AC8A00CDA88B00F4F2
      F200FBFAFA007E7878005F636100B79F8900DFB79700DDB79700D7B09200D6AF
      8E00D7B39200D4AE8D00D1A06800D49E6C00A87B5C00FFFBFA00000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005600000056
      0000005400000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005A0000005A000000710000C5F1E700CCFFFA00CFFF
      FC00D3FFFE00D3FFFE00DBFFF40095C59A00005500000056000081D28C00C2FD
      FD00ACF3DC00006B000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00F1E8E300D3AF9B00E8CFBF00EAB39400953E130091390F0090380F008F37
      0E008D350C008A320B00872F09007C220200BA80590000000000000000000000
      00000000000000000000FEFFFE00FCFCFB00FCFBF900FCF8F500FBF5F100EFE0
      D000E4C6AD00F2E8DF00EFE0D300EEDACA00EBD4C100E7CFBA00E3C7B300E3C3
      AB00E0BDA600DCB7A000D7B29900D3AD9300D4A98D00CC9B7B00D1A88B00CDA4
      8900CAA48700CDA48B00CDA58C00CFA68F00CDA89000CDAA9400D1AF9900D4B3
      9F00D7B7A500D9BFAD00DCC6B200BC907300DFBDA900E3C9BC00F2E7DF00D1AF
      9600A56E4100A9714300B98F6F00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      000000000000FBFBFA00F0E6D900CDBFB000FBF5EF00FDF6F000FDF6F000E9DF
      D300D3C4B000D5B08C00D48C5400D3864F00D1804800D07C4100CF763A00CD73
      3700D0885700C9632500C75B1F00C6541C00C44F1800C1481400C0411100BF3C
      0E00BD3C0E00BF835900BD9E8000B7855F00B18F6F00A98B6C00A18061009B7A
      590098765500957353009573510095745300977655009B7A59009B7A59009270
      4F008E6D4B008E6C4B00A6856400C1A48800D1BCA400DCCAB400E0CFBD00E2D4
      C400E6D8C700E8D9CA00E8DBCC00E6D8C600E1D1BF00DBCAB600D5C1AC00CCB4
      9D00C0A48900C4AA8F00C4A98F00C0B6AF00BCB1A700E7D8C600EBE8E3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00DCDCDC00EDEDED00EDEDED00CDCD
      CD00CFCDCD00A1A3A400F3EFE800F2E7DF00F3E9E000F4E9E000F3E7DD00EFE3
      D700EFE3D700F2E3D700F3E3D600948E8600474544005653510067616000756C
      6B00E5E0DF0000000000E5D7CA00EDD3C000D0AF9300D3AF9200D3AD9000D6B1
      9400D9B49700DAB49700D7B39300D3AD8F00D3AD9000D6B09300D9B49400DAB3
      9600DAB19400D4AF9000D4AF9000D4AF9000D9B39300D9B39400D9B09200D0A5
      8000E1D9CF00FFFEFE00969092004C505400D1AF9300D3AC8F00D7B09000DAB3
      9300D9B19700D4AB7100DCAD7200E1AD6F00E9D8CA0000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005900000059000000560000005C
      0000005F0000005A000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005A0000005A000000710000C5F1E600CCFFFA00CFFF
      FC00D1FFFE00D3FFFE00CAFCFF000066000000520000004F0000C2F1EE00D1FB
      FF00CAE9E900005A000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00F4EBE400D7B5A000EBD3C400EBBA9B009C4E1F009E4C1F009B5021009F54
      2400A3592800A85F2E00AB643200AB623200D4997400F4DCCA00EDD6C100EAD0
      B900E8CAB200E8C7AE00EAC4A800E6C0A400E1BA9F00E1B99C00E1B99E00E3B5
      9800E3AF9100DFB9A000DFBAA000E1BDA400E4C0A600E4C3AB00E1C7AF00E4CC
      B500E7D0BC00EBD4C300EEDACD00EDE0D600EDDDCF00D7BAA400F5EBE300F7EF
      EA00F7F4EE00F7F4F100F8F7F500F9F8F800F9F9FB00F7F9FC00F7F9FC00F7F9
      FC00F7F9FB00F5F8FC00F9FBF900C6A08900E0C0AD00E4CDBF00F4EAE100D4B3
      9B00AB744C00AE784D00BD957700FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      000000000000FBFAF700ECE1D100CDBFB000FEF9F200FDF6F000FDF5EF00E9DD
      D000D4C4B100D4AD8800D38B5400D3864F00D1804800D07C4100CF763A00D079
      4100CD7D4800C9612400C75B2000C6541C00C4501800C1491500C0411100BD3D
      0E00BD693700BD9D8000B99B7D00B3957700AA8C6C00A1806000987757009473
      5000916F4C008E6C49008E6C4900947351009D7C5B009A795800957453009471
      50009271500098795700C1A68900C4A98E00D1BCA400D8C6B000DBC9B600DDCC
      B900DFCFBC00DFCDBC00DDCDB900D8C9B300D7C4AF00D8C6B100D1BDA700C9B1
      9A00C4AC9100C0A48800BCA79200C7BFB900CCC3BA00ECDDCD00EBE7E1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C00EDEDED00E7E7E700DADA
      DA00BBBCBC00A9A19D00F6EDE300F6ECE400F3E9E100F2E7DD00F2E5DD00F3E7
      DD00F0E4DA00F0E3D600D1C7C000444142005C5858006B65630088817E00F4F2
      F000F2EFEC00E4D1C100E8D3C000E8D4C100DDB59B00D7B19400D4AF9200D0AB
      8F00D3AF9000D6B19200D9B19600D9B39600D6B19300D3AD8F00D3AC8E00D4AF
      9000D9B19400D9B39400D6B09200D3AD8E00D1AB8D00D3AD8E00D7B09000D6B1
      9200D1A48300DDCFC9000000000098969300635F5C00F0C39C00D9B19000D4AB
      8900D6AE8500DBAF7200DDB17400B78C6900FFFEFC0000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005900000059000000580000005A
      0000005C00000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000580000005600000056000000710000C7F8ED00CFFFFF00D1FF
      FF00CCFCFF00D5FFFD00CCFCFF0060C69B0064C5A10064C69B00C7FDFF008CDD
      CD001A9147000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00E6DDD700CCAD9A00DDC4B500E6BA9E00D7936B00D6936800D0916800CC8D
      6500C7895F00C3845A00C0815600B6784C00CF997700E6CDBC00E6D1C000E8D4
      C400EAD7CA00EADACD00EBDDD100EBE0D600EBE3DA00EAE4DD00EDE8E400E7DA
      CF00E0C9B600F1F2F400EEF1F200EEF1F100EEF1F100EEF1F200EEF2F400EEF1
      F400EDEFF200EDEEF100EBEEF100EBEEF100E8E7E400CDB9A900EAEAEA00E6E8
      EA00E6E7E800E6E7E700E4E6E600E4E6E600E4E6E600E4E4E400E3E3E300E3E3
      E300E3E3E300E1E3E400E6E4E100BF9A8300D3B6A400D7C1B500E7DCD400C9AA
      9400A36F4900A5724A00B38D7200EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      000000000000FBF9F700E8D8C900D9CDBF00FEF7F200FDF6EF00FDF5EE00E8DD
      D000D5C4B100D5B99D00D48C5500D3884F00D1804800D07C4100CF763A00CC89
      5900CD703400C9612400C75B2000C6541B00C44F1800C1481400C0411100BC51
      1C00B7977700B4977900B1947600AD8E7000A38364009A79580094704F008F6C
      4B008C6A4800916F4D009E7D5C00A3836300A18060009D7D5D009A7A59009777
      570097765500B0917300C7AC9100C1A48900CDB7A000D1BFA900D4C0AC00D4C0
      AC00D5C1AD00D1BFA900D0BDA600D3C1AC00DBCAB700D7C4B000D4C0AA00CDB7
      A100C9B19800C7AF9700C1B3A400D3CAC100DCD4CC00E9D9C700ECE6DD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00BCBCBC00FEFEFE00F8F8F800D6D6D600BCBB
      BB009B9B9B00FFFBF600F4ECE500F3EBE300F3E9E100F4EBE300F3E8DF00F0E5
      DA00EFE3D700EDE7DF002D2B2C005F5B5A006B6564008F888500FFFFFE00F0EB
      E800ECD9CA00ECDACC00E8D6C400E5D1C000D9B59C00D4B09200D9B39700D7B3
      9400D4AF9200D3AC8E00D1AD8E00D4AF9200D9B39400D9B19300D4AF9000D1AC
      8E00D1AB8E00D4AD8F00D7B19200D9B09200D4AD8E00D1AC8D00D0A88900D3A9
      8800D1AB8B00CFA38000E3DDDF000000000072747500A38B7700D3AB8A00DCB7
      9800D5A97100DBAF7500D8A96C00F6EAE0000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000058000000560000006E0000B7E9CE008FD9A80095D9
      9D00BFFBFF00CFFFFD00D5FFFF00C7FFFC00C7FFFF00CAFFFC00B7F0DD0057BD
      7B00005F00000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F5EEE700DAB7A100EED4C300EFBC9A00A44F1F009F4718009B421600993F
      1300953D11008F380F008E350C0082250400C1855F0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8EE
      E600EED7C300000000000000000000000000FEFEFE00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FBFBFB00FCFCFE00F9F5EF00D9C4B000FCFCF900F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700F7F7F700F7F7F700F4F4
      F400F4F4F400F4F4F500F8F7F400C9A08500E1C1AA00E4CFBF00F8EDE700D4AF
      9900A36B3F00A66D4100B78D6F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F4F000E3D3C000E3D8CC00FDF6F100FDF6EE00FBF3EB00E5D7
      C700D7C6B300D7C3B000D4956300D3864F00D1804800D07C4100CA794100C07C
      4C00CA692C00C9612400C75B1F00C6541B00C44F1800C1491500BF491600B17C
      5300AC8C6F00AA8B6A00A7886900A38564009D7C5B00957353008F6D4C009A77
      5700A6866700AC8C6D00AA8B6C00A7886700A4856600A1826100A08060009D7D
      5C00A0805F00C7AA9100C1A68B00BA9D8000C6AD9500CAB39D00CAB49E00CAB3
      9D00CAB39D00CAB4A000D4C0AD00DDCDBC00DDCDBA00DBCAB700D7C4B000D3BF
      A900D4BFA900CFBCA900C7BDB300DFD7CF00E9E3DC00E2D1BF00EEE5D900FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FAFAFA00AAAAAA00F7F7F700D1D1D100CCCCCC00BCBC
      BC00ADA9A500F3E9E300F6EDE800F7EDE700F4EBE400F3E9E100F3E8E000F4E8
      E000FFF6EC006C646300645F5E00746E6B00857E7A00FFFEFE00EFECEB00EDDF
      CF00EDDDCF00ECDCCD00ECD9C900E9D6C400E0C4AF00CFA78A00D1AC8F00D6B0
      9200D7B39400D7B09400D3AD8F00D1AB8D00D0A98D00D4AF9000D7B19300D7B0
      9200D4AF9000D1AB8D00D0A98A00D1AB8B00D4AD8E00D6AF8E00D3AB8B00CFA5
      8600C9A18300C49D7B00C6A07E00F2EDEF00E5E3E0005B595900ECBB9700D1A5
      7300D8AB7200E4B17400BB977B00000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005C0000005C0000006D00001A8B2900B2DFB4005EBA610060B1
      4700CAF8F300D3FFFF00E0FFFF00D5FFFF00D7FFFF00D1FFFE009BD5A200238E
      2700005800000058000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F9F9F900F9F9F900F9F9F900F9F9
      F900F1E8E100D9B9A500EAD3C400E8B99B00A0512100A04E1E009F4E1F009E4C
      1F009E4A1E009B4A1D0098491D00903E1500C68E6B00F9F9F900F9F9F900F8F9
      F900F9F9F900F9F9F800F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F2E8
      E000EAD4C100F9F9F900F8F7F800F7F8F800F8F8F800F7F7F700F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F4F5F500F2EEEA00D9C3B200F7F5F400F2F2
      F400F1F1F100F1F1F100F1F1F100F1F1F100EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EEEEEE00EDEDEE00F1EFEE00CCA48C00DFC0AD00E0CCBD00F1E8E100D0B2
      9B00A6734A00A9744D00B9907700F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F9000000000000000000000000000000
      000000000000E7DFD500E1CFBA00F7F0E800FDF6EF00FBF3EB00E2D5C600D7C6
      B300D8C9B400D9CCB900DCC7B300D48E5B00D1804800CC7F4700C67D4C00CD6F
      3200CA692B00C9612400C75C1F00C6551C00C65C2300B7734700A48361009B7A
      5900957351009471500098765400B1957600C6AC9100D0B79E00C9AD9400C1A4
      8900BA9D8000B4987900B1957600AF917100AD8F7000B3947600BA9D8000C1A6
      8900C7AA9100CAAF9500BDA18500AA8C6C00BAA08500BFA78F00BFA68E00C3AC
      9500D4C1AD00E7D7C700E5D7C600E0D1BF00DFCFBD00E2D4C300D9C9B400DCCA
      B700D5C3B000C1B9B100D7D3CD00EFEAE600FAF4EF00D3C3B300F0E2D400FBFA
      F900000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00A0A0A00000000000EBEBEB00E3E3E300BDBDBD008685
      8500FAF6F000F6EDE800F6EFE900F4ECE500F4ECE500F6ECE400F4E9E100EDE3
      D900C4BDB8003B3A3A00746E6C006E676400F2EDEC00F0EFEC00F4E5DA00F0E3
      D700ECDDD000E9D9CA00E9D7C700EBD7C700EBD6C600D4AD9000D1AB8E00D0AB
      8D00D0AB8D00D4B09000D7B09200D7B09300D3AD8E00D0A98D00D0A98B00D3AD
      8E00D7B09000D6AF8F00D4AC8D00CFA88900D0A78800CFA88800D3A98A00D0A8
      8900CAA38300BF987700AD846100D9D0CA00FFFEFF0093929400C09C8400D8A9
      7200DAAC7500CC9B6700FBF0E900000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005F00005EA96100DBFBE800D9FFFE00D3FFFE00ACE2
      CD00EAE7C400E4F9F200E2FCFF00E2FBFF00E0F9FF00D5FBFC006CA874000054
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000EFEFEF00EFEFEF00EFEFEF00EFF1
      F100E8E0D900D3B3A000E3CABD00E1B095009F4F20009F4C1D009C4C1D009B49
      1D0099471C0099461A0096461A008C3A1300C08A6600F2F1F100EFEFF100EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFF1F100EAE0
      D700E3CDB900EFF1F100EEEEEE00EDEEEE00EEEEEE00EEEEEE00EDEDEE00EBEB
      ED00EBEBED00EBEBED00EBEDED00EBEDEE00EAE6E300D1BDAD00EEEDED00EBEB
      EE00EAEBED00EAEAEB00E8EAEB00E8EBED00EAEBEE00E8EBED00E8EBEE00E8ED
      EE00EAEDEF00E8EDEF00EDEEEE00C6A18900D7B6A500D9C1B300E8E1DA00C7A9
      93009F694100A16C4200AF8A6D00F1F1F100EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF000000000000000000000000000000
      000000000000E3D5C700DFCCB700FDF6F000FDF5EE00EFE5D800D7C6B100D8C7
      B400D8C9B600DBCCBA00E1D4C400D8AC8800D38F5C00BD825400CA773D00CC70
      3600CA764000CF835000D1946900D4A67F00D0AD8E00AF8F6F009D7D5C009471
      4F008C694700AC8C6D00E2D0BA00E3D0B900DDC7AF00D5BDA400CCB19800C4A9
      8E00BFA18300BA9B7F00B6987C00B4977A00C4A98C00C6A98E00C4A78C00C1A6
      8900C1A48800C1A48900CCB09500BFA18500B99E8200BCA38900BFA68E00CCB6
      A000E6D7C700E7D9CA00E2D4C100DDCFBC00DDCDBC00E5D7C600DCCAB600DBC9
      B700C4B9AC00C0B7B100D8D3CD00EFEBE900FBF6F200D8CCBC00EEDFCD00FBF9
      F700000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FBFBFB00C7C7C700FCFCFC00DFDFDF00B9B9B900ADAFB100C3BD
      B900EFE7E400F3EDE800F6EFE900F7EFE900F7ECE500F3EBE300F3E9E100FFFA
      F40058545100726E6B0067605E00E3E0DD00F6F6F700ECE1D900F2E5DC00F2E5
      DA00F0E1D400EDDDCF00E9D7C900E8D6C400E9D7C900D7AF9300D6B09300D4AF
      9200D0AB8E00D0AB8B00D0A98B00D3AC8E00D6AF9000D4AF8F00D1AB8D00D0A8
      8A00D0A88900D1AB8B00D6AD8E00D3AC8D00D1A88900CCA78400C9A18100C79F
      7E00C39C7B00BB977700B5906E00CCB5A300F0ECED00E3E4E50072675800DAAB
      7100E7B47600C8A88F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005800000055000037A57200CCFFFF00D3FFFE00D3FFFE00BFFB
      F700006F000000700400006E0600006F060000710600006B0600006100000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F9F1EB00E3BFA900F5DCCA00F2BD9B00A44C1B00A3471700A1481800A046
      17009E4316009B4115009B4013008F340B00CA8D670000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCF4
      ED00F4DFCC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFBF500E0CCB500FFFCF700FCF8
      F500FBF7F200FBF5EE00F8EEE700F8EBE100F4E7DC00F2E3D700EFDFD100EDDA
      CC00EDD6C600EBD1C000E8CCB600D09F7F00E8C7B500EBD4C700FEF7F100D3B0
      9800A1653900A4673B00B68B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E1D0BF00E1D0BD00FDF7F100F7EFE700DCCCBA00D8C7B300D9C9
      B600D9CAB700DBCCBC00E2D5C700E2D1C000D9BCA000BC8B6100B4896100B48F
      6C00BF9D7D00D7BC9E00D7BC9E00D7BC9E00CAAF9100A9896A00A3836000B99B
      7F00DDC7B300ECDDCC00E9D8C400E5D1BD00DFC9B000D5BFA600CDB49B00C7AD
      9100C1A68900BDA08300BC9D8000B79A7C00C3A68B00C1A68900C1A38800BFA0
      8500BCA08200BC9E8200BC9E8000C6AA9100D5BFAA00D0BAA400CCB6A000E2D1
      C000E8DBCD00E6D7C700DFCFBC00D9C9B400D9CAB700E2D4C300E0D1C000D7C4
      B100BAAFA400BAB4AC00CFC9C300E7E5E100F6F4F100E0D5CA00E8D5C300FAF9
      F600000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FAFAFA00E1E1E100D6D6D600CDCDCD00C3C3C30089868600E9E4
      DF00ECE7E300F6EFE900F8F2EB00F6EDE800F4ECE700F6ECE500F4EBE400D9D0
      CC0047444400746E6C00A098960000000000EBE4E000F4EBE400F2E5DD00F0E3
      D900EFE0D400EDDFD100ECDDCF00EBD7C900E7D3C300D4B49C00D1A88A00D4AD
      8F00D6AF8F00D3AD8F00D0A98B00CDA78900CFA88900D1AC8D00D6AC8E00D4AD
      8E00D1AB8A00CFA58800CDA58500CFA78800D0A88800D0A88600C9A08100BF98
      7800B5906E00AD896800A78464009C785900E4DFDD0000000000676A7000DFAD
      7600B88A5D00FBF4EF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A0000005A00003DA97200CAFFFF00D3FFFE00D3FFFE00C7FF
      FF00006000000059000000550000005600000059000000560000005600000059
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F5F5F500F5F5F500F5F5F500F5F5
      F500EEE6E000DDBAA600EAD4C400E6B79A00A1532300A04E1F009F4F1F009C4D
      1F009B4A1D0099481C0099471C008F3E1500C48E6D00F9F8F800F8F7F500F8F5
      F200F8F4F100F7F2ED00F5EFEA00F4EEE800F2EBE400F2E8E100F1E7DF00EDDA
      C900E8CAB000EFE1D600EEDDCF00EBDACA00EAD7C700EAD3C300EAD0BD00E7CD
      B900E4C9B300E3C4AF00DFC0AB00DDBDA900DFBAA300DAAE9100DCB79F00D9B5
      9E00D7B29B00D4B09900D6B09800D7AF9600D4AE9500D4AE9400D3AD9300CFAD
      9300D0AE9500D1B09A00D6B39C00CC9F8200E1C7B700E4D1C600F1EAE700CCAE
      9800A36C4500A46F4600B58C7100F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F5000000000000000000000000000000
      0000FCFCFB00E2CFB900E2D3C100FDF6F000EBE0D400D9C9B600DBCAB900DBCC
      BA00DBCCBA00DCCDBD00E2D7C900E7DBCF00DCCCB900B9987900B4947300B391
      7100B7987700D4B79A00D7BC9E00D7BC9E00CCAF9100AC8C6D00C1A68900D3B9
      A000E0CAB300EAD9C700E8D7C400E5D1BC00DFC9B100D7C0A700D1B79E00CAAF
      9500C4A98E00C1A68900C0A38600BD9E8200BDA08300BFA18500BC9E8200B99B
      7D00B7987C00B6987A00B4977700B6987A00CFB7A000DCCCBA00DFCFBD00E5D5
      C600E7D8C900E2D3C000D9C9B600D5C4AF00D7C6B100DDCFBC00DCCCB700D3BF
      AA00BFAD9D00B4AFA600C4BDB700DCD8D300F1EFEB00E9E3DC00E2CFBA00F7F4
      F000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F8F8F800EDEDED00E8E8E800BFBFBF00A8A8A900C0BCB800E3DF
      DC00ECE7E400F4EFE900F7F0EB00F6F0EB00F7EDE800F3EBE500F7F0E900615E
      5B00716B6A006F686400FFFCFC00E3DDE000F6F0EB00F4ECE400F4E9E000F2E5
      DC00EFE0D600ECDFD000EBDCCD00EBDACC00EBD6C600E5D0BD00CCA38300CDA8
      8900CFA98A00D3AB8D00D3AD8F00D4AC8D00D1A98A00CDA58600CCA78800D1A8
      8900D3AB8A00D4AB8A00CFA58600CAA18300C79F7E00C79D7D00C19B7B00BC96
      7500B18B6B00A48160009C7859008A5E4200E7E1E000FAF3F600ACB0B500DCAB
      7100D9C3B1000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005A0000117F1F00CFEDCE00CAF0
      E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0
      E000C7F0DE00B7E7C9005BAB3500005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A0000005C00004CA96700DBFFEF00D9FFFE00D3FDFD00C7F5
      E60000610000005A000000580000005800000059000000590000005800000059
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F2F2F200F2F2F200F2F2F200F4F4
      F400EBE3DD00D9B7A300E7CFBF00E7B99A00BF784800C17A4A00C67F5000C981
      5400CD865900D08A5E00D38C6000D18A6000E3A58000EEC4A600E8C0A500E7BD
      A100E7BDA000E7BDA000E6BDA100E6BDA100E3BDA300E1BFA300DFBFA500E3BD
      9F00E4B99A00E3C4AF00E6C7AF00E4CAB300E3CAB600E4CDBA00E7D0BF00E8D4
      C300EAD7C700EBDCCC00EBDDD100EAE0D600EADFCF00D9BFA800F1E7E000F1E8
      E400F1EBE700F1EDEB00F1EEED00F2EFEE00F1EFEE00EFEFEE00EFF1F100F1F2
      F200F1F2F200EEF1F400F1F4F200CFA88E00DFC3AF00E0CDC100EFEAE600C6A8
      9000996137009E643900AD846600F4F4F400F2F4F400F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F2000000000000000000000000000000
      0000F4F1EF00E9D5C000E5D5C400FDF6EF00E0D1C100DDCFBD00DFD0BF00DFD0
      C000DDCDBD00DDCFBF00E5D7C900E8DDD100DCCAB700BFA08000B99A7900B495
      7600B7977600CAAC8E00D7BC9E00D7BC9E00D1B69800C1A68900CDB39800CDB3
      9800CDB39800D1B79E00DCC4AD00DFCAB400DDC7B000D7C0A700D1B79E00CCB0
      9700C7AC9100C4A98E00C3A78B00C1A48800BA9D8000BA9D8000B79A7A00B394
      7600B0917300AF8F7100AF8F7100AF917300C3AA9100D3BDA900DCCAB900E1D1
      C000E3D4C400E0D0BF00D8C6B100D4C1AD00D7C4B000DCCAB700DCCCBA00CFBA
      A400CFBAA400BAB0A600BAB3AD00CDC9C300E7E3E100F0EBE700E1CCB700F0E9
      E300000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00F3F3F300D8D8D800D0D0D000908F8D00D3CDCA00DDD9
      D300EBE5E100F6EFEB00F8F2EC00F6EFE900F6EFE800F7EFE800FCF8F6004B46
      4700746C6B00ABA5A300FCFCFC00F7EDE800F6EFE800F4EBE500F4EBE300F3E8
      DF00F2E4DA00EDE1D400E9DACD00E9D9C700E9D6C600EDDACD00D7B39800D3AC
      8D00CFA88800CCA58800CDA58600D0A98A00D3AB8D00D3AB8D00CFA78800CDA4
      8500CCA48300CDA48400CFA58500CFA48400C49D7D00BC947400B38D6B00AD88
      6500A8846300A07D5E009D785A00885C4000EFE8E500E0D7D400EBEBEB009B77
      5900FFFEFB000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC690000590000005900000059000000580000007100007EBF6B0078C0
      800075C0800072BF7F0072BF7F0072BF7F0072BF7F0072BF7F0072BF7F0072BF
      7F006FC07E006FB972001D8B0900005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000058000000580000298E3600ACD6A100CFEEE300B4E2C6008ACA
      8A00005D0000005A0000005A0000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000FBF2ED00E7C6AE00F5DDCA00F8C7A600DA8C5E00D6875900D1835300CC80
      4E00C67B4900C0784500BD713E00B3622F00DC9B7700FFF4E800FFF7ED00FFF8
      F100FFFBF400FFFCF700FFFEF900FFFFFC00000000000000000000000000FEF7
      ED00F7E3CF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFEF800E4D3BF00000000000000
      000000000000FEFFFF00FEFFFF00FEFFFF00FEFFFF00FCFEFE00FBFBFC00FBFB
      FC00FBFBFC00FBFCFC00FCFCFB00DAB09400EBCFBC00EDDCCF00FFF9F800D0AE
      98009B5F3400A0623600B2866600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9E1D700F1DCC600E9DDD000FDF5EE00EEE2D700E6D8CA00E6D9CC00E2D3
      C300E0D1C100E1D3C300E6D9CD00EAE1D500DCC9B600C6A98C00C1A48600BF9E
      7F00BD9B7D00BD9E7D00D1B49700D7BC9E00D1B79A00CDB39800CDB39800CDB3
      9800CDB39800CDB39800CDB39800CDB39800CFB49A00D0B69B00D3B9A000D0B6
      9E00CFB49B00CDB19800CCB09500C9AF9400BFA38600AA8B6D00A38261009A79
      58009774540095735100957453009A775800B69B8000C1AC9400C4AD9700CDB7
      A100DBC9B600DDCDBA00DBC9B400DBC9B600DDCDBC00DFCFBD00D3BFAA00D9C7
      B300E2D3C100E6D8C900C0B7AD00BAB3AC00CFCAC400E9E6E300DFCAB700E3D4
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FBFBFB00F3F3F300DFDFDF00A09E9900D1D1CC00D9D6
      D100E8E1E000F2ECE800F6F0EB00F8F2EC00F8F2EB00F7F0E900E8E0DA00635C
      5C006E656300F8F7F300E0DDDD00FAF3EF00F8F2EC00F4EDE800F3EBE300F3E7
      DF00F2E5DA00F0E3D700EFE0D400ECDDCD00E8D6C600E7D1C000E3C9B500D0A4
      8500D3AB8D00D3A98D00CDA58800CCA38500CCA58500D1A88900D3A98900D1A7
      8800CCA48500C79F7E00C39B7A00C0997800BD977500B8927100AD8A6700A37E
      5E009B77580097725500987555008F644400F4F0EC00D7CDCA00F8F8F800D2C8
      C200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000056000000560000005C0000005D
      0000005D0000005C0000005C0000005C0000005C0000005C0000005C0000005C
      0000005900000055000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005600000054000000560000006D000081CA860043A01C00006E
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F1F1F100F1F1F100F1F1F100F1F1
      F200EBE3DC00DCBDAA00E7D3C600E3B69900A5562500A5532200A4532300A151
      2100A0502100A04F20009F4E200095451800C48F6D00F4F5F700F1F4F500F1F2
      F500F1F2F400F1F2F400F1F2F400F1F1F200F1F1F200F1F1F200F1F1F200EDE4
      DC00E8D3C100F1F2F200EFF1F100EFF1F100F1F1F100F1F1F100EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFF100EEEAE600DCC7B500EFEEED00EDED
      ED00EDEDED00EDEDED00EBEBEB00EDEBEB00EBEBEB00EBEBEB00EBEBEB00EAEA
      EA00EAEAEA00EAEAEB00EDEBE800D1AD9400DFC4B500DFCFC400EEE8E700C6A9
      94009A663E009E684000AE866B00F2F2F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F1000000000000000000000000000000
      0000E8DCD000EBD7BF00EEE2D500FDF5EC00F1E7DB00E6D8C900E8DCCF00E3D5
      C600E2D4C400E3D5C600E7DBCD00EBE2D700DDC7B300CAAD9100C7AA8C00C3A3
      8300C0A08200C1A18200CDB09200D4B99D00CDB39800CCB19700C7AC9100C3A7
      8B00C1A68900C3A78B00C9AD9200CFB49B00D5BDA400DCC7AF00E1CDB700E3D0
      BA00E5D3BD00E5D0BC00E1CCB700DDC7B100D7C0A700CCB19700C3A78C00B99A
      7D00B0917100AA8B6C00A4836300A3826100BAA08500C0A99100BFA68E00C0A9
      9100C9B39D00D7C4B000D9C9B400DCCCB900DFCFBD00DDCDBA00D5C3AF00DFCF
      BC00E7D9CA00EFE2D400DBD0C100B7B0AA00CCC6C000E7E3E000E0CFBC00E0CF
      B900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FDFDFD00B0AEAD00D3CECA00D8D4
      CD00E3DDDA00F0EBE700F6F0EC00F7F0EB00F6EFEB00FAF3ED00A7A09C00716B
      6800938A860000000000E4E0DD00F8F3F000F7F2EC00F7F0E900F6ECE500F3E8
      E100F0E4DA00EDE1D700EDDFD300EDDFD000ECD9CC00E9D6C400E8D3C400CFAB
      8E00CDA48600D0A88900D1A98A00D1A98900CFA48600C9A18100C7A08100C9A0
      8100CAA38100C6A08000BF987800B58F6C00B0896700A8846300A5816000A07D
      5B0099745600966F5100966F50008D5F3F00F7F2EC00D4CCC900FAFAFA00C3C2
      C300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC690000590000005900000059000000600000005F0000005C00000058
      0000005800000059000000590000005900000059000000590000005900000059
      000000590000005A000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005600000058000000590000005C00000068000000630000005D
      0000005D00000058000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F8F8F800F8F8F800F8F8F800F8F8
      F800F1E8E100E1BDA800EDD6C600E8B79800A9552100A9501E00A9511F00A64F
      1D00A44D1D00A34C1C00A1491A00983F1300C98D6700F9F8F800F7F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F2E8
      E000EED7C300F8F8F800F7F8F800F7F8F800F8F8F800F8F8F800F8F8F800F7F7
      F700F5F5F700F7F7F700F7F7F700F7F7F800F4F1ED00DDCAB700F5F5F400F2F4
      F400F4F4F400F4F4F400F4F4F400F2F2F200F2F2F200F2F2F200F2F2F200F1F1
      F100EFEFEF00EEEFF100F2F1EF00D6AD9100E3C7B600E3D0C700F5EFED00C4A5
      8E0093582C00965A2F00A97F5F00F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800000000000000000000000000FEFE
      FE00E8D9C900E3CFB700F1E7DC00FDF5EC00F1E7DB00DCCAB900E5D8C900E3D5
      C600E3D5C700E5D8C900E7DCCF00ECE2D700DDC9B300CFB19500CCAF9200C7A7
      8900C3A48500C3A48500CAAD8F00D1B69A00C9AF9200A38363009D7C5B00A686
      6600B0927300BA9D8000C4A98E00CFB49B00D7C0A700DDC9B100E2D0BA00E6D4
      C100E9D8C600EAD9C700E8D8C400E6D4C000E3D0BC00E0CCB600DDC9B100D9C4
      AC00D7C0A700D3BCA100D1B99E00DFCCB400E6D7C600E6D8C900CDB9A300BAA1
      8B00C1AA9200CDB9A300D5C3AD00D9C9B600DFCDBD00DDCDBC00D8C6B100E0D0
      BF00E7DBCC00EEE1D400F0E5D700C3BAB000CFCAC400EAE7E300E2D4C300E0C9
      B100FEFEFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D2CE00CFCD
      CA00DEDBD800EAE5E100F3EDEA00F8F3ED00F7F2EC00FBF4EF00716A68006863
      6100C3BCBB00F3F3F300FEFAF800F8F4F000F7F2ED00F7EFE900F6EDE500F4EB
      E400F3E7DF00EFE4DA00ECDFD400EBDDCD00E9D9CA00E9D7C700E8D4C300E8D1
      C000C99C7A00C7A08100C9A38100CDA58500CFA58800CCA48400C69D8000C099
      7800BC947400BB937200B7906E00B08B6A00A78361009D785A00987153009671
      530096715300997556009D785600966A4600F7EFEF00DAD0CD00FBFBFB00C5C5
      C400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C0000005C0000005A00000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000058000000590000005900000059000000590000005900000059
      0000005A00000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000FBF2EB00EDC9B000F7E1D000F1C09E00B05B2500B0582200AF592200AE56
      2200AB542100AA531F00A9501F009F461700D1946F0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCF2
      EA00F7E1CF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFCF700E7D7C300000000000000
      0000FEFEFF00FEFEFF00FEFFFF00FEFFFF00FEFFFF00FCFEFF00FEFEFF00FCFE
      FF00FCFFFF00FBFEFF00FEFEFE00E0B79C00EDD1C000EDDAD000FFFBF800CCAB
      9500995A2F009A5E3100AE826200000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      F900ECDCC900DCC7B000F4EBE100FDF4EC00EADDCF00D5C3B000E2D4C600E5D7
      C900E5D8C900E6D9CA00E8DCD000ECE3D800DDC7B300D3B79D00D0B49800CAAD
      9100C6A78800C6A68800C9AA8B00CFB39800CCB09700AF917100A07F5F00A685
      6400AF917100BA9D8000C4A98E00CFB49B00D7C0A700DFC9B100E2D0BC00E7D5
      C100EAD8C600EADBC900E9D8C600E7D5C100E5D3BF00E2CFBA00E0CAB400DCC6
      B000D9C3AA00DFCAB100E3D0BC00CAB09500D1BDA700E5D7C700E7D9CA00E2D1
      C100D5C1AD00C9B39B00CDB9A300D5C1AD00DBC9B600DDCDBA00D5C3AF00DBCA
      B700E1D1C000E7D9CA00E6D8C900C6BDB600DBD5D100F1EEEB00E8DCCF00E8D1
      B700F5F2F0000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0E9
      E700DBD6D200E3E1DF00EEEAE600F5EDE900F7F2ED00FEFBF60059545100645C
      5A00E5E1DF00E9E8E700FFFCFB00FAF6F300F8F3EF00F6F0EB00F4EDE500F3EB
      E400F3E8E000F2E5DD00F0E1D700ECDFD000E8D9CA00E7D4C600E5D3C100E5CF
      C000DFC7B300CAA18100C6A08100C39C7D00C39B7B00C19C7B00C09C7B00BD97
      7700B48E6E00AC886500A5835F00A17D5C00A07A5B009B77580096715300936C
      4F00946E4F0098715100A37D5900B18E6A00F4F2F000DDD6D100FAFAFA00DBDA
      DA00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000EEEEEE00EEEEEE00EEEEEE00EEEF
      EF00EAE1DA00DFBDA800E7D1C300E1B59900AE622F00AE5E2A00AD5F2C00AB5E
      2A00AA5B2A00A95A2800A65826009F4E1F00C7916E00F1EFEF00EEEFEF00EEEF
      EF00EEEFEF00EEEFF100EEEFF100EEEFF100EFEFF200EFF1F200EFF1F400EBE3
      DD00E6D3C100EFF2F500EEF2F500EEF2F500EEF2F500EFF2F700EFF4F700EFF4
      F700EFF4F700EFF4F700EEF2F500EEF4F700EEEEEB00DCCCBA00F1F4F400EFF4
      F500EEF1F100EEEFEF00EEEFEF00EEEFEE00EEEFEE00EDEEED00EDEDEB00EEEB
      E800EFEAE600EFE8E400F2E7DF00D7AF9500DDC4B600DCCCC300EDEAE600C1A5
      8F00945E350098603700A9816400EFEFEF00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00000000000000000000000000F6F3
      F000F2DDC600D1BCA600FCF3EA00F5EEE300E8DCCD00E8DCCD00E7DBCD00E7D9
      CC00E8DBCF00E9DFD100EADFD300EFE6DC00E0CAB300D8C0A600D5BDA300D1B7
      9B00CCAF9100CAAC8E00CCAF9100CDB19500D0B49A00C0A48600A9896A009E7D
      5C0097745400AA896A00C3A68900CDB39800D5BFA700DFCAB300E3D1BD00E8D7
      C400EBDBC900EEDFCD00ECDDCC00EADBC700E9D8C600E6D4C100E6D4C000EBDD
      CA00E2CFBA00B39476009471500089674500A4886900B9A18800DCCAB900E3D5
      C400E5D7C700E8DBCC00EBE1D300E8DCCC00D8C6B300CFB9A400C9B39D00CDB6
      A000D1BCA600D3BFAC00C3B9B000D4CFC900ECE8E600FBF9F600EEE6DD00F3DD
      C300E9E0D7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFBFB00E4DAD200F0ECEA00F7F3ED00F9F7F10056514F00675E
      5C00FBF7F600E0DFDD00FBF8F700F8F6F300F8F3F000F7F0EC00F4EFE900F3EB
      E500F0E7E000EFE4DA00EDE1D700EDE0D600ECDDCD00E8D9C900E4D0C000E1CA
      BC00E0CAB900CCA99000C49C7B00C1997D00BB967400B48E6C00B18B6A00AD89
      6800AC896700A58361009F7A5A0097725400926E5000936E4F00977153009974
      54009D7755009F775500A77D5600D9C3B300EBE4E300E5E0DC00F6F6F600EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00F5EDE700E7C4AD00F2DCCA00EDB99800AA531F00AA4E1B00A84D1B00A64D
      1A00A54C1A00A44A1A00A3491900993E1200CC8E6800FCFFFF00FCFFFF00FCFF
      FF00FEFEFC00FEFEFB00FEFCF900FCFCF800FCFBF500FCFBF400FCFBF500F9EB
      DA00F5D9BD00FFF8EE00FFF4E700FFF2E600FFF1E100FFEFE000FFEEDF00FFEB
      D900FFE7D300FEE3CD00FBE0C900F8DAC100F4D3B600EBBD9B00EECDB000EDC7
      AA00EDC3A300EABD9B00E8B79600E6B09000E1AB8B00DFA88500DAA37F00D69C
      7900D3967200CC8F6C00C9896400DA9C7900EBD3C400E7D4CA00F9F7F200C4A5
      8D008E4F230093532600A67A5900FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00000000000000000000000000F6F1
      EC00EAD3BA00DBC6B100FBF2EA00E6D9CD00EADDD000E9DDCF00E6D9CA00E8DC
      CD00EADFD100ECE2D500ECE2D700F1E7DD00E1CCB400DCC4AA00D9C0A600D5BA
      9E00CFB19500CDAF9200CCAF9100D0B19400D7BC9E00CDB19200AD8F7100A483
      63009A79580094735100A07F5F00C9AF9500D5BFA600DDC9B000E5D3BD00E9D8
      C400ECDDCC00EFE1CF00EFE0CF00ECDCCC00EADBC900ECDCCA00F2E5D400DDC9
      B100AC8E6F009A79570092704F008E6C4900A78B6D00CFBAA400E6D7C700E1D3
      C100E2D4C100E5D7C600E8DBCC00EBDFD100EFE3D700EADFD100D9C7B300C6AF
      9800CAB49E00C4B3A300BFB6B000D4CFC700EBE8E500FAF7F500F1EAE500EBD7
      BD00E8DBCD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFBFA00EFEAE600F1E8E4005B5453006F67
      640000000000DCDAD900FBFAF800F8F6F400F6F3F000F4F0EC00F3EDE900F3EC
      E700F0E8E100EDE5DD00ECE0D600E8DCD300E7D9CC00E5D6C700E4D3C400E0CC
      BC00DCC7B700DAC4B500B9977B00B58D6C00B18E6E00AD896800A5836100A07B
      5B0099775800997556009874560098725400966E4F00926B4E00946C4F009B71
      5100A47B5900AC845F00AC7D5100F4EFEB00DDD4D000F3EFEF00ECEBEB00F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F8EFEA00EBCCB500F5DFCF00F4C6A500D68C5E00D98E6100D9906600DC91
      6700DD936800E0956900E3986C00E1966B00EEB08900F8CDAD00F7CAAA00F4C3
      A300F2BF9E00EFBA9600EBB39100E6AF8C00E3AA8500E0A58200DA9F7C00E0A1
      7C00E4A57F00D08E6700CD8B6100CA865A00C6815400C07C4F00BA754900B771
      4200B36B3B00AE643400A65E2D00A3582700A55F3000D18D6200A4603400A35E
      3000A05A2D009A56290098512600954F2400914C22008E481F008C461D008943
      1C0086401A00843E18007F391500CF906C00F4DFD000EDDCD000FCFBF700CAA9
      930095552C00995A2F00AD806000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5EE
      E800E3CAAF00E3D1BF00F3E9DF00EBE0D300EBE0D300E7DBCC00E7D9CA00E9DD
      D100ECE1D500EEE3D700EEE3D800F1E8DD00E2CDB600DDC6AD00DBC3A700D5BD
      A100D1B49800CFB19400C7AA8C00BD9D7F00C0A18200CDAF9100B6987A00AC8C
      6D00A38261009A795800916F4D00A1806000D0B7A000DDC7B000E5D1BD00E9D8
      C600EEDDCD00F0E1D100F0E1D000EFE0CF00F0E1D100F4E7D800F2E5D400BFA1
      86009E7F5F009A7958009573530092704F00B69B8000F1E6DB00E9DCCF00E1D3
      C000E1D3C000E2D5C300E5D7C700E7D9CA00E9DCCF00EFE3D700F2E8DD00EAE0
      D100D5C3B000BFB3A700BCB4AD00D0CAC300E8E5E100F9F6F400F5F1EB00E6D0
      B600E7D7C400FFFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000716D6C007B6E
      6A0000000000DAD9D700FBFAF800F8F7F400F7F3F200F4F0EC00F3EDE900F0EB
      E500EFE7E100ECE4DF00ECE0D900E8DDD000E4D6CC00E1D3C600DFCDC000DCCA
      BB00DAC6B700D3BFAF00D3BFAF00A98A6C009C7B5C00A07D5E00A07B5C009C78
      590097715400906C4F00926B4E00936C4F00976F51009C7554009F775500A178
      5600A77D5600AD835B00AF83590000000000D4C7C40000000000BEBCBA00FBFB
      FB00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000EDEDED00EDEDED00EDEDED00EEEE
      EE00E8E0DA00DFBFAB00E7D1C300E4B69B00C6835600C6815400C3805100C37C
      4E00C1794A00BF754800BC734300B36E3E00CD8D6400AF673800A95B2900A659
      2800A4562500A15422009F5020009C4D1F009A481D0098471B00913F1700A158
      2A00B5734600893611008B3D16008A3914008737130085351100823210008230
      0F0081310F0083361300873E19008B451D0091512700BC8159008C4922008E4A
      22008D4922008C4822008B4821008A4821008A4720008A472000894720008746
      1F0086451F0086451E0082401C00C78E6C00E6D0C300DDCDC300EDEAE700BDA0
      8D008F552E0093593000A57B5E00EEEEEE00EDEEEE00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00000000000000000000000000F0E7
      DC00E0C6A900EBDDCD00F4EAE000EFE3D700E9DDCF00E5D8C900E8DCCF00ECE1
      D700EFE5D900EFE5D900EFE5D900F1E7DC00E2D0B900E0C9AF00DDC4AA00D9C0
      A400D4B79B00D1B39700B7987700A7856300A7866400B6957600BFA18300B395
      7600AA8C6C00A38261009A7958009E7D5D00CDB49A00DCC7AF00E3D1BD00E9D8
      C600EFDFCF00F1E2D300F2E3D400F4E6D700F5E8D900F5E8D900E5D3BD00AF91
      7100A38363009E7F5D009A7958009B7A5900DBC9B400F4EAE000ECE0D300E1D3
      C100E1D3C000E0D3C000E1D3C300E3D5C600E6D8C900E8DBCD00ECE1D500F1E6
      DC00F3E8DF00E8DFD300CCC3B900D1CAC400E9E6E100FAF7F400FAF6F300E0C9
      B000EAD8C300FCFBF90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099969600786B
      680000000000DCD7D400FCFBFB00FAF7F700F8F4F200F6F2F000F3EFEB00F0EB
      E700ECE5E100E9E3DC00E8DFD900E7DDD300E3D6CD00E0D1C600D9CABF00D6C3
      B700D1BFB100D0BBAC00CAB5A500CAB7A800A1806400906C4E00936E5300936E
      51009471530097715300946E5000946E4E00976F4F009F755300A77E5A00AF85
      5E00B4896100B3805600EFE9E400EFE8E700E1D9D30000000000ADAAAB000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F9F1EA00EDC9B000F8E0D000EFB99900B2582100B3551F00B3551F00B054
      1F00AF531D00AD501D00AB4F1C00A4491800CC825000AB562300A4461700A448
      1800A1461700A04616009F4516009E4215009B411400993F1300953A0F00A955
      2400BF7342008B310A0090370E008D350D008C350D008C370E008E3A12009341
      180096481D009A4D20009A4D2100964C1F0098502400C682550090461D009047
      1D008E461C008D431B008E411A008C401A008A3F1900893F1800873E1800863B
      1700853B1600843A16007F351100D1906900F4DDD000EDDAD000FFFCFB00C4A4
      8D008B4820008E4C2200A5775500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6D5
      C100D5BA9E00FBF1E700F3E9DF00E5D7C700E2D5C400E9DDD100EFE3D700EEE3
      D800E9DFD100E6D9CC00E3D7C700DDCDBA00C1A68900C7AA8C00D0B49800D8BF
      A300D3B69A00B0917000AC8B6A00AA8B6A00AA8B6900AC896600BA9B7A00B99B
      7C00B0917100A78669009D7D5D009B7D5D00B49B7F00BFA68C00C4AD9500CAB3
      9D00D0BAA600D4C0AC00D8C4B000D9C7B300DBC7B300CFB7A000AF927300A788
      6700A7866400A7856300B08F6F00EBDBC900F4E9DD00F5E9DF00F1E6DB00E1D1
      C000E1D3C000E1D3C000E0D3C000E1D1C000E1D1C000E2D3C300E3D5C600E6D8
      C900E9DDD000D5CABF00BDB4AD00D0C9C300E9E5E100FAF6F400FDFBF900DBC9
      B600F0DBC000F6F2EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFCDCC006860
      5E0000000000D6D4D400FEFEFC00FBF8F800F7F6F400F7F3F000F4EFEC00F2EC
      E900EDE8E300EBE4DD00E5DDD700E4DAD000E1D6CC00DDD1C700DACABF00D4C4
      B800CFBFB000C9B7A900C6B4A400C1AD9F00C0AF9D00AC8F7A008F684B00926B
      4F00926C4F00986F53009C775500A17A5900A57B5800A77B5800A9805900B185
      5C00B98A6100BF96740000000000DCCFCA00F2EDED00EBE9E900EEEEEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2796F0014510300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00F5EEE700EACAB600F4DFD000EDBA9C00BA673100BA652E00BA652F00B964
      2E00B7642E00B6622D00B35F2C00AD5A2600D08B5E00B2663400AD582500AB56
      2500A9562300A8542200A5532100A3502000A14F1F009F4D1E009A471A00AD61
      3100C07C500095431A009C4E21009E552500A15A2A00A45F3000A6603400A561
      3500A35F3200A05C30009E5A2E009E592A009F5E3200C78A6100985428009954
      2800955328009553260095512600944E2500914E2500914D24008F4C23008E4A
      22008D4A22008B49210087431D00D3987400EFDDCF00E7D7CF00F9F8F800C6A8
      910091542C0096582F00A97F6000FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00000000000000000000000000E3CD
      B300D9BFA300FCF3EA00EBE0D100DDCDBA00E3D5C700EADFD000E9DCCF00E8DB
      CC00E7DBCC00E6D9CC00E6D9CC00DFCDBC00C6A98C00C4A68600B7987A00AA8E
      6F00AD927600B39A7F00B49E8800B6A38E00B7A69400BDB0A300C6BAAF00CAC3
      BC00CFC9C100D0CAC300CCC7C300C7C3C000BFBDBC00B0B0AF00A0A0A0008C8C
      8C007979790063636300504F4F0041403F0033322F002826240024211E00221F
      1B00231F1A00241F1A0030261F004334280059493900735D4B008E745B009879
      5F00AD8F7100C3A68800D5B79B00DCC4AD00DCC9B600DFCFBD00E1D3C100E2D4
      C400E3D5C400C1B4A600B9B0A700C9C1BA00E2DDD800F6F3F000FDFBF900E3D4
      C600EBD3B600F5F1EB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB005951
      5000F8F6F400DFDDDC0000000000FCFBFA00FAF8F700F7F4F200F3F2F000F2ED
      EB00EFE9E500ECE7E100E8E1DC00E4DCD300E0D6CC00DCCFC700D7CAC000D4C7
      BB00D1C0B500CCB9AD00C6B4A500C0AD9D00BDA89800BCA79300BBA490009C6F
      5400997250009B725300A0755400A77D5900AF855E00B4896100B7896000B586
      6000AF7A4C00FCFEFE00F8F3F000D7CCC60000000000D6D3D300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2796F0014510300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000EEEEEE00EEEEEE00EEEEEE00EFEF
      EF00EAE3DF00E1C9B500EBDACC00E3B69A00BD713F00BA6C3800B7683600B566
      3200B2622F00B0612C00AF5F2A00A8582600C9855900AE643200A8582500A659
      2600A5562600A5582600A5582700A4582800A55A2900A65C2C00A55B2C00B371
      4300C4865C00A45E3000A8623700A4623700A3613500A35F3400A15C31009F5B
      2F009C5A2E009C592D009B592D009A562A009B5C3000C1845C00945126009551
      27009451250093502500914F2500904E24008E4E24008F4C22008D4922008C48
      22008B4821008A471F0085411D00CD936F00E6D3C400DDCFC600EEEDEB00BDA0
      8B008D51290090552D00A37A5B00EFEFEF00EEEFEF00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000FEFEFD00E1C6
      A900E0C7AD00F7EFE500E2D4C100E5D7C600EADDCC00E3D4C100DCCDBC00DBCC
      BD00DBCFC100D9CFC400DBD3CA00DDD5CD00DDD7D000E1DFDB00E9E8E500F1F0
      EF00F4F4F400F4F4F400F4F4F400F3F3F300F2F2F200F1F1F100EFEFEF00EBEB
      EB00E8E8E800E2E2E200DCDCDC00D1D1D100C4C4C400B4B4B400A3A3A3008E8E
      8E00797979006666660051515100404040002F2F2F00242424001D1D1D001A1A
      1A00171717001515150014141400131313001313130013131300131313001414
      1400161616001B1A1900221F1D00322B24004D433700675B4D00807163009E8C
      7C00AD9A8800B7A38F00B3A79A00C9C0B700E1DBD500F5F2EF00FDFBF900ECE1
      D700E3C9AC00F5EFE70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B63
      6200DDD7D700E8E5E50000000000FCFCFC00FCFAFA00FAF7F400F7F4F000F3EF
      EC00EFEBE700ECE7E300EBE3DF00E7DFD900E3DAD100E0D3C900DACDC100D3C6
      BB00D3C1B700CFBFB000CDB9AC00C7B5A500C4AC9C00C0A89400BDA49200C1A7
      9000BB997D00A8805A00AC805900AD835B00B0845B00B5895F00BC8B6300B981
      4F00E0D0C400FCFBFB00D4CAC600F3F0EF0000000000CDCDCD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2796E00114F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000FCF5EF00F2D9C300FBEBDF00F5C4A400CD7E4900CC7C4800CC7B4800CA79
      4700C7774200C6743E00C1733D00BA6D3700DD936500C3774300BA6C3600BC6C
      3900BA6B3900BC6B3900B96B3800B5693800B5683800B3673500AF643000C075
      4700D18A5B00A65B2800AA5E2F00A95C2D00A65B2C00A55A2A00A4592800A158
      27009F5525009E5425009E5325009A5022009E562700CA865A00964C1F009549
      1F0094491F0093481E0091471D008F461C008D461C008D431A008D411A008A40
      1900893E1800863D160083371300DA986F00F9E3D400EEDFD30000000000C9A8
      90008F4E220094512500A97B5900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6F2F000E5C9
      AA00E5CFB600F3E9DD00E7DBCD00D1C7BC00C9C1BC00D4D1CF00E1E0DD00E5E3
      E200E9E9E800EFEFEF00F1F1F100F2F2F200F3F3F300F3F3F300F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F3F3F300F2F2F200F1F1F100EFEFEF00ECEC
      EC00E8E8E800E3E3E300DCDCDC00D1D1D100C7C7C700B7B7B700A6A6A6009292
      92007D7D7D0069696900545454004343430032323200252525001F1F1F001A1A
      1A00181818001515150014141400131313001313130013131300131313001414
      140015151500171717001A1A1A001D1D1D002424240030303000414141005453
      5300696766007F7D7A008F8C8B009B979200BAB3AA00E3DCD400FDFAF500F4EF
      E900E0C3A600F1E7DC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AEAA
      AB00B1ABA800F3F2F200F8F8F800FEFCFC00FCFBFA00FBF8F800FAF6F300F7F3
      F000F3EDEB00F0EBE500ECE5E000E9E1DC00E7DDD600E4DAD000E0D4CA00DCCD
      C100D7C6BB00D3C1B500D0BDAF00CFBBAB00CDB8A500CCB39F00C7AD9700C3A7
      9000C6A58D00CAA98F00C49D7D00BD8F6A00B9895F00B8885B00B4805000CDB4
      9F0000000000E5D9D700E3D9D60000000000CECCCB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2796E00114F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F7F7F700F7F7F700F7F7F700F7F7
      F700F1EAE600E8D0BF00F1E1D700EABFA300C7804F00C7804F00C6805000C67E
      5000C47B4E00C17B4D00C07B4C00BA774800D7966E00C07F5100BA754600BA74
      4700B7724500B7724500B6714300B36E4100B06E4100B06D3F00AD683B00B97A
      4E00CA8B6200A8643600AA663A00A8653800A9653900A8653900A5643700A564
      3700A4623700A1613500A1603500A05F3400A4663A00C98C65009C5E32009F5F
      32009E5E34009C5C31009C5C30009E5E32009C5C31009B5A30009C5C31009C5E
      31009A5A2F009A592E0098582D00D79E7900EED9CC00E7D6CD00F5F2F200C6A9
      9500965E350099613700AD846600F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F7000000000000000000BDB0AD007366
      6900868383009E9E9E00B3B3B300C6C6C600D4D4D400DDDDDD00E5E5E500E9E9
      E900ECECEC00F0F0EF00F1F0EC00F2F0EE00F2F2F000F3F0EE00F3F0EC00F3F2
      F100F2F0EE00EFEAE500EBE6DD00E8E1D900E5DFD800E1D7CF00DCD1C600ECE6
      E000EEE9E300E3DFD800DCD4CC00D4CDC300D1C9BD00CFC4BA00C6BCB000B4A7
      9A00AD9E8F00A99A8800A9988800B0A19200C1B6AA00BAAF9E00B1A39200CCC1
      B600BFB4A700ADA08F00D0C9C100E9E8E700E3E2E200E0DFDD00C9C4C100BCB7
      B400B9B6B100B6B1AF00A3A09B0082807D006A6764005C585500474544005151
      510063636300777777008B8B8B009D9D9D00ACACAC00B7B7B700C0C0C000C1C1
      C000BDB9B300C4B9AF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000746D680000000000D1CFCF0000000000FEFCFB00FBFAF800FAF8F600F8F6
      F200F7F2ED00F3EFEB00F2E9E500EDE7DF00E9E0D700E5DCD400E4D7CF00E3D4
      C900E0D0C300DACCBD00D7C3B400D3BDAD00D3BCA800D3B9A500D3B7A100D0B4
      9C00CDAC9400CAA78E00C9A38600CCA78A00CCA48500C9976F00C0A48E000000
      0000EFE5E300DFD4D00000000000F2F2F200E3E3E30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E87C71001A540600005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B2F5D500038414000059000000560000F2F2F200F2F2F200F2F2F200F2F2
      F200EDE6E000E3CCB700EDDDD100E6BC9F00D68E6400D7906600D4916800D793
      6B00D6916900D4916900D6946B00D4936B00DFA07A00D7967100D7966E00D796
      6E00D6956D00D9987100DC997400DA997300D9997200DC9C7700DD9B7800DFA0
      7B00E4A68100E0A07C00E0A17C00DFA17C00E0A37E00E3A48100E1A48000E1A4
      8100E4A68300E3A88400E3A88300E4A98500E7AB8900E7B08D00E4AB8900E7AE
      8C00E7AF8F00E8B08F00E8B28F00EBB59300EAB69500EAB69600EBB79600EBB7
      9800EAB99900E8B99900E8B99900E4B99A00E4D0C100E1D1C600F1EEEB00C3A6
      9000955C3100995F3500AB826200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F20000000000F5F5F5007C7C7C007171
      71008B8B8B00A3A3A300B6B6B600CAC9C900D8D7D700E0E0DF00E9E6E300ECE9
      E600EFEBE700EFECEA00F0ECEA00F0EBE600EEE9E300E7E0D800D8CAB900D3C3
      B000CFC0B000CDBFAF00CCBFAF00C9BCAC00C6B7A700C3B3A300C1B0A000E6E0
      DB00F2F0EE00E6E2DF00D9D3CC00CDC4B900C6BCAD00C0B3A700BCAFA100A798
      86009888740092806D00917F6A009B8B7700B3A69800AA9B8900A08F7D00CDC3
      B900B4A697009B8977008E7A6600C1B6A900F6F5F300F7F7F600C9BDB100C6BC
      AF00C9BFB100CCC1B600CDC3B900D5CDC400DFDBD400E5E0D900E9E6E200E3DD
      D700CCC7C100B9B4B000AAA7A600ACAAAA00B3B3B100B9B9B900C0C0C000C4C4
      C400C0C0C000BABABA00E1E1E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A09D9C00D6CCCA00ECEBEB00F7F7F600FFFEFE00FEFCFB00FCFAF800FAF7
      F400F8F4F000F6F0ED00F4EDE800F3EBE500EFE7E000ECE1DA00E7DDD300E7D7
      CA00E4D4C700E3D1C300E1CDBD00DDC6B700D9C0AD00D6BCA700D4B9A300D6B7
      9F00D6B59B00D3B09400CDAB8D00C7A38400C6977200C6B5A700FFFCFA00FAED
      EB00D9D0CD00FBFAF80000000000D5D5D5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EF8075002056070000600000067B
      000075BA68000059000000540000005800000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005800000070
      0A00D9E5E3000C80180000590000005800000000000000000000000000000000
      0000FEF7EF00F4D9C300FBEADA00FBE1CD00FED9BC00FEDCC000FEDFC300FFDF
      C400FFDDC400FEDFC700FEE0CA00FEE0CA00FBDDC600FCE1CA00FEE1CC00FEE1
      CC00FEE1CA00FEE3CD00FEE3CF00FFE4CF00FFE4CF00FFE4D100FFE4D300FFE3
      D000FEE1D000FFE6D600FFE6D600FFE6D400FFE6D600FEE7D900FEE7D900FEE7
      D900FCE8D700FBE7D700FCE6D700FCE6D700FBE4D700F9E4D600FBE6D700F9E4
      D700FBE4D900FBE6D900F9E6D900F9E6D700F9E6D900FBE4DA00F9E4D900F9E3
      D900F8E6DA00F8E6DC00F7E6D900F7E4D600F2E3D700F1E0D400FFFEFB00D3B2
      9A00A0663900A5693D00B98D6D00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBEBEB00707070007777
      770092919100B7B4B300D0CFCD00E0DBD700E9E0D300F1E2D100F3EEE800F4F2
      EF00F4F2EE00F4F0EC00F2EFEB00F1ECE800EEE8E300E5DDD400D3C4B300D0C1
      B000D1C3B100D0C1B300D0C3B300CDC0B000CABDAD00C6B7A700CAB4A000ECE2
      D500FBFBFA00F2F0EE00E7E3DF00D9D3CC00CDC4BA00C4B9AD00C0B3A700BAAD
      A000AA9B8B00A1917F00A08F7C00B0A39200C3B6A900B0A19200B4A99A00CDC3
      B900B1A49400A18F7D0094826D008E796300A7988500C9BFB100BCAFA100C0B3
      A700C4B9AC00C7BDB000C9BFB300CCC1B600CCC3B700C9BAAD00CDBAA300E0C6
      AA00EED7BD00F3E1C900F4E5D100EEE1D400E2DDD700DCDBD900D3D1D000C7C7
      C600C3C3C300BFBFBF00D3D3D300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000837A770000000000B3AFAD00FBFAFB00FEFCFC00FEFBFB00FCFA
      F700FAF7F400F7F3EF00F7EFEC00F4EDE800F2E9E300F0E7E000EDE3D900EBDD
      D100E7D7CA00E4D1C400E3CFBF00E3CDBB00E1C9B500DFC3AF00D9BCA700D3B5
      9D00D3B19800D1AF9300D6AF9000C79F7E00D4D1CF00FAF2EB00F7F2E900E0D9
      D400F7F2F00000000000BBB9B900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8A7D0026590A00005A0000006E
      000084C38700005500000054000000580000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005800000071
      1100F7F0FA0006771F000058000000560000F2F2F200F2F2F200F2F2F200F2F2
      F200EEE7E100E8CDBA00EBDACD00EDE4DF00EBE4DF00EBE4DF00EBE6DF00EBE4
      DD00EDE3DF00EDE1DF00EDE1DF00EDE1DF00EDE1DD00EBE1DC00EBE1DA00EBE1
      DA00EAE0DA00EADFDA00EADFD900EAE0D900EADFD900EADFD700EADFD700EBDF
      D700EBDDD700EADDD700EADDD700EADDD700EADDD700EADCD600EADDD600EBDD
      D600EADDD600E7DDD400E7DAD300E7D9D300E7DAD100E7DAD300E7DAD100E7DA
      D100E7D9D000E6D7D100E6D9D000E6D9D000E6D9D000E6D7CF00E6D6D000E6D6
      D000E6D6CF00E6D6CF00E6D6CF00E6D6CD00E4D6CA00E3D4C900EEEAE600CDB2
      9B00A8785100AB7B5400BA957A00F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F20000000000D8D8D800707070009292
      9200C9C7C700E1D7CD00F1DCC100F9DDBA00F9DDBA00F9DDBA00F9E3C900F7F3
      EF00F6F4F200F4F1EF00F2EFEB00F1ECE800EFE9E500E3DCD100CFBFAC00CFBF
      AD00D1C1B000D0C1B100D0C3B300D0C1B100CDBFAF00D3BAA600E6C6A400F4E3
      D00000000000FBFAFA00F2F0EE00E6E2DF00D9D3CC00CDC4B900C4B9AC00C0B3
      A700B7AA9B00AA9B8C00AC9E8E00CCC3B900C9BFB300B7A99B00B4A69500C9BD
      B100B6A99A00A99A88009E8F7C009A88730095836F0097867000AC9D8B00B9AD
      9E00BFB1A400C1B6A900C4BAAD00C7BDB000C7BCAC00C7AA8C00DDBF9E00EFD1
      B000F6DBB900F9DCBA00F9DDBA00F9DDBA00F9DDBA00F3DCBF00E7D9CD00DDDD
      D900CCCACA00BDBDBC00B1B1B100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DAD9D900BCB5B300FEFEFC00B1AFAF0000000000FCFBFA00FCFB
      F800FBF7F400FAF6F200F8F2EF00F7EFE900F3EBE400F0E7E000EFE4DA00EDE1
      D700ECDFD100E8D7CA00E4D1C100E1CCB900E0C7B400DFC4B000DFC1AC00DCBC
      A400D6B59C00D6AF9000B8A79700DDD7DA00F8F0EB00F0E9E500E5DCDA00F8F4
      F30000000000C5C3C30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9586002C5D0F00005A0000005D
      00007BC79700178E4E001A8C3C001A8F3900208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00148F3F004FA8
      7200F9FDF2000E751C000058000000550000F5F5F500F5F5F500F5F5F500F7F7
      F700F1EAE400E8CDBA00EFDACD00F1E4DC00EDE3DA00EEE3DA00EEE3DA00EEE3
      D900EDE3DA00EDE3DA00EEE1DA00EFE0DA00EFE0DC00EFE0DA00EEE0D900EEE0
      D600EEE0D700EDDFD600EDDFD600EDDFD400EDDFD400EDDFD400EDDFD400EDDF
      D400EDDDD400EDDDD400EDDDD400EDDFD400EDDFD400EDDFD400EDDDD300EDDC
      D300EDDCD300EDDCD300EBDDD300EBDCD000EADAD000EADAD000EAD9D100EADA
      D000EADCCF00E8D9D000E8D7CF00E8D9CF00E8D9CF00E8D9CF00E8D7D000E7D6
      CF00E8D6CF00EAD6CF00E8D7CD00E7D7CF00E7D7CD00E4D4C900F1EAE300D3B5
      9C00AE7F5500B0815800C09B7E00F7F7F700F5F7F700F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F50000000000D8D8D800A4A4A4008B8B
      8B005C5957006A6054009B887300C4A98C00DFBFA000EFD1B000F9DCBA00F7E5
      CD00F6F2EC00F4F1EF00F2EFEB00F1ECE800EFE9E500E0D7CC00C9B6A300CCBA
      A700CFBFAC00D0C1B000D0C3B100D0C1B100DBC1A700E8CAA900F1D4B300F7E3
      CA00FFFFFE00FEFEFE00FAFAFA00F2F0EE00E7E2DD00D9D3CC00CDC4BA00C4B9
      AD00BFB3A600B4A79800C0B3A700D7CFC600CCC1B700BFB1A400AA9B8B00BDB0
      A300C3B9AC00B9AC9D00B1A49500B0A19100A7988600A6958300AC9D8C00B4A7
      9800B9AC9E00BCAFA100C0B3A600C3B7A900CFB69B00DBBC9B00EACDAC00F5D8
      B600F9DCBA00F9DCBA00F2D5B300E5C6A600CFB19400B49E86009B8C7D00948E
      8900AFADAD00BABABA00B0B0B000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0BFBE00E5E3E300F8F7F600ABA9A800F0F0F000FEFE
      FB00FAF8F600FAF6F300F8F3F000F7F2EC00F6EDE800F3EBE300EFE4DC00EDE1
      D700ECDFD300EBDCCD00E9D7C700E5D1C000E0C9B700DDC4B000E0C3AB00DDBC
      A500C7B3A000ACABAD00E7E0DD00F7EDE800F2EBE700F2E8E500FAF6F3000000
      0000C9C9C9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFA090003A631500006100000058
      00003DAF6B00A3E1D100A6DDAC009EE0A6009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009BDEB300BAE3
      D000B7DEA6001477060000580000005600000000000000000000000000000000
      0000FCF7F100F2D9C700FBE7DA00FEF1E700FCEEE600FBEFE600F9EFE600F9EF
      E600FBEFE600FBEFE600FBEFE600FBEDE600FCEBE700FBEDE700FBEDE700FBED
      E400F9EDE100FBEDE300F9EBE100F8EBE100F8EAE100F8EBE100F8EBE100F8EB
      E100F8EAE100F8EAE100F9EAE100F8EBE100F8EAE100F8EBE100F8EAE100F9E8
      E000F9E8E000F9E8E000F9E8E000F8EAE000F7E7DD00F5E6DD00F5E4DD00F7E6
      DD00F7E6DC00F7E7DC00F5E4DC00F4E4DC00F5E3DC00F5E4DC00F5E4DC00F4E3
      DA00F2E3DA00F5E3DA00F7E3D900F4E3D900F4E3DA00F1E1D700FCF2ED00E1C4
      A900C3936900C4946C00D1AD8D00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB00E6E6E600AFAF
      AF006F6F6F005757570057575700606060006C6C6C00767676007D7D7D008685
      85008C888500AFAAA900E8E3E100F0EBE700EEE9E300D0C0AD00C1AC9700C7B4
      A000C6B4A300BCAA9700CCB09400D9BC9B00E2C3A100E8C9A600EBCDAA00EED0
      AD00F0D1AF00F2D4B100F3D7B400F6E1CA00F5E9DC00F0E8E000E6E1DB00DBD4
      CC00CFC6BA00C3B9AC00C7BAAF00D0C6BC00C6BCAF00B6A99A00AA9B8B00A394
      8200B9ADA100DFD8D100E2DDD800E2DCD700D5CDC400D5CDC400D3C9C000D0C6
      BD00B7ACA10085715F0076695B00736455006457490054494000474037004440
      3C00474544004F4F4F005B5B5B0066666600717171007C7C7C00888888009898
      9800ADADAD00D3D3D300F9F9F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A19F9F00E7E5E400F8F7F700ABA7A500D6D3
      D100FAFAFA00F7F6F400F8F4F000F7F2EF00F6F0E900F4ECE700F3E9E100F0E4
      DA00EDE0D600E9DACC00E9D7C700EBD4C100EBD3C000DDC6B400B4ABA7009DA1
      A300B3AFAD00F4EBE500F8F2EF00F8F6F600F4EDEB00FAFAF800FAFAFA00C6C5
      C500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFAD9B004F691B00006100000055
      0000005900000068000006730000067300000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C740000007700000063
      0000005C0000005A00000059000000590000EEEEEE00EEEEEE00EEEEEE00EFEF
      EF00EBE4E000E4CABA00EAD7CA00EBDFD900EADDD600E8DDD600E7DDD600E7DF
      D600E7DFD600E7DFD600E7DDD600E7DDD600E8DCD400E8DCD600E8DCD600E8DC
      D600E8DAD400E7DCD100E7DCD100E6DCD100E6D9D100E6D9D100E6D9D100E6D9
      D100E6D9D100E6D9D100E6D9D100E6D9D100E6DAD100E6D9D000E6DAD000E7DA
      D000E7D9CF00E7D9D000E7D9D000E7D9D000E6D9D000E4D7CF00E6D6CD00E6D6
      CD00E6D6CD00E4D6CD00E4D7CC00E4D4CC00E4D4CC00E3D6CC00E4D6CC00E4D4
      CC00E3D4CD00E3D3CC00E3D3CC00E4D3CC00E3D3CC00E3D3CA00E8DFD900D6BD
      A600C19B7A00C49E7B00CFAF9400EFEFEF00EEEFEF00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000FEFEFE00F7F7
      F700E2E2E200BDBDBD00A4A4A40080828200767676007A7A7A00828282008B8B
      8B008F8F8F0095959500A7A6A600E0DCD800ECE7E200C4B19D00BDA79100B4A7
      9A00A09B98009B989500A39E9A00A7A19D00A7A19B00A6A09700A79D9200A49A
      8F00A3978B00A1958800A09182009D8E7F009A8B7A0095887A0092867C00A69E
      9800C4C0B900CDC4BA00C6BAAF00C6BAAF00C0B3A700B4A99A00B0A39200A99A
      8900A4958300C1BAB100ECE9E700EBE8E600E6E2DD00E6E2DD00DFD9D500ACA6
      A000484541001B1A1A001C1B1B001D1D1D001F1F1F00242424002C2C2C003737
      3700434343004F4F4F005B5B5B00676767007D7D7D009A9A9A00ADACAD00CDCD
      CD00EFEFEF00FCFCFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9C9C800DCD7D600FBFBFA00D7D1
      D100A5A1A000B8B4B400E9E9E900F7F7F600E9EDEF00E0E1DF00E3DDDA00E0D9
      D300D9D0CC00CCC4BF00BDBCBB00BBBDBB00C0BDC100A4A4A4007B767600C3B9
      B500F7EFEC00FCFCFC00F8F6F400F2EBE70000000000EFECEC00E9E8E8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFB09E0052691B00005A00000058
      000000590000005C0000005D0000006100000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006400000059
      0000005C0000005A00000059000000590000FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00F7F1ED00EFD7C700F1D7C700F7E8E000F7E8DF00F5E6DD00F4E7DD00F2E7
      DD00F2E7DD00F1E7DD00F2E6DD00F2E7DD00F1E7DD00F4E6DD00F4E3DF00F4E4
      DF00F4E4DF00F2E4DD00F2E4D900F1E4DA00F1E4D900F1E1D900F1E1D900F1E3
      D900F1E3D900F1E3D900F1E3D900F1E3D900F1E3D700F1E3D700F1E3D900F1E3
      D900F1E3D700F1E1D700F1E0D600F1E0D600F1E0D700EFE0D700EEE1D400EEDD
      D300EEDDD300EEDDD400EEDDD400EDDFD300EDDDD300EDDCD300EDDCD300EDDC
      D300EDDCD300EDDCD300EBDAD100EBDAD100EDDAD100EDDAD100EFE1DC00DDC0
      A300D1A98200D3A98200D7BC9E00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB000000000000000000000000000000
      000000000000FEFEFE00F1F1F100E1E1E100D1D1D100BDBDBD00AAAAAA00A0A0
      A0009B9B9B009D9D9D009D9E9E00ACACAA00DCD8D300B4A49200A6A09A009D9D
      9D00A1A1A100A4A4A400A4A4A400A4A4A400A4A4A400A3A3A300A1A1A1009E9E
      9E009D9D9D0098989800949494008E8E8E00858585007C7C7C00737373006767
      67005D5D5D006C6A67008F898200A79E9400B3A69800BAADA000B6A99B00AFA1
      9200AA9B8B0051494100201F1F006F6D6C00A4A19E0066646300242424001616
      160017171700191919001B1B1B001D1D1D00242424002F2F2F003F3F3F004D4D
      4D00606060007D7D7D009E9E9E00B7B7B900CDCDCD00E3E3E300F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8E7E700B5B2AF000000
      0000F0EDEC00D4D0CF00C6C1BF00B8B1B100B8B1AF00B8B5B400B0ADAD00ABA7
      A8009D9B9800A09B990099949200787372005D5A5900968B8900E4DFDF00FFFF
      FE00EFEBE900F2EBE800FEFEFC00EBE9E900CFCFCE00F5F4F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFB49E00466A1B00005600000059
      0000005900000059000000580000005A00000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005A00000059
      0000005A00000059000000590000005900000000000000000000000000000000
      0000FEFCFB00F8E8DF00F7DFD000F7E4D600FBEEE600FBEEE600FBEDE400FBED
      E400F8EDE400F7EDE400F8EDE400F7EDE400F8EDE400F8EDE400F8EBE400F9EA
      E400F9EAE600F9EAE600F9EAE400F8EAE100F8EAE100F8EAE000F7E8E000F7E8
      E000F7E8E000F7E8E000F7E8E000F7E8E000F7E8E000F7E8E000F7E8E000F7EA
      E000F7E8E000F7EAE000F7E7DF00F7E6DF00F7E7DF00F7E7DF00F7E7DF00F4E7
      DD00F4E4DA00F4E3DC00F4E3DC00F4E4DC00F4E6DA00F4E4DA00F2E3DA00F2E3
      DA00F2E1DA00F2E1DA00F2E3DA00F1E1D900F1E0D900F5E4DD00F5E3D600E0BF
      9C00E3BC9400DAB28D00EDE0D000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00F7F7F700F2F2F200EBEB
      EC00E2E2E200D4D4D400C6C6C600BABABA00B6B4B400AFADAC00AAAAAA00AAAA
      AA00A9A9A900A7A7A700A7A7A700A6A6A600A4A4A400A3A3A300A1A1A1009E9E
      9E009D9D9D0098989800949494008E8E8E00868686007D7D7D00747474006A6A
      6A005D5D5D005050500045454500444443005C575300AAA09400BCAFA000B4A7
      9800AFA192005B544C0011111100121212001A1A1A0020202000282828003333
      330044444400535353006363630073747300888888009E9E9E00B6B7B700D0D0
      D000E1E2E200ECECEC00F3F3F300FAFAFA00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00C2C0
      BF00CCCACA0000000000F6F0F000ECEBE700E4E0DC00D7D1CF00D9D3D100E5DD
      DD00F0ECE900E8E5E400DAD4D400D7CFCD00F4EDEB00F4F0F000F3EFEC00F2ED
      EC0000000000E1E1E000D7D5D300EBEBEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFB59B00436A1800005500000058
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000590000EDEDED00EDEDED00EDEDED00EDED
      ED00EEEEEE00EAE6E300E7D9D000E4D4CA00E6D7CF00E7D9D100E7D9D000E7D7
      CF00E6D7CF00E6D7D000E4D9D000E4D7D000E4D7D000E4D9CF00E4D9CD00E6D7
      CD00E6D6CF00E6D6CD00E6D6CF00E6D6CD00E4D6CC00E4D6CC00E4D6CA00E3D4
      CC00E3D3CD00E3D3CD00E3D3CC00E3D4CC00E3D3CC00E3D4CC00E4D4CC00E3D3
      CA00E3D3CA00E3D3CA00E3D4CA00E3D4CA00E4D3C900E3D3C900E3D3C900E3D1
      CA00E1D3C900E1D1C700E1D0C700E1D1C700E1D1C700E3D1C600E3D1C600E1D0
      C600E1D0C700E0D0C700E1D0C600E1D1C600E3D1C600DABFB000B58C6F00AE82
      5B00B38B6900D1BCA600EEEEED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FCFCFC00F9F9F900F7F7
      F700F5F5F500F4F4F400F2F2F200F1F0F100F0F0F000EFEFEF00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EFEFEF00F0F0F000F1F1F100F2F2F100E9E5
      E100E5E0D900E8E6E200F2F1F100F4F4F400FBFBFB00FEFEFE00F7F6F400DFD8
      D300E7E3DF00F7F7F700FAFAFA00FCFCFC00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0BFBF00C9C4C200F0F0F000FAFAFA00FFFFFE00F4F2EF00E8E4
      E300E9E5E400E9E3E100E9E5E400F6F3F200FFFCFB00F8F8F800F1F3F300DEDC
      DC00C1C1C1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFBEAB0081753500005C0000005F
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      000000600000006000000060000000600000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE0000000000FCF9F800F9F4F100F9F4F100F9F4EF00F9F4EF00F9F4
      EE00F9F1ED00F9F1ED00F8F2ED00F8F1EE00F8F1ED00F8F2ED00F8F2EB00F8F1
      EA00F7EFEA00F7EFE800F8EFE800F8EFEA00F7EFEA00F7EEE800F7EDE600F7EE
      E700F5EDE800F5EDE700F5EDE600F5EDE700F5EDE600F4EBE400F5EAE400F5E8
      E400F4EAE300F4EAE300F4EAE300F2E8E100F2E7E000F2E6E000F2E7E000F2E6
      E000F1E7E000F1E7DF00F1E4DC00F1E4DC00F1E4DC00F1E4DC00F1E4DC00F1E3
      DA00EEE1DA00EDE0D900EDE0D700EDE0D600DDCCBF00B0917C00966E4E00A580
      6400D6C1AF00FCFCFC0000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F100D9D3CA00F9F7F700FBFBFB00FDFDFD00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECECEC00C5C3C100B4B3B100B9B5
      B400B8B7B500B8B5B400BCBAB700BCB9B900CECBCB00F5F5F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFE2E900FFABA400E27A7900E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A76000000000000000000000000000000
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
      00000000000000000000000000000000FFFFFFFE000000001F80000000000000
      0000FFFFFFFFFFFFFFFFFFFFFE000000000FFFFFFFFFFFFF000000000F000000
      000000000000FFFFFFFFFFFFFFFFFFFFF80000000003FFFFFFFFFFFE20000005
      CF000000000000000000FFFFFFFFFFFFFFFFFFFFE00000000000FFFFFFFFFFFE
      0C4000303F800000000000000000FFFFFFFFFFFFFFFFFFFFC000000000007FFF
      FFFFFFE0060000000F000000000000000000FFFFFFFFFFFFFFFFFFFF80000000
      00003FFFFFFFFFE0068080400F000000000000000000FFFFFC0000001FFFFFFF
      0000000000001FFFFFFFFFE0030080800F800000000000000000FE1E00000000
      007FFFFF0000000000000FFFFFFFFFE0000001200F000000000000000000F800
      000000000007FFFE00000000000007FFFFFFFFFFFF00013FFC00000000000000
      0000F800000000000001FFFE00000000000007FFFFC00C800000000000000000
      000000000000F0000000000000003FFE00000000000003FFFFC0000000000000
      00000000000000000000F0000000000000001FFE00000000000003FFFFC00100
      0000000000000000000000000000F0000000000000000FFE00000000000001FF
      FFC001000000000000000000000000000000F0000000000000001FFE40000000
      000000FFFF800005F000000000000000000000000000F0000000000000001FFE
      400000000000007FFF8100000000000000000000000000000000F00000000000
      00003FFE400000000000007FFFD200000000000000000000000000000000F800
      000000000001FFFE400000000000003FFFD42A80000000000000000000000000
      0000FC0000000000003FFFFE400000000000003FFF8000000000000000000000
      000000000000FE00000000000FFFFFFE400000000000003FFF80000000000000
      00000000000000000000FF000000000FFFFFFFFE400000000000001FFFC00080
      0000000000000000000000000000FF0000000FFFFFFFFFFE400000000000001F
      FFC800000000000000000000000000000000FF00000003FFFFFFFFFE40000000
      0000001FFFE420000000000000000000000000000000FF80000001FFFFFFFFFE
      400000000000000FFFC040000000000000010000000000000000FFC0000000FF
      FFFFFFFE400000000000000FFF8040000000000000800000000000000000FFC0
      0000007FFFFFFFFE400000000000000FFFC00000000000000080000000000000
      0000FFC00000003FFFFFFFFE400000000000000FFF8800000000000000800000
      000000000000FFC00000001FFFFFFFFE400000000000000FFFC8080000000000
      00800000000000000000FFE00000001FFFFFFFFE400000000000000FF9000000
      0000000000800800000000000000FFE00000000FFFFFFFFE400000000000000F
      FC8000000000000000C00000000000000000FFE000000007FFFFFFFE40000000
      0000000FFC2030800000000000C00000000000000000FFE000000001FFFFFFFE
      400000000000000FFD0400800000000000C20000000000000004FFF000000000
      FFFFFFFE400000000000000FFC0220000000000000940000000000000018FFF0
      000000007FFFFFFE400000000000000FFC07DC00000000000094980000000000
      00B2FFF0000000003FFFFFFE400000000000000FFC07C000000000000086B800
      00000000008AFFF0000000001FFFFFFE400000000000000FFC0FD00000000000
      0087F000000000000004FFF8000000000FFFFFFE400000000000000FFC8FD000
      000000000080D000000000000041FFF8000000000FFFFFFE400000000000000F
      FACBE8000000000000820000020000000000FFF80000000007FFFFFE40000000
      0000000FFE8BE9000000000000800000038000000000FFFC0000000003FFFFFE
      400000000000000FFC0FF1000000000000800000000000000000FFFE00000000
      01FFFFFE400000000000000FF817F3000000000000800000004800000000FFFF
      00000000007FFFFE400000000000000FE113D280000000000080000000000000
      0000FFFF80000000003FFFFE400000000000000FE407D2800000000000800000
      000000000000FFFFE0000000001FFFFE400000000000000FE013D08008000000
      00000000000000000000FFFFF0000000000FFFFE400000000000000FE027C080
      0000000000800000000000000000FFFFF80000000007FFFE400000000000000F
      E00BC4800000000000800000000000000000FFFFFC0000000007FFFE40000000
      0000000F220184800000000001000000000000000001FFFFFC0000000003FFFE
      400000000000000F400080400000000002800000000000000000FFFFFE000000
      0001FFFE400000000000000F41400031E1F80001FC800000000000000000FFFF
      FF00000000007FF0000000000000000FC003A00400003C000080000000000000
      0001FFFFFF80000000003FF0000000000000000F0000180401807FFFF5800000
      000000000000FFFFFFC0000000001FF0000000000000000F40000320100003FF
      FF800000000000000000FFFFFFF0000000000FF0000000000000000F80001000
      000103FFFF800000000000000001FFFFFFF80000000007F0000000000000000F
      88000080000003FFFF800000000000000000FFFFFFFC0000000007F000000000
      0000000FA4000000000003FFFF800000000000000000FFFFFFFE0000000007F0
      000000000000000F4806030180C00FFFFF800000000000000001FFFFFFFE0000
      000007F0000000000000000F0200301808207FFFFF800000000000000000FFFF
      FFFF0000000007F0000000000000000F000001808000BFFFFF80000000000000
      0000FFFFFFFF8000000007F0000000000000000F9800000408107FFFFF800000
      000000000001FFFFFFFFC000000007F0000000000000000F140000020023FFFF
      FF800000000000000000FFFFFFFFE000000007F0000000000000000F02004700
      0823FFFFFF800000000000000000FFFFFFFFF800000007FE000000000000001F
      010100118083FFFFFF000000000000000001FFFFFFFFFC0000000FFE00000000
      0000001F804600004063FFFFFF800000200000000000FFFFFFFFFE0000001FFF
      000000000000001F000820008883FFFFFF800000000000000001FFFFFFFFFF00
      00001FFF800000000000003FFC000243FF83FFFFFF000000000000000000FFFF
      FFFFFF0000001FFFC00000000000003FFF800120FFCBFFFFFF80000000000000
      0000FFFFFFFFFF8000003FFFC00000000000007FF8600047FFCBFFFFFF800074
      000000000001FFFFFFFFFFC000007FFFE0000000000001FFF81F3007FF83FFFF
      FF000000000000000000FFFFFFFFFFE00001FFFFF0000000000003FFFFFFDC00
      E397FFFFFF800000000000000000FFFFFFFFFFF00003FFFFFE00000000000FFF
      FFFFFE000E0FFFFFFF800000000000000000FFFFFFFFFFFC0007FFFFFE001FFF
      FFFFFFFFFFFFFFE88007FFFFFF000000000000000001FFFFFFFFFFFE000FFFFF
      FFFFFFFFFFFFFFFFFFFFFFF83017FFFFFF800000000000000000FFFFFFFFFFFF
      003FFFFFFFFFFFFFFFFFFFFFFFFFFE00918FFFFFFF000000000000000000FFFF
      FFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000
      0000FFFFFFFFFFFFFFFFFFFFF8000FFFFFFFFFFFFFE0000000000003FFF00000
      000000000000FFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFE0000000000003
      FFF40000000000000000FFFFFFFFFFFFFFFFFFFE0000001FFFFFFFFFFFE00000
      00000007FFFE0000000000000000FFFFFFFFFFFFFFFFFFFC00000007FE00001F
      FFE0000000000007FFFE8000000000000000FFFFFFFFFFFFFFFFFFFF00000007
      F8000007FFE0000000000007FFFF8000000000000000FFFFFFFFFFFFFFFFFFFF
      E0000007E0000001FFE0000000000007FFFF0000000000000000FF07FFFFFFFF
      FFFFFFFFE0000007E0000000FFF0000000000007FFFFFF00000000000000FE01
      FFFFFFFFFFFFFFFFE000020FE0000000FFF000000000000FFFFFFFFA00000000
      0000FE01FFFFFFFFFFFFFFFFE00003FFFC000000FFF000000000000FFFFFFF32
      400000000000FC00FFFFFFFFFFFFFFFFE00003FFFC000001FFF000000000000F
      FFFFFFFFE00000000000F8007FFFFFFFFFFFFFFFE00003FFFC0001FFFFF00000
      0000000FFFFFFFFFE00000000038F0003FFFFFFFFFFFFFFFE00007FFFC00007F
      C00000000000000003FFFFFFE0000000F007F0000FFFFFFFFFFFFFFFE00007FF
      FC00000F800000000000000000FFFFFFE00000000007F00007FFFFFFFFFFFFFF
      E00007FFFC000001000000000000000000FFFFFFFC000003FFFFF00000000000
      00007FFFE00007FFFC000001000000000000000000FFFFFFFC000007FFFFF000
      0000000000001FFFE00007FFFC000001000000000000000000FFFFFFFC000003
      FFFFF00000FFFFFFFFF00FFFE00007FFFC000001000000000000000000FFFFFF
      FC000003FFFFF00000E003FFFFFF0FFFE00007FFFC0000010000000000000000
      00FFFFFFFC000003FFFFE000000000FFFFFF07FFE00007FFFC00000000000000
      0000000000FFFFFFFC000007FFFFC0000000003FFFFFC3FFE00007FFFC000000
      000000000000000000001FFFE0000003FFFF8600000000000001E1FFE00007FF
      FC000000000000000000000000001FFFE000003FFFFF8E0000000000000071FF
      E00007FFFC000000000000000000000000001FFFE000003FFFFF8C0000000000
      000071FFE00007FFFC0000000000000000000000000017FF8000003FFFFF9C00
      00000000000039FFC00007FFFC00000000000000000000000000020E000003FF
      FFFF9C0000000000000039FFC00007FFFC00000000000000000000000000000E
      000003FFFFFF9C0000000000000039FF000007FFFC0000010000000000000000
      0200000E000003FFFFFF9C0000000000000039FE000007FFFC00010380000000
      000000000200000000000BFFFFFF9C0000000000000039FE000007FFFC00003F
      80000000000000000200000000001FFFFFFF9C0000000000000039FC000007FF
      FC00007FC0000000000000000200000000001FFFFFFF9C0000000000000039F8
      000007FFFC00003FE0000000000000000300000000001FBC7FFF9C0000000000
      000039F0000007FFFC00003FE00000000000000003FE0000000004007FFF9C00
      00000000000039E0000007807C00003FE00000000000000003FE000000000000
      7FFF9C0000000040000039C0000004001C00003FE00000000000000003FE0000
      000008007FFF9C00000000C0000039C0400000000400003FE000000000000000
      07FEFE000000000001FF9C00000003C0000039C0400000000000003FE0000000
      0000000007FFFF000000000001FF9C0000000FC0000039C0400000000000001F
      E00000000000000007FFFF000000000001FF9C0000000FC0000039C000000000
      0000001FE00000000000000007FFFF000000000000179C0000000FC0000039C0
      0000000C0000001FE00000000000000007FFFFF00000000000079C0000001FC0
      000039E00000000E0000001FF00000000000000007FFFFF00000000000079C00
      00003F80000039E00000001F0000001FF00000000000000007FFFFF000000000
      00039C0000003F80000039F00000001F0000001FF00000000000000007FFFFF0
      0000000000009C0000007F00000039F80000001F8000001FF000000000000000
      0FFFFFE00000000000009C0000007E00000039F80000003F8000001FF0000000
      000000000FFFFFE00000000000009C0000007C00000039FC0000003F8008001F
      F0000000000000000FFFFFE00000000000009C0000007C00000039FE0000003F
      8018001FF8000000000000000FFFFFE00000000000009C0000006000000039FE
      0000007F8018001FF8000000000000000FFFFFE00000000000009C0000000000
      000039FF0000007F8018001FF8000000000000001FFFFFF00000000000009C00
      00000000000039FF800000FF8018001FFC000000000000003FFFFFFE00000000
      00009C0000000000000039FFE00001FF8000001FFFD000000000000BFFFFFFFE
      0000000000009C0000000000000039FFFF81FFFFC000003FFFF000000000000F
      FFFFFFFE0000000000009C0000000000000039FFFF003FFFC000003FFFF00000
      0000000FFFFFFFFE0000000000009C0000000000000039FFFC001FFFE000007F
      FFF000000000000FFFFFFFFE0000000000009C0000000000000039FFF8000FFF
      F00001FFFFF000000000000FFFFFFFFE0000000000009C0000000000000039FF
      F00007FFFE01FFFFFFF000000000000FFFFFFFFE0000000000009C0000000000
      000039FFE00003FFFFC0FFFFFFF000000000000FFFFFFFFFE000000000009C00
      00000000000039FFE00003FFFE003FFFFFF000000000000FFFFFFFFFE0000000
      00009C0000000000000039FFE00003FFFC000FFFFFF800000000001FFFFFFFFF
      E000000000009C0000000000000039FFE00003FFF80007FFFFF800000000001F
      FFFFFFFFF4D00000000F9C0000000000000039FFE00003FFF00003FFFFF80000
      0000001FFFFFFFFFFFF0000000179C0000000000000031FFE00003FFF00003FF
      FFF800000000001FFFFFFFFFFFF0000000278C0000000000000071FFE00003FF
      E00003FFFFF800000000001FFFFFFFFFFFF0000000678E00000000000000F1FF
      F00003FFE00001FFFFF800000000001FFFFFFFFFFFF000000E3FC7C000000000
      0003E3FFF8000FFFE00001FFFFF800000000001FFFFFFFFFFFF000006C3FC3C0
      000000000003C3FFFC001FFFE00003FFFFF800000000001FFFFFFFFFFFF00000
      62BFC1FFFFFFFFFFFFFF83FFFC007FFFE00003FFFFF800000000001FFFFFFFFF
      FFFE00007FFFE0FFFFFFFFFFFFFF07FFFF01FFFFF00003FFFFF800000000001F
      FFFFFFFFFFFE00007FFFF0000000000000000FFFFFFFFFFFF00007FFFFFA0000
      0000005FFFFFFFFFFFFE00007FFFF8000000000000001FFFFFFFFFFFF80007FF
      FFF800000000001FFFFFFFFFFFFE0003FFFFFF80000000000001FFFFFFFFFFFF
      FC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0003FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0003FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0003FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000007FFFFFFFFFFFFFFFF
      C3FF800000000000000000FFFE0001FFFFF01FFFFFFF800000000000FFFFFFFF
      FFFFFFFF80FF000000000000000000000000000000000000FFFC000000000000
      1FFFFFFFFFFFFFFF007F000000000000000000000000000000000000FFF80000
      0000000007FFFFFFFFFFFFFC003F000000000000000000FFE000001FF000000F
      FFF000000000000003FFFFFFFFFFFFF8005F0000000000000000000000000000
      00000000FFE000000000000001FFFFFFFFFFFFF0003F00000000000000000000
      0000000000000000FFC000000000000000FFFFFFFFFFFFE0001F000000000000
      000000FFFE0000000000003FFFC000000000000000FFFFFFFFFFFFC0000F0000
      00000000000000000000000000000000FF8000000000000000FFFFFFFFFFFF80
      002F000000000000000000001800000000000000FF8000000000000000FFFFFF
      FFFFFE00000F000000000000000000FF800000000000000FFF80000000000000
      00FFFFFFFFFFFC00001F000000000000000000000000000000000000FF800000
      0000000000FFFFFFFFFFF800001F000000000000000000E00000000000000007
      FF8000000000000000FFFFFFFFFFF000003F0000000000000000000000000000
      00000000FF8000000000000000FFFFFFFFFFE000007F00000000000000000000
      0000000000000000FF8000000000000000FFFFFFFFFFC00001FF000000000000
      000000E00000000000000007FFC000000000000000FFFFFC3FFF800001FF0000
      00000000000000000000000000000000FFC000000000000000FFFFF80FFF0000
      03FF000000000000000000000000000002000000FFC000000000000001FFFFF0
      01FE000003FF000000000000000000E00000000001000007FF80000000000000
      01FFFFE200F8000007FF000000000000000000000000000000000000FF800000
      000000000FFFFFE00030000007FF000000000000000000000000000000800000
      FF800000000000001FFFFFC0000000000FFF000000000000000000F000000000
      00000007FF800000000000007FFFFFC0000000000FFF00000000000000000000
      0000000000000000FF000000000000007FFFFF80000000001FFF000000000000
      000000000000000000030000FF00000000000000FFFFFF80000000003FFF0000
      00000000000000F0000000001007C01FFF00000000000000FFFFFF0000000000
      3FFF000000000000000000000000000000000000FF00000000000000FFFFFF20
      000000007FFF000000000000000000F0000000000000003FFF00000000000000
      7FFFFE00000000007FFF000000000000000000000000000000000000FF000000
      000000007FFFFC4000000000FFFF000000000000000000000000000000000000
      FF000000000000007FFFFC0000000000FFFF000000000000000000F000400000
      000001FFFF000000000000003FFFF80000000000FFFF00000000000000000000
      0000000000000000FE000000000000003FFFF80000000001FFFF000000000000
      000000000000000000000000FE000000000000007FFFF000000000003FFF0000
      00000000000000F0007FE780000001FFFE000000000000003FFFF00000000000
      0FFF000000000000000000000000000000000000FE000000000000003FFFE000
      0000000007FF000000000000000000000000000000000000FE00000000000000
      3FFFE4000000018001FF000000000000000000F000006780000001FFFC000000
      000000003FFFC00000000080007F000000000000000000000000000000000000
      FC000000000000001FFFA80000000000003F0000000000000000000000000000
      00000000FC000000000000000FFF900000100000005F000000000000000000F0
      007FE400000001FFFC000000000000000FFF000000000020003F000000000000
      000000000000000000000000F8000000000000000FFF200000000000003F0000
      0000000000000000007C000000000000F8000000000000001FFE000004000000
      007F000000000000000000000000000000000000F8000000000000001FFF0000
      00000002007F000000000000000000000000000000000000F800000000000000
      1FFC00000000000100FF000000000000000000F0007FE700000001FFF8000000
      000000000FF800000000000001FF000000000000000000000000000000000000
      F8000000000000000FF900000000000001FF0000000000000000000000000000
      00000000F8000000000000000FF000000000000003FF000000000000000000F0
      007FE7FF000001FFF8000000000000000FF000010000000043FF000000000000
      000000000000000000000000F0000000000000000FF000000000000007FF0000
      00000000000000000000000000000000F0000000000000000FF8000000000000
      07FF000000000000000000F00000E7FF380001FFF0000000000000000FF80000
      000000000FFF000000000000000000000000000000000000F000000000000000
      0FFE0004000000000FFF000000000000000000000000000000000000E0000000
      0000000007FFC000000000000FFF000000000000000000F0007FE7FF300001FF
      E00000000000000007FFE000000000000FFF0000000000000000000000000000
      00000000E00000000000000007FFF800000000000FFF00000000000000000000
      0000000000000000E00000000000000007FFFE08000000000FFF000000000000
      000000F000000000000001FFE00000000000000003FFFFC8000000014FFF0000
      00000000000000000000000000000000E00000000000000003FFFFC800000000
      5FFF000000000000000000F000000000000001FFE00000000000000003FFFFC8
      000000021FFF000000000000000000000000000000000000E000000000000000
      03FFFFC200000000BFFF000000000000000000000000000000000000C0000000
      0000000003FFFFE200000000BFFF000000000000000000F000000000000021FF
      C00000000000000003FFFFE0000000097FFF0000000000000000000000000000
      00000000C00000000000000003FFFFF5000000127FFF00000000000000000000
      0000000000000000800000000000000001FFFFF000000002FFFF000000000000
      000000F000000000000001FF800000000000000001FFFFFA00000005FFFF0000
      00000000000000000000000000000000800000080000000001FFFFF84000000B
      FFFF000000000000000000000000000000000000800000000000000001FFFFFC
      00000017FFFF000000000000000000F000000000000001FF8000000000000000
      01FFFFFE0000000FFFFF000000000000000000000000000000000000C0000000
      0000000003FFFFFF0000009FFFFF000000000000000000000000000000000000
      F8000000000000001FFFFFFF9000003FFFFF000000000000000000F000000000
      000001FFFF000000000000007FFFFFFFC40008FFFFFF00000000000000000000
      0000000000000000FFFFFF000000007FFFFFFFFFF80007FFFFFF000000000000
      000000040000000000000200FFFFFFFFFFFFE07FFFFFFFFFFF003FFFFFFF0000
      00000000000000FFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object fin_rec_rec: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT * FROM FIN_REC_CAR_REC')
    Left = 584
    Top = 24
    object fin_rec_recID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_REC_BAN_REC_004"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fin_rec_recFIN_CCAB: TIntegerField
      FieldName = 'FIN_CCAB'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_CCAB"'
    end
    object fin_rec_recFIN_CDBX: TIntegerField
      FieldName = 'FIN_CDBX'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_CDBX"'
    end
    object fin_rec_recFIN_CDCX: TIntegerField
      FieldName = 'FIN_CDCX'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_CDCX"'
    end
    object fin_rec_recFIN_CCLI: TIntegerField
      FieldName = 'FIN_CCLI'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_CCLI"'
    end
    object fin_rec_recFIN_CVEN: TIntegerField
      FieldName = 'FIN_CVEN'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_CVEN"'
    end
    object fin_rec_recFIN_CREP: TIntegerField
      FieldName = 'FIN_CREP'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_CREP"'
    end
    object fin_rec_recFIN_PRAZ: TSmallintField
      FieldName = 'FIN_PRAZ'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_PRAZ"'
    end
    object fin_rec_recFIN_ATRA: TSmallintField
      FieldName = 'FIN_ATRA'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_ATRA"'
    end
    object fin_rec_recFIN_CONC: TSmallintField
      FieldName = 'FIN_CONC'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_CONC"'
    end
    object fin_rec_recFIN_DCAD: TDateField
      FieldName = 'FIN_DCAD'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_DCAD"'
    end
    object fin_rec_recFIN_DVEN: TDateField
      DisplayLabel = 'Vencto'
      FieldName = 'FIN_DVEN'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_DVEN"'
    end
    object fin_rec_recFIN_DPAG: TDateField
      DisplayLabel = 'Pagto'
      FieldName = 'FIN_DPAG'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_DPAG"'
    end
    object fin_rec_recFIN_DMED: TDateField
      FieldName = 'FIN_DMED'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_DMED"'
    end
    object fin_rec_recFIN_DATR: TDateField
      FieldName = 'FIN_DATR'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_DATR"'
    end
    object fin_rec_recFIN_STDO: TIBStringField
      FieldName = 'FIN_STDO'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_STDO"'
      Size = 3
    end
    object fin_rec_recFIN_DOCT: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'FIN_DOCT'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_DOCT"'
    end
    object fin_rec_recFIN_BANC: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'FIN_BANC'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_BANC"'
      Size = 4
    end
    object fin_rec_recFIN_DBAN: TIBStringField
      FieldName = 'FIN_DBAN'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_DBAN"'
      Size = 50
    end
    object fin_rec_recFIN_AGEN: TIBStringField
      DisplayLabel = 'Agencia'
      FieldName = 'FIN_AGEN'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_AGEN"'
      Size = 10
    end
    object fin_rec_recFIN_CONT: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'FIN_CONT'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_CONT"'
      Size = 15
    end
    object fin_rec_recFIN_NCHQ: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'FIN_NCHQ'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_NCHQ"'
      Size = 10
    end
    object fin_rec_recFIN_MCHQ: TSmallintField
      FieldName = 'FIN_MCHQ'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_MCHQ"'
    end
    object fin_rec_recFIN_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'FIN_TIPO'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_TIPO"'
    end
    object fin_rec_recFIN_STFI: TIBStringField
      FieldName = 'FIN_STFI'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_STFI"'
    end
    object fin_rec_recFIN_STCO: TIBStringField
      FieldName = 'FIN_STCO'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_STCO"'
    end
    object fin_rec_recFIN_VALO: TIBBCDField
      FieldName = 'FIN_VALO'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_VALO"'
      Precision = 18
      Size = 2
    end
    object fin_rec_recFIN_VPAG: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'FIN_VPAG'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_VPAG"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object fin_rec_recFIN_VPEN: TIBBCDField
      FieldName = 'FIN_VPEN'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_VPEN"'
      Precision = 18
      Size = 2
    end
    object fin_rec_recFIN_OBSE: TMemoField
      FieldName = 'FIN_OBSE'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object fin_rec_recFIN_STA: TIBStringField
      FieldName = 'FIN_STA'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_STA"'
      FixedChar = True
      Size = 1
    end
    object fin_rec_recFIN_DCAN: TDateField
      FieldName = 'FIN_DCAN'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_DCAN"'
    end
    object fin_rec_recFIN_CPPL: TIntegerField
      FieldName = 'FIN_CPPL'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_CPPL"'
    end
    object fin_rec_recFIN_CCUS: TIntegerField
      FieldName = 'FIN_CCUS'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_CCUS"'
    end
    object fin_rec_recFIN_CBCO: TIntegerField
      FieldName = 'FIN_CBCO'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_CBCO"'
    end
    object fin_rec_recFIN_PORT: TIBStringField
      FieldName = 'FIN_PORT'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_PORT"'
    end
    object fin_rec_recFIN_VMUL: TIBBCDField
      FieldName = 'FIN_VMUL'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_VMUL"'
      Precision = 18
      Size = 2
    end
    object fin_rec_recFIN_PMUL: TIBBCDField
      FieldName = 'FIN_PMUL'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_PMUL"'
      Precision = 9
      Size = 2
    end
    object fin_rec_recFIN_VJUR: TIBBCDField
      FieldName = 'FIN_VJUR'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_VJUR"'
      Precision = 18
      Size = 2
    end
    object fin_rec_recFIN_PJUR: TIBBCDField
      FieldName = 'FIN_PJUR'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_PJUR"'
      Precision = 9
      Size = 2
    end
    object fin_rec_recFIN_VDES: TIBBCDField
      FieldName = 'FIN_VDES'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_VDES"'
      Precision = 18
      Size = 2
    end
    object fin_rec_recFIN_PDES: TIBBCDField
      FieldName = 'FIN_PDES'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_PDES"'
      Precision = 9
      Size = 2
    end
    object fin_rec_recFIN_DESC: TIBStringField
      FieldName = 'FIN_DESC'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_DESC"'
      Size = 40
    end
    object fin_rec_recFIN_CDCO: TIntegerField
      FieldName = 'FIN_CDCO'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_CDCO"'
    end
    object fin_rec_recFIN_CDBA: TIBStringField
      FieldName = 'FIN_CDBA'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_CDBA"'
      Size = 4
    end
    object fin_rec_recFIN_DEBA: TIBStringField
      FieldName = 'FIN_DEBA'
      Origin = '"FIN_REC_BAN_REC_004"."FIN_DEBA"'
      Size = 50
    end
    object fin_rec_recFIN_DBAI: TDateField
      FieldName = 'FIN_DBAI'
      Origin = '"FIN_REC_CAR_REC"."FIN_DBAI"'
    end
    object fin_rec_recFIN_IDBX: TIBStringField
      FieldName = 'FIN_IDBX'
      Origin = '"FIN_REC_CAR_REC"."FIN_IDBX"'
      Size = 10
    end
    object fin_rec_recFIN_VENC: TIBBCDField
      FieldName = 'FIN_VENC'
      Origin = '"FIN_REC_CAR_REC"."FIN_VENC"'
      Precision = 18
      Size = 2
    end
    object fin_rec_recFIN_BCON: TIntegerField
      FieldName = 'FIN_BCON'
      Origin = '"FIN_REC_CAR_REC"."FIN_BCON"'
    end
    object fin_rec_recFIN_DCON: TIBStringField
      FieldName = 'FIN_DCON'
      Origin = '"FIN_REC_CAR_REC"."FIN_DCON"'
      Size = 120
    end
    object fin_rec_recBCON: TStringField
      DisplayLabel = 'Conta'
      FieldKind = fkCalculated
      FieldName = 'BCON'
      Size = 120
      Calculated = True
    end
  end
  object dtsfin_rec_rec: TDataSource
    DataSet = fin_rec_rec
    Left = 616
    Top = 24
  end
  object fin_rec_car: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT * FROM FIN_REC_CAR_BAI_004'
      'WHERE FIN_DOCT = '#39'12583-A'#39)
    Left = 584
    Top = 56
    object fin_rec_carID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_REC_CAR_BAI_004"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fin_rec_carFIN_CCAB: TIntegerField
      FieldName = 'FIN_CCAB'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CCAB"'
    end
    object fin_rec_carFIN_CDBX: TIntegerField
      FieldName = 'FIN_CDBX'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CDBX"'
    end
    object fin_rec_carFIN_CDCX: TIntegerField
      FieldName = 'FIN_CDCX'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CDCX"'
    end
    object fin_rec_carFIN_CCLI: TIntegerField
      FieldName = 'FIN_CCLI'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CCLI"'
    end
    object fin_rec_carFIN_CVEN: TIntegerField
      FieldName = 'FIN_CVEN'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CVEN"'
    end
    object fin_rec_carFIN_CREP: TIntegerField
      FieldName = 'FIN_CREP'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CREP"'
    end
    object fin_rec_carFIN_PRAZ: TSmallintField
      FieldName = 'FIN_PRAZ'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_PRAZ"'
    end
    object fin_rec_carFIN_ATRA: TSmallintField
      FieldName = 'FIN_ATRA'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_ATRA"'
    end
    object fin_rec_carFIN_CONC: TSmallintField
      FieldName = 'FIN_CONC'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CONC"'
    end
    object fin_rec_carFIN_DCAD: TDateField
      FieldName = 'FIN_DCAD'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_DCAD"'
    end
    object fin_rec_carFIN_DVEN: TDateField
      DisplayLabel = 'Vencto'
      FieldName = 'FIN_DVEN'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_DVEN"'
    end
    object fin_rec_carFIN_DPAG: TDateField
      DisplayLabel = 'Pagto'
      FieldName = 'FIN_DPAG'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_DPAG"'
    end
    object fin_rec_carFIN_DMED: TDateField
      FieldName = 'FIN_DMED'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_DMED"'
    end
    object fin_rec_carFIN_DATR: TDateField
      FieldName = 'FIN_DATR'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_DATR"'
    end
    object fin_rec_carFIN_DOCT: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'FIN_DOCT'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_DOCT"'
    end
    object fin_rec_carFIN_BANC: TIBStringField
      FieldName = 'FIN_BANC'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_BANC"'
      Size = 4
    end
    object fin_rec_carFIN_STDO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'FIN_STDO'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_STDO"'
      Size = 3
    end
    object fin_rec_carFIN_DBAN: TIBStringField
      FieldName = 'FIN_DBAN'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_DBAN"'
      Size = 50
    end
    object fin_rec_carFIN_AGEN: TIBStringField
      FieldName = 'FIN_AGEN'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_AGEN"'
      Size = 10
    end
    object fin_rec_carFIN_CONT: TIBStringField
      FieldName = 'FIN_CONT'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CONT"'
      Size = 15
    end
    object fin_rec_carFIN_NCHQ: TIBStringField
      FieldName = 'FIN_NCHQ'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_NCHQ"'
      Size = 10
    end
    object fin_rec_carFIN_MCHQ: TSmallintField
      FieldName = 'FIN_MCHQ'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_MCHQ"'
    end
    object fin_rec_carFIN_TIPO: TIBStringField
      FieldName = 'FIN_TIPO'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_TIPO"'
    end
    object fin_rec_carFIN_STFI: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'FIN_STFI'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_STFI"'
    end
    object fin_rec_carFIN_STCO: TIBStringField
      FieldName = 'FIN_STCO'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_STCO"'
    end
    object fin_rec_carFIN_VALO: TIBBCDField
      DisplayLabel = 'Valor Lancto'
      FieldName = 'FIN_VALO'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_VALO"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object fin_rec_carFIN_VPAG: TIBBCDField
      DisplayLabel = 'Valor Pagto'
      FieldName = 'FIN_VPAG'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_VPAG"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object fin_rec_carFIN_VPEN: TIBBCDField
      DisplayLabel = 'Valor Pendente'
      FieldName = 'FIN_VPEN'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_VPEN"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object fin_rec_carFIN_OBSE: TMemoField
      FieldName = 'FIN_OBSE'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object fin_rec_carFIN_STA: TIBStringField
      FieldName = 'FIN_STA'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_STA"'
      FixedChar = True
      Size = 1
    end
    object fin_rec_carFIN_DCAN: TDateField
      FieldName = 'FIN_DCAN'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_DCAN"'
    end
    object fin_rec_carFIN_CPPL: TIntegerField
      FieldName = 'FIN_CPPL'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CPPL"'
    end
    object fin_rec_carFIN_CCUS: TIntegerField
      FieldName = 'FIN_CCUS'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CCUS"'
    end
    object fin_rec_carFIN_CBCO: TIntegerField
      FieldName = 'FIN_CBCO'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CBCO"'
    end
    object fin_rec_carFIN_PORT: TIBStringField
      FieldName = 'FIN_PORT'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_PORT"'
    end
    object fin_rec_carFIN_VMUL: TIBBCDField
      FieldName = 'FIN_VMUL'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_VMUL"'
      Precision = 18
      Size = 2
    end
    object fin_rec_carFIN_PMUL: TIBBCDField
      FieldName = 'FIN_PMUL'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_PMUL"'
      Precision = 9
      Size = 2
    end
    object fin_rec_carFIN_VJUR: TIBBCDField
      FieldName = 'FIN_VJUR'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_VJUR"'
      Precision = 18
      Size = 2
    end
    object fin_rec_carFIN_PJUR: TIBBCDField
      FieldName = 'FIN_PJUR'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_PJUR"'
      Precision = 9
      Size = 2
    end
    object fin_rec_carFIN_VDES: TIBBCDField
      FieldName = 'FIN_VDES'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_VDES"'
      Precision = 18
      Size = 2
    end
    object fin_rec_carFIN_PDES: TIBBCDField
      FieldName = 'FIN_PDES'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_PDES"'
      Precision = 9
      Size = 2
    end
    object fin_rec_carFIN_DESC: TIBStringField
      FieldName = 'FIN_DESC'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_DESC"'
      Size = 40
    end
    object fin_rec_carFIN_CDCO: TIntegerField
      FieldName = 'FIN_CDCO'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CDCO"'
    end
    object fin_rec_carFIN_CDBA: TIBStringField
      FieldName = 'FIN_CDBA'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CDBA"'
      Size = 4
    end
    object fin_rec_carFIN_DEBA: TIBStringField
      FieldName = 'FIN_DEBA'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_DEBA"'
      Size = 50
    end
  end
  object dtsfin_rec_car: TDataSource
    DataSet = fin_rec_car
    Left = 616
    Top = 56
  end
  object nfe_dup: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT * FROM NFE_DUP')
    Left = 584
    Top = 88
    object nfe_dupID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_DUP"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object nfe_dupNFE_CDRO: TIntegerField
      FieldName = 'NFE_CDRO'
      Origin = '"NFE_DUP"."NFE_CDRO"'
    end
    object nfe_dupNFE_CCAB: TIntegerField
      FieldName = 'NFE_CCAB'
      Origin = '"NFE_DUP"."NFE_CCAB"'
    end
    object nfe_dupNFE_CFAV: TIntegerField
      FieldName = 'NFE_CFAV'
      Origin = '"NFE_DUP"."NFE_CFAV"'
    end
    object nfe_dupNFE_DROM: TDateField
      FieldName = 'NFE_DROM'
      Origin = '"NFE_DUP"."NFE_DROM"'
    end
    object nfe_dupNFE_CDNF: TIntegerField
      FieldName = 'NFE_CDNF'
      Origin = '"NFE_DUP"."NFE_CDNF"'
    end
    object nfe_dupNFE_DNFE: TDateField
      FieldName = 'NFE_DNFE'
      Origin = '"NFE_DUP"."NFE_DNFE"'
    end
    object nfe_dupNFE_TITU: TIBStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'NFE_TITU'
      Origin = '"NFE_DUP"."NFE_TITU"'
    end
    object nfe_dupNFE_STPD: TIBStringField
      FieldName = 'NFE_STPD'
      Origin = '"NFE_DUP"."NFE_STPD"'
    end
    object nfe_dupNFE_STCO: TIBStringField
      FieldName = 'NFE_STCO'
      Origin = '"NFE_DUP"."NFE_STCO"'
    end
    object nfe_dupNFE_STFI: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'NFE_STFI'
      Origin = '"NFE_DUP"."NFE_STFI"'
    end
    object nfe_dupNFE_PARC: TIntegerField
      FieldName = 'NFE_PARC'
      Origin = '"NFE_DUP"."NFE_PARC"'
    end
    object nfe_dupNFE_DVEN: TDateField
      DisplayLabel = 'Vencto'
      FieldName = 'NFE_DVEN'
      Origin = '"NFE_DUP"."NFE_DVEN"'
    end
    object nfe_dupNFE_VDUP: TIBBCDField
      DisplayLabel = 'Valor Duplicata'
      FieldName = 'NFE_VDUP'
      Origin = '"NFE_DUP"."NFE_VDUP"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_dupNFE_DPAG: TDateField
      DisplayLabel = 'Pagto'
      FieldName = 'NFE_DPAG'
      Origin = '"NFE_DUP"."NFE_DPAG"'
    end
    object nfe_dupNFE_VPAG: TIBBCDField
      DisplayLabel = 'Valor Pagto'
      FieldName = 'NFE_VPAG'
      Origin = '"NFE_DUP"."NFE_VPAG"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_dupNFE_VPEN: TIBBCDField
      DisplayLabel = 'Valor Pendente'
      FieldName = 'NFE_VPEN'
      Origin = '"NFE_DUP"."NFE_VPEN"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_dupNFE_OBSE: TMemoField
      FieldName = 'NFE_OBSE'
      Origin = '"NFE_DUP"."NFE_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object nfe_dupNFE_STA: TIBStringField
      FieldName = 'NFE_STA'
      Origin = '"NFE_DUP"."NFE_STA"'
      FixedChar = True
      Size = 1
    end
  end
  object dtsnfe_dup: TDataSource
    DataSet = nfe_dup
    Left = 616
    Top = 88
  end
end
