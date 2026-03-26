inherited frmtab_ibx: Tfrmtab_ibx
  Caption = 'Tabela de Instru'#231#227'o de Baixa Banc'#225'ria'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnldbg: TPanel
    inherited gbDET: TGroupBox
      inherited dbgConsulta: TdxDBGrid
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Criteria = {00000000}
        object dbgConsultaIBX_IDBX: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 61
          BandIndex = 0
          RowIndex = 0
          FieldName = 'IBX_IDBX'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object dbgConsultaIBX_DIBX: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 512
          BandIndex = 0
          RowIndex = 0
          FieldName = 'IBX_DIBX'
        end
      end
    end
  end
  inherited cadastro: TIBDataSet
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from TAB_IBX'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_IBX'
      '  (IBX_DIBX, IBX_IDBX, ID)'
      'values'
      '  (:IBX_DIBX, :IBX_IDBX, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  IBX_IDBX,'
      '  IBX_DIBX'
      'from TAB_IBX '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_IBX')
    ModifySQL.Strings = (
      'update TAB_IBX'
      'set'
      '  IBX_DIBX = :IBX_DIBX,'
      '  IBX_IDBX = :IBX_IDBX,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_IBX"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroIBX_IDBX: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IBX_IDBX'
      Origin = '"TAB_IBX"."IBX_IDBX"'
      Size = 10
    end
    object cadastroIBX_DIBX: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'IBX_DIBX'
      Origin = '"TAB_IBX"."IBX_DIBX"'
      Size = 50
    end
  end
end
