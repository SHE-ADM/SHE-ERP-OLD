inherited frmtab_ban: Tfrmtab_ban
  Left = 290
  Caption = 'Tabela de Bancos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnldbg: TPanel
    inherited gbDET: TGroupBox
      inherited dbgConsulta: TdxDBGrid
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Criteria = {00000000}
        object dbgConsultaBAN_DESC: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          BandIndex = 0
          RowIndex = 0
          FieldName = 'BAN_DESC'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object dbgConsultaBAN_BANC: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          BandIndex = 0
          RowIndex = 0
          FieldName = 'BAN_BANC'
        end
      end
    end
  end
  inherited cadastro: TIBDataSet
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from TAB_BAN'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_BAN'
      '  (BAN_BANC, BAN_DESC, ID)'
      'values'
      '  (:BAN_BANC, :BAN_DESC, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  BAN_BANC,'
      '  BAN_DESC'
      'from TAB_BAN '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_BAN')
    ModifySQL.Strings = (
      'update TAB_BAN'
      'set'
      '  BAN_BANC = :BAN_BANC,'
      '  BAN_DESC = :BAN_DESC,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_BAN"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroBAN_BANC: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BAN_BANC'
      Origin = '"TAB_BAN"."BAN_BANC"'
      Size = 4
    end
    object cadastroBAN_DESC: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'BAN_DESC'
      Origin = '"TAB_BAN"."BAN_DESC"'
      Size = 50
    end
  end
  inherited imageOPC: TImageList
    Left = 268
    Top = 206
  end
end
