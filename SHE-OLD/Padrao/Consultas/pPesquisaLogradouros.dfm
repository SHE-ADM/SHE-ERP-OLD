inherited FrmPesquisaLogradouros: TFrmPesquisaLogradouros
  Left = 525
  Top = 202
  AlphaBlendValue = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Logradouros'
  ClientHeight = 536
  ClientWidth = 960
  FormStyle = fsNormal
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLPrincipal: TPanel
    Left = 0
    Top = 28
    Width = 960
    Height = 487
    inherited DSConsulta: TdxDockSite
      Width = 960
      Height = 487
      DockType = 0
      OriginalWidth = 960
      OriginalHeight = 487
      inherited LDSConsulta: TdxLayoutDockSite
        Width = 960
        Height = 487
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited TCDSConsulta: TdxTabContainerDockSite
        Width = 960
        Height = 487
        DockType = 1
        OriginalWidth = 470
        OriginalHeight = 285
        inherited DPMenu: TdxDockPanel
          Width = 960
          Height = 487
          DockType = 1
          OriginalWidth = 52
          OriginalHeight = 140
        end
        inherited DPConsulta: TdxDockPanel
          Width = 960
          Height = 487
          DockType = 1
          OriginalWidth = 470
          OriginalHeight = 285
          inherited PNLConsultaME: TPanel
            Height = 462
          end
          inherited PNLConsultaTOP: TPanel
            Width = 956
          end
          inherited PNLConsultaBOT: TPanel
            Top = 462
            Width = 956
          end
          inherited PNLConsultaMD: TPanel
            Left = 956
            Height = 462
          end
          inherited PNLConsulta: TPanel
            Width = 956
            Height = 462
            inherited PNLConsultaGrid: TPanel
              Width = 956
              Height = 462
              inherited DBGConsulta: TdxDBGrid
                Width = 956
                Height = 462
                KeyField = 'UF'
                ShowSummaryFooter = True
                Color = 15724785
                Filter.Active = True
                Filter.Criteria = {00000000}
                IndentDesc = 70
                PreviewFieldName = 'C_ABREV'
                OnCustomDrawCell = DBGConsultaCustomDrawCell
                object DBGConsultaTIPO: TdxDBGridMaskColumn
                  Width = 70
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TIPO'
                  SummaryFooterType = cstCount
                  SummaryFooterField = 'ID'
                  SummaryFooterFormat = '0'
                end
                object DBGConsultaLOGRADOURO: TdxDBGridMaskColumn
                  Width = 300
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'LOGRADOURO'
                  DisableFilter = True
                end
                object DBGConsultaCEP: TdxDBGridMaskColumn
                  Width = 70
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CEP'
                end
                object DBGConsultaCOMPLEMENTO: TdxDBGridMaskColumn
                  Width = 100
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'COMPLEMENTO'
                  DisableFilter = True
                end
                object DBGConsultaBAIRRO: TdxDBGridMaskColumn
                  Width = 200
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'BAIRRO'
                end
                object DBGConsultaCIDADE: TdxDBGridMaskColumn
                  Width = 150
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CIDADE'
                end
                object DBGConsultaUF: TdxDBGridMaskColumn
                  Width = 40
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'UF'
                end
                object DBGConsultaC_ID: TdxDBGridColumn
                  Visible = False
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'C_ID'
                end
              end
            end
          end
        end
      end
    end
  end
  inherited SBRodape: TdxStatusBar
    Top = 515
    Width = 960
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
        Width = 685
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
  inherited DTSCadastro: TDataSource
    Left = 752
    Top = 152
  end
  inherited TEdicao: TIBTransaction
    Left = 784
    Top = 120
  end
  inherited SQLEdicao: TIBSQL
    Left = 816
    Top = 120
  end
  inherited SPEdicao: TIBStoredProc
    Left = 848
    Top = 120
  end
  inherited TEvent: TIBTransaction
    Left = 880
    Top = 120
  end
  inherited SPEvent: TIBStoredProc
    Left = 912
    Top = 120
  end
  inherited EEvent: TIBEvents
    Left = 944
    Top = 120
  end
  inherited BMMain: TdxBarManager
    Bars = <
      item
        AllowQuickCustomizing = False
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
            BeginGroup = True
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
        Visible = False
        WholeRow = False
      end
      item
        AllowQuickCustomizing = False
        Caption = 'Edicao'
        Color = clBtnFace
        DockedDockingStyle = dsLeft
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsLeft
        FloatLeft = 0
        FloatTop = 0
        FloatClientWidth = 0
        FloatClientHeight = 0
        ItemLinks = <
          item
            Item = BLBAppend
            Visible = True
          end
          item
            Item = BLBEdit
            Visible = True
          end
          item
            Item = BLBDelete
            Visible = True
          end>
        Name = 'Edicao'
        OneOnRow = True
        RotateWhenVertical = False
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = False
        WholeRow = False
      end
      item
        AllowQuickCustomizing = False
        Caption = 'Pesquisa'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 724
        FloatTop = 370
        FloatClientWidth = 24
        FloatClientHeight = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemLinks = <
          item
            Item = BBPesquisa
            Visible = True
          end
          item
            Item = BEPesquisa
            Visible = True
          end>
        Name = 'Pesquisa'
        OneOnRow = True
        Row = 0
        UseOwnFont = True
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end>
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True)
    Left = 1008
    Top = 120
    DockControlHeights = (
      0
      0
      28
      0)
    inherited BLBRelatorios: TdxBarLargeButton
      Visible = ivNever
    end
    inherited BBPesquisa: TdxBarButton
      DropDownMenu = PMPesquisa
    end
    object BLBPesquisaCep: TdxBarLargeButton
      Action = ACTPesquisaCep
      Category = 3
    end
    object BLBPesquisaLogradouro: TdxBarLargeButton
      Action = ACTPesquisaLogradouro
      Category = 3
    end
    object BLBPesquisaBairro: TdxBarLargeButton
      Action = ACTPesquisaBairro
      Category = 3
    end
    object BLBPesquisaCidade: TdxBarLargeButton
      Action = ACTPesquisaCidade
      Category = 3
    end
  end
  inherited DMMain: TdxDockingManager
    Left = 976
    Top = 120
  end
  inherited ALMain: TActionList
    Left = 976
    Top = 152
    inherited ACTPesquisa_Rapida: TAction
      Category = 'Pesquisa'
    end
    object ACTPesquisaCep: TAction
      Category = 'Pesquisa'
      Caption = 'Cep'
      Hint = 'Pesquisa n'#250'mero do cep'
      OnExecute = ACTPesquisa_RapidaExecute
    end
    object ACTPesquisaLogradouro: TAction
      Category = 'Pesquisa'
      Caption = 'Logradouro'
      Hint = 'Pesquisa nome do logradouro'
      OnExecute = ACTPesquisa_RapidaExecute
    end
    object ACTPesquisaBairro: TAction
      Category = 'Pesquisa'
      Caption = 'Bairro'
      Hint = 'Pesquisa nome do bairro'
      OnExecute = ACTPesquisa_RapidaExecute
    end
    object ACTPesquisaCidade: TAction
      Category = 'Pesquisa'
      Caption = 'Cidade'
      Hint = 'Pesquisa nome da cidade'
      OnExecute = ACTPesquisa_RapidaExecute
    end
  end
  inherited SQLConsulta: TIBSQL
    Left = 752
    Top = 120
  end
  inherited TConsulta: TIBTransaction
    Left = 720
    Top = 120
  end
  inherited Cadastro: TIBQuery
    OnCalcFields = CadastroCalcFields
    SQL.Strings = (
      'SELECT *  FROM VW_TAB_CEP'
      'WHERE       ID = -1'
      'ORDER  BY LOGRADOURO')
    Left = 720
    Top = 152
    object CadastroID: TLargeintField
      FieldName = 'ID'
      Origin = '"VW_TAB_CEP"."ID"'
    end
    object CadastroTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"VW_TAB_CEP"."TIPO"'
      Size = 36
    end
    object CadastroLOGRADOURO: TIBStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'LOGRADOURO'
      Origin = '"VW_TAB_CEP"."LOGRADOURO"'
      Size = 76
    end
    object CadastroLOGRADOURO_ABREV: TIBStringField
      FieldName = 'LOGRADOURO_ABREV'
      Origin = '"VW_TAB_CEP"."LOGRADOURO_ABREV"'
      Size = 36
    end
    object CadastroCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VW_TAB_CEP"."CEP"'
      EditMask = '99999-999;0; '
      FixedChar = True
      Size = 8
    end
    object CadastroCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = '"VW_TAB_CEP"."COMPLEMENTO"'
      Size = 36
    end
    object CadastroBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VW_TAB_CEP"."BAIRRO"'
      Size = 72
    end
    object CadastroBAIRRO_ABREV: TIBStringField
      FieldName = 'BAIRRO_ABREV'
      Origin = '"VW_TAB_CEP"."BAIRRO_ABREV"'
      Size = 36
    end
    object CadastroCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VW_TAB_CEP"."CIDADE"'
      Size = 72
    end
    object CadastroCIDADE_ABREV: TIBStringField
      FieldName = 'CIDADE_ABREV'
      Origin = '"VW_TAB_CEP"."CIDADE_ABREV"'
      Size = 36
    end
    object CadastroCMUN: TIBStringField
      FieldName = 'CMUN'
      Origin = '"VW_TAB_CEP"."CMUN"'
      FixedChar = True
      Size = 7
    end
    object CadastroUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VW_TAB_CEP"."UF"'
      FixedChar = True
      Size = 2
    end
    object CadastroC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
    object CadastroC_ABREV: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_ABREV'
      Size = 512
      Calculated = True
    end
  end
  inherited ILMenu: TImageList
    Left = 688
    Top = 120
  end
  inherited PMPesquisa: TdxBarPopupMenu
    ItemLinks = <
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Item = BLBPesquisa_Rapida
        Visible = True
      end
      item
        BeginGroup = True
        Item = BLBPesquisaCep
        Visible = True
      end
      item
        Item = BLBPesquisaLogradouro
        Visible = True
      end
      item
        Item = BLBPesquisaBairro
        Visible = True
      end
      item
        Item = BLBPesquisaCidade
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end>
    Left = 1008
    Top = 152
  end
end
