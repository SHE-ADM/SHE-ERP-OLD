inherited frmtab_fer: Tfrmtab_fer
  Caption = 'Tabela de Feriados - 2016'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnldbg: TPanel
    inherited gbDET: TGroupBox
      inherited dbgConsulta: TdxDBGrid
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Criteria = {00000000}
        object dbgConsultaFER_DEFE: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FER_DEFE'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object dbgConsultaFER_DTFE: TdxDBGridDateColumn
          CharCase = ecUpperCase
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FER_DTFE'
          UseEditMask = True
        end
      end
    end
  end
  inherited cadastro: TIBDataSet
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from TAB_FER'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_FER'
      '  (FER_DEFE, FER_DTFE, ID)'
      'values'
      '  (:FER_DEFE, :FER_DTFE, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  FER_DEFE,'
      '  FER_DTFE'
      'from TAB_FER '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_FER')
    ModifySQL.Strings = (
      'update TAB_FER'
      'set'
      '  FER_DEFE = :FER_DEFE,'
      '  FER_DTFE = :FER_DTFE,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_FER"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroFER_DEFE: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'FER_DEFE'
      Origin = '"TAB_FER"."FER_DEFE"'
      Size = 60
    end
    object cadastroFER_DTFE: TDateField
      DisplayLabel = 'Data'
      FieldName = 'FER_DTFE'
      Origin = '"TAB_FER"."FER_DTFE"'
    end
  end
end
