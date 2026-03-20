inherited FrmProduto_SubGrupo: TFrmProduto_SubGrupo
  Left = 585
  Top = 117
  HelpContext = 80
  Caption = 'Tabela de Sub Grupos de Produtos'
  ClientHeight = 674
  ClientWidth = 834
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBRodape: TdxStatusBar
    Top = 653
    Width = 834
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
        Width = 560
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
    Left = 65
    Top = 61
    Width = 769
    Height = 592
    inherited TSPrincipal: TdxTabSheet
      inherited PNLPrincipal: TPanel
        Width = 769
        Height = 592
        inherited DSConsulta: TdxDockSite
          Width = 769
          Height = 592
          DockType = 0
          OriginalWidth = 769
          OriginalHeight = 592
          inherited dxLayoutDockSite3: TdxLayoutDockSite
            Width = 769
            Height = 592
            DockType = 1
            OriginalWidth = 300
            OriginalHeight = 200
          end
          inherited DPConsulta: TdxDockPanel
            Width = 769
            Height = 592
            DockType = 1
            OriginalWidth = 470
            OriginalHeight = 285
            inherited PNLConsulta: TPanel
              Width = 765
              Height = 566
              inherited PNLConsultaProc: TPanel
                Top = 566
                Width = 765
                inherited PBConsultaProc: TProgressBar
                  Width = 765
                end
              end
              inherited PCConsulta: TdxPageControl
                Width = 765
                Height = 566
                inherited TSConsulta: TdxTabSheet
                  inherited DBGConsulta: TdxDBGrid
                    Width = 765
                    Height = 566
                    KeyField = 'ID'
                    ShowSummaryFooter = True
                    Filter.Active = True
                    Filter.Criteria = {00000000}
                    object DBGConsultaID: TdxDBGridMaskColumn
                      DisableEditor = True
                      Width = 50
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'ID'
                      SummaryFooterType = cstCount
                      SummaryFooterField = 'ID'
                      SummaryFooterFormat = '0'
                      DisableFilter = True
                    end
                    object DBGConsultaDESCRICAO: TdxDBGridMaskColumn
                      Width = 450
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'DESCRICAO'
                    end
                    object DBGConsultaREFERENCIA: TdxDBGridMaskColumn
                      Width = 100
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'REFERENCIA'
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
    end
  end
  inherited BMMain: TdxBarManager
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
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
            Item = BLBPesquisa
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
        Visible = True
        WholeRow = False
      end
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
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
          end
          item
            Item = BLBPost
            Visible = True
          end
          item
            Item = BLBCancel
            Visible = True
          end>
        Name = 'Edicao'
        OneOnRow = True
        RotateWhenVertical = False
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
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
      65
      0
      61
      0)
    inherited BLBAppend: TdxBarLargeButton
      ImageIndex = 4
    end
    inherited BLBEdit: TdxBarLargeButton
      ImageIndex = 5
    end
    inherited BLBCancel: TdxBarLargeButton
      ImageIndex = 8
    end
  end
  inherited Cadastro: TIBDataSet
    AfterEdit = CadastroAfterEdit
    AfterInsert = CadastroAfterInsert
    OnCalcFields = CadastroCalcFields
    OnNewRecord = CadastroNewRecord
    DeleteSQL.Strings = (
      'delete from TAB_SGP'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_SGP'
      
        '  (CDST, DESCRICAO, DTED, DTST, HOST, ID, IDCA, IDED, IDEP, IDST' +
        ', IP, REFERENCIA, '
      '   REST)'
      'values'
      
        '  (:CDST, :DESCRICAO, :DTED, :DTST, :HOST, :ID, :IDCA, :IDED, :I' +
        'DEP, :IDST, '
      '   :IP, :REFERENCIA, :REST)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DESCRICAO,'
      '  IDEP,'
      '  IDCA,'
      '  DTCA,'
      '  IDED,'
      '  DTED,'
      '  IDST,'
      '  DTST,'
      '  CDST,'
      '  REST,'
      '  REFERENCIA,'
      '  IP,'
      '  HOST'
      'from TAB_SGP '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_SGP'
      'WHERE ID > 0'
      'ORDER BY ID')
    ModifySQL.Strings = (
      'update TAB_SGP'
      'set'
      '  CDST = :CDST,'
      '  DESCRICAO = :DESCRICAO,'
      '  DTED = :DTED,'
      '  DTST = :DTST,'
      '  HOST = :HOST,'
      '  ID = :ID,'
      '  IDCA = :IDCA,'
      '  IDED = :IDED,'
      '  IDEP = :IDEP,'
      '  IDST = :IDST,'
      '  IP = :IP,'
      '  REFERENCIA = :REFERENCIA,'
      '  REST = :REST'
      'where'
      '  ID = :OLD_ID')
    object CadastroID: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = '"TAB_SGP"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CadastroDESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"TAB_SGP"."DESCRICAO"'
      Size = 60
    end
    object CadastroIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"TAB_SGP"."IDEP"'
    end
    object CadastroIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"TAB_SGP"."IDCA"'
    end
    object CadastroDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"TAB_SGP"."DTCA"'
    end
    object CadastroIDED: TSmallintField
      FieldName = 'IDED'
      Origin = '"TAB_SGP"."IDED"'
    end
    object CadastroDTED: TDateTimeField
      FieldName = 'DTED'
      Origin = '"TAB_SGP"."DTED"'
    end
    object CadastroIDST: TSmallintField
      FieldName = 'IDST'
      Origin = '"TAB_SGP"."IDST"'
    end
    object CadastroDTST: TDateTimeField
      FieldName = 'DTST'
      Origin = '"TAB_SGP"."DTST"'
    end
    object CadastroCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"TAB_SGP"."CDST"'
    end
    object CadastroREST: TIBStringField
      FieldName = 'REST'
      Origin = '"TAB_SGP"."REST"'
      Size = 10
    end
    object CadastroREFERENCIA: TIBStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
      Origin = '"TAB_SGP"."REFERENCIA"'
      Size = 10
    end
    object CadastroIP: TIBStringField
      FieldName = 'IP'
      Origin = '"TAB_SGP"."IP"'
    end
    object CadastroHOST: TIBStringField
      FieldName = 'HOST'
      Origin = '"TAB_SGP"."HOST"'
      Size = 30
    end
    object CadastroC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
  end
end
