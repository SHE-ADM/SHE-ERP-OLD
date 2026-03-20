inherited frmtab_dch: Tfrmtab_dch
  Caption = 'Movitos de Devolu'#231#245'es de Cheques'
  ClientWidth = 1113
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Width = 1113
  end
  inherited SpeedBar2: TSpeedBar
    Width = 1113
  end
  inherited pnldir: TPanel
    Left = 1113
  end
  inherited pnldbg: TPanel
    Width = 1113
    inherited pnlbot: TPanel
      Width = 1111
    end
    inherited gbDET: TGroupBox
      Width = 1111
      inherited dbgConsulta: TdxDBGrid
        Width = 1058
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Criteria = {00000000}
        object dbgConsultaDCH_CDCH: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DCH_CDCH'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object dbgConsultaDCH_DDCH: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 950
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DCH_DDCH'
        end
      end
    end
  end
  inherited cadastro: TIBDataSet
    BeforePost = cadastroBeforePost
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from TAB_DCH'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_DCH'
      '  (DCH_CDCH, DCH_DDCH, ID)'
      'values'
      '  (:DCH_CDCH, :DCH_DDCH, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DCH_CDCH,'
      '  DCH_DDCH'
      'from TAB_DCH '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_DCH'
      'ORDER BY DCH_CDCH')
    ModifySQL.Strings = (
      'update TAB_DCH'
      'set'
      '  DCH_CDCH = :DCH_CDCH,'
      '  DCH_DDCH = :DCH_DDCH,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_DCH"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroDCH_CDCH: TSmallintField
      DisplayLabel = 'Motivo'
      FieldName = 'DCH_CDCH'
      Origin = '"TAB_DCH"."DCH_CDCH"'
    end
    object cadastroDCH_DDCH: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DCH_DDCH'
      Origin = '"TAB_DCH"."DCH_DDCH"'
      Size = 150
    end
  end
end
