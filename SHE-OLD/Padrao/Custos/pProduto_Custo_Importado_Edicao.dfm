inherited FrmProduto_Custo_Importado_Edicao: TFrmProduto_Custo_Importado_Edicao
  Left = 265
  Top = 147
  Caption = 'Custo de Produto por Categoria'
  ClientHeight = 652
  ClientWidth = 1434
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBRodape: TdxStatusBar
    Top = 631
    Width = 1434
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 125
        Text = 'Consulta'
        Width = 125
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 0
        Width = 1160
      end
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.CapsLockKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
        MinWidth = 137
        Width = 137
      end>
  end
  inherited PCPrincipal: TdxPageControl
    Left = 0
    Width = 1434
    Height = 574
    inherited TSPrincipal: TdxTabSheet
      inherited PNLPrincipal: TPanel
        Width = 1434
        Height = 574
        inherited DSConsulta: TdxDockSite
          Top = 121
          Width = 1434
          Height = 453
          DockType = 0
          OriginalWidth = 1434
          OriginalHeight = 453
          inherited dxLayoutDockSite3: TdxLayoutDockSite
            Width = 1434
            Height = 453
            DockType = 1
            OriginalWidth = 300
            OriginalHeight = 200
          end
          inherited DPConsulta: TdxDockPanel
            Width = 1434
            Height = 453
            Font.Color = clWindowText
            Caption = 'Itens'
            DockType = 1
            OriginalWidth = 470
            OriginalHeight = 285
            inherited PNLConsulta: TPanel
              Width = 1430
              Height = 427
              inherited PNLConsultaProc: TPanel
                Top = 427
                Width = 1430
                inherited PBConsultaProc: TProgressBar
                  Width = 1430
                end
              end
              inherited PCConsulta: TdxPageControl
                Left = 40
                Width = 1390
                Height = 427
                inherited TSConsulta: TdxTabSheet
                  inherited DBGConsulta: TdxDBGrid
                    Width = 1390
                    Height = 427
                    KeyField = 'ID'
                    ShowSummaryFooter = True
                    OnDblClick = DBGConsultaDblClick
                    Filter.Active = True
                    Filter.Criteria = {00000000}
                    OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
                    object DBGConsultaDTCA: TdxDBGridDateColumn
                      Width = 74
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'DTCA'
                      SummaryFooterType = cstCount
                      SummaryFooterField = 'ID'
                      SummaryFooterFormat = '0'
                    end
                    object DBGConsultaCTNR: TdxDBGridPickColumn
                      Width = 80
                      BandIndex = 0
                      RowIndex = 0
                      OnValidate = DBGConsultaCTNRValidate
                      FieldName = 'CTNR'
                    end
                    object DBGConsultaARTIGO: TdxDBGridMaskColumn
                      Width = 100
                      BandIndex = 0
                      RowIndex = 0
                      OnValidate = DBGConsultaARTIGOValidate
                      FieldName = 'ARTIGO'
                    end
                    object DBGConsultaDESCRICAO: TdxDBGridPickColumn
                      Width = 300
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'DESCRICAO'
                    end
                    object DBGConsultaCOMPLEMENTO: TdxDBGridMaskColumn
                      Width = 100
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'COMPLEMENTO'
                    end
                    object DBGConsultaVUPKG: TdxDBGridMaskColumn
                      HeaderAlignment = taRightJustify
                      Width = 50
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'VUPKG'
                      DisableFilter = True
                    end
                    object DBGConsultaVULKG: TdxDBGridMaskColumn
                      HeaderAlignment = taRightJustify
                      Width = 50
                      BandIndex = 0
                      RowIndex = 0
                      OnValidate = DBGConsultaVULKGValidate
                      FieldName = 'VULKG'
                      DisableFilter = True
                    end
                    object DBGConsultaVUMKG: TdxDBGridMaskColumn
                      DisableEditor = True
                      HeaderAlignment = taRightJustify
                      Width = 50
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'VUMKG'
                      DisableFilter = True
                    end
                    object DBGConsultaQTRL: TdxDBGridMaskColumn
                      HeaderAlignment = taRightJustify
                      Width = 55
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'QTRL'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'QTRL'
                      SummaryFooterFormat = '0'
                      DisableFilter = True
                    end
                    object DBGConsultaPESOB: TdxDBGridMaskColumn
                      HeaderAlignment = taRightJustify
                      Width = 75
                      BandIndex = 0
                      RowIndex = 0
                      OnValidate = DBGConsultaPESOBValidate
                      FieldName = 'PESOB'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'PESOB'
                      SummaryFooterFormat = ',##,0.00;-,##,0.00'
                      DisableFilter = True
                    end
                    object DBGConsultaVPROD: TdxDBGridMaskColumn
                      DisableEditor = True
                      HeaderAlignment = taRightJustify
                      Width = 100
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'VPROD'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'VPROD'
                      SummaryFooterFormat = '$ ,##,0.00;-,##,0.00'
                      DisableFilter = True
                    end
                    object DBGConsultaVUCOTA: TdxDBGridMaskColumn
                      HeaderAlignment = taRightJustify
                      Width = 40
                      BandIndex = 0
                      RowIndex = 0
                      OnValidate = DBGConsultaVUCOTAValidate
                      FieldName = 'VUCOTA'
                      DisableFilter = True
                    end
                    object DBGConsultaVUTAXA: TdxDBGridMaskColumn
                      DisableEditor = True
                      HeaderAlignment = taRightJustify
                      Width = 45
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'VUTAXA'
                      DisableFilter = True
                    end
                    object DBGConsultaTSDE: TdxDBGridMaskColumn
                      DisableEditor = True
                      HeaderAlignment = taRightJustify
                      Width = 100
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TSDE'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'TSDE'
                      SummaryFooterFormat = 'R$ ,##,0.00;-,##,0.00'
                      DisableFilter = True
                    end
                    object DBGConsultaQTDE: TdxDBGridMaskColumn
                      HeaderAlignment = taRightJustify
                      Width = 80
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'QTDE'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'QTDE'
                      SummaryFooterFormat = ',##,0.00;-,##,0.00'
                      DisableFilter = True
                    end
                    object DBGConsultaTCDE: TdxDBGridMaskColumn
                      DisableEditor = True
                      HeaderAlignment = taRightJustify
                      Width = 65
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TCDE'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'TCDE'
                      SummaryFooterFormat = 'R$ ,##,0.00;-,##,0.00'
                      DisableFilter = True
                    end
                    object DBGConsultaFLAG: TdxDBGridMaskColumn
                      Visible = False
                      Width = 80
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FLAG'
                    end
                    object DBGConsultaC_ID: TdxDBGridColumn
                      Visible = False
                      Width = 119
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'C_ID'
                    end
                  end
                end
              end
              object SBEdicao: TSpeedBar
                Left = 0
                Top = 0
                Width = 40
                Height = 427
                Cursor = crHandPoint
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Position = bpCustom
                Align = alLeft
                Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
                BtnOffsetHorz = 4
                BtnOffsetVert = 4
                BtnWidth = 32
                BtnHeight = 32
                Images = ILEdicao
                BevelInner = bvRaised
                BevelOuter = bvNone
                TabOrder = 2
                InternalVer = 1
                object SSEdicao: TSpeedbarSection
                end
                object SIAppend: TSpeedItem
                  Action = ACTAppend
                  BtnCaption = 'Incluir'
                  Caption = 'Incluir'
                  Cursor = crHandPoint
                  Hint = 'Tecle [Ins] ou Click no bot'#227'o para incluir registros.'
                  ImageIndex = 0
                  Spacing = 1
                  Left = 4
                  Top = 4
                  Visible = True
                  OnClick = ACTAppendExecute
                  SectionName = ''
                end
                object SIEdit: TSpeedItem
                  Action = ACTEdit
                  BtnCaption = 'Alterar'
                  Caption = 'Alterar'
                  Cursor = crHandPoint
                  Hint = 'Tecle [Enter] ou Click no bot'#227'o para alterar registros.'
                  ImageIndex = 1
                  Spacing = 1
                  Left = 4
                  Top = 36
                  Visible = True
                  OnClick = ACTEditExecute
                  SectionName = ''
                end
                object SIDelete: TSpeedItem
                  Action = ACTDelete
                  BtnCaption = 'Excluir'
                  Caption = 'Excluir'
                  Cursor = crHandPoint
                  Hint = 'Tecle [Del] ou Click no bot'#227'o para excluir registros.'
                  ImageIndex = 2
                  Spacing = 1
                  Left = 4
                  Top = 68
                  Visible = True
                  OnClick = ACTDeleteExecute
                  SectionName = ''
                end
                object SIPost: TSpeedItem
                  Tag = 2
                  Action = ACTPost
                  BtnCaption = 'Salvar'
                  Caption = 'Salvar'
                  Cursor = crHandPoint
                  Hint = 'Tecle [Ctrl+S] ou Click no bot'#227'o para salvar edi'#231#227'o.'
                  ImageIndex = 3
                  Spacing = 1
                  Left = 4
                  Top = 100
                  Visible = True
                  OnClick = ACTPostExecute
                  SectionName = ''
                end
                object SICancel: TSpeedItem
                  Tag = 2
                  Action = ACTCancel
                  BtnCaption = 'Cancelar'
                  Caption = 'Cancelar'
                  Cursor = crHandPoint
                  Hint = 'Tecle [Esc] ou Click no bot'#227'o para cancelar edi'#231#227'o.'
                  ImageIndex = 4
                  Spacing = 1
                  Left = 4
                  Top = 132
                  Visible = True
                  OnClick = ACTCancelExecute
                  SectionName = ''
                end
              end
            end
          end
        end
        object DSPedido: TdxDockSite
          Left = 0
          Top = 0
          Width = 1434
          Height = 121
          Cursor = crHandPoint
          Align = alTop
          DockType = 0
          OriginalWidth = 1434
          OriginalHeight = 121
          object dxLayoutDockSite1: TdxLayoutDockSite
            Left = 0
            Top = 0
            Width = 1434
            Height = 121
            DockType = 1
            OriginalWidth = 300
            OriginalHeight = 200
          end
          object DPPlanilha: TdxDockPanel
            Left = 0
            Top = 0
            Width = 1434
            Height = 121
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ManagerFont = False
            AllowFloating = True
            AutoHide = False
            Caption = 'Planilha'
            CaptionButtons = []
            ImageIndex = 0
            DockType = 1
            OriginalWidth = 470
            OriginalHeight = 285
            object GBInfAdic: TGroupBox
              Left = 0
              Top = 0
              Width = 695
              Height = 95
              Align = alLeft
              Caption = '  Informa'#231#245'es Adicionais  '
              TabOrder = 0
              object LANome: TLabel
                Left = 19
                Top = 68
                Width = 32
                Height = 14
                Cursor = crHandPoint
                Caption = 'Nome'
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Transparent = True
              end
              object LATipo: TLabel
                Left = 27
                Top = 44
                Width = 24
                Height = 14
                Caption = 'Tipo'
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object LADEED: TLabel
                Left = 240
                Top = 92
                Width = 4
                Height = 14
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object LAEmpresa: TLabel
                Left = 5
                Top = 20
                Width = 46
                Height = 14
                Caption = 'Empresa'
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object EDNome: TdxMaskEdit
                Left = 53
                Top = 64
                Width = 640
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsFlat
                Style.ButtonTransparence = ebtNone
                Style.Shadow = False
                TabOrder = 2
                Alignment = taLeftJustify
                AutoSize = False
                IgnoreMaskBlank = False
                Height = 22
                StoredValues = 1
              end
              object IETipo: TdxImageEdit
                Tag = 1
                Left = 53
                Top = 40
                Width = 200
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 1
                Text = '0'
                AutoSize = False
                OnChange = IETipoChange
                DropDownRows = 15
                Descriptions.Strings = (
                  'Artigo'
                  'Produto'
                  'Categoria'
                  'Sub Categoria'
                  'Grupo'
                  'Sub Grupo')
                ImageIndexes.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5')
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5')
                Height = 22
              end
              object IEEmpresa: TdxImageEdit
                Tag = 1
                Left = 53
                Top = 16
                Width = 200
                Color = clGray
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 0
                AutoSize = False
                DropDownRows = 15
                Descriptions.Strings = (
                  '')
                ImageIndexes.Strings = (
                  '0')
                Values.Strings = (
                  '')
                Height = 22
              end
            end
            object GBInfCpl: TGroupBox
              Left = 695
              Top = 0
              Width = 735
              Height = 95
              Align = alClient
              Caption = '  Informa'#231#245'es Complementares  '
              TabOrder = 1
              object EMINFCOM: TdxMemo
                Left = 2
                Top = 19
                Width = 731
                Align = alClient
                Color = 16644596
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                ScrollBars = ssVertical
                Height = 74
              end
            end
          end
        end
      end
    end
  end
  inherited QEdicao: TIBQuery
    Left = 704
    Top = 376
  end
  inherited DTSCadastro: TDataSource
    Left = 736
    Top = 408
  end
  inherited TEdicao: TIBTransaction
    Left = 704
    Top = 344
  end
  inherited SQLEdicao: TIBSQL
    Left = 736
    Top = 344
  end
  inherited SPEdicao: TIBStoredProc
    Left = 800
    Top = 344
  end
  inherited TEvent: TIBTransaction
    Left = 832
    Top = 344
  end
  inherited SPEvent: TIBStoredProc
    Left = 864
    Top = 344
  end
  inherited EEvent: TIBEvents
    Left = 896
    Top = 344
  end
  inherited ILMenu: TImageList
    Bitmap = {
      494C01010B000E00040024002400FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000900000009000000001002000000000000044
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
      0000000000000000000000000000FFFDFE00FFFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003FAD670026A8550024A9550026A75600DDEBDD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000070CBEB002AB5E70030B7E90030B6E8002FB6E7002FB6
      E7002FB6E7002FB6E7002FB6E7002EB5E7002EB5E7002EB5E7002EB5E7002EB5
      E7002EB5E7002EB5E7002EB5E7002EB5E7002EB5E7002EB5E7002DB6E7002EB4
      E6002EB6EC002BB0B30028AF560032B1650032B2650031B25E002AAF820026B4
      F2008FD3EF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000057C3E800009FE40005A7E10006A7E10006A9E30007A7E10007A7
      E10006A6E10007A7E10007A6E10005A8E20005A9E20005A9E20005A8E10005A8
      E20005A8E10005A9E20005A9E20005A8E10005A9E20005A9E20008A7E10005A9
      E20002A8E70016AAB60036B760002FB569002FB569002FB6630024B1870003A8
      EE00009FE10083D3EF0000000000000000000000000000000000000000000000
      00000000000000000000F1F1F000F2F2F200F2F2F200F2F2F200F2F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F000F1F1F000F1F1F000F1F1F000F2F2
      F100F2F2F200F2F2F200F2F2F100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7F5FA0000A3E1000DABE20010ACE40010ABE3000EABE20010ABE30010AD
      E4000EABE20010ACE30010ADE4000EAAE20010ABE30011ADE4000EABE2000FAB
      E3000EABE20011ADE40010ABE3000EAAE20011ADE40010ACE3000EABE20010AC
      E4000EACEA001AB1B40032B866002FB76E002FB76F0030BA680025B68D000DAB
      EF0011ACE400009BDF00EEF8FD00000000000000000000000000000000000000
      000000000000F2F2F200EBEDEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ECEEF2000000
      0000000000000000000000000000EEEEF0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0F0F90000A5E40010ACE40011ADE50011ADE50010ACE40011ADE50011AD
      E50010ACE40011ADE50011ADE50010ADE40011ADE50011ADE50010ACE40010AD
      E40010ACE40011ADE50011ADE50010ADE40011ADE50011ADE50010ACE40011AD
      E5000FACEB001BB3B7002FBC68002BBB70002BBB70002CBC6C0026B78F000EAC
      F00013ADE700009FE000EFF9FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E1E0E000E7E6E600E1E0E000DBDA
      DA00D8D6D600D9D7D700E2E1E000F3F4F400F2F3F300F3F3F300F2F3F300F1F1
      F100EFF0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F0000000000000000000000000000000000000000000000000000000
      0000D3F1FA0003A7E40016AEE70017AEE70017AEE70017AEE70017AEE70017AE
      E70017AEE70017AEE70017AEE70017AEE70017AEE70017AEE70017AEE70017AE
      E70017AEE70017AEE70017AEE70017AEE70017AEE60017AEE70017AEE70017AE
      E70016ADEC001EB4B9002BC26C002AC074002AC0740029C0710025BB910015AD
      F10016AEE60000A3E200EFFAFD0000000000000000000000000000000000F1F1
      F10000000000B3AEA5008B65310093651F00986A25009B6F290096692400CFC2
      BA00EDE1E000EADEDF00EAE5E600E8E3E100E6E1DF00E4E2E000E4E4E300E3E2
      E100E2E2DE00EAEAEB00B1A18000876823008C702B008B6E2B00896F2C009172
      26009A7823009D7920009171260000000000F3F4F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6F6F600ADA8A800F7F6F600EBEAEA00E5E3
      E300E1DFDF00E2E0E000DCDAD900DBD9DA00D1CFCF00CECACB00D0CDCC00E2E1
      E000F2F0F000F1F1F100F1F1F100F2F2F200F2F3F300F2F2F20000000000F1F1
      F100F0F0F0000000000000000000000000000000000000000000000000000000
      0000D4F1F70009A8E4001DAEE6001DAEE6001DAEE6001DAEE6001DAEE6001DAE
      E6001DAEE6001DAEE6001DAEE6001DAEE6001DAEE6001DAEE6001DAEE6001DAE
      E6001DAEE6001DAEE6001CAEE7001AACED001AADED001AACED001AACED001AAC
      ED0019ACF3001FB5BE0028C26D0028C1770028C1760029C3730025BB950019AB
      F7001DADEE0000A2EA00FBFDFF0000000000000000000000000000000000F3F3
      F4000000000094734500976622009F723200A2743300A6793700A1722D00E4D5
      C700E6D0C400CCB19A00D0BBA700F4ECE600FFF7F600FFF9F700FFFCFC00FFFF
      FF00FFFFFF00FFFFFF00C2B08E008F69210096742A0095742B0097752B009A7A
      2F009D7C3100A17E2D009677330000000000F3F4F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100BEBABA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F8F8FC00F4F4F200F7F8F600F6F6F600F6F7F700F5F6F600F9F8
      F800EAEAEA00E0DFDF00DDDCDB00D7D5D400D1CECD00DAD8D600DBD8D700DFDC
      DC00ECEBEB000000000000000000000000000000000000000000000000000000
      0000D5F1F8000AA8E5001EAFE7001EAFE7001EAFE7001EAFE7001EAFE7001EAF
      E7001EAFE7001EAFE7001EAFE7001EAFE7001EAFE7001EAFE7001EAFE7001EAF
      E7001EAFE7001EAFE6001FADEC0023B9BA0022BAB20022BAB30022BAB30022BA
      B30022BAB70025BD9F0025C5760026C5790025C5790026C5780024C18A0021B9
      B90023BAB40012B5B20082DDBB008EE0BB00000000000000000000000000F3F4
      F60000000000956D39009B6B29009E713300A1733400A57738009F723100DECD
      C300C3A28800946935009B754800E4D6CB00FDF0EF00FAEDEA00FBF1F000FCF7
      F500FDFBFA00FFFFFF00BBA78B00815C1E008A66280089672B008B692A00916F
      2D0096752F009A752C009171300000000000F3F4F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBEAE900CCC9C900FFFFFF00FDFDFD00FEFE
      FE00FFFFFE00E4E3F8007B71DF00FFFFFF00FEFEFD00FDFDFD00FAFAFA00FBFC
      FC00FBFBFB00FDFEFE00FEFEFE00FCFCFC00F8F9F900FAFAFA00F6F7F700E8E8
      E800EDEDED000000000000000000000000000000000000000000000000000000
      0000D8F2F9000EA9E60024AFE90024AFE90024AFE90024AFE90024AFE90024AF
      E90024AFE90024AFE90024AFE90024AFE90024AFE90024AFE90024AFE90024AF
      E90024AFE90020AFF20024BEA60022CC6B0025C9750025CA730025CA730025CA
      730025CA730025C9780025C87D0025C87D0025C87D0025C87D0025C87A0025CA
      730025CA730026CA730015C5730014C57300000000000000000000000000F3F4
      F5000000000098703D009C6929009F713300A2743500A6763800A1733100DECA
      C200C09F87009065360098734A00E4D1C700FCEBE800F7E8E400F9ECEA00FAF1
      EF00FCF5F300FFFFFF00B6A58B007A521A00825B2600825C2700845E26008A67
      2A0094712E00947029008D6D300000000000F3F4F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DFDEDF00E0DEDE00FFFFFF00FEFEFE00FCFC
      FC00FEFEFC00F5F4FB007E75E100A79FEB00FFFFFF00FAFAFA00FBFBFB00F9F9
      F900FAFAF900FAFAFA00F8F8F800F8F8F800F7F7F700F7F7F700F9F9F900F6F7
      F700EFEFEF000000000000000000000000000000000000000000000000000000
      0000DAF1F90013ABE80024B2E90024B2E90024B2E90024B2E90024B2E90024B2
      E90024B2E90024B2E90024B2E90024B2E90024B2E90024B2E90024B2E90024B2
      E90024B2E9002AAFF20024C4960022CB7F0023CB7F0023CB800023CB800023CB
      800022CB800023CB7F0022CB7F0022CB7F0022CB7F0022CB7F0023CB7F0023CB
      800023CB800023CB800023CB7F0024CB7F00000000000000000000000000F3F4
      F500000000009A713E009E6A2B00A2713300A4723500A7773900A2703400D5C8
      BE00BD9C85008B61380094714E00E4CAC100F9E3E000F6E2DC00F7E6E300F8EB
      E800F9EEEC00FFFFFF00B4A08800714817007A5121007B5422007B5323008560
      2800926E2F00906B28008B69300000000000F3F4F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DBDADA00E6E5E500FFFFFF00FDFDFD00FBFB
      FB00FDFDFD00FFFFFF004C3DD8004435D700FFFFFD00FDFDFC00F9F9F900F9F9
      F900FAFAFA00F9F9F900F8F8F800F9FAF800F9FAF700F8F8F800F8F8F800F0F0
      F000EFEFEF000000000000000000000000000000000000000000000000000000
      0000D9F2F90017ACE7002BB3EB002BB3EA002BB3EA002BB3EA002BB3EA002BB3
      EA002BB3EA002BB3EA002BB3EA002BB3EA002BB3EA002BB3EA002BB3EA002BB3
      EA002BB3EA002CB1F50025C7990020CC810020CD810020CD820020CD820020CD
      820022CD820020CE810023CD820021CD820021CD810021CD82001FCD810021CD
      820020CD820020CD820020CD820020CD8200000000000000000000000000F3F4
      F500000000009C723F00A06A2C00A4713500A6743700A9783A00A4723400CAC0
      B500AE947E00855C37008F6D4E00E0C4BA00F9DED800F5DCD700F5E0DD00F7E5
      E200F8E9E500FFFFFF00B19D89006A411400734A1F00744B2000744C20008259
      2700906C2F008E68280088663000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E0DFDF00EBEAEA00FFFFFF00FBFBFB00FDFD
      FD00F8F9F800EBEADE00A299DC000000CB00C2BCED00FDFCF400F8F8F800FCFD
      FD00FDFDFD00FBFBFB00FEFEFA00F6F6F700E2E0F500FBFCF800F5F5F500F4F4
      F400EFEFEF000000000000000000000000000000000000000000000000000000
      0000D8F2FA001EAFE7002DB4E9002EB4E9002EB4E9002EB4E9002EB4E9002EB4
      E9002EB4E9002EB4E9002EB4E9002EB4E9002EB4E9002EB4E9002EB4E9002EB4
      E9002DB4E90030B1F10034CBAB003CDB8A001BCC7E001BCE80001CCE80001BCE
      80001DCF81001CCC830021CF860021CF860021CF850021CF860022CE84001DCE
      80001BCE80001CCE800012CA7E0011CB7F00000000000000000000000000F2F4
      F500000000009E744000A36C2B00A6723600A7753800AB783C00A5723600C6BB
      B100A78C77007D55340088684C00DEBFB300F9D8D200F3D7D000F5DBD700F5E0
      DC00F7E3DF00FFFDFE00AF9B8800653A12006D431D006E461E006D441E007D55
      250091692E008D63270087642F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E3E2E200EEEDED00FDFDFD00FCFCFC00FEFE
      FE00E4E3E300DFDEDA00FDFBF0000000C4002C16CF00FFFFE500DEDBDC00DDDA
      D900DBD9D900EDEDDF00FFFFEC005D4EE900B7B1ED00FFFFF700F6F6F600F0F0
      F000EFEFEF000000000000000000000000000000000000000000000000000000
      0000D9F3F90024AFEB0031B4EB0031B6E90031B6E90031B6E90031B6E90031B6
      E90031B6E90031B6E90031B6E90031B6E90031B6E90031B6E90031B6E90031B6
      E90031B6E90032B6E9002CB5E60041D0B10059DABC005ADABD005AD9BE0059D9
      BE005DDABE004EDAAA0019CF88001FD18A001FD18A001AD2860039D698005DD9
      C2005CDABE0051D6BA00A2F1CA00AAF1CC00000000000000000000000000F2F4
      F50000000000A2764100A66E2C00A8733600AB763800AD793C00A7733600C3BD
      B700BFAFA300A48B7C00B19F9200DBC7C000F3D7D500FADBD900FADFE000FCE5
      E500FDE8E900FFFFFF00AC97890057300D0060381800613A1A0060391900774F
      230092692E008B62270087622F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8E8E700F4F4F300FEFEFE00FAFAFA00FFFF
      FF00CFCCCB00FFFFFF00FFFFFF00736CDF000000C700C4BDF500FFFFFF00FDFD
      FE00FFFFFF00D6D3F7001F09E1007B70E500FFFFF900F7F7F700F2F2F200EFEF
      EF00F0F0F0000000000000000000000000000000000000000000000000000000
      0000D6F2F90038B8ED0036B3EB0037B7EA0038B7EA0038B7EA0038B7EA0038B7
      EA0038B7EA0038B7EA0038B7EA0038B7EA0038B7EA0037B7EA0038B7EA0038B7
      EA0038B7EA0038B7EA0037B7EB0034B7F30031B3EC0032B3EE0032B2F00032B2
      EF0033B1F6002ABFCA0020D5850021D28C0022D38C001FD3850021CBA80034AF
      F80034B2F00013A9EE00FAFBFF0000000000000000000000000000000000F2F4
      F50000000000A5774300A96F2D00AB753800AD783A00AF7A3C00AD793C00A988
      6900B8997900B9997D00C4AA9200B0937400A9856200B1876600AF886800AE8A
      6900AD8A6A00B39375008F6A470070461C00734B2100724A2200714A21007F56
      270090662E008B60270086612F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECEBEB00F8F7F700FBFBFB00FCFCFC00FFFF
      FF00C8C5C400FFFFFF00FFFFFA00BEBBF0000000CA003228D900FFFFFA00FFFF
      FC00D3CEF4000000DB001E09E600EDEDE400FEFEFA00F4F4F400F7F6F600F1F1
      F100EFEFEF000000000000000000000000000000000000000000000000000000
      0000E8F8FC0032B6EA0078D6F1002FB1EB0031B2EB0031B3EB0032B3EB0031B3
      EB0031B3EB0031B3EB0031B3EB0031B3EB0032B3EA0034B6EC0035B6EA0039B8
      EB0039B8EB0039B8EB0039B8EB0039B7EB0039B8EC0039B8EC0039B8EB0039B8
      EB003BB6F00030C3C5001AD887001ED68F001ED68F001AD68A0023CDA5003BB5
      F4003BB7EB001CADE700F1FAFD0000000000000000000000000000000000F2F4
      F50000000000A87A4400AC712F00AF773800B0793B00B17B3D00B27F4300AD79
      3E00B07F4600B4865000BB926400AA7B45009761210093602200915E21008E5C
      20008B5B1E0089591C008E5F250093662E0091652D0090642D008F642D008F63
      2D008E632D008C5F260086603000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBEAEA00FCFCFC00FCFCFC00FBFBFB00FFFF
      FF00CAC6C500FFFFFF00F9F9F900FFFFFE005353DB000000CF009991E9009488
      EA000000D6001D0AE000F4F3F800EDEDE300F7F7F700F5F5F600F5F4F400F3F3
      F300EFEFEF000000000000000000000000000000000000000000000000000000
      0000FFFBFC002CA7E70061CBF20095E4FA0084DDF70087DDF80085DDF80086DD
      F80085DDF80088DEF60089DEF60087DFF80088DDF90088DAF50061CAF20035B4
      EC003CB7EC0041B9EC0041B9EC0041B9EC0041B9EC0041B9EC0041B9EC0041B9
      EC0042B8F10032C4C70018D886001AD68D001AD58D0018D78B0023CFA70044B7
      F50043B9ED0025AFE800F2FAFD0000000000000000000000000000000000F2F3
      F50000000000AC7C4600AF743000B2793A00B37B3A00B47E3F00B5804400B785
      4A00B9895200BB8E5A00C19A6D00B98C5900A6713400A3713400A16F33009F6E
      32009D6B33009A6A3200976831009567310093662E0092642F0091642D009063
      2D008E622C008C5E250086603100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBE9E900FDFEFE00FCFCFC00F9F9F900FFFF
      FF00CCCACA00FFFFFF00F9F9F900FFFFFB00EEEAF6000000CE001D05D7000400
      D7000000D800E9E7F600FFFFF300E8E8E800F7F7F700F3F4F300F4F4F500F3F3
      F300EFEFEF000000000000000000000000000000000000000000000000000000
      0000000000000767BD00279EE00037B4E9004DC1EF0046B6E20050C4F0004AC0
      EC0049BDE9004BBDEF0047BAEE0047B2DE004ABFEF0039BAF40062CEF9009BE6
      FA0047BCEF003FBAED0042BBED0042BBED0042BBED0042BBED0042BBED0042BB
      ED0044B9F30034C5C90018DA88001BD88F001BD88F0018DA8C0024D0A80045B8
      F50045BCEE0029B1EB00F2FBFD0000000000000000000000000000000000F2F3
      F50000000000AF804800B3763000B57C3B00B4783400B5753000B4783600B57D
      3A00B7814300B9864C00BD8F5C00BA8A5700A26926009F6523009D6322009861
      210095602000935E2100915B1E008F5A1E008B581D008A581D0088561D008A5B
      240090642F008D5E2600885F3000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECEBEB00FEFFFF00FAFAFA00FBFBFB00F9F9
      F900D1CFCE00FFFFFF00FDFDFA00FFFFFC00D4D8F1000800D1001900D7002513
      DB00F6F4F800FFFFF900EBEBEB00EFEEEE00F5F5F500F5F3F500F5F5F500F2F1
      F200EFEFEF000000000000000000000000000000000000000000000000000000
      0000000000000A75CA000065C400E2E5E800FFF5F000FBE4D800DAB6A500FFDF
      CF00FFEFE500FFF4E000D9AF9700FFEFE500DFB7A000DBBFAA00A7C8D5003BB6
      E9008FE1FA0046BBEC0046BCEE0046BDEF0046BDEF0046BDEF0046BDEF0046BD
      EF004ABBF30036C8CA0014DB8C0019D9920019D9930018D98B0024D0AA004ABA
      F70048BCEF002CB2EC00F2FBFD0000000000000000000000000000000000F2F3
      F50000000000B4844B00B87A3100B77A3300BD8D5400C6A27800C7A27600C7A4
      7B00C8A67F00CAAA8500CDAF8D00D0B69600BE9B6F00BC986D00BA976D00BB98
      6D00BA986E00BA976C00B7966E00B6966C00B7956D00B6956D00B7987000A47F
      50008B5B23008D5E2700885F3000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEEEE00FCFCFC00FAFAFA00F9F9F900F5F6
      F600D5D2D200FFFFFF00FFFFFC005042D9000400CD000000CF000700D5000E00
      D900B5B6EE00FFFFFA00E7E6E700F1F1F100F4F4F500F5F5F500F4F4F400F0F0
      F000EFEFEF000000000000000000000000000000000000000000000000000000
      0000000000000074CF0065A7D900FFF8EF00EAE9EA00EEEFF000F4F6FB00D9D3
      D100D0C1B300D4C2B300E3E0DA00EFF0F000ECF4F500E3DCDB00BE9A7D00EEDB
      CD0063C4F80086DEF60044B6EE004CBAEE004DBCEF004DBCEF004DBCEF004DBC
      EF004CBAF3004DCFD4000CD8860014D9900013D890000ED98A0037D6AE004FB8
      F6004EBCEF0032B2EC00F0F9FC0000000000000000000000000000000000F2F3
      F50000000000B8894D00BC7F3300BA762800D0B69600F3FFFF00F2FAFE00F3FA
      FF00F7FDFF00F7FDFF00F9FFFF00FCFFFF00FCFFFF00FDFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6C6
      B000824D10008F5F280089603200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00FCFCFC00F9F9F900FBFBFB00F1F0
      F000DDDCDA00FFFFFF001F19CE000000CB001811D200D9D4F500978DE9000000
      D5000000D700F5F3F900EAEAE100F6F6F600F5F4F500F3F4F300F2F2F200F1F1
      F100EFEFEF000000000000000000000000000000000000000000000000000000
      0000000000000072D600FCF6EC00EDEDEC00EDEDEC00EDEFF200E2DAC900C0A7
      7200EDF0F000CEC0B200CDC4B800F0F3F600F2F3F400D9CCC500E2DBD400DBD4
      C800D7B89F004ABDEF007FD8F50044BBEF004FBEEF004FBFF1004FBEF0004FBE
      F0004FBEF1004BBBED004EEC9E0044E99D0048E89F004CEB9B0055CCD8004EBC
      F3004FBEF0003AB6F000E2EFF70000000000000000000000000000000000F1F3
      F50000000000BE8E4F00C1843600BE7C2B00CCAD8700EAEBE900E6E3DD00E8E4
      DF00EAE6E100EBE8E300EDEBE600F0EEEA00EFEBE700ECE8E400EEEBE600EFEC
      E700EFEDE900F0EEEA00F3F1EC00F4F2EE00F6F3EF00F5F3F000FCFEFF00CAB2
      9800844F13008F5E28008A5F3300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200FBFBFB00F9F9F900FBFBFB00F4F3
      F300C4C0C100DBDACB00726DC2003B2AC600EBE9EC00FFFFFD00FFFFFF002920
      E0000300DA003931E600F7F6DF00FCFCF900F4F4F400F3F3F400F3F2F200F3F2
      F200EFEFEF000000000000000000000000000000000000000000000000000000
      00000000000096C2E800F9F1EC00ECEDED00EDEDED00EFF2F800D4B47400B580
      1F00AE883300F5FDFF00F2F2F500C7B7AB00DDD7CF00CABBAE00C8C7BF00A59E
      9400E8E2DE00C7C9C60060CCF7006DCDF4004DBCF00053BEF00055BFF00055BE
      F00054BEF10057BEF30052C0EF004BC1E4004BC3E4004DC1E80055BAF70055BF
      F00052BDF10049BEEF00D6E6E80000000000000000000000000000000000F1F3
      F40000000000C3935200C7893700C4812B00CEAF8A00EDEFF000EAE8E300E9E7
      E300E9E7E300EAE9E400ECEBE700EEEDEA00F0EFEC00ECE9E600EDECE800EEED
      E900EFEDEB00F0EFEC00F2F1EE00F4F2EF00F4F2F000F5F3F100FAFCFD00C9B3
      9800875014008F5F27008A613300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F300FAFAFA00FAFAFA00FAFAFA00F6F6
      F600F5F5F500F8F8F800FFFFFA00FFFFF300E7E5E100D5D2D200D7D4CF00E4E2
      D8002414DB000000DE002D24DB00FFFFF700F8F9F400F3F2F200F3F2F200EFEF
      EF00F0F0F0000000000000000000000000000000000000000000000000000000
      000000000000FFFDF500EBEBEC00ECECEC00EDEDED00ECEDED00EDEFF400E4CC
      9800DFD0B500F0F3F600B28F4800E5DBCE00DAD9D300CBB8AE00E9E7E300D2D5
      CF009F998A00C0B7A500A5CFE60078D6FE007DD5F4004EBFEE0051BDF10052BE
      F00052BEF00052BEF00053BDF10055BDF20055BDF20053BDF20052BEF00050BC
      F0005DC6F10065CAF600D3E5E900FCF5F800000000000000000000000000F1F2
      F40000000000C9995400CC8F3900CA882C00CFB18B00EFF1F200EBEAE600EBE9
      E500EAE8E400E9E8E400EAE9E500ECEAE600F0EFEB00EBE8E500EBE9E500ECEA
      E600EEEBE800EEECE900F0EEEB00F1EFEC00F1EFEC00F1EFED00F6F8F900C6AF
      9500885115008F5E28008B623400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200FAFAFA00F9F9F900F8F8F800F8F8
      F800F7F7F700F8F8F800F9F9F900F8F8F800FBFBFB00F5F5F500F6F6F600FFFF
      F500E1DFEF000000DC000000DD004635E800E6E6F000F5F4F200F3F2F200EFEF
      EF00F0F0F0000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F4F400EDEDED00ECECEC00EBEBEB00EBECEC00EDF0
      F700EFF2FA00E1D5B500C2902E00A7751100E2DFD700F3FBFF00DAD2D100D1C4
      B500EEECEE00BFBEB400E6D7C80075BAD8005ECCF70098E3F8008FDDF80084D8
      F70085D9F80085D9F80085D9F70085D8F70085D8F70085D9F80085D8F8008ADB
      F70091E2FA0040B7EF00E7ECEB00F2F0F000000000000000000000000000F1F2
      F40000000000CFA05600D2963B00D0902F00D0B38C00F1F2F300ECEAE600EDEA
      E600EBE9E500EBE9E400EAE9E400EBE9E400ECEBE600EEECE900E7E5E000E9E7
      E200EBE8E400ECE9E500EDEBE700EDECE800EDECE800EDEBE700F1F2F200C3AC
      920089541600905F27008C63350000000000F3F4F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F300FAFAFA00F8F8F800F9F9F900F6F6
      F600F8F8F800F7F7F700F6F6F600F6F5F600F5F5F500F6F6F600F4F5F400F3F4
      F500FFFFF600F2F1F000D8D5EF00FFFFF200F7F6F300F4F3F300F3F1F100EFEF
      EF00F0F0F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F900EDEDED00EFEFEF00ECECEC00ECEC
      EC00ECECEC00EDEFF600EFE6D400D8BE8D00F5FDFF00BF9F6100C6AC7800EAEB
      EE00D1C3B500D9CEC400D3C4B700F6ECE200A7D9FC0044B8F00056C5F8006CCE
      FE0067CAFC0065C8F70063C8F50066C9F50066C9F50067C8F60067CDFF0066CC
      FF0044B7F7009BD4F100F8EFEB00ECECEB00000000000000000000000000F1F2
      F40000000000D3A55900D79E3B00D6973000D2B48E00F5F6F900EFEEEB00EFEE
      EA00EEEDEA00EDECE900EDECE800ECECE900ECEBE700EEEDEA00E9E8E300E7E6
      E100EAE9E400EAE8E500EBEAE600EBEAE700EAE9E500E9E9E500EDEEF000C1AA
      91008E571900916129008E65360000000000F3F4F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200FBFBFB00F7F7F700F5F5F500F8F8
      F800F8F7F800F6F6F600F6F6F600F7F7F700F8F8F900F3F3F300F4F5F500F4F5
      F500F4F4F400F5F6F300F7F6F200F4F3F200F2F2F300F4F2F200F2EFEF00EFEF
      EF00F0F0F0000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F3F300EEEEEE00EEEE
      EE00ECECEC00EDEDEC00EBEEF200F3F2FA00EEECE600CBA54F00B3822200D3BD
      8E00F7FDFF00E4E3DD00DED8D300F1F7FC00D7BA8F00F6F2EE00B4D3DE0086AE
      A60091B8B400A3D7F200A7D4EF00A4D5F000A4D5F100A4D9F20087A6940085A2
      8E00CBCEB400FEF4F400ECECEC00EBEBEB00000000000000000000000000F0F2
      F40000000000D8AC5B00DCA53C00DB9F3100D2B68E00F5F7F900F2EFEB00EFEE
      EA00F0EDEB00EEECE900EDEDE800EDEBE900EDEBE800EDEBE800EEECE900E5E3
      DE00E7E5E000E7E5E000E8E6E100E7E5E100E6E4E100E6E5E100E9EAE900BDA7
      8C008F5A1800916428008F69370000000000F3F4F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00EEEEEE00EEEEEE00F3F3F300F6F6
      F600EFF0EF00F5F5F500F5F5F500EEEEE600F5F2DC00F8F9F900F5F5F500F3F3
      F300F3F3F300F3F2F200F3F3F300F4F3F300F3F2F200F3F1F100F1F0F000EFEF
      EF00F0F0F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00F5F5
      F500EEEEEE00EDEDED00ECECEC00EBEBEC00EEEEF000FAF7F700C2B18D008789
      8D00D2D2D200FDFDFD00F1F7FB00D4BD9700AD7E0C00EBEAEC00E1CBA500B67D
      1100AF7A1100F3F1E600F6EEEE00F6F0ED00F5EEEC00F7F0F300EACFA600EED9
      AF00F2F0F200ECECED00EBEBEB00ECECEC00000000000000000000000000F0F1
      F40000000000DCB55D00E0AC3F00E1A93300D4BA8F00F7F8FC00F3F2EF00F2F1
      EE00F1F0EC00F1EFEC00F0EEEB00EFEEEA00EFEDEA00EFEDEA00EFEEEC00ECEB
      E700E5E1DC00E5E2DD00E4E1DD00E3E1DE00E2E0DB00E0DED900E0E0E100B9A3
      890094611B0095672900936D390000000000F3F4F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F000F0F0F000F0F0F000EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00F7F7F400B6B2C300211AA500FFFFEE00F7F7F600F2F3
      F300F3F2F200F3F1F100F4F3F300F4F2F200F2F1F100F2F1F100F2F1F100EFEF
      EF00F0F0F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00EEEEEE00EEEEEE00EDEDED00EBEBEB00FAFCFB0066696C007170
      72006262620086858600DCE0E200E6D3B000E4CFA800EDEFEE00E6DFCF00E0C7
      9500DEC49100EBEBEF00EDEDEC00EDEDED00EBEBEB00EAEBEA00F0F1F300ECEF
      F400EBECEB00EBEBEB00EBEBEB00F0F0F000000000000000000000000000F0F1
      F40000000000E1BE6000E4B73F00E4B13500D5BC9300FAFDFF00F6F5F400F5F4
      F300F4F3F200F3F2F100F1F1EF00F2F1EE00F1F0EE00F0F0EE00F1EFED00EFF0
      ED00EAEAE700E4E4DF00E2E2DD00E1DFDC00DEDDD900DBD9D600DADBDC00B5A1
      850098671D00976A2A0095713B0000000000F3F4F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000FFFFF300615FCD000000CE00C7C7F600F4F4EF00EFEF
      EF00EFEFEF00F2F1F100F1F0F000F1EFEF00F1F0F000F1F0F000F0EFEF00EFF0
      F000F0F0F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EEEEEE00EBEBEB0000000000919192003D3D3D004C4C
      4C0080808000BABABA00E6E6E600EFF1F600EEF1F600EDEDEE00EEEFF100EEF2
      F900EFF2F900ECECED00EDEDED00EDEDED00EDEDED00EDEDED00ECECEC00ECEC
      EC00EEEEEE00F0F0F000FAFAFA0000000000000000000000000000000000F0F1
      F40000000000E3C46100F0C84200EDC23700D3BD9100FAFAFC00F7F4F200F6F4
      F100F5F1EE00F4F1ED00F3F0EC00F1EFEB00F1EFEB00F0EFEB00F0EEE900F0EE
      E900EEEDE900E7E4E000E2DED900DEDBD500D9D6D100D5D2CB00D0D1CF00B19C
      8100A1712100A0752C009A773C0000000000F3F4F50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000FFFFF200493DD700736EF000FFFFF300F0F0EF00F0F0
      F000F0F0F000EFEFEF00EFEFEF00EFF0F000EFEFEF00EFEFEF00EFF0F000F0F0
      F000F0F0F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFEFEF00ECECEC00E7E7E7007A7A7A00CECECE000000
      0000FBFBFB00F2F2F200EDEDED00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00ECECEC00ECECEC00EBEBEB00EDEDED00ECECEC00EDEDEC00EFEF
      EF00F9F9F900000000000000000000000000000000000000000000000000F0F1
      F40000000000EACD6400BB9D3700D7B23100D6C39500FEFFFF00FAF9F800F9F8
      F700F8F7F500F7F6F400F6F5F300F5F4F200F4F3F100F3F3EF00F2F1EE00F1F0
      ED00F0EFEC00EDEDEB00E5E3E000DDDCD800D7D6D200D0CFCB00C8C9C900AF9C
      7E00986F200081612500A17F410000000000F2F3F50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F4F400EDEDED00EFEFEF00FDFDFD00F3F3F300EEEE
      EE00ECECEC00EDEDED00EDEDED00EDEDED00EEEEEE00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EEEEEE00EAEAEA00EDEDED00F8F8F8000000
      000000000000000000000000000000000000000000000000000000000000F0F1
      F40000000000EBCD5500AE932100D3AF1E00D1BE8A00FDFFFF00F9F9FB00F8F8
      FA00F7F7F900F6F5F700F5F4F500F4F3F400F3F2F300F1F1F100F0EFEF00EEED
      ED00EBEBE900EBEAE900E7E5E300DCDBD800D0CDCB00C8C6C400BBBDBD00A591
      6E00986E0E0079591200A07D330000000000F2F3F50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00FEFEFE00FDFDFD00FDFDFD00FDFD
      FD00FCFCFC00FDFDFD00FDFDFD00FDFDFD00F3F3F300EBEBEB00EBEBEB00EBEB
      EB00ECECEC00ECECEC00EBEBEB00EFEFEF00FCFCFC0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F200EFECE300ECDDA100EEDB8B00F1DD8C00D6C69900DBCFB100DACDAD00D9CC
      AD00D9CBAD00D8CBAC00D7CAAB00D7CAAC00D7CAAD00D6CAAE00D7CAB000D7CB
      B200D7CCB300D8CDB600DACEB900D9D0BD00CBBFA700C3B59B00BFB39B00BBAB
      8B00CBB47D00C5AF7B00C4B2890000000000F1F2F30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00E9E9E900ECECEC00ECEC
      EC00EBEBEB00F5F5F500FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0EFEC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEEEEC0000000000EDEDEB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F200ECECEC00F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F100F0F0F100F0F0F100F0F0F100F0F1F200F0F1F200F0F1
      F200F0F1F200F0F1F200F0F1F200F0F1F200F0F1F200F0F1F200F0F1F200F0F1
      F200F0F1F100F0F1F100F0F1F100F0F0F100F0F1F200F1F1F200F1F1F200F0F1
      F200F0F1F100F0F1F100F0F0F100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700E6E6E600E5E5E500E4E4
      E400E2E2E200E2E2E200E2E2E200E3E3E300E2E2E200E3E3E300E2E2E200E2E2
      E200E6E3E500DCE2DF00BEDFCB00C6DFCF00E8E6E700F2F1F200FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F30000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900F6F6F600F5F5F500F4F4
      F400F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F2F2F200FDFDF700E3E3
      ED00DFDFEB00FFFFF900F4F4F400F6F6F600F6F6F70000000000E3E3EE00E7E7
      F100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC0000000000FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FEFDFE00FFFEFF00FFFFFF0000000000FDFE
      FE0000000000FCFCFC0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00B9B9B900BABABA00BBBBBB00B8B8
      B800B8B8B800B8B8B800B7B7B700B7B7B700B7B7B700B7B7B700B8B8B800B7B8
      B700CFBBC70041A9690014A54B0013A44B0087B19800E2DBDF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200BCBCBC00BFBFBF00BEBEBF00BEBDBF00BDBDBF00BDBDBF00BDBDBF00BDBD
      BF00BDBDBF00BDBDBF00BFBFBF00BFBFBE00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BEBEBE00C2C2C200F9F9F900FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700C7C7C700C3C3C300C2C2C200C0C0
      C000C1C1C100C0C0C000C0C0C000C0C0C000C0C0C000C6C6C200C8C8C3000505
      790001017800CCCCC200D0D0C700C1C1C200CDCDC700D2D2CE00171781001616
      8100E6E6F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEDEDE00CBCBCB00CCCCCC00CACACA00C8C8C800C8C8C800C6C6C600C6C6
      C600C6C6C600C5C6C600C7C5C600E0C8D6007BBC930078BC9200E4CCD900CCCD
      CD00CCCCCC00E8E8E800FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600B9B9B900C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C1C1C100C0C0C000C0C0C000C0C0C000BFC0
      BF00DBC2D10037B76E0029B668001FB5610083B99B00D7CDD300FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200BCBCBC00C1C1C100C2C3C300C8C3BB00C7C3BD00C7C3BD00C7C3BD00C7C3
      BD00C7C3BD00C9C4BD00C2BEBB00D2D3D500C6C5C600C0C1C100C1C1C100C1C1
      C100C0C0C000C4C4C400FAFAFA00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100BEBEBE00C2C2C200C3C3C300C4C4
      C400C3C3C300C4C4C400C4C4C400C3C3C300C3C3C400D2D2C8001C1C82000000
      7C0003037F0003037A00ACACB800DFDFCC00C1C1C0000000710001017D000000
      74003F3F94000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00C2C2C200BBBBBB00BEBEBE00BEBEBE00BFBFBF00BFBFBF00BEBEBE00BFBF
      BF00BEBFBF00C9C0C500C6BFC20035B56E0017B35B0018B35C0053B67F00D5BE
      CA00BCBBBB00CACACA00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8E8E800B8B8B800BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BEBF
      BE00DAC1CE0035BB740026BA6C001DBA660083BC9E00D8CED300FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200BDBDBD00C0C0C100BCBFBC00AAA49A00AEA89F00AEA89F00AEA89F00AEA8
      9F00AEA79E00BAB1A70076726D00413E3E00B4B1B000C5BEBD00C0BEBD00C1C1
      C100BFBFBF00C3C3C300FAFAFA00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F300BEBEBE00C2C2C200C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C3C3C300C3C3C300CDCDC5008888BB000000
      75000B0B8700020288000D0D87009C9CB4001A1A8B00040489000D0D89000000
      7600A3A3D3000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00C3C3C300BEBEBE00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00C0C0
      C000D6C0CB00ACBFB4002DBB72001EBB6A0029BB70002ABC700017BA650068BE
      9100D7BFCA00CCCBCB00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EAEAEA00BEBEBE00C5C5C500C5C5C500C5C5
      C500C5C5C500C5C5C500C5C5C500C5C5C500C8C5C600D6C5CE00D4C5CC00D3C5
      CB00F2C7DB0035BF7C0022C0720018BF6D008EC0A800EFD6E200FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F300C2C2C200C5C5C500C8C8C800CECECF00CCCDD000CCCDCF00CCCDCF00CCCD
      CF00CCCCCF00D5D5D800ABACAA0028383D00B9E0ED00C8E8F300CBD3D400CEC4
      C200C4C5C500C9C9C900FAFAFA00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F300C1C1C100C5C5C500C5C5C500C4C4
      C400C4C4C400C4C4C400C5C5C500C4C4C400C4C4C400C4C4C400E3E3CC005757
      AF00000084000E0E8E000C0C900000008800090990000E0E8F0000007E006F6F
      BE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00C6C6C600C1C1C100C5C5C500C4C4C400C4C4C400C4C4C400C5C4C500D0C2
      C7007EC2A20001C2660023C378001FC2740026C97C0022C6790023C2780012C3
      6F0045BF8500E5CEDA00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBEBEB00C3C3C300C9C9C900C9C9C900C9C9
      C900C9C9C900C9C9C900C9C9C900CBC9CA00D2C8CC0046C68A004FC6900050C6
      8F005AC6940027C47A0023C47A0020C478003FC5870059CA940061D6A00055D2
      97009BE4C3000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F300C5C5C500CACBCC00C5C3C3009F978600A39E8D00A39E8D00A39E8D00A39E
      8D00A39E8D00A49E8B00A49C8E00A9E8FF00B9DFF500C6E6F5005BC8F70094BF
      CF00DACBC500CBCDCD00FAFAFA00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F4F400C6C6C600C7C7C700BCBCBC00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00CACACA00C8C8C800C8C8C800C9C9C800D8D8
      CF005A5AB40001018E0011119700111198001111970002028F004E4EB7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00CBCBCB00C7C7C700B9B9B900B6B6B600B6B6B600B5B6B600C7B3BC005ACB
      970006CA720022C97E0011C6760034D68A00B1CEBF006CD2A30010CC780021C8
      7E000DC8730065D3A100FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDEDED00C6C6C600CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CBCCCB00DACDD3008CCCAF0000C870001CC97B001BC9
      7B0019C97B0020CA7E0022CA7F0022CA7F001DC97C0019CA7A0018C7790019C8
      79000CC471000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F4
      F400CACACA00CDCDCD00D0D1D200DADADD00D9DADE00D9DADE00D9DADE00D9DA
      DE00D9DADE00D7D7DB00E0D7D5008DCAEF0091D0F10048BCED004EBBEE0030B4
      EC00B3C8CF00D5D2D000FAFAFA00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F4F400C9C9C900CDCDCD00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CDCDCD00CDCDCD00CDCDCD00CCCCCD00DBDB
      D000D7D7CF000000970012129E001212A10011119F0016169C00D6D6EA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00CFCFCF00CACACA00CECECE00CECECE00CECECE00CECFCE00D4CDD100B8CF
      C4002DD68D0011D07F004DDA9C00D4C9CF00D8C9D000DEC9D30087D5B2000ED1
      7E001CCD840005CA76003ED49500FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDEDED00CACACA00CFCFCF00D0D0D000CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00DCCFD40098D0B70000CF75000BCB79000BCB
      7A000ACB79001CCC810020CD830020CD830013CC7E0009CA790007C7760006C7
      750018CD7E000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F4
      F400CCCCCC00CFD0D000C9C8C500928775009C9182009B9182009B9182009B91
      82009C9081009B978600E0CFC50067BFF00000A4E1006AC5F10033B4E90049BD
      F1003AB4E100FDDACD00FAFBFB00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F4F400CCCCCC00D0D0D000D5D5D500D5D5
      D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D4D4D500E1E1D800CDCD
      CE0016169A000D0DA1001414A4000A0AA2001313A4000C0C9F000A0A9400FAFA
      F700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00D1D1D100CDCDCD00D1D1D100D2D2D200D2D2D200D2D2D200D1D2D200DED0
      D600AED7C50060DCA900D5D2D300D9D1D500D1D2D200D4D2D300E5D1D90070DC
      AE0008D582001CD1880002CC79005FDFAA00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00CECECE00D4D4D400D2D2D200D3D3
      D300D3D3D300D3D3D300D3D3D300D4D4D300DFD2D80090DABA0099DCBE0099DC
      BE00AFDEC8002BD48E0019D1850012D082006CD9A900A6E2C700AFF3D400A6F0
      CE00D4F7E8000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F600D0D0D000D2D2D200D5D5D600D9DADD00D9DBDD00D9DBDD00D9DBDD00D9DB
      DD00D8DBDC00DBDBDE00DDDBDB00CED9DF0048C2FA0024AFE60045BAEC002BB1
      E90021B1ED0081C3DC00FFFFFB00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6F6F600D0D0D000CFCFCF00BDBDBD00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BDBDBE00C5C5BF00B5B5B9000000
      93000A0AA2001313A7000606AA005F5FC5000F0FAD001414A8000C0CA4000909
      9400D6D6E8000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00D5D5D500D2D2D200C4C4C400C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C8C0C300D5BFC800C2C0C100C0C0C000C0C0C000C0C0C000BFBFBF00DCC4
      CF0096DEBE0007D8860018D58D0000D07D004EDFA60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F000D0D0D000D5D5D500D6D6D600D4D4
      D400D5D5D500D5D5D500D5D5D500D5D5D500D6D5D600E0D4DA00E1D3D900DFD3
      D800FFD4E70029D38F0015D387000AD3830092D1B800F7DFE900FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F600D3D2D200D6D8D800D2D1D000B3ACA100B9B2A900B9B2A800B9B2A800B9B2
      A800B9B2A800B8B2A800B7B1A700C1B2A4009CAEB00035B7F10033B4E9001DAE
      E60035B4EA000DA7E400A6DAF600FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6F6F600D4D4D400D5D5D500D4D4D400D5D5
      D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500E2E2D8002C2C9E000505
      9C001414A5000000A7008181CF00FAFADC009C9CD5000000A5001414A8000000
      96005151B2000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00D7D7D700D4D4D400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CECFCE00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CECFCE00D2D0
      D100EAD3DD0078DDB30005D6860000D5840096EECB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100D4D4D400D8D8D800D8D8D800D8D8
      D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D6D8
      D700FBD9E60027D7930014D68B0007D687008CD6B900EEE1E600FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700D7D7D700DAD9DB00D7D8D800C6C2BD00C9C6C400C9C6C400C9C6C400C9C6
      C400C9C6C400C9C6C400C9C6C400C9C6C400D5C4B900BBCFD8003DBAF20025B0
      E70003A6E20021B0E90040B2D600FFFBF700FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700D6D6D600D9D9D900DCDCDC00DBDB
      DB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00E7E7DE00AAAAD5000000
      A0000000A500A4A4DA00F7F7E000D9D9DA00F6F6DB009A9AD7000000A7000404
      9F00ACACE2000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00D9D9D900D7D7D700D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8
      D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8
      D800D5D6D600F7E0EA00A3F4D30097EFCB00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200D8D8D800DCDCDC00DCDCDC00DCDC
      DC00DCDCDC00DCDCDC00DBDBDB00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DADC
      DB00FFDCE9001DD891000FD78C0001D7870089D9B900F2E3EA00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700D9D9D900DBDBDB00DFDDDE00E2E4E600E3E4E600E3E4E600E3E4E600E3E4
      E600E3E4E600E3E4E600E3E4E600E3E4E600E1E3E400EAE0D900A0D2ED0029B4
      EC0003A5E700D3F0ED00B4A4BF0031309500ECEDF50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700DADADA00D9D9D900CFCFCF00D0D0
      D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000E2E2D3009595
      C4009090C500E5E5D500CECECF00D3D3D300DBDBDC00F2F2E800ACACE700B8B8
      E700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00DCDCDC00DBDBDB00DCDCDC00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDB
      DB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDB
      DB00D9D9D800E3E1E200FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200DADADA00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DCDD
      DD00F3DCE60068E0B00012DC8F001DDD9300B4DDCB00EDE5E800FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800DBDBDB00DFDFE000D5D5D2008B816D00958E7D00958D7D00958D7D00958D
      7D00958D7D00958D7D00968D7C0092887700A8A29500E7E7E600EEE2DB0063C4
      F500DEF2E1006156A50000007B0000009B00D5D5EE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F8F800DCDCDC00D9D9D900C4C4C400C5C5
      C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500CFCF
      C800D0D0C800C5C5C500C4C4C500CCCCCC00DEDEDE00E7E7E600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00DFDFDF00DDDDDD00C5C5C500BFBFBF00C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000BFBFBF00CBCB
      CB00DFDFDF00E4E4E400FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F4F400DCDCDC00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00E0DFDF00E4DFE100D1E1DA00D5E1DB00E4DEE000E7E7E700FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800DEDEDE00DEDFDF00E2E3E300EAEBEE00EAEBEF00EAEBEE00EAEBEE00EAEB
      EE00EAEBEF00E9EBED00E0E1E200DFDFE000DFE0DF00DFDFE000E6E3E000D3D3
      D600423D95000000860000009700CAC8F100FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F8F800DEDEDE00E0E0E000E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E3E3E300DFDFDF00E8E8E800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00E1E1E100DEDEDE00E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1
      E100E1E1E100E1E1E100E2E2E200E1E1E100E1E1E100E1E1E100E1E1E100E1E1
      E100DEDEDE00E4E4E400FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F4F400DFDFDF00E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200E3E3E300E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E3E2E300E6E2E400E5E2E300E2E1E100E9E9E900FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800E0E0E000E3E4E400DCDAD90098917F00A29C8C00A29C8C00A29C8C00A29C
      8C00A19B8B00A7A29400DFDFDF00E2E2E200E1E1E100E1E1E000E0E1E100F1F0
      E8007673C9005F5EC500FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F900E0E0E000E2E2E200E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E5E5E500E0E0E000EAEAEA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00E4E4E400E2E2E200E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E7E7E700E5E5E500E7E7E700E6E6E600E6E6E600E7E7E700E5E5
      E500E1E1E100E7E7E700FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F4F400E1E1E100E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E3E3E300E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E3E3E300EAEAEA00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      F900E2E2E200E4E4E400E7E7E900F7F7FC00F5F6FA00F5F6FA00F5F6FA00F5F6
      FA00F5F6FA00F4F5F900F4F5F800F3F4F700F3F4F700F4F4F700EDEEF100E4E5
      E200F2F1E700F6F6EA00FFFFFD00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F900E3E3E300DEDEDE00C4C4C400C5C5
      C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5
      C500C5C5C500C5C5C500C4C4C400CDCDCD00E5E5E500EBEBEB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00E4E4E400E3E3E300CCCCCC00C8C8C800C8C8C800C8C8C800C8C8C800C8C8
      C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C7C7C700D1D1
      D100E6E6E600E9E9E900FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6F6F600E3E3E300E6E6E600E6E6E600E5E5
      E500E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E5E5E500E6E6E600E6E6E600E6E6E600E4E4E400EDEDED00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00E4E4E400E8E8E900DCDEDB00887F6C00968D7E00968D7D00968D7D00968D
      7D00968D7D00968D7D00958C7D00958C7D00958D7D008F867500B8B0A700ECEE
      EF00E4E5E500E6E6E600FCFCFC00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFAFA00E4E4E400E7E7E700E7E7E700E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E5E5E500EBEBEB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00E7E7E700E6E6E600E2E2E200E1E1E100E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200E0E0E000E2E2E200E2E2E200E2E2E200E1E1E100E3E3
      E300E6E6E600EAEAEA00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6F6F600E5E5E500E7E7E700E8E8E800E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E8E8E800E7E7E700E7E7E700E5E5E500EDEDED00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      F900E6E6E600ECEAEB00F8EBF300E9DEE000EBE0E300EBE0E300EBE0E300EBE0
      E300EBE0E300EBE0E300EBE0E300EBE0E300EBE0E300EADFE100F1E5EA00F9EF
      F500EAE8EA00E9E9E900FDFDFD00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F900E6E6E600E8E8E800E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E8E8
      E800E9E9E900E8E8E800E9E9E900E9E9E900E7E7E700EDEDED00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00E9E9E900E7E7E700E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E8E8E800E9E9E900E8E8E800E8E8E800E8E8E800E8E8
      E800E6E6E600EDEDED00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700E6E6E600EAEAEA00EAEAEA00E9E9
      E900EAEAEA00E9E9E900E8E8E800EAEAEA00E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900EDEDED00F4F4F400F5F5F500F6F6F600F0F0F000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00EBE9EB00D9E5E1008ED0AA008CD0AC008DCFAD008DCFAD008DCFAD008DCF
      AD008DCFAD008DCFAD008DCFAD008DCFAD008DD0AD008BD1AB0085D4A90088D6
      AC00EAF2F000F4F3F400FDFDFD00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFAFA00E8E8E800E8E8E800DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00E1E1
      E100EAEAEA00EFEFEF00F0F0F000F2F2F200F3F3F300F3F3F300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAEAEA00E9E9E900E5E5E500E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E8E8E800EAEAEA00F4F4F400F4F4
      F400F5F5F500F2F2F200FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700E8E8E800E9E9E900EAEAEA00E9E9
      E900E9E9E900EAEAEA00E9E9E900EAEAEA00EAEAEA00EAEAEA00EAEAEA00E9E9
      E900EEEEEE00D5D5D5009A9A9A00A1A1A10083838300D5D5D500FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00F2EBEE00A9DAC50007B3590013B8610013B7610013B7610013B7610013B7
      610013B7610013B7610013B7610013B7610013B8610013B6620052906D005985
      6C0081878300959495000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFAFA00EAEAEA00E6E6E600D2D2D200D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D3D3D300D7D7
      D700F2F2F200CACACA008E8E8E009696960080808000BABABA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00ECECEC00EAEAEA00D1D1D100CBCBCB00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CBCBCB00CFCFCF00EAEAEA00E7E7E700ABABAB00ADAD
      AD009E9E9E00C4C4C400FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700E8E8E800EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00FCFCFC008F8F8F00696969005151510097979700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00F5EDF000A8E2CA0010C673001CC97B001DC97A001DC97C001DC97B001DC9
      7B001DC97B001DC97C001DC97C001DC97C001CCB7B002ABF7C007D7178006760
      6400615F6000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFAFA00E9E9E900ECECEC00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDED
      ED00FCFCFC00929292006E6E6E005F5F5F006464640000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00EBEBEB00EAEAEA00EFEFEF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F1F1F100F1F1F100F0F0F000EFEFEF00F4F4F400B3B3B300626262005555
      550072727200FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700E9E9E900EAEAEA00ECECEC00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EBEBEB00EBEBEB00EBEBEB00EBEBEB00E9E9
      E900FFFFFF008F8F8F003C3C3C0095959500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00EEECED00DBEAE50077DFB0006EDDAE006EDEAE0071DFAF006FDEAE0070DF
      B0006FDEAE006FDEAE006FDEAE0070DEAE006FE1B10071D3A700656263004B4C
      4B00EEEEEE00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFAFA00EBEBEB00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00ECEC
      EC0000000000909090004A4A4A0063636300F2F2F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00ECECEC00EAEAEA00EBEBEB00EAEAEA00EBEBEB00EBEBEB00EAEAEA00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00F5F5F500B3B3B300484848006F6F
      6F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700E9E9E900EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EAEAEA00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EAEA
      EA00FFFFFF006565650081818100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00E9E9E900F0EBEE00FFEDF700FFEDF700FFEDF800FFEDF800FFEDF800FFED
      F800FFEDF800FFEDF800FFEDF800FFEDF800FFF1FB00E7D9E10034333400E0E0
      E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB00E9E9E900ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00EBEB
      EB00000000006464640076767600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00E9E9E900EAEAEA00F8F8F8009696960054545400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC00F2F2F200F2F2F200F3F3F300F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200FEFEFE00BFBFBF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00F2F2F200F1F1F100F0F1F100F1F2F100F1F1F100F1F1F000F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F3F3F300E0E0DF00CACACA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F0F0
      F000FEFEFE00B5B5B50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00F6F6F600F2F2F200F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F2F2F200F3F3F300FAFAFA00C9C9C900F6F6F600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100ECECEC00E7E7E700E3E3E300DFDFDF00DBDBDB00D7D7D700D4D4D400D0D0
      D000CDCDCD00CBCBCB00CACACA00CFCDCE00D1CFD100CECECE00D1D1D100D4D4
      D400DBDBDB00E5E5E500EFEFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F4F100A352
      1800A3511700F7F1EC0000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9C009999990095959500969696009696
      9600969696009696960096969600969696009696960096969600969696009696
      9600969696009696960096969600969696009696960096969600959595009B9B
      9B00A2A2A2000000000000000000000000000000000000000000000000000000
      000000000000B6B6B600B0B0B000AEAEAE00AAAAAA00A9A9A900A9A9A900A6A6
      A600A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A4A4A400A3A3A300A3A3
      A300A3A3A300A3A3A300A3A3A300A4A4A400A4A4A400A4A4A400A4A4A400A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A6A6A600A9A9A900A9A9A900AAAA
      AA00AEAEAE00B0B0B000B6B6B600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBEBEB00E6E6E600E1E1E100DEDEDE00D9D9D900D5D5D500D2D2D200CECE
      CE00CBCBCB00C8C8C800CBC9CB00A7B8AC0061886E00D6D2D500CFCFCF00D2D2
      D200DADADA00E4E4E400EEEEEE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EDDDD200973C
      00009A4205009A4205009A4205009A4205009A4205009A4205009A4205009A42
      05009A4205009A4205009A4205009A4205009A4205009A4205009A4205009A42
      05009A4205009B4306009B4406009B4406009E4A0F009D470B0091310000973C
      0000973C00008D2A0000F0E3D900000000000000000000000000000000000000
      000000000000000000007D7D7D00A3A3A3007070700071717100717171007070
      70006F6F6F006E6E6E006E6E6E006D6D6D006C6C6C006B6B6B006B6B6B006A6A
      6A00696969006868680067676700666666006666660065656500646464006262
      6200A0A0A0008484840000000000000000000000000000000000000000000000
      0000E4E4E400DADADA00D5D5D500CDCDCD00CACACA00C8C8C800000000000000
      000000000000BEBEBE00B7B7B700B6B6B600B9B9B800C0BFBC00C1C0BC00C1C0
      BC00C1C0BC00C1C0BC00C1BFBC00C5C1BC00C0BDBA00C5C1BC00C8C3BD00C4C0
      BC00C1BEBB00BFBDBB00C5C4C200C9C7C500C8C7C500C9C8C600D2D1CE00D3D2
      D000D7D6D300DEDDDA00DDDDDC00E4E4E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000083B59000789D860000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000094370000FAFF
      FF00FCFFFF00FBFFFF00FBFFFF00FBFFFF00FBFFFF00FBFFFF00FBFFFF00FBFF
      FF00FBFFFF00FBFFFF00FBFFFF00FBFFFF00FBFFFF00FBFFFF00FBFFFF00FBFF
      FF00FBFFFF00FBFFFF00FBFFFF00FFFFFF00F3F3F400973A0000993F00009A41
      0100993F0000A04A0D008E2B0000F7F0EC000000000000000000000000000000
      000000000000C1C1C100A2A2A2007C7E80008285870082858700818386008183
      8500808285007F8184007E8183007E8082007D7F82007C7E81007B7E80007B7D
      80007A7C7F00797B7E00787B7D00787A7D0077797C0076797B0075787A007477
      79006A6C6E0096969600D8D8D800000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000ADB5CC00A7AFC900A5AE
      C800A5ADC800A4ADC800ACB3CA006A94BF003A70AC004679B1005E89B80081A1
      C3009BB3D000C0CEDD00CDD4E000C3CBDB00BFC5D700BCC0D300BFC3D600BFC4
      D700C0C5D800C4CADC00F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A8CAB20084B990006F8F7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099430600FDFF
      FF00F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F9FEFF00EBE2DD008F2C0000983E00009A4101009A41
      010099400000973E0000B3693300A14E13000000000000000000000000000000
      000000000000A5A5A600ADB5BE00938475009585750095857500948474009383
      73009383730092827200928172009181710090807000907F70008F7F6F008E7E
      6E008E7E6E008D7D6D008D7C6D008C7C6C008B7B6B008B7A6B008A7A6A008A79
      690083796F0098A0A800BCBCBC00000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000008600000045E00000059000015
      670000176800001364000C3783002E6BAB00326BAA003069A8002D66A7002964
      A5002661A300235FA200215DA0001F5A9E001B549A00164D95000E418B000735
      8200002978000012680000035C00D4D9E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F7F60062A7740083BE920066776B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099430600FCFF
      FF00F3F3F300F5F8F900F7FDFF00F7FDFF00F7FDFF00F7FDFF00F7FDFF00F7FD
      FF00F7FDFF00F7FDFF00F7FDFF00F7FDFF00F7FDFF00F7FDFF00F7FDFF00F7FD
      FF00F7FDFF00FBFFFF00EBE2DD008F2C0000983E00009A4101009A4101009A41
      0100983E0000A24D1000B56C38009F4C10000000000000000000000000000000
      000000000000A8B1BA00C9762500E2924200E49B5200E49A5100E49A5100E49B
      5100E49B5100E49B5100E49B5100E49B5100E59B5100E59B5100E59B5100E59B
      5100E59B5200E59B5200E59B5200E59B5200E59B5200E59C5200E59C5200E69E
      5500E0852B00B47C4600BFC5CB00000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000102975000011650000136800AFB3BF00DAD7
      D000CECCC600CDC7BC00678AAF005081BC00326BAA00346CAA00346BA900336B
      A900336BA900326AA800326AA8003269A700326AA700336AA800336BA900346D
      AA00356EAB003772AD0017448B00112873000000000000000000000000000000
      00000000000000000000000000000000000000000000D9E3DC0082A78A006794
      700051825C00447A5000377143002F6B3D002663340012512000000000000000
      00000000000080B790006EB580007ABE8C0079B5890076AE850097BDA1006596
      7200B2C1B6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099430600FDFF
      FF00F6F8FA00E7D2C300D2997100D49E7900D49E7900D49E7900D49F7900D4A0
      7900D49F7A00D49F7A00D4A07B00D4A17B00D5A17C00D5A17D00D5A27D00D5A2
      7E00D9AA8800D09D7900902F0000983E00009A4101009A4101009A4101009940
      0000993F0000B56D3A008E2B0000F7F0EB0000000000CFCFCF00828282008C8C
      8C00797A7B007E7B7900DE842B00FFF2E300F4D6BE00F4D8C000F4D8C000F4D8
      C000F4D8C000F4D8C000F4D8C000F4D8C000F4D8C000F4D8C000F4D8C000F4D8
      C000F4D8C000F4D8C000F4D8C000F4D8C000F4D8C000F4D8C000F4D8C000F3D5
      BD00FFFCF000C15E0000838D96007A7A7A008B8B8B0082828200D4D4D4000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000000B6200000E65007380A400E2DFD700CACA
      C900C1C1C100C0BCB7006C8CB200608EC400316AA900356DAB00346DAB00346C
      AA00336BA900336BA900326AA800326AA8003168A6003268A6003269A7003269
      A7003269A7003269A7003873AE00012070000000000000000000000000000000
      0000000000000000000000000000000000002F6E3D0000240000002B0600003B
      0B00004C0F00005A120000611300005D130000581200003D0000000000000000
      0000D5E3D80057BB74006FBF860073BF88007AC78F007BC68F0097CEA500107F
      2E00003D0700003A0E00E3EAE600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099430600FDFF
      FF00F6F7F800ECDED400DDB89E00DFBCA300DFBCA300DFBCA300DFBCA300DFBC
      A400DFBCA400DFBDA500DFBDA500E0BDA500DFBEA500DFBEA600DFBEA600E4C8
      B300D7AD910091320000993F00009A4101009A4101009A41010099400000973C
      0000B26834008F2D0000F2E7E00000000000D5D5D5008E8E8E00ADADAD009494
      9400B1B2B200676C7100DD802400F9E2CD00E7BC9A00E8BE9E00E8BE9E00E8BE
      9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE
      9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E7BB
      9A00FFF0DC00B75C0400727B8400B3B3B30094949400AFAFAF0088888800DCDC
      DC00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000106600000C6500969FB600D8D7D300C9C9
      C900C1C1C100BFBBB7006E8EB300608FC500326BAA00356DAB00356DAB00346C
      AA00356CAA00336BA900346BA900326AA800326AA8003168A6003168A6003269
      A7003269A7003269A700356FAB000F3480000000000000000000000000000000
      0000000000000000000000000000397F48000014000004261300053117000544
      190004551C0004611D00046A1D0004691D0004631B0000480000000000000000
      000061C082006FD896006ECA8B006EC4860073CA8B0077CB8F007CC6900051AB
      6B0012752F0007491A0000461800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A430600FEFF
      FF00F5F5F500F6F8F900F8FCFF00F8FCFF00F8FCFF00F8FCFF00F8FCFF00F8FC
      FF00F8FCFF00F8FCFF00F8FCFF00F8FCFE00F8FCFE00F8FCFE00FDFFFF00EFEA
      E70091310000983F00009A4101009A4101009A41010099400000963B0000AE63
      2D00912F0000F2E7E000000000000000000090909000ADADAD00949494009595
      9500B3B3B300646E7800D16E0E00FFF3DE00F3C8A700F5CBAA00F5CBAA00F5CB
      AA00F5CBAA00F5CBAA00F5CBAA00F5CBAA00F5CBAA00F5CBAA00F5CBAA00F5CB
      AA00F5CBAA00F5CBAA00F5CBAA00F5CBAA00F5CBAA00F5CBAA00F5CBAA00F3C9
      A900FFEBC900BB691A006B737B00B0B0B0009696960093939300B0B0B0009191
      9100F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000126800000E6800929CB500D8D6D300C9C9
      C900C1C1C100BFBBB7006E8FB300608EC400326CAB00366EAC00356EAC00366D
      AB00346CAA00356CAA00336CAA00336AA800336AA800326AA8003169A7003168
      A6003269A7003269A700356EAB000F3580000000000000000000000000000000
      0000000000000000000097C8A500356F440000160B00052C1500053618000644
      1D0005551E0005632000066C2200056F210004681E00004C030000000000ABD1
      B80073EFB30075DFA6006DD292006AC987006DCB890071CF8C0075CB8E0064BA
      7D00188C3D0012662E00004615007C9F89000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A430600FEFF
      FF00F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500FBFFFF00EDE4DE008F2B
      0000983E00009A4101009A4101009A4101009A410100973C0000A95B24009131
      0000EDDED400000000000000000000000000939393009F9F9F009F9F9F009F9F
      9F009B9B9B00BEBFC00084868700928A82008D8076008E8177008E8177008E81
      77008E8177008E8177008E8177008E8177008E8177008E8177008E8177008E81
      77008E8177008E8177008E8177008E8177008E8177008E8177008E8177008E81
      77009185790086848200BEBFC0009B9B9B009F9F9F009F9F9F009F9F9F009696
      9600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000146B0000106A00939DB500D8D6D300C9C9
      C900C1C1C100BFBBB7006E8FB4005F8EC500336CAB00376FAD00376FAD00356E
      AC00366DAB00346DAB00356CAA00346BA900346AA800336AA8003369A7003169
      A7003168A6003269A700356EAB000F3682000000000000000000000000000000
      00000000000000000000188F390073A07E0000130700062E170006391B000643
      1E000755220006622300066C240005712400066D2200005006000000000061D8
      AC0087F6D30079E3B1006DD5990065CC870067CC85006CD18A006ECE8B006EC6
      89001E9746001A843F000F602C00004110000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A430600FFFF
      FF00F7F7F700F8F9FA00F9FCFF00F9FCFE00F9FCFE00F9FCFE00F9FCFE00F9FC
      FE00F9FCFE00F9FCFE00F9FCFE00F9FCFE00FDFFFF00EEE5DF008F2C0000983E
      00009A4101009A4101009A4101009A410100983D0000A4531900993F0000A04D
      1400FCFAF70000000000000000000000000094949400A9A9A900A7A7A700A7A7
      A700A7A7A700A4A4A400B1B1B200C0C1C200BEC0C200BEC0C200BEC0C200BEC0
      C200BEC0C200BEC0C200BEC0C200BEC0C200BEC0C200BEC0C200BEC0C200BEC0
      C200BEC0C200BEC0C200BEC0C200BEC0C200BEC0C200BEC0C200BEC0C200BEC0
      C100C0C1C300B0B1B200A4A4A400A7A7A700A7A7A700A7A7A700A9A9A9009696
      9600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000166D0000126C00939DB600D8D6D300C9C9
      C900C1C1C100BFBBB7006E8FB500618FC500346DAC003770AE00376FAD00376E
      AC00366EAC00366EAC00356DAB00356CAA00346BA900346BA900336AA8003369
      A7003269A7003168A600356EAA00103783000000000000000000000000000000
      0000000000005EA974003CA95C0081C8930000180800072E1A00073B1D000746
      20000652230007622600066B26000670260006702500005208000000000082D0
      AC0085F6D80076E1B10068D3960060C9850062CC840067D1890069D18B0070CE
      8E0024A24F0021934B0016773C0005592600477B5C0000000000000000000000
      00000000000000000000000000000000000000000000000000009A430500FFFF
      FF00F8F9FA00F0E5DD00E3C6B100E5C9B600E5CAB600E5CAB700E5CAB700E5CB
      B800E5CBB800E5CBB800E5CBB800E7CEBD00E0C4B000902F0000983E00009A41
      01009A4101009A4101009A410100983E0000A14D110092320000F3F0ED00B06B
      3C00F8F2ED0000000000000000000000000093939300B2B2B200AFAFAF00AFAF
      AF00AFAFAF00AFAFAF00AEAEAE00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ACABAC00B6AFB900B7B0BA00AEACAE00AFAFAF00B2B2B2009696
      9600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000186F0000146F00939DB700D8D6D300C9C9
      C900C1C1C100BFBBB7006E8FB5006190C600346EAD003871AF003770AE00376F
      AD00366FAD00366EAC00366EAC00356CAA00356CAA00346CAA00346BA900336B
      A9003369A7003269A700356EAA00103885000000000000000000000000000000
      0000D9E7DE0029984B0055B8740057C87A0007451B00062A1800073B1C000747
      220007522500085F270008692900076E28000670280000530A0000000000F1F1
      ED0058D19C006BDAA50060CA8D005AC27F005CC9810061CF860063D188006CD0
      8E002BAD5A00279C53001D894800136F3A0000491600D6DED900000000000000
      00000000000000000000000000000000000000000000000000009A430500FFFF
      FF00F9FCFE00E8D1C000CE916600D1976F00D1987000D1987000D1997100D199
      7200D19A7300D19A7400D19B7500D6A6820091300000983E00009A4101009A41
      01009A4101009A410100993F00009E480B0092310000ECE1D900FFFFFF00AC62
      3000F8F2ED0000000000000000000000000094949400BBBBBB00B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B4B3B500DBDBD9008DD370008DCB7000D5DDD000B5B3B600BBBBBB009595
      9500F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000A4813100AC8D4600F0F0F0000019790000167100939EB700D8D6D300C9C9
      C900C1C1C100BFBBB7006F90B5006191C700356FAE003871AF003971AF003770
      AE003870AE00366FAD00366EAC00366DAB00356DAB00356DAB00346BA900336B
      A900336BA9003369A700356EAB00113986000000000000000000000000000000
      00003A98580067BC830046B66B0030BB5D00359D5300041F1300093C21000746
      210008512500075C270008652900066A2A00066B280000510B00000000000000
      00008CC5A20053C6880053BA7D0051B9770056C37D005ACC82005DCF860060CF
      880031B4630027A458001D904C00137C4100066530001D623B00000000000000
      00000000000000000000000000000000000000000000000000009B440600FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFF
      FF00FCFFFF00FCFFFF00FCFFFF00FFFFFF0093330000994000009A4101009A41
      01009A410100994000009C44060092310000EDE2DB00FEFFFF00FFFFFF00AC62
      3000F8F2ED0000000000000000000000000093939300C3C3C300BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBBBE00CEE4D3004CB92300269D0000C0D9B400BFBCC100C3C3C3009595
      9500F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000B5965000A0782100B086270035436500000F7C00929EB900D8D6D300C9C9
      C900C1C1C100BFBBB6007091B6006291C700356FAE003A72B0003871AF003970
      AE003770AE00386FAD00366FAD00366EAC00356DAB00356DAB00346DAB00346B
      A900336BA900336BA900366EAB00113B8800000000000000000000000000A5CC
      B2004FAB6F006DC28A0032B25E003BBE69004ACF7600023E180000230A000031
      0C00003E1000004913000050130000561400005A160000470000000000000000
      000000000000349B5E0046A96D004BB2720063C0870059C3810063CD8A006CD3
      91006FDA97006AD0920060C2880055AD7B00388F610000521C00A2BAAB000000
      00000000000000000000000000000000000000000000000000009E490E00FFFF
      FF00D9BAA600BF876200B06B3B00AB633000B26F4000C28E6B00DEC5B500FFFF
      FF00FFFFFF00FAFBFC00FFFFFF00AF6A3B00953800009A4101009A4101009940
      0000994000009A420200922F0000EDE2DB00FEFFFF00F8F8F800FFFFFF00AC62
      3000F8F2ED0000000000000000000000000093939300CBCBCB00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C2C500C5E9D500B8EEAC0070CD5300CDE4C600C6C3C700CBCBCB009494
      9400C1A56900B4944B00B5954E00B5954E00B5954E00B5954E00B5954E00B797
      5100AC873700AA853200AA843200BE902A00665B440091A0C000D7D7D800C9C9
      C900C1C1C100BFBBB6007091B6006191C8003670AF003972B0003A72B0003872
      B0003970AE003870AE00386FAD00366FAD00366EAC00356DAB00356DAB00346D
      AB00346CAA00336BA9003770AC00123D8A000000000000000000000000003293
      560086C89E0048B671003CBA6A0040C1700046CE790012943D00C6D1CB00EAF6
      EE00000000000000000000000000000000000000000000000000000000000000
      000000000000A9CEB6002E9357004BB074006F8B7B00E1EFE500E5EFE800D4E6
      D900003913001149290021563900386D4D006C967D00B3D4C00055906F000000
      0000000000000000000000000000000000000000000000000000933500009130
      0000913000009131000091300000913000009130000091310000912F0000902F
      0000C4927100FFFFFF00B06B3C00923200009A4101009A400000994000009940
      000099400000912F0000EFE4DE00FFFFFF00FAFAFB00F9F9F900FFFFFF00AC63
      3000F8F2ED0000000000000000000000000093939300D3D3D300CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCCCD00D0CDCF00C7DDD500D9E0E300D1D1D300CDCCCC00D3D3D3009494
      9400AC843200AD863300AD863300AD863300AD863300AD863300AD863300AD86
      3300AF883700AF893800AF893800AF893800B68C3200B78F3D00C9C2B500CACD
      D500C1C1C200BFBBB6007091B6006292C8003671B0003B73B1003973B1003A72
      B0003972B0003971AF003870AE00386FAD00376FAD00366EAC00366EAC00356D
      AB00356CAA00346CAA003770AC00123F8B00000000000000000080B7950077BB
      920076C4940038B2680043BF740043C576003CC772005FD28B0063A377000000
      00000000000000000000CFDAD200E3EBE6000000000000000000000000000000
      0000000000000000000039925D003FA068008EA4970000000000000000006DA4
      83000058220009592C00074F2600044421000034160000210A003D715200C5D6
      CC0000000000000000000000000000000000DDC0AB008D2A0000973C00009232
      0000902F0000AF6A3900C28F6B00C7987800C08A6600AA602D008E2A00009333
      00009334000091310000963900009A4101009940000099400000983C00009639
      000092310000EADBD000FCFDFE00F6F1EE00F8F5F300FAFAFB00FFFFFF00AC63
      3000F8F2ED0000000000000000000000000092929200DBDBDB00D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D7D7D700D7D7D700D7D7D700D7D7
      D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7
      D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7
      D700D4D4D400D4D3D400D4D2D300D4D2D300D3D3D300D4D4D400DBDBDB009393
      9300B48D3D00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D
      3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B38C3900B2872E00BEA9
      7E00C1C5CD00BFBCBA007091B7006292C8003771B1003B74B2003B74B2003A73
      B1003972B0003971AF003971AF003870AE00386FAD00376FAD00376FAD00366E
      AC00366DAB00346CAA003871AD0013408E00000000000000000063AA7F0099CF
      AF0044B0710043B9740042C077005BCF8A008FDFB00096E2B50062BD8500D7E1
      DA00D5DFD7005C9A710078B28E00C9DDD1000000000000000000000000000000
      00000000000000000000CBE2D30022854E009EB3A50000000000000000000069
      20000A7736000C7237000B6A34000B612F000A562A00064822000031140098B8
      A300000000000000000000000000CB9D7D008B2600009437000094370000D5B3
      9D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CA9E
      81008F2D0000973B000099400000994000009A41010095360000A6551C00DFBC
      A200DAB49700D4A88800D1A38100CF9F7C00E2C8B500FCFFFF00FFFFFF00AC63
      3000F8F2ED0000000000000000000000000093939300E2E2E200DADADA00DADA
      DA00DADADA00DADADA00DDDDDD00E6E7E800BFC1C200B9BBBC00B9BBBD00B9BC
      BD00B9BCBD00BABCBE00BABCBE00BABCBE00BABCBE00BABCBE00BABDBF00BABD
      BF00BABDBF00BABDBF00BABDC000BABDC000BABDC000BABDC000B9BDBF00C1C4
      C600E7E7E800DDDDDD00DADADA00DADADA00DADADA00DADADA00E2E2E2009494
      9400B9924000B9924000B9924000B9924000B9924000B9924000B9924000B992
      4000B9924000B9924000B9924000B9924000B9924000B9924000B9914000B78D
      3500B9964E00BEB7AF007092BA006392C9003872B1003C75B3003C75B3003B74
      B2003A73B1003972B0003972B0003971AF003870AE003870AE003770AE00376E
      AC00366EAC00356DAB003871AD0013418F00000000000000000090C4A50071BD
      93003BAC6D0047BB7B0075D29E0088DBAC0084DBAA0089DAAC00A1E3BE0056A5
      760066B28200B0DAC3009BC6AC00000000000000000000000000000000000000
      00000000000000000000000000004E976C00A0BCAB000000000061AA7D00007F
      33000B873E000C843E000C7F3B000B7738000B6C3300095E2D000044180091B2
      9C000000000000000000D8B79F008C27000092330000AC633100FFFFFF00FEFF
      FF00F9FAFA00F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900FAFBFB00FFFF
      FF00FBFDFF009E490E00953800009B420200973A0000B26E4000F8F3EE00EFE1
      D700EEE0D600EEE1D600EEE1D700EEDFD400F4EBE500FBFCFD00FFFFFF00AC63
      3000F8F2ED0000000000000000000000000092929200E9E9E900E1E1E100E1E1
      E100E1E1E100E3E3E300D9DBDE0076767600B9A99E00BFAEA100BEADA000BEAD
      9F00BEAB9D00BEAA9B00BDA99A00BDA89800BCA69600BCA59400BCA49200BBA3
      9000BBA28F00BAA08D00BA9F8B00B99E8900B99D8700B89B8500B99B8400B298
      830076787900DCDDDF00E3E3E300E1E1E100E1E1E100E1E1E100E9E9E9009393
      9300BE954500BE954500BE954500BE954500BE954500BE954500BE954500BE95
      4500BE954500BE954500BE954500BE954500BE954500BE954500BE954500BB92
      4000C69E4C00D2A347006F95C2006493CA003873B2003F7BB8003D78B5003D78
      B5003A74B2003A73B1003973B1003971AF003871AF003871AF003770AE003770
      AE00376EAC00366EAC003972AE00144391000000000000000000A9D0B900379D
      67004DB37D0077CC9E007AD2A20081D7A80088D9AD008FD9B00093D6B100A1D9
      BA00A4D4BA0092C4A800E9F1EB00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F6F500007727000B8E
      43000C9145000C9044000C8C41000B853C000A7D3900087032000A642F00B1C7
      B80000000000FBF8F6008C27000094360000AE683800FFFFFF00FBFCFC00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FCFEFF00FFFFFF009F4A0F00983C000092320000FFFFFF00FDFFFF00FCFE
      FF00FCFEFF00FCFEFF00FCFEFF00FCFEFF00FBFCFD00FBFBFB00FFFFFF00AC63
      3000F8F2ED000000000000000000000000009292920000000000E7E7E700E7E7
      E700E7E7E700F3F5F6006F645900FAC48D00FCEADC00FAE3D200F4D9C100F2D5
      BC00F2D4BA00F1D3B800F1D2B500F0D0B300F0CEB100EFCDAF00EFCCAD00EECA
      AA00EEC9A800EDC7A600ECC6A400ECC4A100ECC39F00EBC19C00EFC4A300F7D3
      B700EBA55E0076757500F2F3F300E7E7E700E7E7E700E7E7E700000000009393
      9300C39A4900C39A4900C39A4900C39A4900C39A4900C39A4900C39A4900C39A
      4900C39A4900C39A4900C39A4900C39A4900C39A4900C2994800BF954200D8B4
      6600DABC7C00BCB6AD007194BA006494CA003C78B600234F9500000257002958
      9C003E78B6003A73B1003B73B1003973B1003971AF003871AF003870AE003770
      AE003770AE00366EAC003A72AF00144493000000000000000000CDE3D400399A
      69006BBD940072C79C007BD0A40083D4AA008AD6AF0092D7B30098D6B7009DD4
      B800A1D0B800ADCEBA0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A97600000873B000B92
      47000B9648000D9749000D9448000B8E44000C864000047835002B794A000000
      000000000000AF69370094360000993E0000FFFFFF00FAFBFC00F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900FCFEFF00FCFEFF00912E000094350000C5937100FFFFFF00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FFFFFF00AB63
      3000F8F2ED0000000000000000000000000092929200F7F7F700ECECEC00ECEC
      EC00EEEEEE00E9ECEF008A6B4E00F2BD8500F6E7DC00F6E2D400E3C6A500E0BE
      9800E0BF9900E0BE9700DFBD9600DFBC9500DFBB9300DEBA9200DEB99100DDB9
      9000DDB88F00DDB78D00DDB68C00DCB58B00DCB58900DCB48800EBC4A700F3D5
      BD00E293450094969800EEEEEF00EDEDED00ECECEC00ECECEC00F7F7F7009292
      9200C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D
      4C00C79E4D00C89E4E00C89E4E00C89E4E00C69B4A00C99F4E00E4C17600CFB9
      8F00BEC0C600BEBBB9007193B8006594CA003D7BB800133D8A00002078001844
      8E003F7BB7003C75B3003A74B2003A73B1003A73B1003972B0003871AF003970
      AE003770AE003770AE003A73AF001546950000000000000000000000000058A6
      7D0068B7910073C29D007DCBA40085D1AC0092D7B8009EDCC400A7DECB00ABDE
      CD0093C7AF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C1DACA00006C26000A8843000A91
      47000B974B000C994B000C974A000A9247000A8B4300007A330089AB94000000
      0000FCFAF8008C270000902E0000E1CABA00FEFFFF00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FFFFFF00CBA082009434000091300000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00FBFBFB00FFFFFF00AC63
      3100F8F2ED000000000000000000000000008A8A8A00FFFFFF00F2F2F200F2F2
      F200F4F4F400E6E9EC008F765D00F0B77D00F8EBE100F5E3D400F7E5D900F7E5
      D900F7E3D600F6E1D300F6DFD000F5DDCE00F4DCCB00F4DAC800F3D8C500F3D6
      C300F2D4C000F2D3BD00F1D1BA00F0CFB800EFCDB500EFCBB100EBC5A800F6DC
      C500DD8A3800969FA800EEEEEE00F3F3F300F2F2F200F2F2F200FFFFFF008A8A
      8A00D4AD5D00CFA55500D0A65500D0A65500D0A65500D0A65500D0A65500D0A7
      5700CDA35300CCA25200CCA25200CA9D4C00E1B76500EAC98200CCC2B000C7CA
      D200C1C1C200BEBAB6007293B8006595CB003C77B600356EB100104AA0003771
      B1003E77B4003B75B3003C75B3003B74B2003B73B1003A72B0003A72B0003871
      AF003971AF003770AE003B74B00015479600000000000000000000000000A1CA
      B30063AF8D0072BD9B007DC6A5008FD3B700A2DECB00B3E6D900BCEAE000BAE9
      DE00C2DACB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008DBFA10000662200007C38000B8A
      47000B9149000D944C000C954D000C924A00048A4100217F4B00EDF1ED000000
      0000D4AE950092310000983F0000FFFFFF00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFCFD00FCFDFD00FFFFFF008F2B000094350000CA987400DEBB
      A400DBB79D00DBB89E00DBB89E00DAB49A00E9D4C500FEFFFF00FFFFFF00AB63
      3100F8F2ED00000000000000000000000000A5A5A500D2D2D200FFFFFF00FDFD
      FD00FFFFFF00EEF1F4008C745D00EFB47900F8EEE600F7E7DB00EAD1B600E6CA
      AC00E7CAAC00E6C9AA00E5C8A800E6C7A700E5C6A500E4C5A300E4C4A200E4C2
      A000E3C19E00E3C09D00E2BF9B00E2BE9A00E2BD9800E1BC9600ECC8AD00F9E1
      CC00DB8A3A008F979F00F7F7F700FEFEFE00FDFDFD00FFFFFF00CBCBCB00ACAC
      AC00F1E0BD00F0DDB000F1DDB100F1DDB100F1DDB100F1DDB100F1DDB100F3E1
      B800D7B06600CFA35200D0A25200FCD27C00988E760090A0BC00D5D6D600C9C9
      C900C1C1C100BEBAB6007294B9006695CC003B76B500407AB700427CB8003F78
      B6003D77B5003D76B4003C75B3003C74B2003B74B2003B73B1003A72B0003A72
      B0003972B0003870AE003B74B00015499700000000000000000069A17C002B8B
      51006CAE920072B6980082C5AB009AD9C600B5E6DC00CAF0E900DCF8F400A8D2
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000439A69000072
      2C00048541000A8C46000A8C47000B8B4800007F390086AB9300000000000000
      0000BA7D530091300000BF886200FFFFFF00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FCFFFF00E8D0BF00FDFFFF00FFFFFF00AB612D0094350000B7754700E3C8
      B300DEBFA800DEBFA800DEBFA800DDBCA400EAD9CB00FDFFFF00FFFFFF00AB63
      3100F8F2ED00000000000000000000000000000000008686860098989800D3D3
      D300CFCFCF00C3C6C80088725E00EFB27500FAF1EA00F8E9DF00EDD6BF00E9D1
      B600EAD0B600E9CFB400E9CEB200E8CDB000E8CCAE00E8CAAD00E7C9AB00E6C8
      A800E6C6A700E5C5A400E4C3A300E4C2A100E4C19F00E3BF9D00EDCAB000FBE5
      D100D6873A0088909800CACACA00D3D3D300CACACA00959595008A8A8A000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000DBB46E00D9AD5C00F8D2830056657F00001F8F0093A3BF00D8D5D200C9C9
      C900C1C1C100BEBAB6007294B9006595CC003B76B5003F79B7003F78B6003E78
      B6003E77B5003D77B5003D76B4003C75B3003C74B2003B74B2003B73B1003A73
      B1003A73B1003971AF003C75B100164A9A00C1D7C80010633100438768005694
      7D005C9D830068AA900080C4AE00A1DDD100C4EFE900E4FBF800D8F1EA00DEEB
      E20000000000D9E2DC0028663700000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DDEA
      E200148346000076330008824100068041001574410000000000000000000000
      0000AA5F2B00912F0000D5B29A00FFFFFF00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FFFFFF00D8AC8D00F9F7F500FFFFFF00C18C670092310000B4734500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00FCFCFC00FFFFFF00AD64
      3100F8F2ED000000000000000000000000000000000000000000F2F2F2006B6B
      6B00A1A1A1009C9FA100B6A39200E9AB6B00FCF4EE00F8EBE100FAEEE600FAEE
      E600FAECE300F9EAE000F9E8DE00F8E6DB00F7E4D800F6E2D400F5DFD100F4DC
      CD00F2D9C900F1D6C500F0D4C100EED1BE00EFD1BD00EECFBA00EAC9B000FDE8
      D400C97C3100B7BFC7009FA0A0006E6E6E00C6C6C600ECECEC00000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000EBCB8900E9C98700F0F0F000002E9300002E8E0095A5BF00D8D5D200C9C9
      C900C1C1C100BEBAB6007295BA006796CD003C77B6003F79B7003F79B7003E79
      B7003E78B6003D77B5003D76B4003D76B4003C76B4003C74B2003B74B2003A74
      B2003A73B1003A72B0003D76B200164C9C00C6DDCE00AFCBBD00ADCCBB00AFCE
      BD00B0D0BE00AED0BE00B3D5C300B3D6C500B9DACA00C1DECF00D5EAE0000000
      00004983580000470000004E03007DA38700000000009DC6AA0024813D002D87
      4300368C4B003B8F4F003B93520047A461004EB46D0054BE7A005EC98A0092C5
      A4000000000097C6AA00006D2D00006627008FAF9B0000000000000000000000
      0000A5561E00902F0000DDC0AF00FFFFFF00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFD
      FD00FCFCFB00CF997300F7EFEB00FFFFFF00C99A790092310000AD643100FFFF
      FF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FFFFFF00AD64
      3100F8F2ED000000000000000000000000000000000000000000000000008787
      8700C5C5C500BFC1C300BAAA9B00E7A56400FDF6F200FBF1EA00E4CAAA00DEC0
      9A00DFC19A00DFC09900DFBF9800DFBE9800DEBD9600DEBC9400DDBB9300DBB9
      9000DAB78E00DAB58C00D9B48A00D9B38A00D8B38900D9B28800E9CAB500FBE5
      D000BE752F00BBC2C900C4C3C300888888000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000338F000030900095A6C000D8D5D100C9C9
      C900C1C1C100BEBAB6007395BA006697CD003C78B700417BB9003F79B7003F79
      B7003E78B6003E78B6003D78B6003D76B4003C76B4003C76B4003B75B3003B74
      B2003A73B1003A73B1003D77B300174D9D000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007EA68900004D
      0200005E130005681F0003691E000055050000000000000000007BB891002A99
      4B0016953700189639001D9D3F0027B5510036D26E0048E88F0055F8AB0038DF
      8C00E5DFDF000000000000000000619D7A000000000000000000000000000000
      0000A85C2800902F0000D7B6A000FFFFFF00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00E4C9B500D1A07C00F9F7F400FFFFFF00C3906C0092310000B16C3C00FFFF
      FF00FEFEFF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FFFFFF00AD65
      3200F8F2ED000000000000000000000000000000000000000000000000008686
      8600A9A9A900A5A7A900A6978A00E8A46100FEF9F600FAF0EA00F7EADF00F6E8
      DC00F5E7DA00F5E5D700F4E4D500F3E1D200F3DFCF00F0DBCA00ECD5C200E8CF
      BA00E5C9B400E2C5AE00E0C1AB00DFC0A900DFC0A800E1C1A900E5C7B100F5DA
      C000B2733600A3A8AE00A8A7A700878787000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003492000032930095A6C000D7D5D100C9C9
      C900C1C1C100BEBAB6007395BA006797CE003D78B800407BB900417BB9003F79
      B7003F79B7003E79B7003F78B6003D77B5003D77B5003C76B4003C75B3003B75
      B3003B74B2003A73B1003E77B300174E9F000000000000000000000000000000
      000000000000000000000000000000000000AAC2B10000551400005B1100046C
      230006712500057426000677270000741F0039854F000000000000000000D5E7
      DC0069B9850039AC5A0027A64C0030B259003CC56F0049D6880051E1940050EA
      9C0053B076000000000000000000000000000000000000000000000000000000
      0000B6764A0091300000C4926E00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FEFFFF00F8F3
      EF00D2A28000D5A98900FFFFFF00FFFFFF00B06A390092320000C0896300FFFF
      FF00F9F5F400F5EEEC00F6F0EE00F6F0EE00F6EFEE00F6F0EE00FDFDFF00A85C
      2600F7F0EB000000000000000000000000000000000000000000000000007C7C
      7C00B1B1B100ADAFB100ADA09500E5A15B00FFFCF900FBF4EF00F6E9DE00F4E6
      D800F4E5D700F4E3D500F3E2D200F2E0CF00F0DCCB00ECD7C300EBD5C600E6CD
      BE00E1C9BC00DDC6BC00DAC2B500DAC1B500DCC2B700DFC7BB00E3CCC000F0D1
      B400B47E4B00ABB0B400B1B0B000777777000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003695000034950096A7C100D7D5D100C9C9
      C900C1C1C100BEBAB6007495BB006897CE003E7AB900427CBA00407BB900417A
      B800407AB800407AB8003F79B7003E78B6003D78B6003D77B5003D76B4003C75
      B3003C75B3003B74B2003E77B3001850A1000000000000000000000000000000
      000000000000000000000000000033784900004B060002672200067027000677
      2A00077C2D0007802E00088330000785300000751600C0D1C500000000000000
      00008FC6A20036B75E0030B4580032B45B0038BB660041C6750048CD820048CE
      83002ABB6300C6D2C90000000000000000000000000000000000000000000000
      0000CFA5890092320000A04C1100FFFFFF00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FEFFFF00FEFEFF00D5A9
      8900D4A98900E7D0BF00FFFFFF00FFFFFF00912F000092310000DCBDA900FFFF
      FF00C08A6500882100008E2C00008E2B00008E2C00008F2D000089220000A14D
      1000000000000000000000000000000000000000000000000000000000000000
      0000A5A5A500A6A7A900A69D9500E49D5400FFFEFD00FDF9F600E7D1B600E2C7
      A500E2C7A600E2C7A500E2C6A400E1C4A100DFC29F00DDBD9800E5CDB800E2CF
      C500D29C6E00C6640500C7630100C8670B00C96C1200C86D1500C76B1100C459
      0000B38D6900A4A6AA00A3A3A200000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003897000036970096A7C200D7D5D100C9C9
      C900C1C1C100BEBAB6007495BB006798CF003E7AB900427DBB00427CBA00417B
      B900407BB900407AB800407AB8003E78B6003E78B6003E77B5003E77B5003D76
      B4003D76B4003B75B3003F78B4001951A2000000000000000000000000000000
      0000000000000000000000000000C2DACA0000571400056E2A0007782D00067E
      300008853300088B3400078C3600098B360006853300006F260000000000EFF2
      EF0044BB6E0033BC630039BD660038BB650039B965003BB86A003DB86D003DB4
      6D0035AA61002F8A4E0000000000000000000000000000000000000000000000
      0000F5ECE6008E2A00008F2C0000EEE1D800FFFFFF00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FEFEFE00FFFFFF00FAF7F400D6AA8B00D6AC
      8E00D5AB8D00FFFFFF00FFFFFF00D7B49D00933300008E2A0000FFFFFF00FFFF
      FF00C59573009335000099400000994000009A41010094360000A4541A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DA904700FFFFFF00FCF8F500FFFCFB00FFFC
      FC00FFFAF900FEF8F600FEF6F300FCF3EF00F8EDE700F2E3DC00E7D5CB00D9B3
      9700C45B0000C86A0F00CA6D1400C96E1700CA701900C8701B00C5640700CE8E
      5100000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003A990000389A0096A7C200D7D5D100C9C9
      C900C1C1C100BEBAB6007496BB006898CF003F7BBA00427DBB00427DBB00417C
      BA00417CBA00407BB900407AB8003F79B7003F79B7003F79B7003E77B5003E77
      B5003D77B5003C75B3004079B5001953A5000000000000000000000000000000
      00000000000000000000000000000000000059987000006C2400067D32000986
      3800088B3A00098D3B00098C3B000A873A000A80380000742D004987610097CF
      AA0059D0850058CD840051C97E0040C171003ABB6B003CB66A003BB0670039A6
      6300339A5A001D844400A3BEAD00000000000000000000000000000000000000
      000000000000A5561C0095380000A3511800FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00E9D2C200D3A58400D5AA8C00D5AA
      8C00FCFAF800FFFFFF00FFFFFF009537000094350000BB7F5500FFFFFF00FFFF
      FF00C5947300933500009A4101009A41010094360000A4541A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBF7F100D98D4200FFFFFF00FFFDFD00F0E1CF00EBD9
      C300EBD9C200EBD8C100EAD6BE00EAD5BC00E7D0B700E3C9AD00E4D1C500D399
      6700C7650500C96D1400CA6F1800CA711C00CA721D00C5660A00CC8E53000000
      0000F7F5F4000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003C9B00003A9C0096A8C300D7D5D100C9C9
      C900C1C1C100BEBAB6007497BC006899CF003F7CBB00437EBC00427DBB00427C
      BA00417CBA00417CBA00407BB900407AB800407AB8003F79B7003F79B7003E78
      B6003E77B5003D77B5004079B5001A54A6000000000000000000000000000000
      000000000000000000000000000000000000FAFCFA0015763B00017D33000985
      3B0009873C000A873C000B853D000B813B000A7A3800086F330009622D0081DE
      A50065D391006FD5980076D69D007FD7A30075D09A0054BF800038AC68003BA5
      6700379960002F8C56001B703E00000000000000000000000000000000000000
      000000000000F0E4DB008C26000093330000C28C6800FFFFFF00FEFEFE00FEFE
      FE00FCFBFA00EBD6C700E0C0A900D1A17E00D2A48300D2A68600E4C8B500FFFF
      FF00FFFFFF00FFFFFF00AD64310095380000902C0000FFFFFF00FFFFFF00FFFF
      FF00C7967300943600009940000094360000A4541B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D78A3D00FFFFFF00FFFFFF00F1E5D600EEDE
      CA00EEDECA00EDDDC800ECDBC600ECD9C300E9D5BD00E3CDB300E5D3C900D49F
      7200C8670800CA6F1800CA711C00C9721D00C5660B00CB8D530000000000F5F2
      F100000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003E9E00003C9E0098AAC500D7D5D100C9C9
      C900C1C1C100BEBAB6007597BC006999D000407DBC00437EBC00437EBC00427E
      BC00437CBA00417CBA00427CBA00407BB900407AB8003F79B7003F79B7003E79
      B7003E78B6003E77B500417AB6001A56A8000000000000000000000000000000
      00000000000000000000000000000000000000000000ADCAB60003733200087C
      39000A7F3B000A7E3A000B7D3A000C7838000B6E340000521F009ED3B10068D5
      990072D49D0077D6A1007DD6A40081D5A60088D4AA0092D5B0008ACDA80042A5
      6F00408A6000669578002B7D51007AA28B000000000000000000000000000000
      00000000000000000000C6937000912F0000902D0000C18C6800FFFFFF00FFFF
      FF00FFFFFF00FCF9F700F2E4DB00F0E2D700F4EAE300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00AF693800943500008E290000DDBFAC00FFFFFF00FEFEFE00FFFF
      FF00C69673009436000094360000A6571E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6863700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFEFD00FEFCFB00FDF9F800FCF6F300F8F0EC00F1E5DF00E8DCD600D5A4
      7800C8690B00CA711C00CA721E00C5670B00CB8D530000000000F4F1EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0000040A0000040A2007F97B900DDD9D300C9C9
      C900C1C1C100BEBAB6007597BE00699AD100407DBC00447FBD00437FBD00447E
      BC00427EBC00437CBA00417DBB00417BB900417BB900407AB800407AB8003F79
      B7003E79B7003E77B500427BB7001A57A9000000000000000000000000000000
      000000000000000000000000000000000000000000000000000063997700006B
      2B00097535000B7336000A6C32000B6432000045180093B4A00084DCAE006FD0
      9E0079D3A4007ED3A70084D3AA0088D3AC008DD2AE0091D0AF0097CFB2008FC4
      A60000000000000000007BA18800215D3C00EAEEEC0000000000000000000000
      0000000000000000000000000000B5734400912F000093330000A2511800EFE1
      D900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3CB
      BC00993F00009639000092300000CFA48600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C89977008E2B0000A7592100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D5843400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFD00FEFCFA00FDFAF800FCF7F300F8F0EC00F1E8E000EAE0DB00D9AB
      8400C8690C00CA721D00C5660A00CB8E550000000000F4F0EF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0000446A5000648A700154C9B00D3CFC900DAD6
      CE00CECAC400CBC3B9007A9CBF006999D100417EBD004580BE004580BE00437F
      BD00447EBC00427EBC00437DBB00417CBA00407AB9003E79B8003D78B7003B76
      B5003A76B500407AB700467EB8001150A9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFF6F100417F
      590000582100075A2B000A552B0000350E007E9A8A00C1EFD90069C5990079CB
      A4007FCDA70084CEAB008BCFAE0090D0B00096CFB3009BCFB60091C6AB00EAF2
      EB00000000000000000000000000C8DACE00D5E2D90000000000000000000000
      000000000000000000000000000000000000C69470008C260000953800008F2C
      0000A04C1100C5936F00D9B8A100DEC2B000D7B39B00C0896200993F00009230
      00009639000092300000B7784D00EBD9CE00DFC3B100DFC3B100DFC3B100E4CC
      BD00B36E4000A5551B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D5833200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FCFAF900F9F5F200F4ECE800EFE6E500DCB1
      8B00C7680C00C5660800CC8F550000000000F3EFEE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0001D5BB100094DA9000348A900094395004C6C
      9B00516F9B004B6894004D7DB2007BA6D8003D7BBC00447FBE00417EBD00407D
      BC003F7BBB003F7CBB003E7AB900417CBA004F85C0005E90C7006A98CB00729E
      CE0079A2D0006090C6001556AB00225EB2000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D7E6
      DB004D7F610010492B0003361C0094A79D000000000076C1A00093CFB4009ED4
      BC00A8D8C300B3DCCA00BCDFD200C5E3D700CCE5DB00C5DED200E5F0E8000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0E4DB00A5551C008E2A
      0000933300009231000092310000913000009231000093330000943400008E29
      0000B5724200D1A98B00CB9D7B00C6936E00C6936E00C6936E00C6936E00C592
      6D00C99A77000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CA6D1300FFFEF400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFCF900FBF6F100F8F3F300E0B4
      8C00C25B0000CE91570000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000648EC900356EBC002461B5001154B0000C52
      AF000C51B000094FAF001F62B40099BAE1006597CD00538BC5006797CC00709E
      D000739FD10074A0D20076A1D200729DD0005B8CC700437ABE00306CB7001C5C
      AF000B4FA9001254AD003B72BE005282C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCDCD000C3DBCB00A7D1BC006FB1910081BBA00082BCA00088BF
      A4008DC1A80092C4AB0097C6AF009AC6B000B1D2C100EAF3ED00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5EC
      E600CFA48500B6764700A85B2500A5551E00AA5F2900BA7D5000D4AE9300FCFA
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8EDE300D07E2F00D5883C00D5883C00D588
      3C00D5883C00D5883C00D5883C00D4883C00D4873C00D2873D00D1884100CA76
      2400D59B650000000000F6F4F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F00081A4D4004D80C4005988C8005988
      C8005988C8005988C8005484C600437DBF0076A0D2006E9ACF005387C500417A
      BE004178BE00477CC1004A7DC3004B7EC4004B7EC4004D80C5004F81C6005082
      C6005183C600497DC3006390CA00F0F0F000424D3E000000000000003E000000
      2800000090000000900000000100010000000000400B00000000000000000000
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
      FFFFFFFFFFFFFFFE7FFFFFFFFFF0000000000000FFFFFFFFFFFFFFFC1FFFFFFF
      FFF0000000000000FFFFFFFFFC00000007FFFFFFFFF0000000000000FFFFFFFF
      F800000003FC000001F0000000000000FFFFFFFFF000000001F9FFFFDEF00000
      00000000FFFFFFFFF000000001FFFFFFFF70000000000000FF000007F0000000
      01E800000170000000000000FE000027F000000001E800000170000000000000
      FE000007F000000000E800000170000000000000FE000007F000000000E80000
      0170000000000000FE000007F000000000E800000170000000000000FE000007
      F000000000E8000001F0000000000000FE000007F000000000E8000001F00000
      00000000FE000007F000000000E8000001F0000000000000FE000007F0000000
      01E8000001F0000000000000FE000007F000000001E8000001F0000000000000
      FE000007F000000001E8000001F0000000000000FE000007F800000001E80000
      01F0000000000000FE000007F800000001E8000001F0000000000000FE000007
      F800000001E8000001F0000000000000FE000007F800000001E8000001F00000
      00000000FE000007F800000001E8000001F0000000000000FE000007F8000000
      00E8000001F0000000000000FE000007FC00000000E800000170000000000000
      FE000007FE00000000E800000170000000000000FE000007FF80000000E80000
      0170000000000000FE000007FFC0000000E800000170000000000000FE000007
      FFF0000000E800000170000000000000FE000007FFFC800001E8000001700000
      00000000FE000007FFFC100007E800000170000000000000FFFFFFFFFFFC0000
      1FE800000170000000000000FFFFFFFFFFFE00007FE000000170000000000000
      FFFFFFFFFFFFFF01FFFDFFFFF5F0000000000000FFFFFFFFFFFFFF8FFFF80000
      01F0000000000000FFFFFFFFFFFFFF9FFFFFFFFFFFF0000000000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFF0000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000FF000007FFF000027FFF00004FFFF4002A7F0000FE000007
      FFE000007FFE000007FFF000007F0000FE000007FFE000007FFE000007FFE000
      007F0000FE000007FFE000007FFE000007FFE000007F0000FE000007FFE00000
      7FFE00000FFFE000007F0000FE000007FFE000007FFE00001FFFE000007F0000
      FE000007FFE000007FFE00001FFFE000007F0000FE000007FFE000007FFE0000
      0FFFE000007F0000FE000007FFE000007FFE000007FFE000007F0000FE000007
      FFE000007FFE000007FFE000007F0000FE000007FFE000007FFE000007FFE000
      007F0000FE000007FFE000007FFE00000FFFE000007F0000FE000007FFE00000
      7FFE00003FFFE000007F0000FE000007FFE000007FFE00003FFFE000007F0000
      FE000007FFE000007FFE00003FFFE000007F0000FE000007FFE000007FFE0000
      3FFFE000007F0000FE000007FFE000007FFE00003FFFE000007F0000FE000007
      FFE000007FFE00003FFFE000007F0000FE000007FFE000007FFE00003FFFF000
      007F0000FE000007FFE000037FFE00003FFFE000007F0000FE000007FFE00000
      7FFE00007FFFE000007F0000FE000007FFE000007FFE00087FFFE000007F0000
      FE000007FFE000007FFE0009FFFFE000007F0000FE000007FFE000007FFE0003
      FFFFE000007F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      FFE00001FFFFFFFFC3FE000007F8000000010000FFF00001FFC0000001FC0000
      03F0380000000000FFFFFE7FFFC0000000F8000001F0000000000000FFFFFC7F
      FFC0000000F8000001F0000000000000FFFFF87FFFC0000000F8000001F00000
      00000000FF803807FFC00000008000000010000000000000FF003001FFC00000
      010000000000000000000000FE003001FFC00000030000000000000000000000
      FC002000FFC00000070000000000000000000000FC002000FFC0000007000000
      0000000000000000F80020007FC00000070000000000000000000000F0002000
      3FC00000070000000000000000000000F00030003FC000000700000000000000
      00000000E00038001FC00000070000000000000000000000E00FF8001FC00000
      070000000000000000000000C01CFC600F000000070000000000000000000000
      C000FC600E000000070000000000000000000000C001FE400C00000007000000
      0000000000000000C001FF8008000000074000000020000000000000C003FF80
      18000000070000000000000000000000E007FF00100000000700000000000000
      00000000E007FF0010000000070000000000000000000000C00FFFC030000000
      0780000000100000000000000009FFE07000000007C000000030000000000000
      001080087000000007E0000000F0000000000000FFC0C006F000000007E00000
      00F0000000000000FF006007F000000007E0000000F0000000000000FE003003
      F00000000FF0000001F0000000000000FE002003F00000001FFE00000FF00000
      00000000FF000001F80000003FFC000017F0000000000000FF000001F8000000
      7FFE00002FF0000000000000FF800000FC000000FFFE00005FF0000000000000
      FFC0000C7E000001FFFE0000BFF0000000000000FFC0000E7F000003FFFE0001
      7FF0000000000000FFE0801FFF800007FFFE0003FFF0000000000000FFF8003F
      FFE00FFFFFFE0005FFF000000000000000000000000000000000000000000000
      000000000000}
  end
  inherited BMMain: TdxBarManager
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        BorderStyle = bbsNone
        Caption = 'Toolbar'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 404
        FloatTop = 341
        FloatClientWidth = 24
        FloatClientHeight = 24
        IsMainMenu = True
        ItemLinks = <
          item
            Item = BLBRefresh
            Visible = True
          end
          item
            Item = BLBNovo
            Visible = True
          end
          item
            Item = BLBSalva
            Visible = True
          end
          item
            Item = BLBPesquisa
            Visible = True
          end
          item
            Item = BLBRelatorios
            Visible = True
          end
          item
            BeginGroup = True
            Item = BLBSaida
            Visible = True
          end>
        MultiLine = True
        Name = 'Toolbar'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end>
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    DockControlHeights = (
      0
      0
      57
      0)
    inherited BLBRefresh: TdxBarLargeButton
      Visible = ivNever
    end
    inherited BLBPesquisa: TdxBarLargeButton
      Visible = ivNever
    end
    inherited BLBRelatorios: TdxBarLargeButton
      Visible = ivNever
    end
    inherited BLBAppend: TdxBarLargeButton
      ImageIndex = 4
    end
    inherited BLBEdit: TdxBarLargeButton
      ImageIndex = 5
    end
    inherited BLBCancel: TdxBarLargeButton
      ImageIndex = 8
    end
    object BLBNovo: TdxBarLargeButton
      Action = ACTNovo
      Category = 0
      AllowAllUp = True
      AutoGrayScale = False
      HotImageIndex = 9
    end
    object BLBSalva: TdxBarLargeButton
      Action = ACTSalva
      Category = 0
      AllowAllUp = True
      AutoGrayScale = False
      HotImageIndex = 10
    end
    object BLBItem: TdxBarLargeButton
      Action = ACTItem
      Category = 0
      AutoGrayScale = False
      HotImageIndex = 13
    end
  end
  inherited ALMain: TActionList
    object ACTNovo: TAction
      Category = 'Menu'
      Caption = 'Novo'
      Hint = 'Novo Lan'#231'amento'
      OnExecute = ACTNovoExecute
    end
    object ACTSalva: TAction
      Category = 'Menu'
      Caption = 'Salvar'
      Enabled = False
      Hint = 'Salvar Lan'#231'amento'
      OnExecute = ACTSalvaExecute
    end
    object ACTItem: TAction
      Category = 'Menu'
      Caption = 'Itens do Pedido'
      Hint = 'Visualizar Itens do Pedido de Venda'
    end
  end
  inherited Cadastro: TIBDataSet
    AfterInsert = CadastroAfterInsert
    OnCalcFields = CadastroCalcFields
    OnNewRecord = CadastroNewRecord
    DeleteSQL.Strings = (
      'delete from TAB_EDI_PRO'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_EDI_PRO'
      
        '  (ARTIGO, CDEV, COMPLEMENTO, CTNR, DESCRICAO, DTCA, DTEV, FLAG,' +
        ' ID, IDEP, '
      
        '   IDEV, ITEM, NSEQ, PESOB, QTDE, QTRL, TCDE, TSDE, VPROD, VUCOT' +
        'A, VULKG, '
      '   VUMKG, VUPKG, VUTAXA)'
      'values'
      
        '  (:ARTIGO, :CDEV, :COMPLEMENTO, :CTNR, :DESCRICAO, :DTCA, :DTEV' +
        ', :FLAG, '
      
        '   :ID, :IDEP, :IDEV, :ITEM, :NSEQ, :PESOB, :QTDE, :QTRL, :TCDE,' +
        ' :TSDE, '
      '   :VPROD, :VUCOTA, :VULKG, :VUMKG, :VUPKG, :VUTAXA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  IDEP,'
      '  IDEV,'
      '  CDEV,'
      '  DTEV,'
      '  ITEM,'
      '  DTCA,'
      '  CTNR,'
      '  ARTIGO,'
      '  DESCRICAO,'
      '  COMPLEMENTO,'
      '  VUPKG,'
      '  VULKG,'
      '  VUMKG,'
      '  QTDE,'
      '  QTRL,'
      '  PESOB,'
      '  VPROD,'
      '  VUCOTA,'
      '  VUTAXA,'
      '  TSDE,'
      '  TCDE,'
      '  NSEQ,'
      '  FLAG'
      'from TAB_EDI_PRO '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT   ID,IDEP,IDEV,CDEV,DTEV,ITEM,'
      '         DTCA,CTNR,ARTIGO,DESCRICAO,COMPLEMENTO,'
      '         VUPKG,VULKG,VUMKG,'
      '         QTDE,QTRL,PESOB,VPROD,'
      '         VUCOTA,VUTAXA,'
      '         TSDE,TCDE,'
      '         NSEQ,FLAG'
      'FROM     TAB_EDI_PRO'
      'WHERE ID = 0'
      'ORDER BY ITEM')
    ModifySQL.Strings = (
      'update TAB_EDI_PRO'
      'set'
      '  ARTIGO = :ARTIGO,'
      '  CDEV = :CDEV,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  CTNR = :CTNR,'
      '  DESCRICAO = :DESCRICAO,'
      '  DTCA = :DTCA,'
      '  DTEV = :DTEV,'
      '  FLAG = :FLAG,'
      '  ID = :ID,'
      '  IDEP = :IDEP,'
      '  IDEV = :IDEV,'
      '  ITEM = :ITEM,'
      '  NSEQ = :NSEQ,'
      '  PESOB = :PESOB,'
      '  QTDE = :QTDE,'
      '  QTRL = :QTRL,'
      '  TCDE = :TCDE,'
      '  TSDE = :TSDE,'
      '  VPROD = :VPROD,'
      '  VUCOTA = :VUCOTA,'
      '  VULKG = :VULKG,'
      '  VUMKG = :VUMKG,'
      '  VUPKG = :VUPKG,'
      '  VUTAXA = :VUTAXA'
      'where'
      '  ID = :OLD_ID')
    Left = 704
    Top = 408
    object CadastroID: TLargeintField
      FieldName = 'ID'
      Origin = '"TAB_EDI_PRO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CadastroIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"TAB_EDI_PRO"."IDEP"'
    end
    object CadastroIDEV: TLargeintField
      FieldName = 'IDEV'
      Origin = '"TAB_EDI_PRO"."IDEV"'
    end
    object CadastroCDEV: TSmallintField
      FieldName = 'CDEV'
      Origin = '"TAB_EDI_PRO"."CDEV"'
    end
    object CadastroDTEV: TDateTimeField
      FieldName = 'DTEV'
      Origin = '"TAB_EDI_PRO"."DTEV"'
    end
    object CadastroITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = '"TAB_EDI_PRO"."ITEM"'
    end
    object CadastroDTCA: TDateTimeField
      DisplayLabel = 'Entrada'
      FieldName = 'DTCA'
      Origin = '"TAB_EDI_PRO"."DTCA"'
      DisplayFormat = 'dd/mm/yy'
    end
    object CadastroCTNR: TIBStringField
      DisplayLabel = 'Container'
      FieldName = 'CTNR'
      Origin = '"TAB_EDI_PRO"."CTNR"'
      Size = 30
    end
    object CadastroARTIGO: TIBStringField
      DisplayLabel = 'Artigo'
      FieldName = 'ARTIGO'
      Origin = '"TAB_EDI_PRO"."ARTIGO"'
    end
    object CadastroDESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"TAB_EDI_PRO"."DESCRICAO"'
      Size = 120
    end
    object CadastroCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Detalhe'
      FieldName = 'COMPLEMENTO'
      Origin = '"TAB_EDI_PRO"."COMPLEMENTO"'
      Size = 120
    end
    object CadastroVUPKG: TIBBCDField
      DisplayLabel = 'CP/KG'
      FieldName = 'VUPKG'
      Origin = '"TAB_EDI_PRO"."VUPKG"'
      OnValidate = CadastroVUPKGValidate
      DisplayFormat = '$ ,##,0.00;-$ ,##,0.00'
      Precision = 9
      Size = 2
    end
    object CadastroVULKG: TIBBCDField
      DisplayLabel = 'CL/KG'
      FieldName = 'VULKG'
      Origin = '"TAB_EDI_PRO"."VULKG"'
      OnValidate = CadastroVUPKGValidate
      DisplayFormat = '$ ,##,0.00;-$ ,##,0.00'
      Precision = 9
      Size = 2
    end
    object CadastroVUMKG: TIBBCDField
      DisplayLabel = 'CM/KG'
      FieldName = 'VUMKG'
      Origin = '"TAB_EDI_PRO"."VUMKG"'
      OnValidate = CadastroVUMKGValidate
      DisplayFormat = '$ ,##,0.00;-$ ,##,0.00'
      Precision = 9
      Size = 2
    end
    object CadastroQTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'QTRL'
      Origin = '"TAB_EDI_PRO"."QTRL"'
      DisplayFormat = '0'
    end
    object CadastroPESOB: TIBBCDField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PESOB'
      Origin = '"TAB_EDI_PRO"."PESOB"'
      OnValidate = CadastroPESOBValidate
      DisplayFormat = ',##,0.00;-,##,0.00'
      Precision = 18
      Size = 3
    end
    object CadastroVPROD: TIBBCDField
      DisplayLabel = 'CM Total'
      FieldName = 'VPROD'
      Origin = '"TAB_EDI_PRO"."VPROD"'
      OnValidate = CadastroVPRODValidate
      DisplayFormat = '$ ,##,0.00;-$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroVUCOTA: TFloatField
      DisplayLabel = 'Cot.'
      FieldName = 'VUCOTA'
      Origin = '"TAB_EDI_PRO"."VUCOTA"'
      OnValidate = CadastroVUCOTAValidate
      DisplayFormat = ',##,0.00;-,##,0.00'
    end
    object CadastroVUTAXA: TFloatField
      DisplayLabel = '+ 1,50'
      FieldName = 'VUTAXA'
      Origin = '"TAB_EDI_PRO"."VUTAXA"'
      OnValidate = CadastroVUTAXAValidate
      DisplayFormat = ',##,0.00;-,##,0.00'
    end
    object CadastroTSDE: TIBBCDField
      DisplayLabel = 'CM Total'
      FieldName = 'TSDE'
      Origin = '"TAB_EDI_PRO"."TSDE"'
      DisplayFormat = 'R$ ,##,0.00;-R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroQTDE: TIBBCDField
      DisplayLabel = 'Mts.'
      FieldName = 'QTDE'
      Origin = '"TAB_EDI_PRO"."QTDE"'
      OnValidate = CadastroQTDEValidate
      DisplayFormat = ',##,0.00;-,##,0.00'
      Precision = 18
      Size = 4
    end
    object CadastroTCDE: TIBBCDField
      DisplayLabel = 'CM/MT'
      FieldName = 'TCDE'
      Origin = '"TAB_EDI_PRO"."TCDE"'
      DisplayFormat = 'R$ ,##,0.00;-R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroNSEQ: TIntegerField
      FieldName = 'NSEQ'
      Origin = '"TAB_EDI_PRO"."NSEQ"'
    end
    object CadastroFLAG: TSmallintField
      FieldName = 'FLAG'
      Origin = '"TAB_EDI_PRO"."FLAG"'
    end
    object CadastroC_ID: TLargeintField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
  end
  inherited SQLConsulta: TIBSQL
    Left = 640
    Top = 344
  end
  inherited TConsulta: TIBTransaction
    Left = 608
    Top = 344
  end
  inherited QConsulta: TIBQuery
    Left = 608
    Top = 376
  end
  object ILEdicao: TImageList
    Height = 24
    Width = 24
    Left = 416
    Top = 400
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
      00000000000000000000000000000000000000000000ECEBEA00B6B2B2000000
      0000000000000000000000000000F4F3F300E2E1E100DCD9D900D1CECE00CBC8
      C800D3D1CF00D6D4D300DBD8D700E3E1E000ECEBEB00F2F1F100F7F6F600F9F9
      F800FCFCFC00FDFDFD00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DBD9D800C0BDBE000000
      0000FDFDFD00FEFEFE00FEFEFE00FDFEFF000000000000000000000000000000
      000000000000FCFCFD00FAF9F900F8F8F800ECEBEB00E5E4E400E2E2E100E0DD
      DC00D8D6D500D8D6D400D6D3D200D2D0CF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C4C0C000D9D7D7000000
      0000FEFEFE00FEFEFE00FEFEFD00FCFCFC007C75DE00DAD7F600FFFFFD00FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FAFAFA00FBFBFB00FCFCFC00FCFCFC00FBFB
      FB00FCFCFC00FBFBFB00FBFBFB00FAFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BEBABA00E5E4E5000000
      0000FEFEFE00FCFCFC00FCFCFC00000000008D88E2009289E600FFFFFD00FCFC
      FB00FAFAFA00FAFAFA00F9F9F900FAFAFA00FAFAFA00F9F9F900F8F8F800F8F8
      F800F7F7F700F7F7F700F8F8F800F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C4C2C100F5F3F4000000
      0000FDFDFD00FDFDFD00FDFDFD00000000008882E3003427D000EEEDFA00FFFF
      FB00FBFBFB00F9F9F900FAFAFA00FAFAFA00FAFAFA00F8F8F800F9F9F900F8F8
      F700F8F8F800F8F8F800F7F7F700F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C7C5C40000000000FDFD
      FD00FCFCFC00FCFCFC00FCFCFC00FDFDF600C9C6ED000900CA005546DB000000
      0000FDFDFD00FCFCFC00FBFCFC00FAFAFA00F8F8F800F9F9F800FDFDF700FFFF
      F800F8F8F800F7F7F700F5F5F500F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D1CECE0000000000FCFC
      FC00FCFCFC00FCFCFC00F7F7F700C2BFBD00E1E1D4001200CB000C00CF00B7B7
      D300E3E1DB00E3E1E000E9E7E700EEEEEE00F5F5F500FFFFF700CFCDF400766B
      EC00F0EFF600F7F7F600F7F7F700F4F4F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFBFB00DEDCDC0000000000FCFC
      FC00FBFBFB00FDFDFD00ECEBEB00DDDBDA00000000008A85E3000500CC004333
      DB00FFFFFE00F3F3F300EEECEC00EBEAEA00F5F5E500A8A5DF003C2BDE00A59E
      ED00FFFFF700F7F7F700F5F5F500F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFAFA00E3E2E20000000000FBFB
      FB00FCFCFC00FEFEFE00E9E8E800E5E3E30000000000D0D0F1000000C9000800
      CE00E7E8F800FEFEF900FBFBFA00FFFFFB00C8C6F6000C00E3004F40DD00E4E3
      F400FBFBF700F5F5F500F6F6F600F4F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900E6E4E400FDFDFD00FCFC
      FC00FCFCFC0000000000DCDADA00EDECED00FCFCFB00FFFFFC00574EDA000500
      CE004E45DD00FFFFFD00FFFFFB00A09DED000000DB00402CE600DCDADE00FBFC
      F600F6F6F600F6F6F600F4F3F400F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F4F400EDECEC00FDFDFD00FCFC
      FC00FBFBFB00FEFFFF00D3D1D000F1F0F000FBFBFB00FDFEFA00FFFFFD001200
      CF000200D100B7B9F000493FDE000100D8001200DD00DCDBF500EDECE200F7F7
      F700F6F6F600F4F3F400F4F3F400F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0EFEF00F5F5F500FCFCFC00FBFB
      FB00FAFAFA0000000000D0CECD00F7F6F600FAFAFA00F9F9F900FFFFFA008D87
      E6000D00D2000D00D6001300D8001100DB00DBDBF400FFFFF600E6E5E400F7F8
      F800F4F4F400F3F3F300F4F4F500F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEEDEC00FAF9F900FCFCFC00FAFA
      FA00FBFBFB00FEFFFF00CDCBCA00FBFBFB00FAFAFA00FEFEF900FFFFFD00A39F
      EB000B00D2001D00D9000E00D700BDBEF000FFFFF900F3F3F300E8E7E700F6F7
      F700F4F4F400F5F5F500F5F5F500F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDEBEB00FBFAFB00FBFBFB00FBFB
      FB00FAFAFA00FBFBFB00C7C3C200FDFDFD00FFFFFB00DEDFF300675DDD000700
      CD000D00D2001A00D9000F00D800C6C3F100FFFFF800F0F0F000EAE9E900F5F6
      F600F4F5F400F5F5F500F2F2F200F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEEDEC00F9F9F900FBFBFB00F9F9
      F900FAFAFA00F5F6F600C0BCBC0000000000928EE3000300C7000600CB000B00
      CE009694EA001802D7001800D9001807DB00FFFFF800F0F0EC00EDECEB00F5F5
      F500F5F5F500F4F4F400F2F2F200F7F6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F0F000F9FAFA00F9F9F900F9F9
      F900FBFBFB00F0F0F000B1AEAD00FCFCF2009B97E3000000CB004339D900EEEF
      FB00FFFFFD00B0AEEE000400D7001000DA004940E500FAFAEB00F0F0EF00F5F5
      F500F3F3F300F4F4F400F2F1F100F8F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F2F200FAFAF900F9F9F900FAFA
      FA00FAFBFB00F6F6F600CAC7C600C2BEBC00CFCCC6007673C600E4E3D500E4E2
      DB00E8E7E500FEFEEF00433AD9000B00DA000B00DE00B2B0E200FFFFF100F5F5
      F500F3F4F400F4F3F300F2F0F000F9F8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F2F200FAFAFA00FAFAFA00FAFA
      FA00F8F8F800F9FAFA00FCFCFD00FCFCFC00FDFDFC00FFFFFA00F5F5F400F2F1
      F100EAEAEA00E8E6E300FFFFE3005148E0000700DD001300DF00C8C6EF00FCFC
      F500F4F4F300F2F3F300F0F0F000FAFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F3F300FAFAFA00FAFAFA00F8F8
      F800F9F9F900F7F7F700F7F7F700F8F8F800F8F8F800F7F7F700F7F7F700F7F7
      F700F7F7F700F6F5F500F9F9F700FEFEF7004E43E4000500DE003628E500A59E
      ED00FAFBF300F2F3F300F1F0F000FBFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F4F400FAFAFA00F8F8F800F9F9
      F900F7F7F700F8F8F800F8F8F800F8F8F800F6F6F600F7F7F700F5F6F500F6F6
      F600F4F4F400F3F3F400F4F5F500F8F8F500FFFFF500EBECF200FFFFF400F9F8
      F200F4F3F300F2F3F300F2F1F100FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F6F600F9F9F900F9F9F900F8F8
      F800F7F7F700F8F8F800F8F8F800F7F7F700F7F7F700F6F6F600F6F6F600F5F5
      F500F4F3F400F4F4F500F5F5F500F4F4F400F4F4F400F5F6F300F4F3F200F4F3
      F300F3F3F300F2F2F200F2F1F100FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900F7F7F700F7F7F700F7F7
      F700F7F7F700F8F8F800F7F6F600F7F7F700F6F6F600F5F5F400F5F4F000FAFB
      F800F4F5F500F5F5F500F4F4F400F3F4F400F3F3F300F2F2F200F2F3F300F2F3
      F200F3F2F200F2F1F100F2F2F200FFFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00FCFCFC00FBFBFB00F9F9
      F900F7F8F700F7F7F700F6F6F600F5F5F500F6F6F600E5E2D8009793AB00A7A3
      AD00FEFFFA00F3F3F300F3F3F300F3F3F300F3F2F200F3F3F300F3F3F300F3F2
      F100F1F1F100F1F1F100F4F2F200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE0000000000D0D0E90000009F002626
      DF00FFFFFB00F6F6F500F4F4F400F3F3F300F2F1F100F1F0F000F1EFEF00F1F0
      F000F2F1F100F1F1F100F5F4F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E3E3E300E2E2E200E0E0
      E000DFDFDF00DDDDDD00DDDDDD00DDDDDD00DCDCDC00DDDDDD00DDDDDD00DDDD
      DD00DCDCDC00DDDDDD00DFDEDF00DDDEDD00BBDBC700C2DCCB00C2DCCB00E9E3
      E700EFEEEE00FFFFFF00FFFFFF00FFFFFF0000000000F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F90000000000000000000000000000000000FBFBFB00FAFAFA00F9F9
      F900F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700F8F8F800F8F8F800F8F8
      F800FDFDFA00FAFAF800F5F5F700FFFFFB00F9F9F900FAFAFA00FAFAFA00FBFB
      FB00FFFFFE00F8F8F900FBFBFC000000000000000000D3D3D300BCBCBC00BEBE
      BE00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00C2BFC100D3C0CA005BB781001CAF590019B0570099BBA800CCBFC700BEBE
      BE00BBBBBB00F7F7F7000000000000000000F3F3F300BEBEBE00C0C0C000C0C0
      C000C0C0C000BFBFBF00BFBFBF00BFBFBF00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BFBFBF00CDC0C80047B16F001CAB530015AA4E0015AA4E008DB7
      9D00E9E3E700FFFFFF00FFFFFF00FFFFFF00F7F7F700B5B5B500BCBCBC00BCBC
      BC00BBBBBD00BBBBBD00BBBBBD00BBBBBD00BBBBBD00BBBBBD00BBBBBD00BBBB
      BD00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BBBB
      BB00BABABA00000000000000000000000000FDFDFD00C2C2C200C1C1C100C0C0
      C000BFBFBF00BFBFBF00BFBFBF00BEBEBE00BEBEBE00BEBEBE00BEBEBE00C2C2
      BF00B8B8BC000000770000007500BABABB00C8C8C300C1C1C100C1C1C100CACA
      C500CECECF000101770000007700E7E7F20000000000C5C5C500BFBFBF00C0C0
      C000C1C1C100C0C0C000C1C1C100C0C0C000C0C0C000C1C1C100C0C0C000C8C0
      C400C1C0C00036BA730022B867002CB96F002CB96E0019B8620096BEA900CEC0
      C700B9B9B900EEEEEE000000000000000000E5E5E500BCBCBC00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C1C1
      C100BFBFBF00C0C0C000D0C1C90041B674002BB5670023B5630023B5630084B9
      9B00DBD4D800FFFFFF00FFFFFF00FFFFFF00F7F7F700BABABA00C2C2C200C3C4
      C400CBC6C000CAC6C100CAC6C100CAC6C100CAC6C100CAC6C100CAC6C100CAC6
      C100CCC9C500D0D0D100C3C3C300C2C2C200C2C2C200C2C2C200C2C2C200C1C1
      C100BFBFBF00000000000000000000000000F8F8F800BBBBBB00C3C3C300C3C3
      C300C3C3C300C4C4C400C4C4C400C4C4C400C4C4C400C3C3C300C3C3C300D6D6
      CA001C1C850000007C000404800004047C00BDBDBE00D5D5CA00D5D5CA00BCBC
      BE0001017A0003037F0000007A003F3F960000000000C6C6C600BFBFBF00C0C0
      C000C1C1C100C0C0C000C1C1C100C0C0C000C0C0C000C1C1C100CFC0C700A2C0
      B1001FBE6F0023BE710028BF740025BD710027BE730028BF730015BE6A0095C0
      AA00C9BAC100EEEEEE000000000000000000E6E6E600BCBCBC00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000D0C1C9003EBC7A0027BB6E001FBB69001FBB690083BB
      9E00DDD5D900FFFFFF00FFFFFF00FFFFFF00F7F7F700BABABA00C1C1C200BCBD
      BB00AAA49800ADA69C00ADA69C00ADA69C00ADA69C00ADA69C00ADA69C00B3AC
      A100726F6A0043424200BBBABA00C4C0C000C1C0BF00C1C1C100C1C1C100C0C0
      C000BFBFBF00000000000000000000000000F9F9F900BCBCBC00C3C3C300C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C3C3C300C3C3C300CCCC
      C5008686B90000007D000B0B8800070789000C0C88009A9AB5009A9AB5000D0D
      8800080889000C0C880000007800A7A7D90000000000C9C9C900C2C2C200C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400D3C3CA007BC4A20013C4
      700024C5790024C479001EC3760041D58D0025C77B0023C4780025C5790013C5
      710090BEA900FEF1F7000000000000000000E8E8E800C1C1C100C5C5C500C5C5
      C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C7C5C600D4C6
      CC00D5C6CD00D5C6CD00E6C6D50040C0820024BF73001BBF6F001BBF6F008FC0
      A800F1DAE500FFFFFF00FFFFFF00FFFFFF00F8F8F800BFBFBF00C6C6C600C9C9
      C900D2D2D500D1D2D500D1D2D500D1D2D500D1D2D500D1D2D500D1D2D500D7D7
      DA00A8A9A90029343400C1E5F500C5E6F200D3D4D200CDC5C400CDC5C400C5C5
      C500C4C4C400000000000000000000000000F8F8F800BEBEBE00C5C5C500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C4C4C400C5C5C500C5C5
      C500D7D7CA005757AE00000084000E0E8E000C0C900000008B0000008B000C0C
      91000E0E9000000082005A5AB6000000000000000000CECECE00C8C8C800C2C2
      C200B7B7B700B8B8B800B8B8B800B8B8B800BFB6BA0075CAA40008CB740022CA
      80001FCA7E001BCC7D005DD99F00C1C6C4007BD5AA001BCE7E001FCA7E0021CA
      7F000BC67200B4EAD2000000000000000000EAEAEA00C6C6C600C9C9C900C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900CBC9CA00C7CAC8004EC7
      8E004FC78E004FC78F0054C792002AC57D0024C57A0021C5790021C579003EC6
      860057CB95005ED69E0056D399009BE4C200F8F8F800C4C4C400CBCBCC00C5C3
      C100A0988800A29C8C00A29C8C00A39C8C00A39C8C00A39C8C00A29C8C00A39C
      8B00A5A39600ACE7FF00B5DDF200C1E3F40056C6F50092C1D20092C1D200D5CA
      C800C9C9C900000000000000000000000000F9F9F900C3C3C300C7C7C700BBBB
      BB00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BDBDBD00CACACA00C9C9C900C9C9
      C900CACAC900DEDECF005959B400070792001010980011119900111199001111
      9700050591005D5DBE00000000000000000000000000D0D0D000CACACA00CCCC
      CC00CDCDCD00CDCDCD00CDCDCD00CDCDCD00D0CDCE00C3CDC8003CD9940011CB
      7E001FD3860072D9AA00D5C9CE00D1CBCE00DBC9D10077D7AC0019D283001CCD
      82001ECE840005C87500BAEFD90000000000EBEBEB00C9C9C900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00D4CDD0008ECBB0000BC9
      74001CC97C001CCA7B001CCA7B0021CA7E0022CA7F0022CA7F0022CA7F001ECA
      7D001BC97B001AC779001AC8790014C67600F9F9F900C8C8C800CECECE00D1D0
      D200DBDCDE00DADCDE00DADCDE00DBDCDE00DBDCDE00DBDCDE00DBDCDE00DADA
      DC00D5D2D10097CDED0092D1F20050BEEF0052BDEF0030B5ED0030B5ED00C1CA
      CD00D0CECC00000000000000000000000000F9F9F900C7C7C700CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00D7D7D000CCCCCC0009099A0012129D001313A0001313A0001212
      9E0007079700F2F2F600000000000000000000000000D3D3D300CDCDCD00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00D5CDD100BCD0C70033DF
      960089D7B500DCCCD300D0CECF00CECECE00CFCECE00DDCCD30079DAB00017D5
      87001AD186001BD1870003CC7A00BAF1DB00EDEDED00CDCDCD00D0D0D000D0D0
      D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D7D0D30099D1B8000ED0
      7D0014CD7E0014CD7F0015CD7F001DCE830020CE840020CE840020CE840019CE
      810014CC7E0012CB7C0010CA7B0023CF8500F9F9F900CACACA00D0D0D000C7C7
      C300968C7C009C9283009C9283009C9283009C9283009C9283009C928300958F
      7D00E1D9D50076C2EC0002A6E20067C4F20032B4E9004BBDF1004BBDF1003CB6
      E200E7D3CC00000000000000000000000000F9F9F900CACACA00D0D0D000D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400DCDCD600CACACD000A0A99001010A2001414A5000D0DA5000D0DA5001414
      A4001010A3000C0C9600EEEEF4000000000000000000D5D5D500CFCFCF00D1D1
      D100CECECE00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00D4CED100D2CE
      D000D8CED200CFCFCF00CFCFCF00CFCFCF00CFCFCF00D0CFCF00E0CDD5007ADD
      B20015D88A0018D48A001AD48B0000CF7C00EEEEEE00D0D0D000D3D3D300D3D3
      D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D4D3D400D5D2D30090DA
      B90094DBBB0094DBBB00A0DBC00031D490001AD1860014D1830014D1830069D7
      A800A0E1C400A9F1D100A3EFCD00CCF5E400FAFAFA00CECECE00D3D3D300D4D4
      D400D2D3D300D2D4D400D2D4D400D3D4D400D3D4D400D3D4D400D2D3D400D4D4
      D500DBD8D800CAD6DC003CBCF60028B1E80047B9EC002EB3EB002EB3EB0029B2
      EC0084C1D800000000000000000000000000FAFAFA00CECECE00D0D0D000BBBB
      BB00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00C1C1
      BF00B4B4BA000C0C99000E0EA2001414A8000808AA005858C5005858C5000808
      AA001414A8000E0EA2000D0D9700EEEEF40000000000D9D9D900D4D4D400CACA
      CA00BCBCBC00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BFBD
      BE00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BFBEBF00E5D3
      DB007BDDB50014DA8D0015D78D000DD58900EFEFEF00D3D3D300D6D6D600D6D6
      D600D5D5D500D5D5D500D5D5D500D6D6D600D6D6D600D6D6D600D7D6D600DED5
      D900DED5D900DFD5D900F2D5E10036D3950017D489000DD485000DD4850090D3
      B900F7E3EC00FFFFFF00FFFFFF00FFFFFF00F9F9F900D2D2D200D7D7D800D2D1
      D000BBB4AB00BEB7AF00BEB7AF00BDB7AF00BDB7AF00BDB7AF00BDB7AF00BDB7
      AF00BDB6AE00C5B7AB009FB4B80044BAED0031B4EA001DAFE6001DAFE60034B4
      EB000BA8E600A8DCF6000000000000000000FAFAFA00D2D2D200D7D7D700D8D8
      D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D7D7D800ECEC
      DE002626A10008089D001313A6000202A9009393D300F8F8DA00F8F8DA009999
      D4000202AA001414A80006069D004747AD0000000000DADADA00D5D5D500D7D7
      D700D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9
      D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D8D8D800D7D6
      D600E3D3DA0084E6BE000DD88B0030DF9A00F0F0F000D6D6D600D9D9D900D9D9
      D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9
      D900D9D9D900D9D9D900EDD9E00033D7970016D68C000BD688000BD688008DD6
      BA00EEE5E800FFFFFF00FFFFFF00FFFFFF00FAFAFA00D6D6D600DBDBDB00D5D6
      D600C9C5C000CAC7C400CAC7C400CAC7C400CAC7C400CAC7C400CAC7C400CAC7
      C400CAC7C400CAC7C400D2C5BC00B7CFDA0039B8F10028B0E80028B0E80007A7
      E4001BAFEA0049B1D7000000000000000000FAFAFA00D5D5D500D9D9D900DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00E4E4
      DD009B9BCF000404A0000000A4009393D400EDEDDD00DADAD900DADAD900ECEC
      DB009898D7000000A20000009B00ABABE00000000000DCDCDC00D7D7D700D8D8
      D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8
      D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8
      D800D6D4D500FFF7FD0097F0CB00E2FAF100F1F1F100DADADA00DCDCDC00DCDC
      DC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDC
      DC00DBDBDB00DCDCDC00F0DCE3002ED8980011D88E0006D8880006D888008BD9
      BC00F1E7EB00FFFFFF00FFFFFF00FFFFFF00FAFAFA00D8D8D800DCDCDC00DEDD
      DD00DCDCDD00DCDDDD00DCDDDD00DCDDDD00DCDDDD00DCDDDD00DCDDDD00DCDD
      DD00DCDDDD00DCDDDD00DEDEDE00EBE0D9009ED2EE0037B8ED0037B8ED0015AB
      E600C7E4E700AC9CBF0014138A00FFFFFE00FBFBFB00D9D9D900DBDBDB00D0D0
      D000D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100DFDFD400A0A0C9009E9ECB00E1E1D300D0D0D000D4D4D400D4D4D400DCDC
      DB00F7F7EB00B9B9EE00C0C0EC000000000000000000DEDEDE00DBDBDB00DBDB
      DB00D9D9D900DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00D9D9D900D9D9D900DBDB
      DB00D8D8D800F6F6F6000000000000000000F2F2F200DBDBDB00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00ECDDE40063E1AF0016DE910013DF900013DF9000B4DD
      CD00EFE9EB00FFFFFF00FFFFFF00FFFFFF00FBFBFB00DADADA00DFDFDF00D2D2
      CE008E847200948C7B00948C7B00948C7B00948C7B00948C7B00948C7B00948C
      7B00948B7B0091897800AAA49800E4E4E300E5E0DD0060C3F70060C3F700D8EF
      E5006C66AB000000820000009100E7E7F500FBFBFB00DBDBDB00DBDBDB00C5C5
      C500C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7
      C700C7C7C700CECEC900CECEC800C7C7C700C6C6C600CECECE00CECECE00DDDD
      DD00E8E8E70000000000000000000000000000000000E0E0E000DEDEDE00D1D1
      D100BEBEBE00C0C0C000BFBFBF00BFBFBF00C0C0C000BFBFBF00C0C0C000C0C0
      C000BFBFBF00C0C0C000C0C0C000BFBFBF00C0C0C000BFBFBF00C2C2C200DFDF
      DF00DADADA00F6F6F6000000000000000000F3F3F300DEDEDE00DFDFDF00DFDF
      DF00E0E0E000DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00E0DFE000EBDFE400D1E0DA00DBE0DE00DBE0DE00E7DE
      E100EAEAEA00FFFFFF00FFFFFF00FFFFFF00FCFCFC00DCDCDC00DFDFDF00E3E4
      E500EEEFF100EDEEF100EDEEF100EEEEF100EEEEF100EEEEF100EDEEF100EDEF
      F100E9EAEB00E8E9EB00E6E6E700DFDFE000E3E2E100E7DFD700E7DFD7002A27
      910000008E000201A100D0CEF40000000000FCFCFC00DEDEDE00E1E1E100E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E2E2E200E2E2E200E0E0
      E000E9E9E90000000000000000000000000000000000E2E2E200DEDEDE00E0E0
      E000E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1
      E100E2E2E200E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100DFDF
      DF00DCDCDC00F7F7F7000000000000000000F3F3F300E1E1E100E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E6E2E400E5E2E300E5E2E300E1E1
      E100ECECEC00FFFFFF00FFFFFF00FFFFFF00FBFBFB00DFDFDF00E3E3E400DAD8
      D5009E968600A39D8E00A39D8E00A39D8E00A39D8E00A39D8E00A39D8D009F99
      8A00EAEBEB00E1E1E200E2E2E200E2E2E200E2E2E200EFEFE700EFEFE7007370
      C7005A58C000000000000000000000000000FBFBFB00DFDFDF00E3E3E300E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E4E4E400E4E4E400E1E1
      E100EBEBEB0000000000000000000000000000000000E4E4E400E1E1E100E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E1E1E100E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E1E1
      E100DFDFDF00F7F7F700000000000000000000000000E3E3E300E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E4E4E400E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E4E4
      E400EDEDED00FFFFFF00FFFFFF00FFFFFF00FBFBFB00E1E1E100E5E5E500E8E8
      E800F5F6F900F4F5F800F4F5F800F4F5F800F4F5F800F4F5F800F4F5F800F4F5
      F800EDEEEF00EDEEEF00EDEEEF00EDEEEF00E9EAEB00E4E4E400E4E4E400F2F1
      E800F5F4E800000000000000000000000000FCFCFC00E2E2E200E1E1E100C7C7
      C700C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C8C8C800D1D1D100D1D1D100E5E5
      E500ECECEC0000000000000000000000000000000000E5E5E500E2E2E200E4E4
      E400E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E0E0E000F7F7F7000000000000000000F5F5F500E4E4E400E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E5E5
      E500EEEEEE00FFFFFF00FFFFFF00FFFFFF00FCFCFC00E2E2E200E7E7E800DAD9
      D60090877600978F8000978F8000978F8000978F8000978F8000978F8000978F
      8000988F8000988F8000988F8000948B7C00BAB3AB00EAECEC00EAECEC00E5E5
      E500E5E5E500000000000000000000000000FCFCFC00E3E3E300E6E6E600E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E6E6E600E6E6E600E5E5
      E500EDEDED0000000000000000000000000000000000E7E7E700E6E6E600D7D7
      D700C1C1C100C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C6C6C600E8E8
      E800E3E3E300F8F8F8000000000000000000F5F5F500E7E7E700E8E8E800E8E8
      E800E9E9E900E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800F0F0F000FFFFFF00FFFFFF00FFFFFF00FCFCFC00E6E6E600ECEAEB00F4EA
      F000EBE2E500ECE4E600ECE4E600ECE4E600ECE4E600ECE4E600ECE4E600ECE4
      E600ECE4E600ECE4E600ECE4E600ECE3E500EFE7EB00F5ECF200F5ECF200EAE9
      EA00E8E8E800000000000000000000000000FCFCFC00E6E6E600E9E9E900EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00E9E9E900E9E9E900E9E9E900E9E9E900E8E8E800E8E8E800E7E7
      E700EEEEEE0000000000000000000000000000000000E8E8E800E6E6E600E8E8
      E800E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E8E8E800E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E8E8E800E7E7
      E700E4E4E400F9F9F9000000000000000000F6F6F600E8E8E800E9E9E900E9E9
      E900EAEAEA00E9E9E900E9E9E900EAEAEA00E9E9E900E9E9E900E9E9E900EAEA
      EA00E9E9E900EAEAEA00EAEAEA00EDEDED00F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300FFFFFF00FFFFFF00FFFFFF00FCFCFC00EAE8E900DEE7E50088CF
      A50089CFA90089CFA90089CFA90089CFA90089CFA90089CFA90089CFA90089CF
      A90089CFA90089CFA90089D0A90088D0A80080D4A6007CD4A3007CD4A300F4F5
      F600F3F2F200000000000000000000000000FCFCFC00E7E7E700E9E9E900DFDF
      DF00E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E1E1E100EAEAEA00EEEEEE00F4F4F400F4F4F400F4F4F400F4F4
      F400F5F5F50000000000000000000000000000000000EAEAEA00E7E7E700E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E6E6E600F9F9F9000000000000000000F7F7F700E9E9E900EAEAEA00EAEA
      EA00EBEBEB00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EEEEEE00D3D3D300999999009F9F9F009F9F9F008C8C
      8C00D9D9D900FFFFFF00FFFFFF00FFFFFF00FBFBFB00F0E9EC00AEDDC9000DB5
      5E001CBB69001DBB69001DBB69001DBB69001DBB69001DBB69001DBB69001DBB
      69001DBB69001DBB69001CBB690018BC6900618D75005F8470005F8470008387
      85009998980000000000FEFEFE0000000000FCFCFC00EAEAEA00E8E8E800D3D3
      D300D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5
      D500D4D4D400D8D8D800F2F2F200CACACA008D8D8D0093939300939393008383
      8300C0C0C00000000000000000000000000000000000EBEBEB00E8E8E800EAEA
      EA00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00EBEBEB00EAEAEA00E9E9E900EDEDED00EDEDED00EDED
      ED00EBEBEB00FAFAFA000000000000000000F7F7F700EAEAEA00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00F6F6F600979797006C6C6C0055555500555555009E9E
      9E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00F1EBED00ADE2CC000EC4
      710018C6770018C6770018C6770018C6780018C6770018C6780018C6770018C6
      770018C6770018C6770017C777001AC57800866B77006A6668006A6668006565
      6500FDFDFD00000000000000000000000000FCFCFC00EAEAEA00ECECEC00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EDEDED00F6F6F600989898007171710065656500656565006969
      69000000000000000000000000000000000000000000ECECEC00EBEBEB00DBDB
      DB00C2C2C200C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5
      C500C4C4C400C4C4C400CDCDCD00EEEEEE00F0F0F000CCCCCC00CFCFCF00D1D1
      D100C8C8C800F5F5F5000000000000000000F7F7F700EBEBEB00EBEBEB00EBEB
      EB00ECECEC00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00ECEC
      EC00EBEBEB00EBEBEB00F8F8F80090909000484848009A9A9A009A9A9A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00ECEBEB00E1EBEA007CE0
      B2007DE1B6007DE2B6007DE2B6007EE3B7007DE2B6007FE3B7007EE2B6007DE2
      B6007DE2B6007DE2B6007DE3B70081E1B5005D5459004D4D4D004D4D4D000000
      000000000000000000000000000000000000FCFCFC00EBEBEB00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00ECECEC00F8F8F800919191005151510066666600666666000000
      00000000000000000000000000000000000000000000ECECEC00EBEBEB00EBEB
      EB00EBEBEB00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00EBEBEB00ECECEC00EBEBEB00F1F1F100BBBBBB006C6C6C006E6E6E005454
      54009A9A9A00000000000000000000000000F6F6F600EBEBEB00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00EBEBEB00ECECEC00FAFAFA006B6B6B008D8D8D00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00EAEAEA00EFECED00F9ED
      F300F8ECF300F7EDF300F7EDF300F8EDF300F7EDF300F8EDF300F7EDF300F7ED
      F300F7EDF300F7EDF300FAEFF600F2E8EF002B2B2B00DDDDDD00DDDDDD000000
      000000000000000000000000000000000000FCFCFC00EBEBEB00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00FBFBFB006D6D6D008080800000000000000000000000
      00000000000000000000000000000000000000000000EDEDED00EBEBEB00EBEB
      EB00ECECEC00EBEBEB00ECECEC00EBEBEB00EBEBEB00ECECEC00EBEBEB00EBEB
      EB00ECECEC00EBEBEB00EBEBEB00F3F3F300AEAEAE006A6A6A00565656009494
      940000000000000000000000000000000000FDFDFD00F2F2F200F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F9F9F900C2C2C200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00F1F1F100F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F4F4F300E5E5E500CECECE0000000000000000000000
      000000000000000000000000000000000000FEFEFE00F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F9F9F900B4B4B4000000000000000000000000000000
      00000000000000000000000000000000000000000000EDEDED00EAEAEA00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00F4F4F400A7A7A70045454500878787000000
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
      000000000000000000000000000000009E000100000000000000000090F80000
      0000000000000000900000000000000000000000910000000000000000000000
      910000000000000000000000A01000000000000000000000A000000000000000
      0000000020800000000000000000000020800000000000000000000004000000
      0000000000000000000000000000000000000000040000000000000000000000
      0000000000000000000000000000000000000000000000000100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010000000000
      00000000FE800100000000000000000080000080000780000180000300000000
      0007000000800003000000000007000000800003000000000007000000800003
      0000000000070000018000030000000000070000038000010000000000070000
      0380000000000000000700000180000000000000000700000080000000000000
      0003000000800000000000000003000000800000000000000000000001800003
      0000000000000000078000030000000000010000078000030000000000070000
      0780000380000000000700000780000300000000000700000780000300000000
      0007000007800003000000000007000007800003000000000005000007800003
      00000000000700000F80000300000000001F00001F80000700000000001F0000
      7F80000F00000000007F0000FF80001F00000000000000000000000000000000
      000000000000}
  end
  object FT: TIBQuery
    Database = FBird.DBERP
    Transaction = TEdicao
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT PK.ID,PK.PRO_CART,PK.PRO_FOTO'
      'FROM   CAD_PRO_IMG AS PK'
      'WHERE  PK.PRO_CART = :ARTIGO')
    Left = 705
    Top = 440
    ParamData = <
      item
        DataType = ftString
        Name = 'ARTIGO'
        ParamType = ptUnknown
        Size = 21
      end>
    object FTID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_IMG"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FTPRO_CART: TIBStringField
      FieldName = 'PRO_CART'
      Origin = '"CAD_PRO_IMG"."PRO_CART"'
    end
    object FTPRO_FOTO: TBlobField
      FieldName = 'PRO_FOTO'
      Origin = '"CAD_PRO_IMG"."PRO_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
  object DTSFT: TDataSource
    DataSet = FT
    Left = 736
    Top = 440
  end
  object SQLConsulta_Aux: TIBSQL
    Database = FBird.DBERP
    Transaction = TConsulta
    Left = 672
    Top = 344
  end
  object SQLEdicao_Aux: TIBSQL
    Database = FBird.DBERP
    Transaction = TEdicao
    Left = 768
    Top = 344
  end
end
