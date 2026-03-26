inherited frmrec_ban: Tfrmrec_ban
  Left = 217
  Top = 150
  Caption = 'Consulta de Contas a Receber - Banc'#225'rio'
  ClientHeight = 754
  ClientWidth = 1284
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Top = 735
    Width = 1284
  end
  inherited SBMenu: TSpeedBar
    Width = 1284
  end
  inherited pnldir: TPanel
    Left = 1284
    Height = 660
  end
  inherited pnldbg: TPanel
    Width = 1284
    Height = 660
    inherited pnlbot: TPanel
      Top = 403
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
      Height = 403
      inherited DBGConsulta: TdxDBGrid
        Tag = 1
        Width = 1236
        Height = 385
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
      inherited SBEdicao: TSpeedBar
        Height = 385
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
  object fin_rec_rec: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = TEdicao
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
    Transaction = TEdicao
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
    Transaction = TEdicao
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
