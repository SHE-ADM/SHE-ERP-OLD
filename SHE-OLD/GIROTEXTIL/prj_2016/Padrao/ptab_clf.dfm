inherited frmtab_clf: Tfrmtab_clf
  Caption = 'Tabela de Classifica'#231#227'o Fiscal (N.C.M.)'
  ClientHeight = 608
  ClientWidth = 602
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Top = 589
    Width = 602
  end
  inherited SpeedBar2: TSpeedBar
    Width = 602
    inherited siEVE: TSpeedItem [4]
    end
    inherited siPSQ: TSpeedItem [5]
      Visible = False
    end
    inherited siREF: TSpeedItem [6]
      Left = 2
    end
    inherited siSAIR: TSpeedItem [7]
      Left = 222
    end
    inherited siLIXO: TSpeedItem [8]
      Left = 202
      Visible = False
    end
    inherited siREL: TSpeedItem [9]
      Left = 292
      Visible = False
    end
  end
  inherited pnldir: TPanel
    Left = 602
    Height = 475
  end
  inherited pnldbg: TPanel
    Width = 602
    Height = 475
    inherited pnlbot: TPanel
      Top = 233
      Width = 602
      Height = 242
      Visible = True
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 602
        Height = 242
        Align = alClient
        Caption = 'Produtos'
        TabOrder = 0
        object dbgcad_pro: TdxDBGrid
          Left = 2
          Top = 16
          Width = 598
          Height = 224
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'PRO_CART'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Color = clWhite
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          OnDblClick = DBGConsultaDblClick
          OnKeyDown = DBGConsultaKeyDown
          AutoSearchColor = 9395
          AutoSearchTextColor = clWhite
          DataSource = dtscad_pro
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
          object dbgcad_proPRO_CART: TdxDBGridMaskColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_CART'
          end
          object dbgcad_proPRO_DPRO: TdxDBGridMaskColumn
            Width = 470
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_DPRO'
          end
        end
      end
    end
    inherited gbDET: TGroupBox
      Width = 602
      Height = 233
      inherited DBGConsulta: TdxDBGrid
        Width = 549
        Height = 215
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Criteria = {00000000}
        object dbgConsultaCLF_CCLF: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLF_CCLF'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object dbgConsultaCLF_VI04: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          HeaderAlignment = taRightJustify
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLF_VI04'
        end
        object dbgConsultaCLF_VI07: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          HeaderAlignment = taRightJustify
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLF_VI07'
        end
        object dbgConsultaCLF_VI12: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          HeaderAlignment = taRightJustify
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLF_VI12'
        end
        object dbgConsultaCLF_UF: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 30
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLF_UF'
        end
      end
      inherited SpeedBar1: TSpeedBar
        Height = 215
      end
    end
  end
  inherited Cadastro: TIBDataSet
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from TAB_CLF'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_CLF'
      '  (CLF_CCLF, CLF_UF, CLF_VI04, CLF_VI07, CLF_VI12, ID)'
      'values'
      '  (:CLF_CCLF, :CLF_UF, :CLF_VI04, :CLF_VI07, :CLF_VI12, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CLF_CCLF,'
      '  CLF_VI04,'
      '  CLF_VI07,'
      '  CLF_VI12,'
      '  CLF_UF'
      'from TAB_CLF '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_CLF')
    ModifySQL.Strings = (
      'update TAB_CLF'
      'set'
      '  CLF_CCLF = :CLF_CCLF,'
      '  CLF_UF = :CLF_UF,'
      '  CLF_VI04 = :CLF_VI04,'
      '  CLF_VI07 = :CLF_VI07,'
      '  CLF_VI12 = :CLF_VI12,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_CLF"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroCLF_CCLF: TIBStringField
      DisplayLabel = 'N.C.M.'
      FieldName = 'CLF_CCLF'
      Origin = '"TAB_CLF"."CLF_CCLF"'
      Size = 10
    end
    object cadastroCLF_VI04: TIBBCDField
      DisplayLabel = '% 4'
      FieldName = 'CLF_VI04'
      Origin = '"TAB_CLF"."CLF_VI04"'
      Precision = 9
      Size = 2
    end
    object cadastroCLF_VI07: TIBBCDField
      DisplayLabel = '% 7'
      FieldName = 'CLF_VI07'
      Origin = '"TAB_CLF"."CLF_VI07"'
      Precision = 9
      Size = 2
    end
    object cadastroCLF_VI12: TIBBCDField
      DisplayLabel = '% 12'
      FieldName = 'CLF_VI12'
      Origin = '"TAB_CLF"."CLF_VI12"'
      Precision = 9
      Size = 2
    end
    object cadastroCLF_UF: TIBStringField
      DisplayLabel = 'UF'
      FieldName = 'CLF_UF'
      Origin = '"TAB_CLF"."CLF_UF"'
      Size = 2
    end
  end
  inherited imageOPC: TImageList
    Left = 268
    Top = 206
  end
  inherited pEVE: TIBEvents
    Top = 72
  end
  inherited pSP: TIBStoredProc
    Top = 72
  end
  inherited pTRA: TIBTransaction
    Left = 352
  end
  object cad_pro: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT PRO_CART,PRO_DPRO FROM CAD_PRO'
      'WHERE PRO_CCLF = :CLF_CCLF'
      'GROUP BY PRO_CART,PRO_DPRO'
      'ORDER BY PRO_CART')
    Left = 448
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLF_CCLF'
        ParamType = ptUnknown
      end>
    object cad_proPRO_CART: TIBStringField
      DisplayLabel = 'Referencia'
      FieldName = 'PRO_CART'
      Origin = '"CAD_PRO"."PRO_CART"'
    end
    object cad_proPRO_DPRO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRO_DPRO'
      Origin = '"CAD_PRO"."PRO_DPRO"'
      Size = 120
    end
  end
  object dtscad_pro: TDataSource
    DataSet = cad_pro
    Left = 448
    Top = 72
  end
end
