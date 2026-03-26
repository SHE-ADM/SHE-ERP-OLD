inherited frmcad_cli_inf: Tfrmcad_cli_inf
  Left = 2
  Top = 0
  Align = alClient
  Caption = 'Informa'#231#245'es Comerciais'
  ClientHeight = 696
  ClientWidth = 1349
  OldCreateOrder = True
  Position = poDesktopCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlcadastro: TPanel
    Width = 1349
    Height = 677
    inherited PaintBox: TPaintBox
      Width = 1349
      Height = 612
    end
    inherited SBMenuPrincipal: TSpeedBar
      Width = 1349
      TabOrder = 2
    end
    object pnlpri: TPanel
      Left = 0
      Top = 65
      Width = 1349
      Height = 612
      Align = alClient
      TabOrder = 0
      object gbinfo: TGroupBox
        Left = 1
        Top = 1
        Width = 1347
        Height = 610
        Align = alClient
        Caption = 'Informa'#231#245'es Resumidas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Panel1: TPanel
          Left = 2
          Top = 16
          Width = 1343
          Height = 592
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object pcinfr: TdxPageControl
            Left = 0
            Top = 0
            Width = 1343
            Height = 592
            ActivePage = tsVEN
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
            object tsVEN: TdxTabSheet
              Caption = 'Vendas'
              object pcped: TdxPageControl
                Left = 0
                Top = 0
                Width = 1343
                Height = 568
                ActivePage = tsPED
                Align = alClient
                HideButtons = False
                HotTrack = False
                MultiLine = False
                OwnerDraw = False
                RaggedRight = False
                ScrollOpposite = False
                Style = dxtsFlatButtons
                TabHeight = 0
                TabOrder = 0
                TabPosition = dxtpTop
                TabWidth = 0
                object tsPED: TdxTabSheet
                  Caption = 'Pedidos'
                  object Panel3: TPanel
                    Left = 0
                    Top = 0
                    Width = 1343
                    Height = 542
                    Align = alClient
                    BevelOuter = bvNone
                    TabOrder = 0
                    object Panel4: TPanel
                      Left = 0
                      Top = 0
                      Width = 1094
                      Height = 542
                      Align = alClient
                      BevelOuter = bvNone
                      TabOrder = 0
                      object dbgven_ped: TdxDBGrid
                        Left = 0
                        Top = 0
                        Width = 1094
                        Height = 198
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
                        Color = clWhite
                        Ctl3D = True
                        ParentCtl3D = False
                        TabOrder = 0
                        AutoSearchColor = 9395
                        AutoSearchTextColor = clWhite
                        DataSource = dtsven_ped
                        Filter.Active = True
                        Filter.Criteria = {00000000}
                        GridLineColor = clSilver
                        HideSelectionColor = 14789952
                        HighlightColor = 14789952
                        LookAndFeel = lfUltraFlat
                        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                        OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoRowSelect, edgoUseBitmap]
                        OnCustomDrawCell = dbgven_pedCustomDrawCell
                        object dbgven_pedROM_DERO: TdxDBGridMaskColumn
                          Width = 56
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'ROM_DERO'
                          SummaryFooterType = cstCount
                          SummaryFooterField = 'ID'
                          SummaryFooterFormat = '0'
                          DisableFilter = True
                        end
                        object dbgven_pedROM_DROM: TdxDBGridDateColumn
                          Width = 74
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'ROM_DROM'
                        end
                        object dbgven_pedROM_CDNF: TdxDBGridMaskColumn
                          Width = 66
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'ROM_CDNF'
                          DisableFilter = True
                        end
                        object dbgven_pedPAG_DPAG: TdxDBGridMaskColumn
                          Width = 119
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'PAG_DPAG'
                        end
                        object dbgven_pedROM_STCO: TdxDBGridMaskColumn
                          Width = 110
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'ROM_STCO'
                        end
                        object dbgven_pedROM_STPD: TdxDBGridMaskColumn
                          Width = 110
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'ROM_STPD'
                        end
                        object dbgven_pedROM_STFI: TdxDBGridMaskColumn
                          Width = 110
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'ROM_STFI'
                        end
                        object dbgven_pedUSU_DUSU: TdxDBGridMaskColumn
                          Width = 100
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'USU_DUSU'
                        end
                        object dbgven_pedREP_FANT: TdxDBGridMaskColumn
                          Width = 150
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'REP_FANT'
                        end
                        object dbgven_pedROM_QTVE: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 80
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'ROM_QTVE'
                          SummaryFooterType = cstSum
                          SummaryFooterField = 'ROM_QTVE'
                          SummaryFooterFormat = '#,0.00'
                          DisableFilter = True
                        end
                        object dbgven_pedROM_TCDE: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 90
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'ROM_TCDE'
                          SummaryFooterType = cstSum
                          SummaryFooterField = 'ROM_TCDE'
                          SummaryFooterFormat = '#,0.00'
                          DisableFilter = True
                        end
                      end
                      object GroupBox3: TGroupBox
                        Left = 0
                        Top = 198
                        Width = 1094
                        Height = 199
                        Align = alBottom
                        Caption = 'Periodicidade - Apenas Vendas Finalizadas'
                        Color = clBtnFace
                        ParentColor = False
                        TabOrder = 1
                        object dbgper: TdxDBGrid
                          Left = 2
                          Top = 16
                          Width = 1090
                          Height = 97
                          Bands = <
                            item
                            end>
                          DefaultLayout = True
                          HeaderPanelRowCount = 1
                          KeyField = 'ID'
                          SummaryGroups = <>
                          SummarySeparator = ', '
                          Align = alTop
                          Color = clBtnFace
                          Ctl3D = True
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          ParentCtl3D = False
                          ParentFont = False
                          TabOrder = 0
                          AutoSearchColor = 9395
                          AutoSearchTextColor = clWhite
                          BandFont.Charset = DEFAULT_CHARSET
                          BandFont.Color = clWindowText
                          BandFont.Height = -12
                          BandFont.Name = 'Tahoma'
                          BandFont.Style = []
                          DataSource = dtscad_cli_inf
                          Filter.Criteria = {00000000}
                          GridLineColor = clSilver
                          HeaderFont.Charset = DEFAULT_CHARSET
                          HeaderFont.Color = clWindowText
                          HeaderFont.Height = -12
                          HeaderFont.Name = 'Tahoma'
                          HeaderFont.Style = []
                          HideSelectionColor = 14789952
                          HighlightColor = 14789952
                          LookAndFeel = lfUltraFlat
                          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
                          PreviewFont.Charset = DEFAULT_CHARSET
                          PreviewFont.Color = clBlue
                          PreviewFont.Height = -12
                          PreviewFont.Name = 'Tahoma'
                          PreviewFont.Style = []
                          object dbgperCLI_DESC: TdxDBGridMaskColumn
                            Width = 70
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_DESC'
                          end
                          object dbgperCLI_DES1: TdxDBGridColumn
                            Alignment = taRightJustify
                            HeaderAlignment = taRightJustify
                            Width = 86
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_DES1'
                          end
                          object dbgperCLI_DES2: TdxDBGridColumn
                            Alignment = taRightJustify
                            HeaderAlignment = taRightJustify
                            Width = 86
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_DES2'
                          end
                          object dbgperCLI_DES3: TdxDBGridColumn
                            Alignment = taRightJustify
                            HeaderAlignment = taRightJustify
                            Width = 86
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_DES3'
                          end
                          object dbgperCLI_DES4: TdxDBGridColumn
                            Alignment = taRightJustify
                            HeaderAlignment = taRightJustify
                            Width = 86
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_DES4'
                          end
                          object dbgperCLI_DES5: TdxDBGridColumn
                            Alignment = taRightJustify
                            HeaderAlignment = taRightJustify
                            Width = 86
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_DES5'
                          end
                          object dbgperCLI_DES6: TdxDBGridColumn
                            Alignment = taRightJustify
                            HeaderAlignment = taRightJustify
                            Width = 86
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_DES6'
                          end
                          object dbgperCLI_DES7: TdxDBGridColumn
                            Alignment = taRightJustify
                            HeaderAlignment = taRightJustify
                            Width = 86
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_DES7'
                          end
                          object dbgperCLI_DES8: TdxDBGridColumn
                            Alignment = taRightJustify
                            HeaderAlignment = taRightJustify
                            Width = 86
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_DES8'
                          end
                          object dbgperCLI_DES9: TdxDBGridColumn
                            Alignment = taRightJustify
                            HeaderAlignment = taRightJustify
                            Width = 86
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_DES9'
                          end
                          object dbgperCLI_DE10: TdxDBGridColumn
                            Alignment = taRightJustify
                            HeaderAlignment = taRightJustify
                            Width = 86
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_DE10'
                          end
                          object dbgperCLI_DE11: TdxDBGridColumn
                            Alignment = taRightJustify
                            HeaderAlignment = taRightJustify
                            Width = 86
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_DE11'
                          end
                          object dbgperCLI_DE12: TdxDBGridColumn
                            Alignment = taRightJustify
                            HeaderAlignment = taRightJustify
                            Width = 86
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_DE12'
                          end
                        end
                        object GroupBox2: TGroupBox
                          Left = 2
                          Top = 113
                          Width = 290
                          Height = 84
                          Align = alClient
                          Caption = 'Sum'#225'rio'
                          TabOrder = 1
                          object lalime: TLabel
                            Left = 15
                            Top = 21
                            Width = 105
                            Height = 14
                            Cursor = crHandPoint
                            Caption = 'Limite de Cr'#233'dito'
                            Color = clBtnFace
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold, fsUnderline]
                            ParentColor = False
                            ParentFont = False
                            Transparent = True
                            OnClick = lalimeClick
                          end
                          object lacred: TLabel
                            Left = 135
                            Top = 21
                            Width = 28
                            Height = 14
                            Caption = '0,00'
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
                          object laprz: TLabel
                            Left = 15
                            Top = 45
                            Width = 99
                            Height = 14
                            Hint = 'Altera o Valor do Limite de Cr'#233'dito'
                            Caption = 'Prazo M'#233'dio (dias)'
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
                          object lapraz: TLabel
                            Left = 135
                            Top = 45
                            Width = 8
                            Height = 14
                            Caption = '0'
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
                        end
                        object GroupBox4: TGroupBox
                          Left = 692
                          Top = 113
                          Width = 200
                          Height = 84
                          Align = alRight
                          Caption = 'Menor Compra'
                          TabOrder = 2
                          object Label8: TLabel
                            Left = 15
                            Top = 21
                            Width = 27
                            Height = 14
                            Caption = 'Valor'
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
                          object lavmen: TLabel
                            Left = 71
                            Top = 21
                            Width = 28
                            Height = 14
                            Caption = '0,00'
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
                            Left = 15
                            Top = 37
                            Width = 43
                            Height = 14
                            Caption = 'N'#250'mero'
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
                          object lanmen: TLabel
                            Left = 71
                            Top = 37
                            Width = 28
                            Height = 14
                            Caption = '0,00'
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
                          object Label12: TLabel
                            Left = 15
                            Top = 53
                            Width = 25
                            Height = 14
                            Caption = 'Data'
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
                          object ladmen: TLabel
                            Left = 71
                            Top = 53
                            Width = 28
                            Height = 14
                            Caption = '0,00'
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
                        end
                        object GroupBox5: TGroupBox
                          Left = 492
                          Top = 113
                          Width = 200
                          Height = 84
                          Align = alRight
                          Caption = #218'ltima Compra'
                          TabOrder = 3
                          object Label15: TLabel
                            Left = 15
                            Top = 21
                            Width = 27
                            Height = 14
                            Caption = 'Valor'
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
                          object lavult: TLabel
                            Left = 71
                            Top = 21
                            Width = 28
                            Height = 14
                            Caption = '0,00'
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
                          object Label17: TLabel
                            Left = 15
                            Top = 37
                            Width = 43
                            Height = 14
                            Caption = 'N'#250'mero'
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
                          object lanult: TLabel
                            Left = 71
                            Top = 37
                            Width = 28
                            Height = 14
                            Caption = '0,00'
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
                          object Label19: TLabel
                            Left = 15
                            Top = 53
                            Width = 25
                            Height = 14
                            Caption = 'Data'
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
                          object ladult: TLabel
                            Left = 71
                            Top = 53
                            Width = 28
                            Height = 14
                            Caption = '0,00'
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
                        end
                        object GroupBox6: TGroupBox
                          Left = 292
                          Top = 113
                          Width = 200
                          Height = 84
                          Align = alRight
                          Caption = 'Primeira Compra'
                          TabOrder = 4
                          object Label21: TLabel
                            Left = 15
                            Top = 21
                            Width = 27
                            Height = 14
                            Caption = 'Valor'
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
                          object lavpri: TLabel
                            Left = 71
                            Top = 21
                            Width = 28
                            Height = 14
                            Caption = '0,00'
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
                          object Label23: TLabel
                            Left = 15
                            Top = 37
                            Width = 43
                            Height = 14
                            Caption = 'N'#250'mero'
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
                          object lanpri: TLabel
                            Left = 71
                            Top = 37
                            Width = 28
                            Height = 14
                            Caption = '0,00'
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
                          object Label25: TLabel
                            Left = 15
                            Top = 53
                            Width = 25
                            Height = 14
                            Caption = 'Data'
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
                          object ladpri: TLabel
                            Left = 71
                            Top = 53
                            Width = 28
                            Height = 14
                            Caption = '0,00'
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
                        end
                        object GroupBox7: TGroupBox
                          Left = 892
                          Top = 113
                          Width = 200
                          Height = 84
                          Align = alRight
                          Caption = 'Maior Compra'
                          TabOrder = 5
                          object Label27: TLabel
                            Left = 15
                            Top = 21
                            Width = 27
                            Height = 14
                            Caption = 'Valor'
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
                          object lavmai: TLabel
                            Left = 71
                            Top = 21
                            Width = 28
                            Height = 14
                            Caption = '0,00'
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
                          object Label29: TLabel
                            Left = 15
                            Top = 37
                            Width = 43
                            Height = 14
                            Caption = 'N'#250'mero'
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
                          object lanmai: TLabel
                            Left = 71
                            Top = 37
                            Width = 28
                            Height = 14
                            Caption = '0,00'
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
                          object Label31: TLabel
                            Left = 15
                            Top = 53
                            Width = 25
                            Height = 14
                            Caption = 'Data'
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
                          object ladmai: TLabel
                            Left = 71
                            Top = 53
                            Width = 28
                            Height = 14
                            Caption = '0,00'
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
                        end
                      end
                      object gbref: TGroupBox
                        Left = 0
                        Top = 397
                        Width = 1094
                        Height = 145
                        Align = alBottom
                        Caption = 'Referencias Comerciais'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 2
                        object dbgcad_cli_ref: TdxDBGrid
                          Left = 2
                          Top = 16
                          Width = 1090
                          Height = 127
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
                          AutoSearchColor = 9395
                          AutoSearchTextColor = clWhite
                          DataSource = dtscad_cli_ref
                          Filter.Criteria = {00000000}
                          GridLineColor = clSilver
                          HideSelectionColor = 14789952
                          HighlightColor = 14789952
                          LookAndFeel = lfUltraFlat
                          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoRowSelect, edgoUseBitmap]
                          object dbgcad_cli_refCLI_LOJA: TdxDBGridMaskColumn
                            Width = 284
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_LOJA'
                            SummaryFooterType = cstCount
                            SummaryFooterField = 'ID'
                            SummaryFooterFormat = '0'
                          end
                          object dbgcad_cli_refCLI_DDD: TdxDBGridMaskColumn
                            Width = 30
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_DDD'
                          end
                          object dbgcad_cli_refCLI_TEL1: TdxDBGridMaskColumn
                            Width = 67
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_TEL1'
                          end
                          object dbgcad_cli_refCLI_TEL2: TdxDBGridMaskColumn
                            Width = 67
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_TEL2'
                          end
                          object dbgcad_cli_refCLI_CONT: TdxDBGridMaskColumn
                            Width = 109
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_CONT'
                          end
                          object dbgcad_cli_refCLI_DCAD: TdxDBGridDateColumn
                            Width = 74
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_DCAD'
                          end
                          object dbgcad_cli_refCLI_DULT: TdxDBGridDateColumn
                            Width = 74
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_DULT'
                          end
                          object dbgcad_cli_refCLI_DMAI: TdxDBGridDateColumn
                            Width = 74
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_DMAI'
                          end
                          object dbgcad_cli_refCLI_VULT: TdxDBGridMaskColumn
                            HeaderAlignment = taRightJustify
                            Width = 90
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_VULT'
                            SummaryFooterType = cstSum
                            SummaryFooterField = 'CLI_VULT'
                            SummaryFooterFormat = '#,0.00'
                          end
                          object dbgcad_cli_refCLI_VMAI: TdxDBGridMaskColumn
                            HeaderAlignment = taRightJustify
                            Width = 90
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_VMAI'
                            SummaryFooterType = cstSum
                            SummaryFooterField = 'CLI_VMAI'
                            SummaryFooterFormat = '#,0.00'
                          end
                          object dbgcad_cli_refCLI_ACUM: TdxDBGridMaskColumn
                            HeaderAlignment = taRightJustify
                            Width = 90
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_ACUM'
                            SummaryFooterType = cstSum
                            SummaryFooterField = 'CLI_ACUM'
                            SummaryFooterFormat = '#,0.00'
                          end
                          object dbgcad_cli_refCLI_DPAG: TdxDBGridMaskColumn
                            Width = 103
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_DPAG'
                          end
                          object dbgcad_cli_refCLI_CONC: TdxDBGridMaskColumn
                            Width = 132
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_CONC'
                          end
                          object dbgcad_cli_refCLI_OBSE: TdxDBGridMemoColumn
                            Width = 31
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CLI_OBSE'
                          end
                        end
                      end
                    end
                    object Panel5: TPanel
                      Left = 1094
                      Top = 0
                      Width = 249
                      Height = 542
                      Align = alRight
                      BevelInner = bvRaised
                      TabOrder = 1
                      object dbcven_ped: TDBChart
                        Left = 2
                        Top = 2
                        Width = 245
                        Height = 538
                        AllowPanning = pmNone
                        AnimatedZoom = True
                        AnimatedZoomSteps = 9
                        BackWall.Brush.Color = clWhite
                        BackWall.Brush.Style = bsClear
                        BottomWall.Brush.Color = clWhite
                        Gradient.EndColor = 14789952
                        Gradient.Visible = True
                        LeftWall.Color = clSilver
                        MarginLeft = 5
                        MarginRight = 0
                        MarginTop = 5
                        Title.Font.Charset = ANSI_CHARSET
                        Title.Font.Color = clBlack
                        Title.Font.Height = -13
                        Title.Font.Name = 'Tahoma'
                        Title.Font.Style = [fsBold]
                        Title.Text.Strings = (
                          'Situa'#231#227'o das Vendas')
                        BottomAxis.Visible = False
                        Chart3DPercent = 45
                        LeftAxis.ExactDateTime = False
                        LeftAxis.Grid.Visible = False
                        LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
                        LeftAxis.LabelsFont.Color = clBlack
                        LeftAxis.LabelsFont.Height = -13
                        LeftAxis.LabelsFont.Name = 'Arial'
                        LeftAxis.LabelsFont.Style = []
                        LeftAxis.LabelsMultiLine = True
                        LeftAxis.LabelStyle = talNone
                        LeftAxis.TickLength = 0
                        LeftAxis.TickOnLabelsOnly = False
                        LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
                        LeftAxis.Title.Font.Color = clBlack
                        LeftAxis.Title.Font.Height = -13
                        LeftAxis.Title.Font.Name = 'Arial'
                        LeftAxis.Title.Font.Style = []
                        Legend.Alignment = laBottom
                        Legend.ColorWidth = 15
                        Legend.DividingLines.Visible = True
                        Legend.ShadowSize = 0
                        Legend.TopPos = 0
                        RightAxis.Ticks.Color = clMedGray
                        TopAxis.Visible = False
                        View3DOptions.HorizOffset = -2
                        View3DOptions.VertOffset = -2
                        Align = alClient
                        BevelInner = bvRaised
                        Color = 14789952
                        TabOrder = 0
                        object Series1: TBarSeries
                          ColorEachPoint = True
                          Cursor = crCross
                          HorizAxis = aTopAxis
                          Marks.ArrowLength = 20
                          Marks.BackColor = clWhite
                          Marks.Font.Charset = DEFAULT_CHARSET
                          Marks.Font.Color = clBlack
                          Marks.Font.Height = -7
                          Marks.Font.Name = 'Arial'
                          Marks.Font.Style = []
                          Marks.Style = smsLabelPercent
                          Marks.Visible = True
                          DataSource = ven_gra
                          SeriesColor = clRed
                          ShowInLegend = False
                          Title = 'Evolu'#231#227'o de Vendas'
                          VertAxis = aRightAxis
                          XLabelsSource = 'ROM_STFI'
                          BarBrush.Color = clWhite
                          BarPen.Style = psDot
                          BarPen.Visible = False
                          BarStyle = bsRectGradient
                          BarWidthPercent = 40
                          OffsetPercent = 30
                          XValues.DateTime = False
                          XValues.Name = 'X'
                          XValues.Multiplier = 1.000000000000000000
                          XValues.Order = loAscending
                          XValues.ValueSource = 'ROM_TCDE'
                          YValues.DateTime = False
                          YValues.Name = 'Bar'
                          YValues.Multiplier = 1.000000000000000000
                          YValues.Order = loNone
                          YValues.ValueSource = 'ROM_TCDE'
                        end
                      end
                    end
                  end
                end
                object tsPRO: TdxTabSheet
                  Caption = 'Produtos'
                  OnShow = tsPROShow
                  object Panel6: TPanel
                    Left = 784
                    Top = 0
                    Width = 559
                    Height = 542
                    Align = alRight
                    BevelInner = bvRaised
                    TabOrder = 0
                    object DBChart1: TDBChart
                      Left = 2
                      Top = 2
                      Width = 555
                      Height = 480
                      AllowPanning = pmNone
                      AnimatedZoom = True
                      AnimatedZoomSteps = 9
                      BackWall.Brush.Color = clWhite
                      BackWall.Brush.Style = bsClear
                      BottomWall.Brush.Color = clWhite
                      Gradient.EndColor = 14789952
                      Gradient.Visible = True
                      LeftWall.Color = clSilver
                      Title.Font.Charset = ANSI_CHARSET
                      Title.Font.Color = clBlack
                      Title.Font.Height = -13
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = [fsBold]
                      Title.Text.Strings = (
                        'Vendas por Produtos')
                      BottomAxis.Visible = False
                      Chart3DPercent = 45
                      LeftAxis.ExactDateTime = False
                      LeftAxis.Grid.Visible = False
                      LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
                      LeftAxis.LabelsFont.Color = clBlack
                      LeftAxis.LabelsFont.Height = -13
                      LeftAxis.LabelsFont.Name = 'Arial'
                      LeftAxis.LabelsFont.Style = []
                      LeftAxis.LabelsMultiLine = True
                      LeftAxis.LabelStyle = talValue
                      LeftAxis.TickLength = 0
                      LeftAxis.TickOnLabelsOnly = False
                      LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
                      LeftAxis.Title.Font.Color = clBlack
                      LeftAxis.Title.Font.Height = -13
                      LeftAxis.Title.Font.Name = 'Arial'
                      LeftAxis.Title.Font.Style = []
                      Legend.Alignment = laBottom
                      Legend.ColorWidth = 15
                      Legend.DividingLines.Visible = True
                      Legend.ShadowSize = 0
                      Legend.TopPos = 0
                      RightAxis.Ticks.Color = clMedGray
                      TopAxis.Visible = False
                      View3DOptions.HorizOffset = -2
                      View3DOptions.VertOffset = -2
                      Align = alClient
                      BevelInner = bvRaised
                      Color = 14789952
                      TabOrder = 0
                      object BarSeries1: TBarSeries
                        ColorEachPoint = True
                        Cursor = crCross
                        HorizAxis = aTopAxis
                        Marks.ArrowLength = 20
                        Marks.BackColor = clWhite
                        Marks.Clip = True
                        Marks.Font.Charset = DEFAULT_CHARSET
                        Marks.Font.Color = clBlack
                        Marks.Font.Height = -7
                        Marks.Font.Name = 'Arial'
                        Marks.Font.Style = []
                        Marks.Style = smsLabelPercent
                        Marks.Visible = True
                        DataSource = ven_pro_gra
                        SeriesColor = clRed
                        ShowInLegend = False
                        Title = 'Evolu'#231#227'o de Vendas'
                        VertAxis = aRightAxis
                        XLabelsSource = 'PRO_CART'
                        BarBrush.Color = clWhite
                        BarPen.Style = psDot
                        BarPen.Visible = False
                        BarStyle = bsRectGradient
                        BarWidthPercent = 40
                        OffsetPercent = 30
                        YOrigin = 1.000000000000000000
                        XValues.DateTime = False
                        XValues.Name = 'X'
                        XValues.Multiplier = 1.000000000000000000
                        XValues.Order = loAscending
                        XValues.ValueSource = 'ROM_QTDE'
                        YValues.DateTime = False
                        YValues.Name = 'Bar'
                        YValues.Multiplier = 1.000000000000000000
                        YValues.Order = loNone
                        YValues.ValueSource = 'ROM_QTDE'
                      end
                    end
                  end
                  object pcPRO: TdxPageControl
                    Left = 0
                    Top = 0
                    Width = 784
                    Height = 542
                    ActivePage = tsITE
                    Align = alClient
                    HideButtons = False
                    HotTrack = False
                    MultiLine = False
                    OwnerDraw = False
                    RaggedRight = False
                    ScrollOpposite = False
                    Style = dxtsFlatButtons
                    TabHeight = 0
                    TabOrder = 1
                    TabPosition = dxtpTop
                    TabWidth = 0
                    object tsITE: TdxTabSheet
                      Caption = 'Itens'
                      object Panel2: TPanel
                        Left = 0
                        Top = 0
                        Width = 784
                        Height = 473
                        Align = alClient
                        TabOrder = 0
                        object dbgven_pro: TdxDBGrid
                          Left = 1
                          Top = 49
                          Width = 782
                          Height = 423
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
                          Color = clBtnFace
                          Ctl3D = True
                          ParentCtl3D = False
                          TabOrder = 0
                          AutoSearchColor = 9395
                          AutoSearchTextColor = clWhite
                          DataSource = dtsven_pro
                          Filter.Active = True
                          Filter.Criteria = {00000000}
                          GridLineColor = clSilver
                          HideSelectionColor = 14789952
                          HighlightColor = 14789952
                          LookAndFeel = lfUltraFlat
                          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
                          object dbgven_proROM_DROM: TdxDBGridDateColumn
                            Width = 74
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'ROM_DROM'
                            SummaryFooterType = cstCount
                            SummaryFooterField = 'ID'
                            SummaryFooterFormat = '0'
                          end
                          object dbgven_proPRO_CPRO: TdxDBGridMaskColumn
                            Width = 91
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'PRO_CPRO'
                          end
                          object dbgven_proPRO_DCOR: TdxDBGridMaskColumn
                            Width = 101
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'PRO_DCOR'
                          end
                          object dbgven_proPRO_DPRO: TdxDBGridMaskColumn
                            Width = 262
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'PRO_DPRO'
                          end
                          object dbgven_proROM_QTDE: TdxDBGridMaskColumn
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
                          object dbgven_proROM_UNIT: TdxDBGridMaskColumn
                            HeaderAlignment = taRightJustify
                            Width = 60
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'ROM_UNIT'
                            SummaryFooterType = cstAvg
                            SummaryFooterField = 'ROM_UNIT'
                            SummaryFooterFormat = '#,0.00'
                            DisableFilter = True
                          end
                          object dbgven_proROM_TOTA: TdxDBGridMaskColumn
                            HeaderAlignment = taRightJustify
                            Width = 90
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'ROM_TOTA'
                            SummaryFooterType = cstSum
                            SummaryFooterField = 'ROM_TOTA'
                            SummaryFooterFormat = '#,0.00'
                            DisableFilter = True
                          end
                        end
                        object GroupBox1: TGroupBox
                          Left = 1
                          Top = 1
                          Width = 782
                          Height = 48
                          Align = alTop
                          Caption = 'Pesquisa Avan'#231'ada'
                          Color = clBtnFace
                          ParentColor = False
                          TabOrder = 1
                          object Label1: TLabel
                            Left = 14
                            Top = 23
                            Width = 58
                            Height = 14
                            Caption = 'Data Inicial'
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
                          object Label2: TLabel
                            Left = 182
                            Top = 23
                            Width = 52
                            Height = 14
                            Caption = 'Data Final'
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
                          object sbPRO: TSpeedButton
                            Left = 339
                            Top = 19
                            Width = 23
                            Height = 22
                            Cursor = crHandPoint
                            Hint = 'Executar Pesquisa'
                            Caption = '...'
                            ParentShowHint = False
                            ShowHint = True
                            OnClick = sbPROClick
                          end
                          object dxDT1: TdxDateEdit
                            Left = 81
                            Top = 19
                            Width = 96
                            Color = clWhite
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            ParentFont = False
                            Style.BorderColor = clBlack
                            Style.BorderStyle = xbsNone
                            Style.ButtonStyle = btsFlat
                            Style.Shadow = True
                            TabOrder = 0
                            Date = -700000.000000000000000000
                            UseEditMask = True
                            StoredValues = 4
                          end
                          object dxDT2: TdxDateEdit
                            Left = 241
                            Top = 19
                            Width = 96
                            Color = clWhite
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            ParentFont = False
                            Style.BorderColor = clBlack
                            Style.BorderStyle = xbsNone
                            Style.ButtonStyle = btsFlat
                            Style.Shadow = True
                            TabOrder = 1
                            Date = -700000.000000000000000000
                            UseEditMask = True
                            StoredValues = 4
                          end
                        end
                      end
                    end
                    object tsPRV: TdxTabSheet
                      Caption = 'Pre'#231'o Vendedor'
                      OnShow = tsPRVShow
                      object dbgven_prc: TdxDBGrid
                        Left = 0
                        Top = 0
                        Width = 784
                        Height = 462
                        Bands = <
                          item
                          end>
                        DefaultLayout = True
                        HeaderPanelRowCount = 1
                        KeyField = 'USU_DUSU'
                        ShowSummaryFooter = True
                        SummaryGroups = <>
                        SummarySeparator = ', '
                        Align = alClient
                        Color = clBtnFace
                        Ctl3D = True
                        ParentCtl3D = False
                        TabOrder = 0
                        AutoSearchColor = 9395
                        AutoSearchTextColor = clWhite
                        DataSource = dtsven_prc
                        Filter.Criteria = {00000000}
                        GridLineColor = clSilver
                        HideSelectionColor = 14789952
                        HighlightColor = 14789952
                        LookAndFeel = lfUltraFlat
                        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoSyncSelection, edgoUseBookmarks]
                        OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoRowSelect, edgoUseBitmap]
                        object dbgven_prcUSU_DUSU: TdxDBGridMaskColumn
                          Width = 151
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'USU_DUSU'
                        end
                        object dbgven_prcPRO_CART: TdxDBGridMaskColumn
                          Width = 88
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'PRO_CART'
                        end
                        object dbgven_prcPRO_PREC: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 80
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'PRO_PREC'
                        end
                        object dbgven_prcAVG: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 80
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'AVG'
                        end
                      end
                    end
                    object tsPRC: TdxTabSheet
                      Caption = 'Pre'#231'o Tabela'
                      object dxDBGrid1: TdxDBGrid
                        Left = 0
                        Top = 0
                        Width = 784
                        Height = 473
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
                        Color = clBtnFace
                        Ctl3D = True
                        ParentCtl3D = False
                        TabOrder = 0
                        AutoSearchColor = 9395
                        AutoSearchTextColor = clWhite
                        DataSource = dtscad_cli_prc
                        Filter.Active = True
                        Filter.Criteria = {00000000}
                        GridLineColor = clSilver
                        HideSelectionColor = 14789952
                        HighlightColor = 14789952
                        LookAndFeel = lfUltraFlat
                        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                        OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoRowSelect, edgoUseBitmap]
                        object dxDBGrid1CLI_CPRO: TdxDBGridMaskColumn
                          Width = 90
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'CLI_CPRO'
                          SummaryFooterType = cstCount
                          SummaryFooterField = 'ID'
                          SummaryFooterFormat = '0'
                        end
                        object dxDBGrid1CLI_DPRO: TdxDBGridMaskColumn
                          Width = 250
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'CLI_DPRO'
                        end
                        object dxDBGrid1CLI_PREC: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 60
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'CLI_PREC'
                          SummaryFooterType = cstAvg
                          SummaryFooterField = 'CLI_PREC'
                          SummaryFooterFormat = '#,0.00'
                          DisableFilter = True
                        end
                        object dxDBGrid1CLI_DPAG: TdxDBGridMaskColumn
                          Width = 101
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'CLI_DPAG'
                        end
                        object dxDBGrid1CLI_MANO: TdxDBGridMaskColumn
                          Width = 81
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'CLI_MANO'
                        end
                        object dxDBGrid1CLI_DCAD: TdxDBGridDateColumn
                          Width = 90
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'CLI_DCAD'
                        end
                      end
                    end
                  end
                end
              end
            end
            object tsNFS: TdxTabSheet
              Caption = 'Notas Fiscais'
              object Panel7: TPanel
                Left = 0
                Top = 0
                Width = 1029
                Height = 568
                Align = alLeft
                Alignment = taLeftJustify
                BevelOuter = bvNone
                TabOrder = 0
                object pcnfe: TdxPageControl
                  Left = 0
                  Top = 0
                  Width = 1029
                  Height = 345
                  ActivePage = tsNFD
                  Align = alClient
                  HideButtons = False
                  HotTrack = False
                  MultiLine = False
                  OwnerDraw = False
                  RaggedRight = False
                  ScrollOpposite = False
                  Style = dxtsFlatButtons
                  TabHeight = 0
                  TabOrder = 0
                  TabPosition = dxtpTop
                  TabWidth = 0
                  object tsNFE: TdxTabSheet
                    Caption = 'Emitidas'
                    OnShow = tsNFEShow
                    object Panel9: TPanel
                      Left = 0
                      Top = 0
                      Width = 1029
                      Height = 261
                      Align = alClient
                      TabOrder = 0
                      object dbgnfs_nfe: TdxDBGrid
                        Left = 1
                        Top = 1
                        Width = 1027
                        Height = 259
                        Bands = <
                          item
                          end>
                        DefaultLayout = True
                        HeaderPanelRowCount = 1
                        KeyField = 'NFE_CDNF'
                        ShowSummaryFooter = True
                        SummaryGroups = <>
                        SummarySeparator = ', '
                        Align = alClient
                        Color = clWhite
                        Ctl3D = True
                        ParentCtl3D = False
                        TabOrder = 0
                        AutoSearchColor = 9395
                        AutoSearchTextColor = clWhite
                        DataSource = dtsnfe_cab
                        Filter.Active = True
                        Filter.Criteria = {00000000}
                        GridLineColor = clSilver
                        HideSelectionColor = 14789952
                        HighlightColor = 14789952
                        LookAndFeel = lfUltraFlat
                        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                        OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoRowSelect, edgoUseBitmap]
                        object dbgnfs_nfeNFE_CDNF: TdxDBGridMaskColumn
                          Width = 60
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'NFE_CDNF'
                          SummaryFooterType = cstCount
                          SummaryFooterField = 'NFE_CDNF'
                          SummaryFooterFormat = '0'
                          DisableFilter = True
                        end
                        object dbgnfs_nfeNFE_DEMI: TdxDBGridDateColumn
                          Width = 77
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'NFE_DEMI'
                        end
                        object dbgnfs_nfeNFE_CFOP: TdxDBGridMaskColumn
                          Width = 80
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'NFE_CFOP'
                        end
                        object dbgnfs_nfeNAT_TIPO: TdxDBGridMaskColumn
                          Width = 95
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'NAT_TIPO'
                        end
                        object dbgnfs_nfeNFE_DVEN: TdxDBGridMaskColumn
                          Width = 150
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'NFE_DVEN'
                        end
                        object dbgnfs_nfeNFE_DREP: TdxDBGridMaskColumn
                          Width = 200
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'NFE_DREP'
                        end
                        object dbgnfs_nfeNFE_DTRA: TdxDBGridMaskColumn
                          Width = 200
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'NFE_DTRA'
                        end
                        object dbgnfs_nfeCOUNT: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 45
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'COUNT'
                          SummaryFooterType = cstSum
                          SummaryFooterField = 'COUNT'
                          SummaryFooterFormat = '0'
                          DisableFilter = True
                        end
                        object dbgnfs_nfeSUM: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 100
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'SUM'
                          SummaryFooterType = cstSum
                          SummaryFooterField = 'SUM'
                          SummaryFooterFormat = '#,0.00'
                          DisableFilter = True
                        end
                      end
                    end
                  end
                  object tsNFC: TdxTabSheet
                    Caption = 'Canceladas'
                    OnShow = tsNFCShow
                    object dxDBGrid2: TdxDBGrid
                      Left = 0
                      Top = 0
                      Width = 1029
                      Height = 261
                      Bands = <
                        item
                        end>
                      DefaultLayout = True
                      HeaderPanelRowCount = 1
                      KeyField = 'NFE_CDNF'
                      ShowSummaryFooter = True
                      SummaryGroups = <>
                      SummarySeparator = ', '
                      Align = alClient
                      Color = clRed
                      Ctl3D = True
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentCtl3D = False
                      ParentFont = False
                      TabOrder = 0
                      AutoSearchColor = 9395
                      AutoSearchTextColor = clWhite
                      BandFont.Charset = DEFAULT_CHARSET
                      BandFont.Color = clWindowText
                      BandFont.Height = -12
                      BandFont.Name = 'Tahoma'
                      BandFont.Style = []
                      DataSource = dtsnfe_cab
                      Filter.Active = True
                      Filter.Criteria = {00000000}
                      GridLineColor = clSilver
                      HeaderFont.Charset = DEFAULT_CHARSET
                      HeaderFont.Color = clWindowText
                      HeaderFont.Height = -12
                      HeaderFont.Name = 'Tahoma'
                      HeaderFont.Style = []
                      HideSelectionColor = 14789952
                      HighlightColor = 14789952
                      LookAndFeel = lfUltraFlat
                      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                      OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
                      PreviewFont.Charset = DEFAULT_CHARSET
                      PreviewFont.Color = clBlue
                      PreviewFont.Height = -12
                      PreviewFont.Name = 'Tahoma'
                      PreviewFont.Style = []
                      object dxDBGrid2NFE_CDNF: TdxDBGridMaskColumn
                        Width = 60
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_CDNF'
                        SummaryFooterType = cstCount
                        SummaryFooterField = 'NFE_CDNF'
                        SummaryFooterFormat = '0'
                        DisableFilter = True
                      end
                      object dxDBGrid2NFE_DEMI: TdxDBGridDateColumn
                        Width = 77
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_DEMI'
                      end
                      object dxDBGrid2NFE_CFOP: TdxDBGridMaskColumn
                        Width = 80
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_CFOP'
                      end
                      object dxDBGrid2NAT_TIPO: TdxDBGridMaskColumn
                        Width = 95
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NAT_TIPO'
                      end
                      object dxDBGrid2NFE_DFAV: TdxDBGridMaskColumn
                        Width = 316
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_DFAV'
                      end
                      object dxDBGrid2NFE_DVEN: TdxDBGridMaskColumn
                        Width = 150
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_DVEN'
                      end
                      object dxDBGrid2NFE_DREP: TdxDBGridMaskColumn
                        Width = 200
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_DREP'
                      end
                      object dxDBGrid2NFE_DTRA: TdxDBGridMaskColumn
                        Width = 200
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_DTRA'
                      end
                      object dxDBGrid2COUNT: TdxDBGridMaskColumn
                        HeaderAlignment = taRightJustify
                        Width = 45
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'COUNT'
                        SummaryFooterType = cstSum
                        SummaryFooterField = 'COUNT'
                        SummaryFooterFormat = '0'
                        DisableFilter = True
                      end
                      object dxDBGrid2SUM: TdxDBGridMaskColumn
                        HeaderAlignment = taRightJustify
                        Width = 100
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'SUM'
                        SummaryFooterType = cstSum
                        SummaryFooterField = 'SUM'
                        SummaryFooterFormat = '#,0.00'
                        DisableFilter = True
                      end
                    end
                  end
                  object tsNFD: TdxTabSheet
                    Caption = 'Devolu'#231#245'es'
                    OnShow = tsNFDShow
                    object dxDBGrid3: TdxDBGrid
                      Left = 0
                      Top = 0
                      Width = 1029
                      Height = 261
                      Bands = <
                        item
                        end>
                      DefaultLayout = True
                      HeaderPanelRowCount = 1
                      KeyField = 'NFE_CDNF'
                      ShowSummaryFooter = True
                      SummaryGroups = <>
                      SummarySeparator = ', '
                      Align = alClient
                      Color = clWhite
                      Ctl3D = True
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentCtl3D = False
                      ParentFont = False
                      TabOrder = 0
                      AutoSearchColor = 9395
                      AutoSearchTextColor = clWhite
                      BandFont.Charset = DEFAULT_CHARSET
                      BandFont.Color = clWindowText
                      BandFont.Height = -12
                      BandFont.Name = 'Tahoma'
                      BandFont.Style = []
                      DataSource = dtsnfe_cab
                      Filter.Active = True
                      Filter.Criteria = {00000000}
                      GridLineColor = clSilver
                      HeaderFont.Charset = DEFAULT_CHARSET
                      HeaderFont.Color = clWindowText
                      HeaderFont.Height = -12
                      HeaderFont.Name = 'Tahoma'
                      HeaderFont.Style = []
                      HideSelectionColor = 14789952
                      HighlightColor = 14789952
                      LookAndFeel = lfUltraFlat
                      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                      OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
                      PreviewFont.Charset = DEFAULT_CHARSET
                      PreviewFont.Color = clBlue
                      PreviewFont.Height = -12
                      PreviewFont.Name = 'Tahoma'
                      PreviewFont.Style = []
                      object dxDBGrid3NFE_CDNF: TdxDBGridMaskColumn
                        Width = 60
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_CDNF'
                        SummaryFooterType = cstSum
                        SummaryFooterField = 'NFE_CDNF'
                        SummaryFooterFormat = '0'
                        DisableFilter = True
                      end
                      object dxDBGrid3NFE_DEMI: TdxDBGridDateColumn
                        Width = 77
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_DEMI'
                      end
                      object dxDBGrid3NFE_CFOP: TdxDBGridMaskColumn
                        Width = 80
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_CFOP'
                      end
                      object dxDBGrid3NAT_TIPO: TdxDBGridMaskColumn
                        Width = 95
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NAT_TIPO'
                      end
                      object dxDBGrid3NFE_DFAV: TdxDBGridMaskColumn
                        Width = 316
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_DFAV'
                      end
                      object dxDBGrid3NFE_DVEN: TdxDBGridMaskColumn
                        Width = 150
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_DVEN'
                      end
                      object dxDBGrid3NFE_DREP: TdxDBGridMaskColumn
                        Width = 200
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_DREP'
                      end
                      object dxDBGrid3NFE_DTRA: TdxDBGridMaskColumn
                        Width = 200
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_DTRA'
                      end
                      object dxDBGrid3COUNT: TdxDBGridMaskColumn
                        HeaderAlignment = taRightJustify
                        Width = 45
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'COUNT'
                        SummaryFooterType = cstSum
                        SummaryFooterField = 'COUNT'
                        SummaryFooterFormat = '0'
                        DisableFilter = True
                      end
                      object dxDBGrid3SUM: TdxDBGridMaskColumn
                        HeaderAlignment = taRightJustify
                        Width = 100
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'SUM'
                        SummaryFooterType = cstSum
                        SummaryFooterField = 'SUM'
                        SummaryFooterFormat = '#,0.00'
                        DisableFilter = True
                      end
                    end
                  end
                end
                object pcmain: TdxPageControl
                  Left = 0
                  Top = 345
                  Width = 1029
                  Height = 223
                  ActivePage = dxTabSheet1
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
                  object dxTabSheet1: TdxTabSheet
                    Caption = 'Produtos'
                    object dbgite: TdxDBGrid
                      Left = 0
                      Top = 0
                      Width = 1029
                      Height = 199
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
                      Color = clBtnFace
                      Ctl3D = True
                      ParentCtl3D = False
                      TabOrder = 0
                      AutoSearchColor = 9395
                      AutoSearchTextColor = clWhite
                      DataSource = dtsnfe_ite
                      Filter.Criteria = {00000000}
                      GridLineColor = clSilver
                      HideSelectionColor = 14789952
                      HideSelectionTextColor = 16382457
                      HighlightColor = 14789952
                      HighlightTextColor = 16382457
                      LookAndFeel = lfUltraFlat
                      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                      OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoRowSelect, edgoUseBitmap]
                      object dbgiteNFE_ITEMPED: TdxDBGridMaskColumn
                        Width = 50
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
                      object dbgiteNFE_UCOM: TdxDBGridMaskColumn
                        Width = 45
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_UCOM'
                      end
                      object dbgiteNFE_XPROD: TdxDBGridMaskColumn
                        Width = 502
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_XPROD'
                      end
                      object dbgiteNFE_QCOM: TdxDBGridMaskColumn
                        HeaderAlignment = taRightJustify
                        Width = 80
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_QCOM'
                        SummaryFooterType = cstSum
                        SummaryFooterField = 'NFE_QCOM'
                        SummaryFooterFormat = '#,0.00'
                      end
                      object dbgiteNFE_VUNCOM: TdxDBGridMaskColumn
                        HeaderAlignment = taRightJustify
                        Width = 60
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_VUNCOM'
                      end
                      object dbgiteNFE_VPROD: TdxDBGridMaskColumn
                        HeaderAlignment = taRightJustify
                        Width = 80
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_VPROD'
                        SummaryFooterType = cstSum
                        SummaryFooterField = 'NFE_VPROD'
                        SummaryFooterFormat = '#,0.00'
                      end
                      object dbgiteNFE_VNF: TdxDBGridMaskColumn
                        HeaderAlignment = taRightJustify
                        Width = 80
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'NFE_VNF'
                        SummaryFooterType = cstSum
                        SummaryFooterField = 'NFE_VNF'
                        SummaryFooterFormat = '#,0.00'
                      end
                    end
                  end
                end
              end
              object Panel8: TPanel
                Left = 1029
                Top = 0
                Width = 314
                Height = 568
                Align = alClient
                TabOrder = 1
                object Panel10: TPanel
                  Left = 1
                  Top = 1
                  Width = 312
                  Height = 508
                  Align = alClient
                  BevelInner = bvRaised
                  TabOrder = 0
                  object DBChart2: TDBChart
                    Left = 2
                    Top = 2
                    Width = 308
                    Height = 504
                    AllowPanning = pmNone
                    AnimatedZoom = True
                    AnimatedZoomSteps = 9
                    BackWall.Brush.Color = clWhite
                    BackWall.Brush.Style = bsClear
                    BottomWall.Brush.Color = clWhite
                    Gradient.EndColor = 14789952
                    Gradient.Visible = True
                    LeftWall.Color = clSilver
                    Title.Font.Charset = ANSI_CHARSET
                    Title.Font.Color = clBlack
                    Title.Font.Height = -13
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Title.Text.Strings = (
                      'Situa'#231#227'o das Vendas')
                    BottomAxis.Visible = False
                    Chart3DPercent = 45
                    LeftAxis.ExactDateTime = False
                    LeftAxis.Grid.Visible = False
                    LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
                    LeftAxis.LabelsFont.Color = clBlack
                    LeftAxis.LabelsFont.Height = -13
                    LeftAxis.LabelsFont.Name = 'Arial'
                    LeftAxis.LabelsFont.Style = []
                    LeftAxis.LabelsMultiLine = True
                    LeftAxis.LabelStyle = talValue
                    LeftAxis.TickLength = 0
                    LeftAxis.TickOnLabelsOnly = False
                    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
                    LeftAxis.Title.Font.Color = clBlack
                    LeftAxis.Title.Font.Height = -13
                    LeftAxis.Title.Font.Name = 'Arial'
                    LeftAxis.Title.Font.Style = []
                    Legend.Alignment = laBottom
                    Legend.ColorWidth = 15
                    Legend.DividingLines.Visible = True
                    Legend.ShadowSize = 0
                    Legend.TopPos = 0
                    RightAxis.Ticks.Color = clMedGray
                    TopAxis.Visible = False
                    View3DOptions.HorizOffset = -2
                    View3DOptions.VertOffset = -2
                    Align = alClient
                    BevelInner = bvRaised
                    Color = 14789952
                    TabOrder = 0
                    object BarSeries2: TBarSeries
                      ColorEachPoint = True
                      Cursor = crCross
                      HorizAxis = aTopAxis
                      Marks.ArrowLength = 20
                      Marks.BackColor = clWhite
                      Marks.Clip = True
                      Marks.Font.Charset = DEFAULT_CHARSET
                      Marks.Font.Color = clBlack
                      Marks.Font.Height = -7
                      Marks.Font.Name = 'Arial'
                      Marks.Font.Style = []
                      Marks.Style = smsLabelPercent
                      Marks.Visible = True
                      DataSource = nfe_gra
                      SeriesColor = clRed
                      ShowInLegend = False
                      Title = 'Evolu'#231#227'o de Vendas'
                      VertAxis = aRightAxis
                      XLabelsSource = 'NAT_TIPO'
                      BarBrush.Color = clWhite
                      BarPen.Style = psDot
                      BarPen.Visible = False
                      BarWidthPercent = 52
                      YOrigin = 1.000000000000000000
                      XValues.DateTime = False
                      XValues.Name = 'X'
                      XValues.Multiplier = 1.000000000000000000
                      XValues.Order = loAscending
                      XValues.ValueSource = 'NFE_VNF'
                      YValues.DateTime = False
                      YValues.Name = 'Bar'
                      YValues.Multiplier = 1.000000000000000000
                      YValues.Order = loNone
                      YValues.ValueSource = 'NFE_VNF'
                    end
                  end
                end
              end
            end
            object tsFIN: TdxTabSheet
              Caption = 'Financeiro'
              OnShow = tsFINShow
              object pcCAR: TdxPageControl
                Left = 0
                Top = 311
                Width = 1343
                Height = 257
                ActivePage = tsCAR
                Align = alBottom
                HideButtons = False
                HotTrack = False
                MultiLine = False
                OwnerDraw = False
                RaggedRight = False
                ScrollOpposite = False
                Style = dxtsFlatButtons
                TabHeight = 0
                TabOrder = 0
                TabPosition = dxtpTop
                TabWidth = 0
                object tsCAR: TdxTabSheet
                  Caption = 'Carteira'
                  object dbgfin_car: TdxDBGrid
                    Left = 0
                    Top = 0
                    Width = 1343
                    Height = 231
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
                    Color = 15263976
                    Ctl3D = True
                    ParentCtl3D = False
                    TabOrder = 0
                    AutoSearchColor = 9395
                    AutoSearchTextColor = clWhite
                    DataSource = dtsfin_car
                    Filter.Active = True
                    Filter.Criteria = {00000000}
                    GridLineColor = clSilver
                    HideSelectionColor = 14789952
                    HighlightColor = 14789952
                    LookAndFeel = lfUltraFlat
                    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                    OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoRowSelect, edgoUseBitmap]
                    OnCustomDrawCell = dbgfin_carCustomDrawCell
                    object dbgfin_carFIN_DOCT: TdxDBGridMaskColumn
                      Width = 80
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_DOCT'
                      SummaryFooterType = cstCount
                      SummaryFooterField = 'ID'
                      SummaryFooterFormat = '0'
                      DisableFilter = True
                    end
                    object dbgfin_carFIN_IDBX: TdxDBGridMaskColumn
                      Width = 60
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_IDBX'
                    end
                    object dbgfin_carFIN_TIPO: TdxDBGridMaskColumn
                      Width = 120
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_TIPO'
                    end
                    object dbgfin_carUSU_DUSU: TdxDBGridMaskColumn
                      Width = 100
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'USU_DUSU'
                    end
                    object dbgfin_carREP_FANT: TdxDBGridMaskColumn
                      Width = 200
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'REP_FANT'
                    end
                    object dbgfin_carFIN_DCAD: TdxDBGridDateColumn
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_DCAD'
                    end
                    object dbgfin_carFIN_DVEN: TdxDBGridDateColumn
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_DVEN'
                    end
                    object dbgfin_carFIN_DPAG: TdxDBGridDateColumn
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_DPAG'
                    end
                    object dbgfin_carFIN_STFI: TdxDBGridMaskColumn
                      Width = 110
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_STFI'
                    end
                    object dbgfin_carFIN_STDO: TdxDBGridMaskColumn
                      Width = 30
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_STDO'
                      DisableFilter = True
                    end
                    object dbgfin_carFIN_VALO: TdxDBGridMaskColumn
                      HeaderAlignment = taRightJustify
                      Width = 95
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_VALO'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'FIN_VALO'
                      SummaryFooterFormat = '#,0.00'
                      DisableFilter = True
                    end
                    object dbgfin_carFIN_VPAG: TdxDBGridMaskColumn
                      HeaderAlignment = taRightJustify
                      Width = 95
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_VPAG'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'FIN_VPAG'
                      SummaryFooterFormat = '#,0.00'
                      DisableFilter = True
                    end
                    object dbgfin_carFIN_VPEN: TdxDBGridMaskColumn
                      HeaderAlignment = taRightJustify
                      Width = 95
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_VPEN'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'FIN_VPEN'
                      SummaryFooterFormat = '#,0.00'
                      DisableFilter = True
                    end
                    object dbgfin_carPAR_FANT: TdxDBGridMaskColumn
                      Width = 120
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'PAR_FANT'
                    end
                  end
                end
              end
              object pcBAN: TdxPageControl
                Left = 0
                Top = 0
                Width = 1343
                Height = 311
                ActivePage = tsBAN
                Align = alClient
                HideButtons = False
                HotTrack = False
                MultiLine = False
                OwnerDraw = False
                RaggedRight = False
                ScrollOpposite = False
                Style = dxtsFlatButtons
                TabHeight = 0
                TabOrder = 1
                TabPosition = dxtpTop
                TabWidth = 0
                object tsBAN: TdxTabSheet
                  Caption = 'Banc'#225'rio'
                  object dbgfin_ban: TdxDBGrid
                    Left = 0
                    Top = 0
                    Width = 1343
                    Height = 227
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
                    Color = clWhite
                    Ctl3D = True
                    ParentCtl3D = False
                    TabOrder = 0
                    AutoSearchColor = 9395
                    AutoSearchTextColor = clWhite
                    DataSource = dtsfin_ban
                    Filter.Active = True
                    Filter.Criteria = {00000000}
                    GridLineColor = clSilver
                    HideSelectionColor = 14789952
                    HighlightColor = 14789952
                    LookAndFeel = lfUltraFlat
                    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                    OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoRowSelect, edgoUseBitmap]
                    OnCustomDrawCell = dbgfin_banCustomDrawCell
                    object dbgfin_banFIN_DOCT: TdxDBGridMaskColumn
                      Width = 80
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_DOCT'
                      SummaryFooterType = cstCount
                      SummaryFooterField = 'ID'
                      SummaryFooterFormat = '0'
                      DisableFilter = True
                    end
                    object dbgfin_banFIN_IDBX: TdxDBGridMaskColumn
                      Width = 60
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_IDBX'
                    end
                    object dbgfin_banFIN_TIPO: TdxDBGridMaskColumn
                      Width = 120
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_TIPO'
                    end
                    object dbgfin_banUSU_DUSU: TdxDBGridMaskColumn
                      Width = 100
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'USU_DUSU'
                    end
                    object dbgfin_banREP_FANT: TdxDBGridMaskColumn
                      Width = 200
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'REP_FANT'
                    end
                    object dbgfin_banFIN_DCAD: TdxDBGridDateColumn
                      Width = 74
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_DCAD'
                    end
                    object dbgfin_banFIN_DVEN: TdxDBGridDateColumn
                      Width = 74
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_DVEN'
                    end
                    object dbgfin_banFIN_DPAG: TdxDBGridDateColumn
                      Width = 74
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_DPAG'
                    end
                    object dbgfin_banFIN_STFI: TdxDBGridMaskColumn
                      Width = 110
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_STFI'
                    end
                    object dbgfin_banFIN_STDO: TdxDBGridMaskColumn
                      Width = 30
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_STDO'
                      DisableFilter = True
                    end
                    object dbgfin_banFIN_VALO: TdxDBGridMaskColumn
                      HeaderAlignment = taRightJustify
                      Width = 95
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_VALO'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'FIN_VALO'
                      SummaryFooterFormat = '#,0.00'
                      DisableFilter = True
                    end
                    object dbgfin_banFIN_VPAG: TdxDBGridMaskColumn
                      HeaderAlignment = taRightJustify
                      Width = 95
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_VPAG'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'FIN_VPAG'
                      SummaryFooterFormat = '#,0.00'
                      DisableFilter = True
                    end
                    object dbgfin_banFIN_VPEN: TdxDBGridMaskColumn
                      HeaderAlignment = taRightJustify
                      Width = 95
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FIN_VPEN'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'FIN_VPEN'
                      SummaryFooterFormat = '#,0.00'
                      DisableFilter = True
                    end
                    object dbgfin_banPAR_FANT: TdxDBGridMaskColumn
                      Width = 120
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'PAR_FANT'
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    object pnlbot: TPanel
      Left = 0
      Top = 677
      Width = 1349
      Height = 0
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
    end
  end
  inherited sbMSG: TStatusBar
    Top = 677
    Width = 1349
    Visible = False
  end
  inherited Consulta: TIBQuery
    Left = 600
    Top = 32
  end
  inherited ibSP: TIBStoredProc
    Left = 664
    Top = 0
  end
  object dtsven_ped: TDataSource
    DataSet = ven_ped
    Left = 368
    Top = 8
  end
  object ven_ped: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT PED_VEN_CAB.*,REP_FANT,USU_DUSU,PAG_DPAG'
      'FROM   CAD_REP,CAD_USU,TAB_PAG,PED_VEN_CAB "PED_VEN_CAB"'
      'WHERE  PED_VEN_CAB.ROM_CREP = CAD_REP.ID'
      'AND    PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU'
      'AND    PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID'
      'AND    PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'UNION'
      'SELECT PED_VEN_CAB.*,REP_FANT,USU_DUSU,PAG_DPAG'
      'FROM   CAD_REP,CAD_USU,TAB_PAG,PED_VEN_CAB_002 "PED_VEN_CAB"'
      'WHERE  PED_VEN_CAB.ROM_CREP = CAD_REP.ID'
      'AND    PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU'
      'AND    PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID'
      'AND    PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'ORDER BY 1 DESC')
    Left = 336
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end>
    object ven_pedID: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'ID'
      Origin = '"PED_VEN_CAB_003"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ven_pedROM_CDOC: TIntegerField
      FieldName = 'ROM_CDOC'
      Origin = '"PED_VEN_CAB_003"."ROM_CDOC"'
    end
    object ven_pedROM_CDPR: TIntegerField
      FieldName = 'ROM_CDPR'
      Origin = '"PED_VEN_CAB_003"."ROM_CDPR"'
    end
    object ven_pedROM_CDPD: TIntegerField
      FieldName = 'ROM_CDPD'
      Origin = '"PED_VEN_CAB_003"."ROM_CDPD"'
    end
    object ven_pedROM_CDRO: TIntegerField
      FieldName = 'ROM_CDRO'
      Origin = '"PED_VEN_CAB_003"."ROM_CDRO"'
    end
    object ven_pedROM_CDRD: TIntegerField
      FieldName = 'ROM_CDRD'
      Origin = '"PED_VEN_CAB_003"."ROM_CDRD"'
    end
    object ven_pedROM_CDNF: TIntegerField
      DisplayLabel = 'Nota Fiscal'
      FieldName = 'ROM_CDNF'
      Origin = '"PED_VEN_CAB_003"."ROM_CDNF"'
    end
    object ven_pedROM_CDBX: TIntegerField
      FieldName = 'ROM_CDBX'
      Origin = '"PED_VEN_CAB_003"."ROM_CDBX"'
    end
    object ven_pedROM_CDCX: TIntegerField
      FieldName = 'ROM_CDCX'
      Origin = '"PED_VEN_CAB_003"."ROM_CDCX"'
    end
    object ven_pedROM_DERO: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'ROM_DERO'
      Origin = '"PED_VEN_CAB_003"."ROM_DERO"'
    end
    object ven_pedROM_STPD: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'ROM_STPD'
      Origin = '"PED_VEN_CAB_003"."ROM_STPD"'
    end
    object ven_pedROM_STCO: TIBStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldName = 'ROM_STCO'
      Origin = '"PED_VEN_CAB_003"."ROM_STCO"'
    end
    object ven_pedROM_STFI: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'ROM_STFI'
      Origin = '"PED_VEN_CAB_003"."ROM_STFI"'
    end
    object ven_pedROM_DROM: TDateField
      DisplayLabel = 'Venda'
      FieldName = 'ROM_DROM'
      Origin = '"PED_VEN_CAB_003"."ROM_DROM"'
    end
    object ven_pedROM_HROM: TTimeField
      FieldName = 'ROM_HROM'
      Origin = '"PED_VEN_CAB_003"."ROM_HROM"'
    end
    object ven_pedROM_DBAI: TDateField
      FieldName = 'ROM_DBAI'
      Origin = '"PED_VEN_CAB_003"."ROM_DBAI"'
    end
    object ven_pedROM_DCAN: TDateField
      FieldName = 'ROM_DCAN'
      Origin = '"PED_VEN_CAB_003"."ROM_DCAN"'
    end
    object ven_pedROM_DNFS: TDateField
      FieldName = 'ROM_DNFS'
      Origin = '"PED_VEN_CAB_003"."ROM_DNFS"'
    end
    object ven_pedROM_DEXP: TDateField
      FieldName = 'ROM_DEXP'
      Origin = '"PED_VEN_CAB_003"."ROM_DEXP"'
    end
    object ven_pedROM_HEXP: TTimeField
      FieldName = 'ROM_HEXP'
      Origin = '"PED_VEN_CAB_003"."ROM_HEXP"'
    end
    object ven_pedROM_CEXP: TIntegerField
      FieldName = 'ROM_CEXP'
      Origin = '"PED_VEN_CAB_003"."ROM_CEXP"'
    end
    object ven_pedROM_CCLI: TIntegerField
      FieldName = 'ROM_CCLI'
      Origin = '"PED_VEN_CAB_003"."ROM_CCLI"'
    end
    object ven_pedROM_CVEN: TIntegerField
      FieldName = 'ROM_CVEN'
      Origin = '"PED_VEN_CAB_003"."ROM_CVEN"'
    end
    object ven_pedROM_CREP: TIntegerField
      FieldName = 'ROM_CREP'
      Origin = '"PED_VEN_CAB_003"."ROM_CREP"'
    end
    object ven_pedROM_CPAG: TIntegerField
      FieldName = 'ROM_CPAG'
      Origin = '"PED_VEN_CAB_003"."ROM_CPAG"'
    end
    object ven_pedROM_QTVE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'ROM_QTVE'
      Origin = '"PED_VEN_CAB_003"."ROM_QTVE"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
    object ven_pedROM_QTSP: TIBBCDField
      FieldName = 'ROM_QTSP'
      Origin = '"PED_VEN_CAB_003"."ROM_QTSP"'
      Precision = 18
      Size = 4
    end
    object ven_pedROM_QTPD: TIBBCDField
      FieldName = 'ROM_QTPD'
      Origin = '"PED_VEN_CAB_003"."ROM_QTPD"'
      Precision = 18
      Size = 4
    end
    object ven_pedROM_RLVE: TIntegerField
      FieldName = 'ROM_RLVE'
      Origin = '"PED_VEN_CAB_003"."ROM_RLVE"'
    end
    object ven_pedROM_TSDE: TIBBCDField
      DisplayLabel = 'Sub Total'
      FieldName = 'ROM_TSDE'
      Origin = '"PED_VEN_CAB_003"."ROM_TSDE"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object ven_pedROM_TDSC: TIBStringField
      FieldName = 'ROM_TDSC'
      Origin = '"PED_VEN_CAB_003"."ROM_TDSC"'
      FixedChar = True
      Size = 1
    end
    object ven_pedROM_PDSC: TIBBCDField
      FieldName = 'ROM_PDSC'
      Origin = '"PED_VEN_CAB_003"."ROM_PDSC"'
      Precision = 9
      Size = 2
    end
    object ven_pedROM_CDSC: TIBBCDField
      FieldName = 'ROM_CDSC'
      Origin = '"PED_VEN_CAB_003"."ROM_CDSC"'
      Precision = 9
      Size = 2
    end
    object ven_pedROM_ADSC: TIBBCDField
      FieldName = 'ROM_ADSC'
      Origin = '"PED_VEN_CAB_003"."ROM_ADSC"'
      Precision = 9
      Size = 2
    end
    object ven_pedROM_TCDE: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'ROM_TCDE'
      Origin = '"PED_VEN_CAB_003"."ROM_TCDE"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object ven_pedROM_CONC: TSmallintField
      FieldName = 'ROM_CONC'
      Origin = '"PED_VEN_CAB_003"."ROM_CONC"'
    end
    object ven_pedROM_OBSE: TMemoField
      FieldName = 'ROM_OBSE'
      Origin = '"PED_VEN_CAB_003"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object ven_pedROM_STA: TIBStringField
      FieldName = 'ROM_STA'
      Origin = '"PED_VEN_CAB_003"."ROM_STA"'
      FixedChar = True
      Size = 1
    end
    object ven_pedREP_FANT: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'REP_FANT'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 40
    end
    object ven_pedROM_COMI: TIBBCDField
      FieldName = 'ROM_COMI'
      Origin = '"PED_VEN_CAB_003"."ROM_COMI"'
      Precision = 9
      Size = 2
    end
    object ven_pedUSU_DUSU: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'USU_DUSU'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object ven_pedPAG_DPAG: TIBStringField
      DisplayLabel = 'F. Pagamento'
      FieldName = 'PAG_DPAG'
      Origin = '"TAB_PAG"."PAG_DPAG"'
      Size = 50
    end
  end
  object tSHEILD: TIBTransaction
    DefaultDatabase = dmDADOS.bSHEILD
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 600
  end
  object ven_pro: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      
        'SELECT    PED_VEN_CAB.ROM_DERO,PED_VEN_CAB.ROM_DROM,PED_VEN_ITE.' +
        '*,CAD_PRO.ID,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_CCOR,'
      
        '          CAD_PRO.PRO_RCOR,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DPRO,CAD' +
        '_PRO.PRO_DUNI,CAD_PRO.PRO_PIPI,CAD_PRO.PRO_REPR,CAD_PRO.PRO_APRO' +
        ','
      
        '          CAD_PRO.PRO_CBAR,CAD_PRO.PRO_PPRO,CAD_PRO.PRO_CEMB,CAD' +
        '_PRO.PRO_GRAD,'
      '          CAD_PRO_IMG.PRO_FOTO'
      
        'FROM      CAD_PRO,CAD_PRO_IMG,PED_VEN_CAB_003 "PED_VEN_CAB",PED_' +
        'VEN_ITE_003 "PED_VEN_ITE"'
      'WHERE     PED_VEN_CAB.ID = PED_VEN_ITE.ROM_CCAB'
      'AND       PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID'
      'AND       CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART'
      'AND       PED_VEN_CAB.ROM_CCLI = 12178'
      'ORDER  BY CAD_PRO.PRO_CPRO')
    Left = 336
    Top = 40
    object ven_proID: TIntegerField
      FieldName = 'ID'
      Origin = '"PED_VEN_ITE_003"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ven_proROM_CCAB: TIntegerField
      FieldName = 'ROM_CCAB'
      Origin = '"PED_VEN_ITE_003"."ROM_CCAB"'
    end
    object ven_proROM_CDOC: TIntegerField
      FieldName = 'ROM_CDOC'
      Origin = '"PED_VEN_ITE_003"."ROM_CDOC"'
    end
    object ven_proROM_CDPR: TIntegerField
      FieldName = 'ROM_CDPR'
      Origin = '"PED_VEN_ITE_003"."ROM_CDPR"'
    end
    object ven_proROM_CDPD: TIntegerField
      FieldName = 'ROM_CDPD'
      Origin = '"PED_VEN_ITE_003"."ROM_CDPD"'
    end
    object ven_proROM_CDRO: TIntegerField
      FieldName = 'ROM_CDRO'
      Origin = '"PED_VEN_ITE_003"."ROM_CDRO"'
    end
    object ven_proROM_CDRD: TIntegerField
      FieldName = 'ROM_CDRD'
      Origin = '"PED_VEN_ITE_003"."ROM_CDRD"'
    end
    object ven_proROM_CDNF: TIntegerField
      DisplayLabel = 'Nota Fiscal'
      FieldName = 'ROM_CDNF'
      Origin = '"PED_VEN_ITE_003"."ROM_CDNF"'
    end
    object ven_proROM_ITEM: TIBStringField
      FieldName = 'ROM_ITEM'
      Origin = '"PED_VEN_ITE_003"."ROM_ITEM"'
      Size = 4
    end
    object ven_proROM_CPRO: TIntegerField
      FieldName = 'ROM_CPRO'
      Origin = '"PED_VEN_ITE_003"."ROM_CPRO"'
    end
    object ven_proROM_CPR2: TIntegerField
      FieldName = 'ROM_CPR2'
      Origin = '"PED_VEN_ITE_003"."ROM_CPR2"'
    end
    object ven_proROM_CDET: TIBStringField
      FieldName = 'ROM_CDET'
      Origin = '"PED_VEN_ITE_003"."ROM_CDET"'
      Size = 10
    end
    object ven_proROM_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'ROM_QTDE'
      Origin = '"PED_VEN_ITE_003"."ROM_QTDE"'
      Precision = 18
      Size = 4
    end
    object ven_proROM_QTRL: TIntegerField
      FieldName = 'ROM_QTRL'
      Origin = '"PED_VEN_ITE_003"."ROM_QTRL"'
    end
    object ven_proROM_QTSP: TIBBCDField
      FieldName = 'ROM_QTSP'
      Origin = '"PED_VEN_ITE_003"."ROM_QTSP"'
      Precision = 18
      Size = 4
    end
    object ven_proROM_RLSP: TIntegerField
      FieldName = 'ROM_RLSP'
      Origin = '"PED_VEN_ITE_003"."ROM_RLSP"'
    end
    object ven_proROM_QTPD: TIBBCDField
      FieldName = 'ROM_QTPD'
      Origin = '"PED_VEN_ITE_003"."ROM_QTPD"'
      Precision = 18
      Size = 4
    end
    object ven_proROM_RLPD: TIntegerField
      FieldName = 'ROM_RLPD'
      Origin = '"PED_VEN_ITE_003"."ROM_RLPD"'
    end
    object ven_proROM_VDSC: TIBBCDField
      DisplayLabel = 'Desc (%)'
      FieldName = 'ROM_VDSC'
      Origin = '"PED_VEN_ITE_003"."ROM_VDSC"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object ven_proROM_TOTA: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'ROM_TOTA'
      Origin = '"PED_VEN_ITE_003"."ROM_TOTA"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object ven_proROM_FLAG: TIBStringField
      FieldName = 'ROM_FLAG'
      Origin = '"PED_VEN_ITE_003"."ROM_FLAG"'
      FixedChar = True
      Size = 1
    end
    object ven_proROM_COMI: TIBBCDField
      FieldName = 'ROM_COMI'
      Origin = '"PED_VEN_ITE_003"."ROM_COMI"'
      Precision = 9
      Size = 2
    end
    object ven_proID1: TIntegerField
      FieldName = 'ID1'
      Origin = '"CAD_PRO"."ID"'
      Required = True
    end
    object ven_proPRO_CART: TIBStringField
      FieldName = 'PRO_CART'
      Origin = '"CAD_PRO"."PRO_CART"'
    end
    object ven_proPRO_CPRO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_CPRO'
      Origin = '"CAD_PRO"."PRO_CPRO"'
    end
    object ven_proPRO_CCOR: TIntegerField
      FieldName = 'PRO_CCOR'
      Origin = '"CAD_PRO"."PRO_CCOR"'
    end
    object ven_proPRO_RCOR: TIBStringField
      FieldName = 'PRO_RCOR'
      Origin = '"CAD_PRO"."PRO_RCOR"'
      Size = 3
    end
    object ven_proPRO_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'PRO_DCOR'
      Origin = '"CAD_PRO"."PRO_DCOR"'
      Size = 30
    end
    object ven_proPRO_DPRO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRO_DPRO'
      Origin = '"CAD_PRO"."PRO_DPRO"'
      Size = 120
    end
    object ven_proPRO_DUNI: TIBStringField
      FieldName = 'PRO_DUNI'
      Origin = '"CAD_PRO"."PRO_DUNI"'
      Size = 3
    end
    object ven_proPRO_PIPI: TSmallintField
      FieldName = 'PRO_PIPI'
      Origin = '"CAD_PRO"."PRO_PIPI"'
    end
    object ven_proPRO_CBAR: TIBStringField
      FieldName = 'PRO_CBAR'
      Origin = '"CAD_PRO"."PRO_CBAR"'
    end
    object ven_proPRO_CEMB: TIntegerField
      FieldName = 'PRO_CEMB'
      Origin = '"CAD_PRO"."PRO_CEMB"'
    end
    object ven_proPRO_GRAD: TIBStringField
      FieldName = 'PRO_GRAD'
      Origin = '"CAD_PRO"."PRO_GRAD"'
      Size = 3
    end
    object ven_proPRO_FOTO: TBlobField
      FieldName = 'PRO_FOTO'
      Origin = '"CAD_PRO_IMG"."PRO_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ven_proROM_DERO: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'ROM_DERO'
      Origin = '"PED_VEN_CAB_003"."ROM_DERO"'
    end
    object ven_proROM_DROM: TDateField
      DisplayLabel = 'Venda'
      FieldName = 'ROM_DROM'
      Origin = '"PED_VEN_CAB_003"."ROM_DROM"'
    end
    object ven_proROM_DPRO: TIBStringField
      FieldName = 'ROM_DPRO'
      Origin = '"PED_VEN_ITE_003"."ROM_DPRO"'
      Size = 120
    end
    object ven_proPRO_REPR: TIBStringField
      FieldName = 'PRO_REPR'
      Origin = '"CAD_PRO"."PRO_REPR"'
      FixedChar = True
      Size = 1
    end
    object ven_proPRO_APRO: TMemoField
      FieldName = 'PRO_APRO'
      Origin = '"CAD_PRO"."PRO_APRO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object ven_proROM_TPRC: TIBStringField
      FieldName = 'ROM_TPRC'
      Origin = '"PED_VEN_ITE_003"."ROM_TPRC"'
      FixedChar = True
      Size = 1
    end
    object ven_proROM_ABCD: TIBStringField
      FieldName = 'ROM_ABCD'
      Origin = '"PED_VEN_ITE_003"."ROM_ABCD"'
      FixedChar = True
      Size = 1
    end
    object ven_proROM_DCOR: TIBStringField
      FieldName = 'ROM_DCOR'
      Origin = '"PED_VEN_ITE_003"."ROM_DCOR"'
      Size = 30
    end
    object ven_proROM_PCOR: TIBStringField
      FieldName = 'ROM_PCOR'
      Origin = '"PED_VEN_ITE_003"."ROM_PCOR"'
      Size = 30
    end
    object ven_proROM_UNIT: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'ROM_UNIT'
      Origin = '"PED_VEN_ITE_003"."ROM_UNIT"'
    end
    object ven_proROM_PREC: TFloatField
      FieldName = 'ROM_PREC'
      Origin = '"PED_VEN_ITE_003"."ROM_PREC"'
    end
    object ven_proROM_DCO2: TIBStringField
      FieldName = 'ROM_DCO2'
      Origin = '"PED_VEN_ITE_003"."ROM_DCO2"'
      Size = 30
    end
    object ven_proROM_PCO2: TIBStringField
      FieldName = 'ROM_PCO2'
      Origin = '"PED_VEN_ITE_003"."ROM_PCO2"'
      Size = 30
    end
    object ven_proPRO_PPRO: TFloatField
      FieldName = 'PRO_PPRO'
      Origin = '"CAD_PRO"."PRO_PPRO"'
    end
  end
  object dtsven_pro: TDataSource
    DataSet = ven_pro
    Left = 368
    Top = 40
  end
  object ven_gra: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT    ROM_STFI,SUM(ROM_TCDE) "ROM_TCDE"'
      'FROM ('
      'SELECT    ROM_STFI,SUM(ROM_TCDE) "ROM_TCDE"'
      'FROM      PED_VEN_CAB "PED_VEN_CAB"'
      'WHERE     PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'GROUP  BY ROM_STFI'
      'UNION'
      'SELECT    ROM_STFI,SUM(ROM_TCDE) "ROM_TCDE"'
      'FROM      PED_VEN_CAB_002 "PED_VEN_CAB"'
      'WHERE     PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'GROUP  BY ROM_STFI'
      'UNION'
      'SELECT    ROM_STFI,SUM(ROM_TCDE) "ROM_TCDE"'
      'FROM      PED_VEN_CAB_003 "PED_VEN_CAB"'
      'WHERE     PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'GROUP  BY ROM_STFI'
      'UNION'
      'SELECT    ROM_STFI,SUM(ROM_TCDE) "ROM_TCDE"'
      'FROM      PED_VEN_CAB_004 "PED_VEN_CAB"'
      'WHERE     PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'GROUP  BY ROM_STFI'
      'UNION'
      'SELECT    ROM_STFI,SUM(ROM_TCDE) "ROM_TCDE"'
      'FROM      PED_VEN_CAB_005 "PED_VEN_CAB"'
      'WHERE     PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'GROUP  BY ROM_STFI'
      'UNION'
      'SELECT    ROM_STFI,SUM(ROM_TCDE) "ROM_TCDE"'
      'FROM      PED_VEN_CAB_006 "PED_VEN_CAB"'
      'WHERE     PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'GROUP  BY ROM_STFI'
      'UNION'
      'SELECT    ROM_STFI,SUM(ROM_TCDE) "ROM_TCDE"'
      'FROM      PED_VEN_CAB_007 "PED_VEN_CAB"'
      'WHERE     PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'GROUP  BY ROM_STFI'
      'UNION'
      'SELECT    ROM_STFI,SUM(ROM_TCDE) "ROM_TCDE"'
      'FROM      PED_VEN_CAB_008 "PED_VEN_CAB"'
      'WHERE     PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'GROUP  BY ROM_STFI'
      'UNION'
      'SELECT    ROM_STFI,SUM(ROM_TCDE) "ROM_TCDE"'
      'FROM      PED_VEN_CAB_009 "PED_VEN_CAB"'
      'WHERE     PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'GROUP  BY ROM_STFI)'
      'GROUP  BY ROM_STFI')
    Left = 400
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end>
    object ven_graROM_STFI: TIBStringField
      FieldName = 'ROM_STFI'
      Origin = '"PED_VEN_CAB_003"."ROM_STFI"'
    end
    object ven_graROM_TCDE: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'ROM_TCDE'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
  end
  object dtsven_gra: TDataSource
    DataSet = ven_gra
    Left = 432
    Top = 8
  end
  object ImageList1: TImageList
    Height = 24
    ShareImages = True
    Width = 24
    Left = 292
    Top = 46
    Bitmap = {
      494C010105000900040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFF00E4E4F900B9BBEF009195EB006D73E4005D63
      DF005B62DF006A6FE300898EEA00B2B6F100E1E3F900F9F9FE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F4F4FE00ABAEEB00494FE0000010E0000000DF000000E4000000
      E6000000E6000000E4000000E0000009DF003840DE00969BEA00EFEFFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7FC005F67E4000317E4000000E4000000E6000000E6000000E6000000
      E6000000E6000000E6000000E4000000E6000000E4000010E4004B51E400C4C7
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7E7
      F8000000BA000000EE000000E8000000E8000000E8000000EB000000EE000000
      F2000000F4000000EF000000E8000000E8000000E7000000E7000000EB002431
      E300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E4E6FB004E58
      E8000000EF000000EE000000ED000000EF000017EE003D4AEE006A74EF008B90
      F2009196F2007079F2002334EE000000EE000000ED000000ED000000EB000000
      ED002431E100CFD0F90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4FE007B82EE00000D
      EE000000EE000000EF000000F2002F3FEF00ADB0F100F1F2FE00000000000000
      000000000000EDEEFE00616DF1000003F1000000EF000000EF000000EE000000
      EE000000F100565EEE00F7F8FE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFC4F800112AEE000000
      F4000000F4000006F5004050F400C3C7FB000000000000000000000000000000
      0000000000008792F8000021F5000000F5000000F4000000F4000000F4000000
      F1000000F1000921F100AEB2F800FCFEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F8AF7000001F7000000
      F5000000F7001C38F700D4D5F900000000000000000000000000000000000000
      0000BEC0F900001CF8000000F9000000F8000000F8000000F8000000F7000000
      F5000000F4000000F2005661F200EEEEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004355F4000000FB000000
      F9000027FC007186F80000000000000000000000000000000000F2F4FF00879A
      FB00002BF9000010FE000000FC000000FC000000FB00001CFB000C2FF8000010
      F9000000F7000000F700172FF500C9CFFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001639F7000000FC000001
      FE00004BFF00BEC1FB00000000000000000000000000F2F4FF008B9FFC00004B
      FE00000EFF00000DFF00000AFF000013FF000031FF00586FF900B9BEF9002545
      FB000000FB000000FB00000EF700ABB2FB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000002CF9000006FE000029
      FF00001FF400F4F5FF0000000000000000000000000087A5FE00005EFE00003A
      FF00002BFF00002AFF00002FFF00004AFF006E83FB00E0E1FE00FEFEFF004F76
      FE000003FE000001FE000007FB0094A0FC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000029FB000016FF000046
      FF002D3AF100000000000000000000000000BEC3FC00005AFE000047FF000044
      FF000044FF000048FF00005EFF007E9DFE000000000000000000000000006191
      FE000016FF00000DFF000017FE008B9AFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000003FFC000033FF000054
      FF000033F800FBFBFF00F2F4FF0087AFFF00006BFE000061FF000056FF000057
      FF00005BFF00006CFF006D99FF00E8EDFF00000000000000000000000000578F
      FE00002FFF000027FF00002EFF0090A2FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000065EFC000049FF000059
      FF000072FF00C8CDFE008BAFFF000185FF000068FF000067FF000069FF000072
      FF000086FF005C90FF00EEEFFF00000000000000000000000000F7F7FF003B7D
      FF000047FF000040FF000044FF00A2B6FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000357EFF000064FF000060
      FF000090FF002D91FF000390FF00007EFF000078FF00007BFF000083FF00008B
      FF006897FF00E0E6FF0000000000000000000000000000000000BACBFF000E7C
      FF000056FF000053FF000461FF00BECDFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000068A2FF000080FF000070
      FF000078FF00007CFF000082FF000086FF00008BFF000092FF0000AEFF0068AA
      FF000000000000000000000000000000000000000000EEEFFF00569BFF00007B
      FF000068FF000066FF003C7EFF00E7EBFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ABC8FF000089FF000086
      FF000089FF00008FFF000094FF00009BFF00009FFF0001B8FF005EB6FF00E0EB
      FF0000000000000000000000000000000000F8FBFF008AC9FF00009EFF000086
      FF000076FF000081FF0090B6FF00F9FBFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7EDFF0053A3FF0000A2
      FF00009BFF0000A1FF0000A7FF0000ACFF0000CCFF005AC9FF00EDF4FF000000
      0000000000000000000000000000EAF2FF0082C5FF0006B7FF0000A4FF000091
      FF000091FF003AA2FF00E8EFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFF00C7DAFF002FB5
      FF0000B8FF0000B1FF0000B8FF0000BEFF0000D6FF0058D6FF00AED7FF00D4EA
      FF00E0F1FF00B5DCFF008ADAFF0046D4FF0000CBFF0000B8FF0000ABFF0000AC
      FF0000A4FF00A9D4FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B6CF
      FF0000D4FF0000D2FF0000C9FF0000CFFF0000D4FF0016EBFF0095FFFF005AF5
      FF0034E3FF0055FFFF0014F9FF0000D4FF0000C9FF0000C3FF0000BFFF0000B2
      FF00BFD9FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B6D2FF0045D6FF0018E6FF0000E7FF0000E8FF0000E7FF0000E8FF0000F1
      FF0000F4FF0000E8FF0000E3FF0000E0FF0000DCFF0000DBFF002AD7FF0099DE
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D5EFFF0081E3FF0058F7FF006DFFFF004CFEFF0010FEFF0000FE
      FF0000FCFF0004FCFF0011FBFF0013F9FF0027F4FF0061E3FF00C8EBFF00FCFE
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFFFF00F1FBFF00CDF5FF00C8F8FF00B8FBFF00C1FEFF00CDF9
      FF00B6F8FF008EFBFF0073F9FF0091F7FF00BDF4FF00E8F9FF00FEFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8E8
      E800F1F1F100F5F5F500F1F1F100EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00F4F4F400F7F7F700FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6F9F700ECF2F000FBFCFB00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00EDF2F100E4E9E500F6F9
      F700000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDE00C9C9C900C5C5C500C5C5C500C5C5C500C5C5C500C5C5
      C500C5C5C500C5C5C500C5C5C500C5C5C500C2C2C200D2D2D200D8D8D800F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00E0E0E000CCCCCC00C7C7C700C7C7C700C7C7C700C7C7C700C7C7
      C700C7C7C700C7C7C700C7C7C700C7C7C700C4C4C400D3D3D300DCDCDC00F5F5
      F500000000000000000000000000000000000000000000000000EBEBEB005757
      570062626200AAB1B800C6C6C600C7C7C700C7C7C700C7C7C700C7C7C700C7C7
      C700C7C7C700C7C7C700C7C7C700CCCCCC00C1C1C100D9D9D900F7F7F7000000
      000000000000000000000000000000000000000000000000000000000000DAE1
      DC007D91820056867100D3DDD900F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F2F2F200F2F2F200F2F2F2008BB09F00305F3C008193
      8500EDF1EE000000000000000000000000000000000000000000000000000000
      0000CFCFCF00BFBFBF00E1E1E100E7E7E700E7E7E700E9E9E900EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00D1D1D100ACACAC00B6B6
      B600F6F6F6000000000000000000000000000000000000000000000000000000
      0000C9C9C900C7C7C700E6E6E600EAEAEA00ECECEC00EDEDED00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00D6D6D600AEAEAE00C0C0
      C000FCFCFC000000000000000000000000000000000000000000E0E0E0002727
      270006141F001369D9003385EF006CA6ED00AED6EB00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00D7D7D700B4B4B400C0C0C000EFEF
      EF00000000000000000000000000000000000000000000000000D4DFD7004066
      4B00002004000A5C2F00C1D3CC00E8E8E800E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E1E1E100E5E5E500759E8F00001900000022
      06002A573500CFD9D1000000000000000000000000000000000000000000E9E9
      E900B7B7B700E4E4E400E6E6E600E6E6E600E6E6E600E7E7E700E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E7E7E700C9C9C900BCBC
      BC00ADADAD00EFEFEF000000000000000000000000000000000000000000E6E6
      E600C4C4C400E6E6E600E7E7E700E9E9E900E9E9E900EAEAEA00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00E7E7E700C7C7C700BEBE
      BE00B2B2B200F2F2F20000000000000000000000000000000000DFDFDF00A5C4
      D4001F98FB00037BFB000059FE000043FB000043F70051A2A800EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00C9C9C900CACACA00C7C7
      C7000000000000000000000000000000000000000000F1F4F100657C6B00001D
      0100001800000A5C2E00C4D4CF00CDCDCD00B1B1B100B1B1B100B2B2B200B4B4
      B400B4B4B400B4B4B400B2B2B200B1B1B100CDCDCD00799E9100001800000018
      000000180000697F6E000000000000000000000000000000000000000000CFCF
      CF0000000000E4E4E400E6E6E600E6E6E600EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00D5D5D500D5D5
      D500D1D1D100C3C3C3000000000000000000000000000000000000000000CFCF
      CF00FBFBFB00E7E7E700EAEAEA00EAEAEA00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00D3D3D300D4D4
      D400D0D0D000C9C9C900000000000000000000000000FEFEFE00D9D9D900D1DF
      E3008CD9FF00279CFE000781FB00006BF7000164D30022995D005EB18600CDE3
      D900F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100DCDCDC00DDDDDD00CACA
      CA00DADADA00FEFEFE00000000000000000000000000D1DAD400194821000018
      0000001900000A5F2F00C7D9D100E8E8E800E3E3E300E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E3E3E300E0E0E000ECECEC00799F9100001800000018
      00000018000021502A00E5EAE70000000000000000000000000000000000CECE
      CE0000000000E6E6E600E7E7E700EAEAEA00EAEAEA00EAEAEA00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00DDDDDD00D7D7
      D700E0E0E000CECECE00EAEAEA0000000000000000000000000000000000CFCF
      CF00FBFBFB00EAEAEA00ECECEC00ECECEC00ECECEC00EDEDED00EDEDED00EFEF
      EF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000E0E0E000D9D9
      D900E1E1E100D1D1D100EFEFEF000000000000000000FCFCFC00D7D7D700E1E3
      E300A6E1FB0072CDFF002199FE001393BB00118D4F0025A35F000C843C004BA0
      7600F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400E4E4E400D7D7D700E4E4
      E400C7C7C700F1F1F100000000000000000000000000C1D0C4000D3C1500001D
      0000001E00000A633200C9DCD600E7E7E700DFDFDF00E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000DFDFDF00DDDDDD00ECECEC007BA29300001A00000019
      00000019000014431D00CDD9CF0000000000000000000000000000000000D1D1
      D10000000000E7E7E700E4E4E400E1E1E100E1E1E100E4E4E400ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00E1E1
      E100CECECE00C9C9C900E0E0E000FCFCFC00000000000000000000000000D1D1
      D100FEFEFE00ECECEC00E6E6E600E3E3E300E4E4E400E9E9E900F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000E1E1
      E100D3D3D300CCCCCC00E4E4E400FCFCFC0000000000FCFCFC00D9D9D900E6E6
      E600D9EBF2008DDCFB004CC1D60019926000067931000B823A00118D4700056F
      2B003D875C00D4E6DF00F4F4F400F4F4F400F4F4F400F1F1F100E8E8E800D9D9
      D900C6C6C600EBEBEB00000000000000000000000000C1D1C6000D4817000027
      0000002800000B693700CDE0D900E8E8E800DFDFDF00DFDFDF00E1E1E100E3E3
      E300E3E3E300E1E1E100DFDFDF00DFDFDF00EEEEEE007CA39600002300000020
      0000001E0000144A1E00CDD9CF0000000000000000000000000000000000D2D2
      D20000000000E9E9E900D5D5D500C8C8C800C8C8C800D1D1D100ECECEC00ECEC
      EC00ECECEC00EDEDED00EFEFEF00EFEFEF00EFEFEF00ECECEC00ECECEC00ECEC
      EC00E9E9E900D7D7D700C5C5C500F3F3F300000000000000000000000000D4D4
      D40000000000EAEAEA00D9D9D900CCCCCC00CCCCCC00D7D7D700F0F0F000F0F0
      F000F0F0F000F2F2F200F2F2F200F2F2F200F2F2F200F0F0F000F0F0F000F0F0
      F000ECECEC00D6D6D600C7C7C700F3F3F30000000000FCFCFC00DADADA00E7E7
      E700EFEFEF003FAA870018944E0026A25E0003742A00006B2500016C25000678
      300000450C003A7E5600F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400E7E7E700CCCCCC00000000000000000000000000C1D4C6000D5319000036
      000000370000086B3000C0D4CC00F9F9F900F9F9F900FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00F9F9F900F7F7F700F4F4F4006BA18D0000320000002C
      0000002A000014561E00CDD9CF0000000000000000000000000000000000D4D4
      D40000000000ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EFEFEF00ECEC
      EC00ECECEC00ECECEC00C0C0C000CECECE00000000000000000000000000D4D4
      D40000000000EFEFEF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F0F0
      F000F0F0F000EDEDED00BBBBBB00DADADA0000000000FCFCFC00DADADA00E7E7
      E700F4F4F40098D3C3001788510011874200168F4B00016B2500005816000059
      1900005C1A00004110003D7E5D00D6E3DD00F5F5F500F5F5F500F4F4F400F4F4
      F400F4F4F400CACACA00E6E6E6000000000000000000C1D7C6000D601A000044
      030000450300005A0C004C917600ACCABE00C6DFD400C7DFD600C9E0D600C9E0
      D600C9E0D600C7DFD400C6DDD400BFD7CD0099B8AC000E702F0000400100003C
      01000037010014612000CDD9CF0000000000000000000000000000000000D5D5
      D50000000000ECECEC00ECECEC00ECECEC00EDEDED00EFEFEF00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000EFEFEF00EDEDED00D8D8D800D8D8D800000000000000000000000000D7D7
      D70000000000F0F0F000F0F0F000F0F0F000F0F0F000F2F2F200F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F2F2F200F0F0F000D1D1D100E3E3E30000000000FEFEFE00DDDDDD00E7E7
      E700F4F4F400EEF2F20091CFC1000C703A00005E1C0007793200004D1100003B
      08000038080000450F0003441A008D9E9600F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500DFDFDF00E0E0E0000000000000000000C1D9C7000D6E1E000060
      080000620800005D08000060090000762A000A804C000A804E000A8050000A80
      50000A8050000A804E000A804C00057D440000650C0000500500004C0300004A
      03000045030014692300CDD9CF0000000000000000000000000000000000D7D7
      D70000000000ECECEC00E0E0E000D7D7D700DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DBDBDB00ECECEC00F0F0
      F000F0F0F000F0F0F000DBDBDB00DBDBDB00000000000000000000000000D7D7
      D70000000000F0F0F000E1E1E100DADADA00DCDCDC00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DCDCDC00DCDCDC00DFDFDF00F0F0F000F3F3
      F300F3F3F300F3F3F300D6D6D600E4E4E40000000000FEFEFE00DDDDDD00E8E8
      E800F4F4F400D4D4D400C4C9C90066998B0000411B0000461100005E1D00003A
      09000028030000380E00508A6D0086898800AFAEAC00EFEFEF00F5F5F500F5F5
      F500F5F5F500E0E0E000E0E0E0000000000000000000C1E0C9000D812A000075
      1200007412000073110000720F00006F0E00006D0C00006B0B0000670A000065
      0A000064090000640900006409000062080000610800005F0800005C0700005A
      06000054050014702700CDD9CF0000000000000000000000000000000000D8D8
      D80000000000ECECEC00DADADA00CFCFCF00D1D1D100D1D1D100D2D2D200D2D2
      D200D2D2D200D2D2D200D2D2D200D1D1D100CECECE00D2D2D200E9E9E900F0F0
      F000F0F0F000F0F0F000DDDDDD00DDDDDD00000000000000000000000000D9D9
      D90000000000EFEFEF00DFDFDF00D3D3D300D3D3D300D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D1D1D100D9D9D900F0F0F000F3F3
      F300F3F3F300F3F3F300D7D7D700E6E6E60000000000FEFEFE00E0E0E000EBEB
      EB00F4F4F400F5F5F500F5F5F500F5F5F500F5F5F50000391B00002F07000049
      140000210100346B4900C1C1BD008787860092929200A6A8AE00F5F5F500F5F5
      F500F5F5F500E0E0E000E0E0E0000000000000000000C1E1C9000D843200007A
      1800007915000079150000781500007714000077120000761200007412000071
      0F00006C0C00006C0C00006C0C00006A0B0000680B0000680A0000670A000064
      08000062080014742800CDD9CF0000000000000000000000000000000000DADA
      DA0000000000EDEDED00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000E0E0E000DEDEDE00000000000000000000000000DCDC
      DC0000000000F0F0F000F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300D7D7D700E6E6E60000000000FEFEFE00E0E0E000EBEB
      EB00F5F5F500F5F5F500F5F5F500F5F5F500F5F5F5007BA79D0002331900033D
      1900447155008E9893008F8F8E008D8D8D008A8B8B0017236A00414F9A00E0E1
      EE00F5F5F500E0E0E000E3E3E3000000000000000000C1E3CA000D893500007D
      1A00007D1A00007D1A00007C1900007C1800007B1700007B1600007915000078
      1400007613000074110000720F0000710F0000700E0000700E00006D0D00006B
      0C00006B0B00147C2E00CDD9CF0000000000000000000000000000000000DBDB
      DB0000000000DDE3DE0061766A00344F3E00324C3A0048635300C0CCC600F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000E0E0E000E0E0E000000000000000000000000000DDDD
      DD00EDF0F900D9DCEA00F3F3F300F3F3F300F3F3F300DFE1ED00CACFE700EDEF
      F200F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300D9D9D900E7E7E70000000000FEFEFE00E0E0E000EDED
      ED00F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500EEF1F2008EB5B100536B
      6E00B5B5B500A2A2A20091919100757472005D719E0000004E0003095E00B7BE
      DD00F5F5F500E1E1E100E4E4E4000000000000000000C1E4CC000D8B3C000080
      200000801F0000801F00007F1F00007D1D0000791500007F2B00007D2600007C
      2400007C2500007C2500007B2200007514000075140000751300007411000073
      0F0000710F0014803300CDD9CF0000000000000000000000000000000000DEDE
      DE0000000000CFDBD4002E574500001C010000170000073618007C8A8100CECE
      CE00E7E7E700F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000E0E0E000E1E1E100000000000000000000000000CACA
      D600525C9A0046518F00BABED300D1D1D100D1D1D1005C66A3002A3F7F00868F
      C000EAEAEA00F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300DADADA00E7E7E70000000000FEFEFE00E1E1E100EDED
      ED00F5F5F500D6D6D600CDCDCD00CDCDCD00CDCDCD00CDCDCD00C7C7C900B4B4
      BE0062627A0098989D00939598003A497E000006690000004D002C3B8A00DDE0
      ED00F5F5F500E1E1E100E4E4E4000000000000000000C1E5CC000D8E43000084
      25000083240000832400008221001E90640099B7AA0098B1A8008EA69C008CA5
      9A0094AEA20098B7A80097B6A7006D9E8900007A2600007A1700007917000077
      14000075140014863900CDD9CF0000000000000000000000000000000000DEDE
      DE0000000000D1DDD500305D4900002D04000029010009421C0081958600D5D5
      D500EAEAEA00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000E0E0E000E1E1E1000000000000000000F2F2F8005C61
      9E0000006E000003700031418400919AC4004B5A9200000A700000006C001B2A
      7B00B5C0E000F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300DCDCDC00E9E9E90000000000FEFEFE00E1E1E100EDED
      ED00F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500676D880011287B00000A780000057400101B7100E8EBF100F5F5
      F500F5F5F500E1E1E100E4E4E4000000000000000000C1E5D0000D8F47000085
      2A0000852A000084280000853600A4C6B600F1F1F100D7D7D700BEBEBE00B9BD
      B900CCD3CC00146136001F7C5C00A9B4AC0093999600007A1800007C1A00007C
      1900007B1800148B4300CDD9CF0000000000000000000000000000000000DADD
      DD0000000000CCDED20032614D00003A0700003805000C4A22008FAF9D00ECF0
      EC00ECF0EC00EFF0EF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000E1E1E100E3E3E30000000000000000009A9ED100040F
      7600000073000000750000007600001076000000760000007500000073000000
      7100123B8C00F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300DDDDDD00E9E9E90000000000FEFEFE00E4E4E400EDED
      ED00F5F5F500EEEEEE00EAEAEA00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB007887B80006197D00000E71001B257200A3ABCD00F5F5F500F5F5
      F500F5F5F500E4E4E400E6E6E6000000000000000000C1E5D1000E934F000089
      2F0000882E0000882E00018D5F00B5D3C600F1F1F100D7D7D700BEBEBE00B9BD
      B900CCD3CC00003F020000691B0090A59C009D9E9D00007F2600007F1E000080
      1E00007F1D00158E4B00CDD9D0000000000000000000000000009FB9A4000A49
      1700003F080000420A0000450B0000440B0000440B0000450B0000430A000041
      0900003F09002B5B3E00CFCFCF00CCCCCC00CCCCCC00CCCCCC00CFCFCF00E9E9
      E900F0F0F000F0F0F000E1E1E100E3E3E3000000000000000000E0E1F000464F
      97000005790000077D0000097E0000097F0000077E0000057B0000067B002038
      8F009DA3C900D3D3D300D0D0D000CFCFCF00CFCFCF00CFCFCF00D0D0D000EAEA
      EA00F3F3F300F3F3F300DDDDDD00E9E9E90000000000FEFEFE00E6E6E600EEEE
      EE00F5F5F500D9D9D900CFCFCF00D1D1D100D1D1D100D3D3D300D3D3D300D3D3
      D300D3D3D300CFCFD1009299B7007E86A800CFCFCF00D6D6D600F1F1F100F5F5
      F500F5F5F500E4E4E400E6E6E6000000000000000000C1E5D0000F945600008B
      3700008B3600008B3600038F6400B6D4C700F1F1F100D7D7D700BEBEBE00B9BD
      B900CCD3CC000061080000772A0092A79E009D9E9D0000823200008120000083
      23000082230017935A00CFDFD10000000000000000000000000095B69D00074E
      190000490E00004B0F00004D1100004D1300004D1300004D1300004D1100004B
      0F0000490E00265E3E00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000E4E4E400E4E4E400000000000000000000000000BBC0
      D30028448C000015870000188F0000188F0000168C0000158A001746A8009AAB
      E300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300DDDDDD00EAEAEA0000000000FEFEFE00E6E6E600EFEF
      EF00F5F5F500F2F2F200F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F2F2F200F5F5F500F5F5
      F500F5F5F500E6E6E600E8E8E8000000000000000000D6ECDF00209A6600008C
      3F00008C3C00008C3C0003916800B7D7C700F1F1F100D7D7D700BEBEBE00B9BD
      B900CCD3CC000073110000803D0093A99F009D9E9D0000843700008324000084
      260000842A002E9B7000EDF4EE0000000000000000000000000097BCA3000B5A
      2B0000552100005624000056230000551E0000551E0000552000005622000055
      200000531D0029614600CCCCCC00CCCCCC00CBCBCB00C9C9C900C6C6C600C3C3
      C300A7A7A700F0F0F000E4E4E400E6E6E600000000000000000000000000D4D6
      DF004864BA0000289B00002BA800002CA9000029A5000029A2002A55B700A2AC
      CF00D0D0D000D0D0D000D0D0D000D0D0D000CDCDCD00CDCDCD00CCCCCC00C7C7
      C700B4B4B400F3F3F300DDDDDD00EAEAEA0000000000FEFEFE00E6E6E600EFEF
      EF00F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500E7E7E700EAEAEA000000000000000000F5FAF6007AB796000090
      5400008D4100008D3D0004926A00B7D7C900F1F1F100D7D7D700BEBEBE00B9BD
      B900CCD3CC0000843A000A8B62009EAFA6009D9E9D0000873D00008428000084
      27000896780074B08C0000000000000000000000000000000000EAF2EC0093AA
      9C0073A17E006A8A73003C685300045B3400015A3000155F4100617869006E95
      78006E9377009FBFAD00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000DDDDDD00ECECEC000000000000000000000000007181
      C6000036B400003BB8000041BE000042BE00003DBB000037B5000031AF00486E
      CC00F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300DCDCDC00EAEAEA000000000000000000E8E8E800EEEE
      EE00F5F5F500E0E0E000D9D9D900DADADA00DADADA00DCDCDC00DCDCDC00DCDC
      DC00DCDCDC00DCDCDC00DCDCDC00DADADA00DADADA00D9D9D900D3D3D300E1E1
      E100F5F5F500E4E4E400EFEFEF00000000000000000000000000E4F2E90061B1
      8E000C9772000295680018987B00B5CFC100E4E4E400D0D0D000BBBBBB00B9BB
      B900C6CCC600B7C7BD00B9CCBE00B9C0BA00A2A4A2000A916800019161001499
      74004FA88000E0F0E5000000000000000000000000000000000000000000F8F8
      F800D2D2D200D7E4DE00567B660014624500106143002D68500099C2AA00F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000E7E7E700D1D1D100F2F2F2000000000000000000C1C9E6001F4F
      B4000046C400004CCC00004ECF000D51C600004CC9000049C7000040BD000245
      BA00A6BAE700F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300E9E9E900D7D7D700F6F6F6000000000000000000F5F5F500E6E6
      E600F9F9F900F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500EFEFEF00DADADA00FBFBFB0000000000000000000000000000000000EAF6
      F00097CFAD0070BAA2007BBBA700C6D4CF00DDDDDD00DDDDDD00DCDCDC00DCDC
      DC00DCDCDC00DDDDDD00DCDDDC00DCDCDC00D9D9D90077B9A5006FBAA2009ED4
      B700000000000000000000000000000000000000000000000000000000000000
      0000F5F5F500C8D5CE005D7F6A002D684F002A674D00416E580099C5AA00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EDED
      ED00E4E4E400D5D5D500EAEAEA00000000000000000000000000E3E7F5004D6E
      C3000051D3000054D1003660CD007482DC00335AC3000051CD00004FCD004265
      D000E4E7EF00F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F2F2
      F200E4E4E400D4D4D400EAEAEA0000000000000000000000000000000000F1F1
      F100E7E7E700E8E8E800EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00E0E0
      E000D4D4D400F2F2F20000000000000000000000000000000000000000000000
      0000FCFFFE00F1FAF500F0F9F500FAFCFB00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00EEF9F400F0F9F400FBFE
      FC00000000000000000000000000000000000000000000000000000000000000
      000000000000ECF0ED0081AA95005A816E00587E6C00668C7600BCCFC300E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700EAEAEA00F3F3F300FEFEFE0000000000000000000000000000000000D4DF
      F0005877CF005977D600B8C1E600E1E4E900C1C7E3006481D4006181DC00BBC6
      E300EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00ECECEC00F5F5F500FEFEFE00000000000000000000000000000000000000
      000000000000F7F7F700EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FC003F000000000000000000F8001F00
      0000000000000000F0000F000000000000000000E0000F000000000000000000
      C0000300000000000000000080380100000000000000000080F8000000000000
      0000000081F00000000000000000000083C00000000000000000000083800000
      00000000000000008380000000000000000000008700E0000000000000000000
      8000E00000000000000000008001C00000000000000000008003C00000000000
      00000000800F80000000000000000000800F00000000000000000000801E0100
      0000000000000000800003000000000000000000E00007000000000000000000
      F0000F000000000000000000F8000F000000000000000000F8001F0000000000
      00000000FFFFFF000000000000000000E0003FF0000FF8000FF0000FC0001FE0
      0007F00007F00007C0000FC00003E00003E00003C0000F800003E80003E00003
      800003800001E80001E00001800003800001E80000E00000800003800001E800
      00E80000800003800001E80000E80000800001800001E80000E8000080000180
      0001E80000E80000800001800001E80000E80000800001800001E80000E80000
      800001800001E80000E00000800001800001E80000E00000800001800001E800
      00C00000800001800001E80000C00000800001800001C00000C0000080000180
      0001C00000E00000800001800001C00000E00000800001800003C00000E00000
      C00001C00003E00000C00000C00001E0000FF00001C00001E00003F0000FF800
      01E00001F8000FFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object cad_cli_ref: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT * FROM CAD_CLI_REF')
    Left = 400
    Top = 40
    object cad_cli_refID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CLI_REF"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_cli_refCLI_CCLI: TIntegerField
      FieldName = 'CLI_CCLI'
      Origin = '"CAD_CLI_REF"."CLI_CCLI"'
    end
    object cad_cli_refCLI_LOJA: TIBStringField
      DisplayLabel = 'Referencia'
      FieldName = 'CLI_LOJA'
      Origin = '"CAD_CLI_REF"."CLI_LOJA"'
      Size = 40
    end
    object cad_cli_refCLI_CONT: TIBStringField
      DisplayLabel = 'Contato'
      FieldName = 'CLI_CONT'
      Origin = '"CAD_CLI_REF"."CLI_CONT"'
      Size = 15
    end
    object cad_cli_refCLI_DCAD: TDateField
      DisplayLabel = 'Dt Cadastro'
      FieldName = 'CLI_DCAD'
      Origin = '"CAD_CLI_REF"."CLI_DCAD"'
    end
    object cad_cli_refCLI_DULT: TDateField
      DisplayLabel = 'Dt '#218'ltima Compra'
      FieldName = 'CLI_DULT'
      Origin = '"CAD_CLI_REF"."CLI_DULT"'
    end
    object cad_cli_refCLI_DMAI: TDateField
      DisplayLabel = 'Dt Maior Compra'
      FieldName = 'CLI_DMAI'
      Origin = '"CAD_CLI_REF"."CLI_DMAI"'
    end
    object cad_cli_refCLI_VULT: TIBBCDField
      DisplayLabel = 'Valor '#218'ltima Compra'
      FieldName = 'CLI_VULT'
      Origin = '"CAD_CLI_REF"."CLI_VULT"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cad_cli_refCLI_VMAI: TIBBCDField
      DisplayLabel = 'Valor Maior Compra'
      FieldName = 'CLI_VMAI'
      Origin = '"CAD_CLI_REF"."CLI_VMAI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cad_cli_refCLI_AVEN: TIBBCDField
      FieldName = 'CLI_AVEN'
      Origin = '"CAD_CLI_REF"."CLI_AVEN"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cad_cli_refCLI_ACUM: TIBBCDField
      DisplayLabel = 'Valor Acumulado'
      FieldName = 'CLI_ACUM'
      Origin = '"CAD_CLI_REF"."CLI_ACUM"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cad_cli_refCLI_DPAG: TIBStringField
      DisplayLabel = 'F. Pagamento'
      FieldName = 'CLI_DPAG'
      Origin = '"CAD_CLI_REF"."CLI_DPAG"'
    end
    object cad_cli_refCLI_CONC: TIBStringField
      DisplayLabel = 'Conceito'
      FieldName = 'CLI_CONC'
      Origin = '"CAD_CLI_REF"."CLI_CONC"'
    end
    object cad_cli_refCLI_DDD: TIBStringField
      DisplayLabel = 'DDD'
      FieldName = 'CLI_DDD'
      Origin = '"CAD_CLI_REF"."CLI_DDD"'
      EditMask = '(99);0; '
      Size = 2
    end
    object cad_cli_refCLI_TEL1: TIBStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'CLI_TEL1'
      Origin = '"CAD_CLI_REF"."CLI_TEL1"'
      EditMask = '99999-9999;0; '
      Size = 9
    end
    object cad_cli_refCLI_TEL2: TIBStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'CLI_TEL2'
      Origin = '"CAD_CLI_REF"."CLI_TEL2"'
      EditMask = '99999-9999;0; '
      Size = 9
    end
    object cad_cli_refCLI_OBSE: TMemoField
      DisplayLabel = 'Obs'
      FieldName = 'CLI_OBSE'
      Origin = '"CAD_CLI_REF"."CLI_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object dtscad_cli_ref: TDataSource
    DataSet = cad_cli_ref
    Left = 432
    Top = 40
  end
  object cad_cli_inf: TIBDataSet
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    ForcedRefresh = True
    AfterPost = cad_cli_infAfterPost
    OnCalcFields = cad_cli_infCalcFields
    OnNewRecord = cad_cli_infNewRecord
    DeleteSQL.Strings = (
      'delete from CAD_CLI_INF'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_CLI_INF'
      
        '  (CLI_DESC, CLI_ME01, CLI_ME02, CLI_ME03, CLI_ME04, CLI_ME05, C' +
        'LI_ME06, '
      
        '   CLI_ME07, CLI_ME08, CLI_ME09, CLI_ME10, CLI_ME11, CLI_ME12, C' +
        'LI_QT01, '
      
        '   CLI_QT02, CLI_QT03, CLI_QT04, CLI_QT05, CLI_QT06, CLI_QT07, C' +
        'LI_QT08, '
      '   CLI_QT09, CLI_QT10, CLI_QT11, CLI_QT12, ID)'
      'values'
      
        '  (:CLI_DESC, :CLI_ME01, :CLI_ME02, :CLI_ME03, :CLI_ME04, :CLI_M' +
        'E05, :CLI_ME06, '
      
        '   :CLI_ME07, :CLI_ME08, :CLI_ME09, :CLI_ME10, :CLI_ME11, :CLI_M' +
        'E12, :CLI_QT01, '
      
        '   :CLI_QT02, :CLI_QT03, :CLI_QT04, :CLI_QT05, :CLI_QT06, :CLI_Q' +
        'T07, :CLI_QT08, '
      '   :CLI_QT09, :CLI_QT10, :CLI_QT11, :CLI_QT12, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CLI_DESC,'
      '  CLI_ME01,'
      '  CLI_QT01,'
      '  CLI_ME02,'
      '  CLI_QT02,'
      '  CLI_ME03,'
      '  CLI_QT03,'
      '  CLI_ME04,'
      '  CLI_QT04,'
      '  CLI_ME05,'
      '  CLI_QT05,'
      '  CLI_ME06,'
      '  CLI_QT06,'
      '  CLI_ME07,'
      '  CLI_QT07,'
      '  CLI_ME08,'
      '  CLI_QT08,'
      '  CLI_ME09,'
      '  CLI_QT09,'
      '  CLI_ME10,'
      '  CLI_QT10,'
      '  CLI_ME11,'
      '  CLI_QT11,'
      '  CLI_ME12,'
      '  CLI_QT12'
      'from CAD_CLI_INF '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_CLI_INF')
    ModifySQL.Strings = (
      'update CAD_CLI_INF'
      'set'
      '  CLI_DESC = :CLI_DESC,'
      '  CLI_ME01 = :CLI_ME01,'
      '  CLI_ME02 = :CLI_ME02,'
      '  CLI_ME03 = :CLI_ME03,'
      '  CLI_ME04 = :CLI_ME04,'
      '  CLI_ME05 = :CLI_ME05,'
      '  CLI_ME06 = :CLI_ME06,'
      '  CLI_ME07 = :CLI_ME07,'
      '  CLI_ME08 = :CLI_ME08,'
      '  CLI_ME09 = :CLI_ME09,'
      '  CLI_ME10 = :CLI_ME10,'
      '  CLI_ME11 = :CLI_ME11,'
      '  CLI_ME12 = :CLI_ME12,'
      '  CLI_QT01 = :CLI_QT01,'
      '  CLI_QT02 = :CLI_QT02,'
      '  CLI_QT03 = :CLI_QT03,'
      '  CLI_QT04 = :CLI_QT04,'
      '  CLI_QT05 = :CLI_QT05,'
      '  CLI_QT06 = :CLI_QT06,'
      '  CLI_QT07 = :CLI_QT07,'
      '  CLI_QT08 = :CLI_QT08,'
      '  CLI_QT09 = :CLI_QT09,'
      '  CLI_QT10 = :CLI_QT10,'
      '  CLI_QT11 = :CLI_QT11,'
      '  CLI_QT12 = :CLI_QT12,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 568
    object cad_cli_infID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CLI_INF"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_cli_infCLI_DESC: TIBStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldName = 'CLI_DESC'
      Origin = '"CAD_CLI_INF"."CLI_DESC"'
      Size = 15
    end
    object cad_cli_infCLI_ME01: TIBBCDField
      FieldName = 'CLI_ME01'
      Origin = '"CAD_CLI_INF"."CLI_ME01"'
      Precision = 18
      Size = 2
    end
    object cad_cli_infCLI_QT01: TSmallintField
      FieldName = 'CLI_QT01'
      Origin = '"CAD_CLI_INF"."CLI_QT01"'
    end
    object cad_cli_infCLI_ME02: TIBBCDField
      FieldName = 'CLI_ME02'
      Origin = '"CAD_CLI_INF"."CLI_ME02"'
      Precision = 18
      Size = 2
    end
    object cad_cli_infCLI_QT02: TSmallintField
      FieldName = 'CLI_QT02'
      Origin = '"CAD_CLI_INF"."CLI_QT02"'
    end
    object cad_cli_infCLI_ME03: TIBBCDField
      FieldName = 'CLI_ME03'
      Origin = '"CAD_CLI_INF"."CLI_ME03"'
      Precision = 18
      Size = 2
    end
    object cad_cli_infCLI_QT03: TSmallintField
      FieldName = 'CLI_QT03'
      Origin = '"CAD_CLI_INF"."CLI_QT03"'
    end
    object cad_cli_infCLI_ME04: TIBBCDField
      FieldName = 'CLI_ME04'
      Origin = '"CAD_CLI_INF"."CLI_ME04"'
      Precision = 18
      Size = 2
    end
    object cad_cli_infCLI_QT04: TSmallintField
      FieldName = 'CLI_QT04'
      Origin = '"CAD_CLI_INF"."CLI_QT04"'
    end
    object cad_cli_infCLI_ME05: TIBBCDField
      FieldName = 'CLI_ME05'
      Origin = '"CAD_CLI_INF"."CLI_ME05"'
      Precision = 18
      Size = 2
    end
    object cad_cli_infCLI_QT05: TSmallintField
      FieldName = 'CLI_QT05'
      Origin = '"CAD_CLI_INF"."CLI_QT05"'
    end
    object cad_cli_infCLI_ME06: TIBBCDField
      FieldName = 'CLI_ME06'
      Origin = '"CAD_CLI_INF"."CLI_ME06"'
      Precision = 18
      Size = 2
    end
    object cad_cli_infCLI_QT06: TSmallintField
      FieldName = 'CLI_QT06'
      Origin = '"CAD_CLI_INF"."CLI_QT06"'
    end
    object cad_cli_infCLI_ME07: TIBBCDField
      FieldName = 'CLI_ME07'
      Origin = '"CAD_CLI_INF"."CLI_ME07"'
      Precision = 18
      Size = 2
    end
    object cad_cli_infCLI_QT07: TSmallintField
      FieldName = 'CLI_QT07'
      Origin = '"CAD_CLI_INF"."CLI_QT07"'
    end
    object cad_cli_infCLI_ME08: TIBBCDField
      FieldName = 'CLI_ME08'
      Origin = '"CAD_CLI_INF"."CLI_ME08"'
      Precision = 18
      Size = 2
    end
    object cad_cli_infCLI_QT08: TSmallintField
      FieldName = 'CLI_QT08'
      Origin = '"CAD_CLI_INF"."CLI_QT08"'
    end
    object cad_cli_infCLI_ME09: TIBBCDField
      FieldName = 'CLI_ME09'
      Origin = '"CAD_CLI_INF"."CLI_ME09"'
      Precision = 18
      Size = 2
    end
    object cad_cli_infCLI_QT09: TSmallintField
      FieldName = 'CLI_QT09'
      Origin = '"CAD_CLI_INF"."CLI_QT09"'
    end
    object cad_cli_infCLI_ME10: TIBBCDField
      FieldName = 'CLI_ME10'
      Origin = '"CAD_CLI_INF"."CLI_ME10"'
      Precision = 18
      Size = 2
    end
    object cad_cli_infCLI_QT10: TSmallintField
      FieldName = 'CLI_QT10'
      Origin = '"CAD_CLI_INF"."CLI_QT10"'
    end
    object cad_cli_infCLI_ME11: TIBBCDField
      FieldName = 'CLI_ME11'
      Origin = '"CAD_CLI_INF"."CLI_ME11"'
      Precision = 18
      Size = 2
    end
    object cad_cli_infCLI_QT11: TSmallintField
      FieldName = 'CLI_QT11'
      Origin = '"CAD_CLI_INF"."CLI_QT11"'
    end
    object cad_cli_infCLI_ME12: TIBBCDField
      FieldName = 'CLI_ME12'
      Origin = '"CAD_CLI_INF"."CLI_ME12"'
      Precision = 18
      Size = 2
    end
    object cad_cli_infCLI_QT12: TSmallintField
      FieldName = 'CLI_QT12'
      Origin = '"CAD_CLI_INF"."CLI_QT12"'
    end
    object cad_cli_infCLI_DES1: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_DES1'
      Calculated = True
    end
    object cad_cli_infCLI_DES2: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_DES2'
      Calculated = True
    end
    object cad_cli_infCLI_DES3: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_DES3'
      Calculated = True
    end
    object cad_cli_infCLI_DES4: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_DES4'
      Calculated = True
    end
    object cad_cli_infCLI_DES5: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_DES5'
      Calculated = True
    end
    object cad_cli_infCLI_DES6: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_DES6'
      Calculated = True
    end
    object cad_cli_infCLI_DES7: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_DES7'
      Calculated = True
    end
    object cad_cli_infCLI_DES8: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_DES8'
      Calculated = True
    end
    object cad_cli_infCLI_DES9: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_DES9'
      Calculated = True
    end
    object cad_cli_infCLI_DE10: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_DE10'
      Calculated = True
    end
    object cad_cli_infCLI_DE11: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_DE11'
      Calculated = True
    end
    object cad_cli_infCLI_DE12: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_DE12'
      Calculated = True
    end
  end
  object dtscad_cli_inf: TDataSource
    DataSet = cad_cli_inf
    Left = 568
    Top = 32
  end
  object consulta_s: TIBQuery
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    Left = 632
    Top = 32
  end
  object ven_pro_gra: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT  FIRST 20  PRO_CART,SUM(ROM_QTDE) "ROM_QTDE"'
      'FROM ('
      'SELECT    PRO_CART,SUM(ROM_QTDE) "ROM_QTDE"'
      
        'FROM      CAD_PRO,PED_VEN_CAB "PED_VEN_CAB",PED_VEN_ITE "PED_VEN' +
        '_ITE"'
      'WHERE     PED_VEN_CAB.ID = PED_VEN_ITE.ROM_CCAB'
      'AND       PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID'
      'AND       PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'GROUP BY  CAD_PRO.PRO_CART'
      'UNION'
      'SELECT    PRO_CART,SUM(ROM_QTDE) "ROM_QTDE"'
      
        'FROM      CAD_PRO,PED_VEN_CAB_002 "PED_VEN_CAB",PED_VEN_ITE_002 ' +
        '"PED_VEN_ITE"'
      'WHERE     PED_VEN_CAB.ID = PED_VEN_ITE.ROM_CCAB'
      'AND       PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID'
      'AND       PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'GROUP BY  PRO_CART'
      'UNION'
      'SELECT    PRO_CART,SUM(ROM_QTDE) "ROM_QTDE"'
      
        'FROM      CAD_PRO,PED_VEN_CAB_003 "PED_VEN_CAB",PED_VEN_ITE_003 ' +
        '"PED_VEN_ITE"'
      'WHERE     PED_VEN_CAB.ID = PED_VEN_ITE.ROM_CCAB'
      'AND       PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID'
      'AND       PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'GROUP BY  PRO_CART'
      'UNION'
      'SELECT    PRO_CART,SUM(ROM_QTDE) "ROM_QTDE"'
      
        'FROM      CAD_PRO,PED_VEN_CAB_004 "PED_VEN_CAB",PED_VEN_ITE_004 ' +
        '"PED_VEN_ITE"'
      'WHERE     PED_VEN_CAB.ID = PED_VEN_ITE.ROM_CCAB'
      'AND       PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID'
      'AND       PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'GROUP BY  PRO_CART'
      'UNION'
      'SELECT    PRO_CART,SUM(ROM_QTDE) "ROM_QTDE"'
      
        'FROM      CAD_PRO,PED_VEN_CAB_005 "PED_VEN_CAB",PED_VEN_ITE_005 ' +
        '"PED_VEN_ITE"'
      'WHERE     PED_VEN_CAB.ID = PED_VEN_ITE.ROM_CCAB'
      'AND       PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID'
      'AND       PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'GROUP BY  PRO_CART'
      'UNION'
      'SELECT    PRO_CART,SUM(ROM_QTDE) "ROM_QTDE"'
      
        'FROM      CAD_PRO,PED_VEN_CAB_006 "PED_VEN_CAB",PED_VEN_ITE_006 ' +
        '"PED_VEN_ITE"'
      'WHERE     PED_VEN_CAB.ID = PED_VEN_ITE.ROM_CCAB'
      'AND       PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID'
      'AND       PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'GROUP BY  PRO_CART'
      'UNION'
      'SELECT    PRO_CART,SUM(ROM_QTDE) "ROM_QTDE"'
      
        'FROM      CAD_PRO,PED_VEN_CAB_007 "PED_VEN_CAB",PED_VEN_ITE_007 ' +
        '"PED_VEN_ITE"'
      'WHERE     PED_VEN_CAB.ID = PED_VEN_ITE.ROM_CCAB'
      'AND       PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID'
      'AND       PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'GROUP BY  PRO_CART'
      'UNION'
      'SELECT    PRO_CART,SUM(ROM_QTDE) "ROM_QTDE"'
      
        'FROM      CAD_PRO,PED_VEN_CAB_008 "PED_VEN_CAB",PED_VEN_ITE_008 ' +
        '"PED_VEN_ITE"'
      'WHERE     PED_VEN_CAB.ID = PED_VEN_ITE.ROM_CCAB'
      'AND       PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID'
      'AND       PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'GROUP BY  PRO_CART'
      'UNION'
      'SELECT    PRO_CART,SUM(ROM_QTDE) "ROM_QTDE"'
      
        'FROM      CAD_PRO,PED_VEN_CAB_009 "PED_VEN_CAB",PED_VEN_ITE_009 ' +
        '"PED_VEN_ITE"'
      'WHERE     PED_VEN_CAB.ID = PED_VEN_ITE.ROM_CCAB'
      'AND       PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID'
      'AND       PED_VEN_CAB.ROM_CCLI = :ROM_CCLI'
      'GROUP BY  PRO_CART)'
      'GROUP BY  PRO_CART'
      'ORDER BY 2 DESC')
    Left = 336
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ROM_CCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ROM_CCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ROM_CCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ROM_CCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ROM_CCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ROM_CCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ROM_CCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ROM_CCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ROM_CCLI'
        ParamType = ptUnknown
      end>
    object ven_pro_graPRO_CART: TIBStringField
      FieldName = 'PRO_CART'
      ProviderFlags = []
    end
    object ven_pro_graROM_QTDE: TIBBCDField
      FieldName = 'ROM_QTDE'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
  end
  object dtsven_pro_gra: TDataSource
    DataSet = ven_pro_gra
    Left = 368
    Top = 72
  end
  object ven_prc: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      
        'SELECT    CAD_USU.USU_DUSU,CAD_PRO.PRO_CART,CAD_PRO.PRO_PREC,AVG' +
        '(ROM_UNIT)'
      
        'FROM      CAD_PRO,CAD_PRO_IMG,CAD_USU,PED_VEN_CAB_003 "PED_VEN_C' +
        'AB",PED_VEN_ITE_003 "PED_VEN_ITE"'
      'WHERE     PED_VEN_CAB.ID = PED_VEN_ITE.ROM_CCAB'
      'AND       PED_VEN_CAB.ROM_CDBX > 0'
      'AND       PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU'
      'AND       PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID'
      'AND       CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART'
      'AND       PED_VEN_CAB.ROM_CCLI = 12178'
      'GROUP BY  CAD_USU.USU_DUSU,CAD_PRO.PRO_CART,CAD_PRO.PRO_PREC'
      'ORDER BY  CAD_USU.USU_DUSU,CAD_PRO.PRO_CART')
    Left = 400
    Top = 72
    object ven_prcUSU_DUSU: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'USU_DUSU'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object ven_prcPRO_CART: TIBStringField
      DisplayLabel = 'Referencia'
      FieldName = 'PRO_CART'
      Origin = '"CAD_PRO"."PRO_CART"'
    end
    object ven_prcPRO_PREC: TFloatField
      DisplayLabel = 'Pre'#231'o Tabela'
      FieldName = 'PRO_PREC'
      Origin = '"CAD_PRO"."PRO_PREC"'
    end
    object ven_prcAVG: TFloatField
      DisplayLabel = 'Pre'#231'o M'#233'dio'
      FieldName = 'AVG'
      ProviderFlags = []
    end
  end
  object dtsven_prc: TDataSource
    DataSet = ven_prc
    Left = 432
    Top = 72
  end
  object nfe_cab: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    AfterOpen = nfe_cabAfterOpen
    SQL.Strings = (
      
        'SELECT   NFE_CAB.NFE_CDNF,NFE_DEMI,NFE_CFOP,NAT_DNAT,NAT_TIPO,NF' +
        'E_DFAV,NFE_DVEN,NFE_DREP,NFE_DTRA,COUNT(NFE_ITE.ID),SUM(NFE_CAB.' +
        'NFE_VNF)'
      'FROM     TAB_NAT,nfe_cab "NFE_CAB" ,nfe_ite "NFE_ITE"'
      'WHERE    NFE_CAB.ID = NFE_ITE.NFE_CCAB'
      'AND      NFE_ITE.NFE_CFOP = TAB_NAT.NAT_CNAT'
      'AND      NFE_CAB.NFE_STA = '#39'0'#39
      
        'GROUP BY NFE_CAB.NFE_CDNF,NFE_DEMI,NFE_CFOP,NAT_DNAT,NAT_TIPO,NF' +
        'E_DFAV,NFE_DVEN,NFE_DREP,NFE_DTRA'
      'ORDER BY NFE_CAB.NFE_CDNF DESC')
    Left = 792
    Top = 40
    object nfe_cabNFE_CDNF: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NFE_CDNF'
      Origin = '"NFE_CAB"."NFE_CDNF"'
    end
    object nfe_cabNFE_DEMI: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'NFE_DEMI'
      Origin = '"NFE_CAB"."NFE_DEMI"'
    end
    object nfe_cabNFE_CFOP: TIBStringField
      DisplayLabel = 'C.F.O.P.'
      FieldName = 'NFE_CFOP'
      Origin = '"NFE_ITE"."NFE_CFOP"'
      Size = 4
    end
    object nfe_cabNAT_DNAT: TIBStringField
      DisplayLabel = 'Natureza de Opera'#231#227'o'
      FieldName = 'NAT_DNAT'
      Origin = '"TAB_NAT"."NAT_DNAT"'
      Size = 60
    end
    object nfe_cabNAT_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'NAT_TIPO'
      Origin = '"TAB_NAT"."NAT_TIPO"'
    end
    object nfe_cabNFE_DFAV: TIBStringField
      DisplayLabel = 'Favorecido'
      FieldName = 'NFE_DFAV'
      Origin = '"NFE_CAB"."NFE_DFAV"'
      Size = 60
    end
    object nfe_cabNFE_DVEN: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NFE_DVEN'
      Origin = '"NFE_CAB"."NFE_DVEN"'
      Size = 30
    end
    object nfe_cabNFE_DREP: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'NFE_DREP'
      Origin = '"NFE_CAB"."NFE_DREP"'
      Size = 40
    end
    object nfe_cabNFE_DTRA: TIBStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'NFE_DTRA'
      Origin = '"NFE_CAB"."NFE_DTRA"'
      Size = 40
    end
    object nfe_cabCOUNT: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldName = 'COUNT'
      ProviderFlags = []
      DisplayFormat = '0'
    end
    object nfe_cabSUM: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'SUM'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
  end
  object dtsnfe_cab: TDataSource
    DataSet = nfe_cab
    Left = 824
    Top = 40
  end
  object nfe_ite: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    DataSource = dtsnfe_cab
    SQL.Strings = (
      
        'SELECT   ID,NFE_ITEMPED,NFE_CPROD,NFE_XPROD,NFE_UCOM,NFE_QCOM,NF' +
        'E_VUNCOM,NFE_VPROD,NFE_VNF FROM NFE_ITE "NFE_ITE"'
      'WHERE    NFE_CDNF = :NFE_CDNF'
      'UNION'
      
        'SELECT   ID,NFE_ITEMPED,NFE_CPROD,NFE_XPROD,NFE_UCOM,NFE_QCOM,NF' +
        'E_VUNCOM,NFE_VPROD,NFE_VNF FROM NFE_ITE_002 "NFE_ITE"'
      'WHERE    NFE_CDNF = :NFE_CDNF'
      'UNION'
      
        'SELECT   ID,NFE_ITEMPED,NFE_CPROD,NFE_XPROD,NFE_UCOM,NFE_QCOM,NF' +
        'E_VUNCOM,NFE_VPROD,NFE_VNF FROM NFE_ITE_003 "NFE_ITE"'
      'WHERE    NFE_CDNF = :NFE_CDNF'
      'UNION'
      
        'SELECT   ID,NFE_ITEMPED,NFE_CPROD,NFE_XPROD,NFE_UCOM,NFE_QCOM,NF' +
        'E_VUNCOM,NFE_VPROD,NFE_VNF FROM NFE_ITE_004 "NFE_ITE"'
      'WHERE    NFE_CDNF = :NFE_CDNF'
      'UNION'
      
        'SELECT   ID,NFE_ITEMPED,NFE_CPROD,NFE_XPROD,NFE_UCOM,NFE_QCOM,NF' +
        'E_VUNCOM,NFE_VPROD,NFE_VNF FROM NFE_ITE_005 "NFE_ITE"'
      'WHERE    NFE_CDNF = :NFE_CDNF'
      'UNION'
      
        'SELECT   ID,NFE_ITEMPED,NFE_CPROD,NFE_XPROD,NFE_UCOM,NFE_QCOM,NF' +
        'E_VUNCOM,NFE_VPROD,NFE_VNF FROM NFE_ITE_006 "NFE_ITE"'
      'WHERE    NFE_CDNF = :NFE_CDNF'
      'ORDER BY 1')
    Left = 792
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NFE_CDNF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_CDNF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_CDNF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_CDNF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_CDNF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_CDNF'
        ParamType = ptUnknown
      end>
    object nfe_iteID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_ITE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object nfe_iteNFE_ITEMPED: TIBStringField
      DisplayLabel = 'Item'
      FieldName = 'NFE_ITEMPED'
      Origin = '"NFE_ITE"."NFE_ITEMPED"'
      Size = 6
    end
    object nfe_iteNFE_CPROD: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'NFE_CPROD'
      Origin = '"NFE_ITE"."NFE_CPROD"'
    end
    object nfe_iteNFE_XPROD: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NFE_XPROD'
      Origin = '"NFE_ITE"."NFE_XPROD"'
      Size = 120
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
    object nfe_iteNFE_VPROD: TIBBCDField
      DisplayLabel = 'Total Produto'
      FieldName = 'NFE_VPROD'
      Origin = '"NFE_ITE"."NFE_VPROD"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VNF: TIBBCDField
      DisplayLabel = 'Total Nota Fiscal'
      FieldName = 'NFE_VNF'
      Origin = '"NFE_ITE"."NFE_VNF"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VUNCOM: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'NFE_VUNCOM'
      Origin = '"NFE_ITE"."NFE_VUNCOM"'
    end
  end
  object dtsnfe_ite: TDataSource
    DataSet = nfe_ite
    Left = 824
    Top = 72
  end
  object nfe_gra: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    AfterOpen = nfe_cabAfterOpen
    SQL.Strings = (
      'SELECT   NAT_TIPO,SUM(NFE_VNF) "NFE_VNF"'
      'FROM ('
      'SELECT   NAT_TIPO,SUM(NFE_ITE.NFE_VNF) "NFE_VNF"'
      'FROM     TAB_NAT,NFE_CAB "NFE_CAB",NFE_ITE "NFE_ITE"'
      'WHERE    NFE_CAB.ID       = NFE_ITE.NFE_CCAB'
      'AND      NFE_ITE.NFE_CFOP = TAB_NAT.NAT_CNAT'
      'AND      NFE_CAB.NFE_STA  = '#39'0'#39
      'AND      NFE_CAB.NFE_CFAV = :NFE_CFAV'
      'GROUP BY NAT_TIPO'
      'UNION'
      'SELECT   NAT_TIPO,SUM(NFE_ITE.NFE_VNF) "NFE_VNF"'
      'FROM     TAB_NAT,NFE_CAB_002 "NFE_CAB",NFE_ITE_002 "NFE_ITE"'
      'WHERE    NFE_CAB.ID       = NFE_ITE.NFE_CCAB'
      'AND      NFE_ITE.NFE_CFOP = TAB_NAT.NAT_CNAT'
      'AND      NFE_CAB.NFE_STA  = '#39'0'#39
      'AND      NFE_CAB.NFE_CFAV = :NFE_CFAV'
      'GROUP BY NAT_TIPO'
      'UNION'
      'SELECT   NAT_TIPO,SUM(NFE_ITE.NFE_VNF) "NFE_VNF"'
      'FROM     TAB_NAT,NFE_CAB_003 "NFE_CAB",NFE_ITE_003 "NFE_ITE"'
      'WHERE    NFE_CAB.ID       = NFE_ITE.NFE_CCAB'
      'AND      NFE_ITE.NFE_CFOP = TAB_NAT.NAT_CNAT'
      'AND      NFE_CAB.NFE_STA  = '#39'0'#39
      'AND      NFE_CAB.NFE_CFAV = :NFE_CFAV'
      'GROUP BY NAT_TIPO'
      'UNION'
      'SELECT   NAT_TIPO,SUM(NFE_ITE.NFE_VNF) "NFE_VNF"'
      'FROM     TAB_NAT,NFE_CAB_004 "NFE_CAB",NFE_ITE_004 "NFE_ITE"'
      'WHERE    NFE_CAB.ID       = NFE_ITE.NFE_CCAB'
      'AND      NFE_ITE.NFE_CFOP = TAB_NAT.NAT_CNAT'
      'AND      NFE_CAB.NFE_STA  = '#39'0'#39
      'AND      NFE_CAB.NFE_CFAV = :NFE_CFAV'
      'GROUP BY NAT_TIPO'
      'UNION'
      'SELECT   NAT_TIPO,SUM(NFE_ITE.NFE_VNF) "NFE_VNF"'
      'FROM     TAB_NAT,NFE_CAB_005 "NFE_CAB",NFE_ITE_005 "NFE_ITE"'
      'WHERE    NFE_CAB.ID       = NFE_ITE.NFE_CCAB'
      'AND      NFE_ITE.NFE_CFOP = TAB_NAT.NAT_CNAT'
      'AND      NFE_CAB.NFE_STA  = '#39'0'#39
      'AND      NFE_CAB.NFE_CFAV = :NFE_CFAV'
      'GROUP BY NAT_TIPO'
      'UNION'
      'SELECT   NAT_TIPO,SUM(NFE_ITE.NFE_VNF) "NFE_VNF"'
      'FROM     TAB_NAT,NFE_CAB_006 "NFE_CAB",NFE_ITE_006 "NFE_ITE"'
      'WHERE    NFE_CAB.ID       = NFE_ITE.NFE_CCAB'
      'AND      NFE_ITE.NFE_CFOP = TAB_NAT.NAT_CNAT'
      'AND      NFE_CAB.NFE_STA  = '#39'0'#39
      'AND      NFE_CAB.NFE_CFAV = :NFE_CFAV'
      'GROUP BY NAT_TIPO)'
      'GROUP BY NAT_TIPO'
      'ORDER BY 2')
    Left = 792
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NFE_CFAV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_CFAV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_CFAV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_CFAV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_CFAV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_CFAV'
        ParamType = ptUnknown
      end>
    object nfe_graNAT_TIPO: TIBStringField
      FieldName = 'NAT_TIPO'
      ProviderFlags = []
    end
    object nfe_graNFE_VNF: TIBBCDField
      FieldName = 'NFE_VNF'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
  end
  object dtsnfe_gra: TDataSource
    DataSet = nfe_gra
    Left = 824
    Top = 8
  end
  object fin_ban: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      
        'SELECT FIN_REC_BAN_BAI.ID,FIN_IDBX,FIN_DOCT,FIN_STDO,FIN_TIPO,FI' +
        'N_STFI,FIN_VALO,FIN_VPAG,FIN_VPEN,FIN_DCAD,FIN_DVEN,FIN_DPAG,USU' +
        '_DUSU,REP_FANT,PAR_FANT'
      'FROM   CAD_USU,CAD_REP,FIN_REC_BAN_BAI "FIN_REC_BAN_BAI",PAR_SIS'
      'WHERE  FIN_CVEN = USU_CUSU'
      'AND    FIN_CREP = CAD_REP.ID'
      'AND    FIN_CCLI = :FIN_CCLI'
      'AND    PAR_SIS.ID = 1'
      'UNION'
      
        'SELECT FIN_REC_BAN_BAI.ID,FIN_IDBX,FIN_DOCT,FIN_STDO,FIN_TIPO,FI' +
        'N_STFI,FIN_VALO,FIN_VPAG,FIN_VPEN,FIN_DCAD,FIN_DVEN,FIN_DPAG,USU' +
        '_DUSU,REP_FANT,PAR_FANT'
      
        'FROM   CAD_USU,CAD_REP,FIN_REC_BAN_BAI_002 "FIN_REC_BAN_BAI",PAR' +
        '_SIS'
      'WHERE  FIN_CVEN = USU_CUSU'
      'AND    FIN_CREP = CAD_REP.ID'
      'AND    FIN_CCLI = :FIN_CCLI'
      'AND    PAR_SIS.ID = 2'
      'UNION'
      
        'SELECT FIN_REC_BAN_BAI.ID,FIN_IDBX,FIN_DOCT,FIN_STDO,FIN_TIPO,FI' +
        'N_STFI,FIN_VALO,FIN_VPAG,FIN_VPEN,FIN_DCAD,FIN_DVEN,FIN_DPAG,USU' +
        '_DUSU,REP_FANT,PAR_FANT'
      
        'FROM   CAD_USU,CAD_REP,FIN_REC_BAN_BAI_003 "FIN_REC_BAN_BAI",PAR' +
        '_SIS'
      'WHERE  FIN_CVEN = USU_CUSU'
      'AND    FIN_CREP = CAD_REP.ID'
      'AND    FIN_CCLI = :FIN_CCLI'
      'AND    PAR_SIS.ID = 3'
      'UNION'
      
        'SELECT FIN_REC_BAN_BAI.ID,FIN_IDBX,FIN_DOCT,FIN_STDO,FIN_TIPO,FI' +
        'N_STFI,FIN_VALO,FIN_VPAG,FIN_VPEN,FIN_DCAD,FIN_DVEN,FIN_DPAG,USU' +
        '_DUSU,REP_FANT,PAR_FANT'
      
        'FROM   CAD_USU,CAD_REP,FIN_REC_BAN_BAI_004 "FIN_REC_BAN_BAI",PAR' +
        '_SIS'
      'WHERE  FIN_CVEN = USU_CUSU'
      'AND    FIN_CREP = CAD_REP.ID'
      'AND    FIN_CCLI = :FIN_CCLI'
      'AND    PAR_SIS.ID = 4'
      'UNION'
      
        'SELECT FIN_REC_BAN_BAI.ID,FIN_IDBX,FIN_DOCT,FIN_STDO,FIN_TIPO,FI' +
        'N_STFI,FIN_VALO,FIN_VPAG,FIN_VPEN,FIN_DCAD,FIN_DVEN,FIN_DPAG,USU' +
        '_DUSU,REP_FANT,PAR_FANT'
      
        'FROM   CAD_USU,CAD_REP,FIN_REC_BAN_BAI_005 "FIN_REC_BAN_BAI",PAR' +
        '_SIS'
      'WHERE  FIN_CVEN = USU_CUSU'
      'AND    FIN_CREP = CAD_REP.ID'
      'AND    FIN_CCLI = :FIN_CCLI'
      'AND    PAR_SIS.ID = 5'
      'UNION'
      
        'SELECT FIN_REC_BAN_BAI.ID,FIN_IDBX,FIN_DOCT,FIN_STDO,FIN_TIPO,FI' +
        'N_STFI,FIN_VALO,FIN_VPAG,FIN_VPEN,FIN_DCAD,FIN_DVEN,FIN_DPAG,USU' +
        '_DUSU,REP_FANT,PAR_FANT'
      
        'FROM   CAD_USU,CAD_REP,FIN_REC_BAN_BAI_006 "FIN_REC_BAN_BAI",PAR' +
        '_SIS'
      'WHERE  FIN_CVEN = USU_CUSU'
      'AND    FIN_CREP = CAD_REP.ID'
      'AND    FIN_CCLI = :FIN_CCLI'
      'AND    PAR_SIS.ID = 6'
      'UNION'
      
        'SELECT FIN_REC_BAN_BAI.ID,FIN_IDBX,FIN_DOCT,FIN_STDO,FIN_TIPO,FI' +
        'N_STFI,FIN_VALO,FIN_VPAG,FIN_VPEN,FIN_DCAD,FIN_DVEN,FIN_DPAG,USU' +
        '_DUSU,REP_FANT,PAR_FANT'
      
        'FROM   CAD_USU,CAD_REP,FIN_REC_BAN_BAI_007 "FIN_REC_BAN_BAI",PAR' +
        '_SIS'
      'WHERE  FIN_CVEN = USU_CUSU'
      'AND    FIN_CREP = CAD_REP.ID'
      'AND    FIN_CCLI = :FIN_CCLI'
      'AND    PAR_SIS.ID = 7'
      'UNION'
      
        'SELECT FIN_REC_BAN_BAI.ID,FIN_IDBX,FIN_DOCT,FIN_STDO,FIN_TIPO,FI' +
        'N_STFI,FIN_VALO,FIN_VPAG,FIN_VPEN,FIN_DCAD,FIN_DVEN,FIN_DPAG,USU' +
        '_DUSU,REP_FANT,PAR_FANT'
      
        'FROM   CAD_USU,CAD_REP,FIN_REC_BAN_BAI_008 "FIN_REC_BAN_BAI",PAR' +
        '_SIS'
      'WHERE  FIN_CVEN = USU_CUSU'
      'AND    FIN_CREP = CAD_REP.ID'
      'AND    FIN_CCLI = :FIN_CCLI'
      'AND    PAR_SIS.ID = 8'
      'UNION'
      
        'SELECT FIN_REC_BAN_BAI.ID,FIN_IDBX,FIN_DOCT,FIN_STDO,FIN_TIPO,FI' +
        'N_STFI,FIN_VALO,FIN_VPAG,FIN_VPEN,FIN_DCAD,FIN_DVEN,FIN_DPAG,USU' +
        '_DUSU,REP_FANT,PAR_FANT'
      
        'FROM   CAD_USU,CAD_REP,FIN_REC_BAN_BAI_009 "FIN_REC_BAN_BAI",PAR' +
        '_SIS'
      'WHERE  FIN_CVEN = USU_CUSU'
      'AND    FIN_CREP = CAD_REP.ID'
      'AND    FIN_CCLI = :FIN_CCLI'
      'AND    PAR_SIS.ID = 9'
      'ORDER BY 10,1')
    Left = 864
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'FIN_CCLI'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end>
    object fin_banID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_REC_BAN_BAI"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fin_banFIN_DOCT: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'FIN_DOCT'
      Origin = '"FIN_REC_BAN_BAI"."FIN_DOCT"'
    end
    object fin_banFIN_STDO: TIBStringField
      DisplayLabel = 'Cob'
      FieldName = 'FIN_STDO'
      Origin = '"FIN_REC_BAN_BAI"."FIN_STDO"'
      Size = 3
    end
    object fin_banFIN_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'FIN_TIPO'
      Origin = '"FIN_REC_BAN_BAI"."FIN_TIPO"'
    end
    object fin_banFIN_STFI: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'FIN_STFI'
      Origin = '"FIN_REC_BAN_BAI"."FIN_STFI"'
    end
    object fin_banFIN_VALO: TIBBCDField
      DisplayLabel = 'Valor Lancto'
      FieldName = 'FIN_VALO'
      Origin = '"FIN_REC_BAN_BAI"."FIN_VALO"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object fin_banFIN_VPAG: TIBBCDField
      DisplayLabel = 'Valor Pago'
      FieldName = 'FIN_VPAG'
      Origin = '"FIN_REC_BAN_BAI"."FIN_VPAG"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object fin_banFIN_VPEN: TIBBCDField
      DisplayLabel = 'Valor Pendente'
      FieldName = 'FIN_VPEN'
      Origin = '"FIN_REC_BAN_BAI"."FIN_VPEN"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object fin_banFIN_DCAD: TDateField
      DisplayLabel = 'Lancto'
      FieldName = 'FIN_DCAD'
      Origin = '"FIN_REC_BAN_BAI"."FIN_DCAD"'
    end
    object fin_banFIN_DVEN: TDateField
      DisplayLabel = 'Vencto'
      FieldName = 'FIN_DVEN'
      Origin = '"FIN_REC_BAN_BAI"."FIN_DVEN"'
    end
    object fin_banFIN_DPAG: TDateField
      DisplayLabel = 'Pagto'
      FieldName = 'FIN_DPAG'
      Origin = '"FIN_REC_BAN_BAI"."FIN_DPAG"'
    end
    object fin_banUSU_DUSU: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'USU_DUSU'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object fin_banREP_FANT: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'REP_FANT'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 40
    end
    object fin_banFIN_IDBX: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'FIN_IDBX'
      Origin = '"FIN_REC_BAN_BAI"."FIN_IDBX"'
      Size = 10
    end
    object fin_banPAR_FANT: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'PAR_FANT'
      Origin = '"PAR_SIS"."PAR_FANT"'
      Size = 40
    end
  end
  object dtsfin_ban: TDataSource
    DataSet = fin_ban
    Left = 896
    Top = 8
  end
  object fin_car: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      
        'SELECT FIN_REC_CAR_BAI.ID,FIN_IDBX,FIN_DOCT,FIN_STDO,FIN_TIPO,FI' +
        'N_STFI,FIN_VALO,FIN_VPAG,FIN_VPEN,FIN_DCAD,FIN_DVEN,FIN_DPAG,USU' +
        '_DUSU,REP_FANT,PAR_FANT'
      'FROM   CAD_USU,CAD_REP,FIN_REC_CAR_BAI "FIN_REC_CAR_BAI",PAR_SIS'
      'WHERE  FIN_CVEN = USU_CUSU'
      'AND    FIN_CREP = CAD_REP.ID'
      'AND    FIN_CCLI = :FIN_CCLI'
      'AND    PAR_SIS.ID = 1'
      'UNION'
      
        'SELECT FIN_REC_CAR_BAI.ID,FIN_IDBX,FIN_DOCT,FIN_STDO,FIN_TIPO,FI' +
        'N_STFI,FIN_VALO,FIN_VPAG,FIN_VPEN,FIN_DCAD,FIN_DVEN,FIN_DPAG,USU' +
        '_DUSU,REP_FANT,PAR_FANT'
      
        'FROM   CAD_USU,CAD_REP,FIN_REC_CAR_BAI_002 "FIN_REC_CAR_BAI",PAR' +
        '_SIS'
      'WHERE  FIN_CVEN = USU_CUSU'
      'AND    FIN_CREP = CAD_REP.ID'
      'AND    FIN_CCLI = :FIN_CCLI'
      'AND    PAR_SIS.ID = 2'
      'UNION'
      
        'SELECT FIN_REC_CAR_BAI.ID,FIN_IDBX,FIN_DOCT,FIN_STDO,FIN_TIPO,FI' +
        'N_STFI,FIN_VALO,FIN_VPAG,FIN_VPEN,FIN_DCAD,FIN_DVEN,FIN_DPAG,USU' +
        '_DUSU,REP_FANT,PAR_FANT'
      
        'FROM   CAD_USU,CAD_REP,FIN_REC_CAR_BAI_003 "FIN_REC_CAR_BAI",PAR' +
        '_SIS'
      'WHERE  FIN_CVEN = USU_CUSU'
      'AND    FIN_CREP = CAD_REP.ID'
      'AND    FIN_CCLI = :FIN_CCLI'
      'AND    PAR_SIS.ID = 3'
      'UNION'
      
        'SELECT FIN_REC_CAR_BAI.ID,FIN_IDBX,FIN_DOCT,FIN_STDO,FIN_TIPO,FI' +
        'N_STFI,FIN_VALO,FIN_VPAG,FIN_VPEN,FIN_DCAD,FIN_DVEN,FIN_DPAG,USU' +
        '_DUSU,REP_FANT,PAR_FANT'
      
        'FROM   CAD_USU,CAD_REP,FIN_REC_CAR_BAI_004 "FIN_REC_CAR_BAI",PAR' +
        '_SIS'
      'WHERE  FIN_CVEN = USU_CUSU'
      'AND    FIN_CREP = CAD_REP.ID'
      'AND    FIN_CCLI = :FIN_CCLI'
      'AND    PAR_SIS.ID = 4'
      'UNION'
      
        'SELECT FIN_REC_CAR_BAI.ID,FIN_IDBX,FIN_DOCT,FIN_STDO,FIN_TIPO,FI' +
        'N_STFI,FIN_VALO,FIN_VPAG,FIN_VPEN,FIN_DCAD,FIN_DVEN,FIN_DPAG,USU' +
        '_DUSU,REP_FANT,PAR_FANT'
      
        'FROM   CAD_USU,CAD_REP,FIN_REC_CAR_BAI_005 "FIN_REC_CAR_BAI",PAR' +
        '_SIS'
      'WHERE  FIN_CVEN = USU_CUSU'
      'AND    FIN_CREP = CAD_REP.ID'
      'AND    FIN_CCLI = :FIN_CCLI'
      'AND    PAR_SIS.ID = 5'
      'UNION'
      
        'SELECT FIN_REC_CAR_BAI.ID,FIN_IDBX,FIN_DOCT,FIN_STDO,FIN_TIPO,FI' +
        'N_STFI,FIN_VALO,FIN_VPAG,FIN_VPEN,FIN_DCAD,FIN_DVEN,FIN_DPAG,USU' +
        '_DUSU,REP_FANT,PAR_FANT'
      
        'FROM   CAD_USU,CAD_REP,FIN_REC_CAR_BAI_006 "FIN_REC_CAR_BAI",PAR' +
        '_SIS'
      'WHERE  FIN_CVEN = USU_CUSU'
      'AND    FIN_CREP = CAD_REP.ID'
      'AND    FIN_CCLI = :FIN_CCLI'
      'AND    PAR_SIS.ID = 6'
      'UNION'
      
        'SELECT FIN_REC_CAR_BAI.ID,FIN_IDBX,FIN_DOCT,FIN_STDO,FIN_TIPO,FI' +
        'N_STFI,FIN_VALO,FIN_VPAG,FIN_VPEN,FIN_DCAD,FIN_DVEN,FIN_DPAG,USU' +
        '_DUSU,REP_FANT,PAR_FANT'
      
        'FROM   CAD_USU,CAD_REP,FIN_REC_CAR_BAI_007 "FIN_REC_CAR_BAI",PAR' +
        '_SIS'
      'WHERE  FIN_CVEN = USU_CUSU'
      'AND    FIN_CREP = CAD_REP.ID'
      'AND    FIN_CCLI = :FIN_CCLI'
      'AND    PAR_SIS.ID = 7'
      'UNION'
      
        'SELECT FIN_REC_CAR_BAI.ID,FIN_IDBX,FIN_DOCT,FIN_STDO,FIN_TIPO,FI' +
        'N_STFI,FIN_VALO,FIN_VPAG,FIN_VPEN,FIN_DCAD,FIN_DVEN,FIN_DPAG,USU' +
        '_DUSU,REP_FANT,PAR_FANT'
      
        'FROM   CAD_USU,CAD_REP,FIN_REC_CAR_BAI_008 "FIN_REC_CAR_BAI",PAR' +
        '_SIS'
      'WHERE  FIN_CVEN = USU_CUSU'
      'AND    FIN_CREP = CAD_REP.ID'
      'AND    FIN_CCLI = :FIN_CCLI'
      'AND    PAR_SIS.ID = 8'
      'UNION'
      
        'SELECT FIN_REC_CAR_BAI.ID,FIN_IDBX,FIN_DOCT,FIN_STDO,FIN_TIPO,FI' +
        'N_STFI,FIN_VALO,FIN_VPAG,FIN_VPEN,FIN_DCAD,FIN_DVEN,FIN_DPAG,USU' +
        '_DUSU,REP_FANT,PAR_FANT'
      
        'FROM   CAD_USU,CAD_REP,FIN_REC_CAR_BAI_009 "FIN_REC_CAR_BAI",PAR' +
        '_SIS'
      'WHERE  FIN_CVEN = USU_CUSU'
      'AND    FIN_CREP = CAD_REP.ID'
      'AND    FIN_CCLI = :FIN_CCLI'
      'AND    PAR_SIS.ID = 9'
      'ORDER BY 10,1')
    Left = 864
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'FIN_CCLI'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end>
    object fin_carID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_REC_CAR_BAI"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fin_carFIN_DOCT: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'FIN_DOCT'
      Origin = '"FIN_REC_CAR_BAI"."FIN_DOCT"'
    end
    object fin_carFIN_STDO: TIBStringField
      DisplayLabel = 'Cob'
      FieldName = 'FIN_STDO'
      Origin = '"FIN_REC_CAR_BAI"."FIN_STDO"'
      Size = 3
    end
    object fin_carFIN_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'FIN_TIPO'
      Origin = '"FIN_REC_CAR_BAI"."FIN_TIPO"'
    end
    object fin_carFIN_STFI: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'FIN_STFI'
      Origin = '"FIN_REC_CAR_BAI"."FIN_STFI"'
    end
    object fin_carFIN_VALO: TIBBCDField
      DisplayLabel = 'Valor Lancto'
      FieldName = 'FIN_VALO'
      Origin = '"FIN_REC_CAR_BAI"."FIN_VALO"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object fin_carFIN_VPAG: TIBBCDField
      DisplayLabel = 'Valor Pago'
      FieldName = 'FIN_VPAG'
      Origin = '"FIN_REC_CAR_BAI"."FIN_VPAG"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object fin_carFIN_VPEN: TIBBCDField
      DisplayLabel = 'Valor Pendente'
      FieldName = 'FIN_VPEN'
      Origin = '"FIN_REC_CAR_BAI"."FIN_VPEN"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object fin_carFIN_DCAD: TDateField
      DisplayLabel = 'Lancto'
      FieldName = 'FIN_DCAD'
      Origin = '"FIN_REC_CAR_BAI"."FIN_DCAD"'
    end
    object fin_carFIN_DVEN: TDateField
      DisplayLabel = 'Vencto'
      FieldName = 'FIN_DVEN'
      Origin = '"FIN_REC_CAR_BAI"."FIN_DVEN"'
    end
    object fin_carFIN_DPAG: TDateField
      DisplayLabel = 'Pagto'
      FieldName = 'FIN_DPAG'
      Origin = '"FIN_REC_CAR_BAI"."FIN_DPAG"'
    end
    object fin_carUSU_DUSU: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'USU_DUSU'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object fin_carREP_FANT: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'REP_FANT'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 40
    end
    object fin_carFIN_IDBX: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'FIN_IDBX'
      Origin = '"FIN_REC_CAR_BAI"."FIN_IDBX"'
      Size = 10
    end
    object fin_carPAR_FANT: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'PAR_FANT'
      Origin = '"PAR_SIS"."PAR_FANT"'
      Size = 40
    end
  end
  object dtsfin_car: TDataSource
    DataSet = fin_car
    Left = 896
    Top = 40
  end
  object ven_001: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT   ROM_DERO,ROM_DROM,ROM_QTVE,ROM_TCDE'
      'FROM     PED_VEN_CAB "PED_VEN_CAB"'
      'WHERE    ROM_CCLI = :ROM_CCLI'
      'AND      ROM_CDBX > 0'
      'UNION'
      'SELECT   ROM_DERO,ROM_DROM,ROM_QTVE,ROM_TCDE'
      'FROM     PED_VEN_CAB_002 "PED_VEN_CAB"'
      'WHERE    ROM_CCLI = :ROM_CCLI'
      'AND      ROM_CDBX > 0'
      'UNION'
      'SELECT   ROM_DERO,ROM_DROM,ROM_QTVE,ROM_TCDE'
      'FROM     PED_VEN_CAB_003 "PED_VEN_CAB"'
      'WHERE    ROM_CCLI = :ROM_CCLI'
      'AND      ROM_CDBX > 0'
      'UNION'
      'SELECT   ROM_DERO,ROM_DROM,ROM_QTVE,ROM_TCDE'
      'FROM     PED_VEN_CAB_004 "PED_VEN_CAB"'
      'WHERE    ROM_CCLI = :ROM_CCLI'
      'AND      ROM_CDBX > 0'
      'UNION'
      'SELECT   ROM_DERO,ROM_DROM,ROM_QTVE,ROM_TCDE'
      'FROM     PED_VEN_CAB_005 "PED_VEN_CAB"'
      'WHERE    ROM_CCLI = :ROM_CCLI'
      'AND      ROM_CDBX > 0'
      'UNION'
      'SELECT   ROM_DERO,ROM_DROM,ROM_QTVE,ROM_TCDE'
      'FROM     PED_VEN_CAB_006 "PED_VEN_CAB"'
      'WHERE    ROM_CCLI = :ROM_CCLI'
      'AND      ROM_CDBX > 0'
      'UNION'
      'SELECT   ROM_DERO,ROM_DROM,ROM_QTVE,ROM_TCDE'
      'FROM     PED_VEN_CAB_007 "PED_VEN_CAB"'
      'WHERE    ROM_CCLI = :ROM_CCLI'
      'AND      ROM_CDBX > 0'
      'UNION'
      'SELECT   ROM_DERO,ROM_DROM,ROM_QTVE,ROM_TCDE'
      'FROM     PED_VEN_CAB_008 "PED_VEN_CAB"'
      'WHERE    ROM_CCLI = :ROM_CCLI'
      'AND      ROM_CDBX > 0'
      'UNION'
      'SELECT   ROM_DERO,ROM_DROM,ROM_QTVE,ROM_TCDE'
      'FROM     PED_VEN_CAB_009 "PED_VEN_CAB"'
      'WHERE    ROM_CCLI = :ROM_CCLI'
      'AND      ROM_CDBX > 0'
      'ORDER BY 4')
    Left = 8
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end>
    object ven_001ROM_DERO: TIBStringField
      FieldName = 'ROM_DERO'
      Origin = '"PED_VEN_CAB"."ROM_DERO"'
    end
    object ven_001ROM_DROM: TDateField
      FieldName = 'ROM_DROM'
      Origin = '"PED_VEN_CAB"."ROM_DROM"'
    end
    object ven_001ROM_QTVE: TIBBCDField
      FieldName = 'ROM_QTVE'
      Origin = '"PED_VEN_CAB"."ROM_QTVE"'
      Precision = 18
      Size = 4
    end
    object ven_001ROM_TCDE: TIBBCDField
      FieldName = 'ROM_TCDE'
      Origin = '"PED_VEN_CAB"."ROM_TCDE"'
      Precision = 18
      Size = 2
    end
  end
  object ven_002: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT   ROM_DERO,ROM_DROM,ROM_QTVE,ROM_TCDE'
      'FROM     PED_VEN_CAB "PED_VEN_CAB"'
      'WHERE    ROM_CCLI = :ROM_CCLI'
      'AND      ROM_CDBX > 0'
      'UNION'
      'SELECT   ROM_DERO,ROM_DROM,ROM_QTVE,ROM_TCDE'
      'FROM     PED_VEN_CAB_002 "PED_VEN_CAB"'
      'WHERE    ROM_CCLI = :ROM_CCLI'
      'AND      ROM_CDBX > 0'
      'UNION'
      'SELECT   ROM_DERO,ROM_DROM,ROM_QTVE,ROM_TCDE'
      'FROM     PED_VEN_CAB_003 "PED_VEN_CAB"'
      'WHERE    ROM_CCLI = :ROM_CCLI'
      'AND      ROM_CDBX > 0'
      'UNION'
      'SELECT   ROM_DERO,ROM_DROM,ROM_QTVE,ROM_TCDE'
      'FROM     PED_VEN_CAB_004 "PED_VEN_CAB"'
      'WHERE    ROM_CCLI = :ROM_CCLI'
      'AND      ROM_CDBX > 0'
      'UNION'
      'SELECT   ROM_DERO,ROM_DROM,ROM_QTVE,ROM_TCDE'
      'FROM     PED_VEN_CAB_005 "PED_VEN_CAB"'
      'WHERE    ROM_CCLI = :ROM_CCLI'
      'AND      ROM_CDBX > 0'
      'UNION'
      'SELECT   ROM_DERO,ROM_DROM,ROM_QTVE,ROM_TCDE'
      'FROM     PED_VEN_CAB_006 "PED_VEN_CAB"'
      'WHERE    ROM_CCLI = :ROM_CCLI'
      'AND      ROM_CDBX > 0'
      'UNION'
      'SELECT   ROM_DERO,ROM_DROM,ROM_QTVE,ROM_TCDE'
      'FROM     PED_VEN_CAB_007 "PED_VEN_CAB"'
      'WHERE    ROM_CCLI = :ROM_CCLI'
      'AND      ROM_CDBX > 0'
      'UNION'
      'SELECT   ROM_DERO,ROM_DROM,ROM_QTVE,ROM_TCDE'
      'FROM     PED_VEN_CAB_008 "PED_VEN_CAB"'
      'WHERE    ROM_CCLI = :ROM_CCLI'
      'AND      ROM_CDBX > 0'
      'UNION'
      'SELECT   ROM_DERO,ROM_DROM,ROM_QTVE,ROM_TCDE'
      'FROM     PED_VEN_CAB_009 "PED_VEN_CAB"'
      'WHERE    ROM_CCLI = :ROM_CCLI'
      'AND      ROM_CDBX > 0'
      'ORDER BY 2')
    Left = 40
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ROM_CCLI'
        ParamType = ptInput
      end>
    object ven_002ROM_DERO: TIBStringField
      FieldName = 'ROM_DERO'
      Origin = '"PED_VEN_CAB"."ROM_DERO"'
    end
    object ven_002ROM_DROM: TDateField
      FieldName = 'ROM_DROM'
      Origin = '"PED_VEN_CAB"."ROM_DROM"'
    end
    object ven_002ROM_QTVE: TIBBCDField
      FieldName = 'ROM_QTVE'
      Origin = '"PED_VEN_CAB"."ROM_QTVE"'
      Precision = 18
      Size = 4
    end
    object ven_002ROM_TCDE: TIBBCDField
      FieldName = 'ROM_TCDE'
      Origin = '"PED_VEN_CAB"."ROM_TCDE"'
      Precision = 18
      Size = 2
    end
  end
  object tab_pag: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      
        'SELECT SUM((PAG_D001+PAG_D002+PAG_D003+PAG_D004+PAG_D005+PAG_D00' +
        '6+PAG_D007+PAG_D008+PAG_D009+PAG_D010)/PAG_PARC) "PAG_PRAZ" FROM' +
        ' TAB_PAG'
      'WHERE ID = :ID')
    Left = 8
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Value = '0'
      end>
    object tab_pagPAG_PRAZ: TLargeintField
      FieldName = 'PAG_PRAZ'
      ProviderFlags = []
    end
  end
  object aux: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    Left = 600
    Top = 64
  end
  object cad_cli_prc: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT * FROM CAD_CLI_PRC')
    Left = 400
    Top = 104
    object cad_cli_prcID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CLI_PRC"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_cli_prcCLI_CCLI: TIntegerField
      FieldName = 'CLI_CCLI'
      Origin = '"CAD_CLI_PRC"."CLI_CCLI"'
    end
    object cad_cli_prcCLI_DCAD: TDateField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'CLI_DCAD'
      Origin = '"CAD_CLI_PRC"."CLI_DCAD"'
    end
    object cad_cli_prcCLI_MANO: TIBStringField
      DisplayLabel = 'Mes / Ano'
      FieldName = 'CLI_MANO'
      Origin = '"CAD_CLI_PRC"."CLI_MANO"'
      Size = 7
    end
    object cad_cli_prcCLI_CPRO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'CLI_CPRO'
      Origin = '"CAD_CLI_PRC"."CLI_CPRO"'
    end
    object cad_cli_prcCLI_DPRO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CLI_DPRO'
      Origin = '"CAD_CLI_PRC"."CLI_DPRO"'
      Size = 120
    end
    object cad_cli_prcCLI_DPAG: TIBStringField
      DisplayLabel = 'F. Pagamento'
      FieldName = 'CLI_DPAG'
      Origin = '"CAD_CLI_PRC"."CLI_DPAG"'
    end
    object cad_cli_prcCLI_PREC: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'CLI_PREC'
      Origin = '"CAD_CLI_PRC"."CLI_PREC"'
    end
  end
  object dtscad_cli_prc: TDataSource
    DataSet = cad_cli_prc
    Left = 432
    Top = 104
  end
  object cad_cli_crd: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    DeleteSQL.Strings = (
      'delete from CAD_CLI_CRD'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_CLI_CRD'
      '  (CLI_CCLI, CLI_CDEP, CLI_CRED, ID)'
      'values'
      '  (:CLI_CCLI, :CLI_CDEP, :CLI_CRED, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CLI_CDEP,'
      '  CLI_CCLI,'
      '  CLI_CRED'
      'from CAD_CLI_CRD '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_CLI_CRD')
    ModifySQL.Strings = (
      'update CAD_CLI_CRD'
      'set'
      '  CLI_CCLI = :CLI_CCLI,'
      '  CLI_CDEP = :CLI_CDEP,'
      '  CLI_CRED = :CLI_CRED,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 568
    Top = 64
    object cad_cli_crdID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CLI_CRD"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_cli_crdCLI_CDEP: TIntegerField
      FieldName = 'CLI_CDEP'
      Origin = '"CAD_CLI_CRD"."CLI_CDEP"'
    end
    object cad_cli_crdCLI_CCLI: TIntegerField
      FieldName = 'CLI_CCLI'
      Origin = '"CAD_CLI_CRD"."CLI_CCLI"'
    end
    object cad_cli_crdCLI_CRED: TIBBCDField
      FieldName = 'CLI_CRED'
      Origin = '"CAD_CLI_CRD"."CLI_CRED"'
      Precision = 9
      Size = 2
    end
  end
end
