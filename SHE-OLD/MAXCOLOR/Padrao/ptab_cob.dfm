inherited frmtab_cob: Tfrmtab_cob
  Caption = 'Tabela de Tipos de Cobran'#231'as'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnldbg: TPanel
    inherited gbDET: TGroupBox
      inherited DBGConsulta: TdxDBGrid
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Criteria = {00000000}
        object dbgConsultaVEN_TIPO: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 173
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_TIPO'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object dbgConsultaVEN_STA: TdxDBGridCheckColumn
          CharCase = ecUpperCase
          Width = 35
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_STA'
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
  end
  inherited Cadastro: TIBDataSet
    BeforePost = cadastroBeforePost
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from TAB_COB'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_COB'
      '  (ID, VEN_STA, VEN_TIPO)'
      'values'
      '  (:ID, :VEN_STA, :VEN_TIPO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  VEN_TIPO,'
      '  VEN_STA'
      'from TAB_COB '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_COB')
    ModifySQL.Strings = (
      'update TAB_COB'
      'set'
      '  ID = :ID,'
      '  VEN_STA = :VEN_STA,'
      '  VEN_TIPO = :VEN_TIPO'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_VEN"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroVEN_TIPO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'VEN_TIPO'
      Origin = '"TAB_VEN"."VEN_TIPO"'
    end
    object cadastroVEN_STA: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'VEN_STA'
      Origin = '"TAB_COB"."VEN_STA"'
      FixedChar = True
      Size = 1
    end
  end
  inherited imageOPC: TImageList
    Left = 268
    Top = 206
  end
end
