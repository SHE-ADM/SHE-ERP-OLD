inherited frmtab_dta: Tfrmtab_dta
  Caption = 'Tipos de Tarefas'
  ClientWidth = 591
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Width = 591
  end
  inherited SpeedBar2: TSpeedBar
    Width = 591
    inherited siEVE: TSpeedItem [6]
    end
    inherited siSAIR: TSpeedItem [7]
      Left = 332
    end
    inherited siLIXO: TSpeedItem [8]
      Visible = False
    end
    inherited siREL: TSpeedItem [9]
      Visible = False
    end
  end
  inherited pnldir: TPanel
    Left = 591
  end
  inherited pnldbg: TPanel
    Width = 591
    inherited pnlbot: TPanel
      Width = 589
    end
    inherited gbDET: TGroupBox
      Width = 589
      inherited dbgConsulta: TdxDBGrid
        Width = 536
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
        PreviewFieldName = 'TAR_OBSE'
        PreviewLines = 3
        object dbgConsultaTAR_DESC: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 409
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TAR_DESC'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object dbgConsultaTAR_OBSE: TdxDBGridBlobColumn
          CharCase = ecUpperCase
          Width = 33
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TAR_OBSE'
        end
        object dbgConsultaTAR_PONT: TdxDBGridCurrencyColumn
          CharCase = ecUpperCase
          HeaderAlignment = taRightJustify
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TAR_PONT'
          SummaryFooterType = cstAvg
          SummaryFooterField = 'TAR_PONT'
          SummaryFooterFormat = '#,0.00'
          DisplayFormat = '#,0.00'
          Nullable = False
        end
      end
    end
  end
  inherited cadastro: TIBDataSet
    BeforePost = cadastroBeforePost
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from TAB_TAR'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_TAR'
      '  (ID, TAR_DESC, TAR_OBSE, TAR_PONT)'
      'values'
      '  (:ID, :TAR_DESC, :TAR_OBSE, :TAR_PONT)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  TAR_PONT,'
      '  TAR_DESC,'
      '  TAR_OBSE'
      'from TAB_TAR '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_TAR')
    ModifySQL.Strings = (
      'update TAB_TAR'
      'set'
      '  ID = :ID,'
      '  TAR_DESC = :TAR_DESC,'
      '  TAR_OBSE = :TAR_OBSE,'
      '  TAR_PONT = :TAR_PONT'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_TAR"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroTAR_PONT: TIBBCDField
      DisplayLabel = 'Pontua'#231#227'o'
      FieldName = 'TAR_PONT'
      Origin = '"TAB_TAR"."TAR_PONT"'
      OnValidate = cadastroTAR_PONTValidate
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object cadastroTAR_DESC: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TAR_DESC'
      Origin = '"TAB_TAR"."TAR_DESC"'
      Size = 60
    end
    object cadastroTAR_OBSE: TMemoField
      DisplayLabel = 'Obs'
      FieldName = 'TAR_OBSE'
      Origin = '"TAB_TAR"."TAR_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
end
