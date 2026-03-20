inherited frmtab_fin_tpl: Tfrmtab_fin_tpl
  Caption = 'Tipo de Plano de Conta'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited SpeedBar2: TSpeedBar
    inherited siREL: TSpeedItem [7]
    end
    inherited siEVE: TSpeedItem [8]
    end
    inherited siLIXO: TSpeedItem [9]
      OnClick = siLIXOClick
    end
  end
  inherited pnldbg: TPanel
    inherited gbDET: TGroupBox
      inherited dbgConsulta: TdxDBGrid
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Criteria = {00000000}
        object dbgConsultaID: TdxDBGridMaskColumn
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ID'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object dbgConsultaFIN_DTPL: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_DTPL'
        end
      end
    end
  end
  inherited cadastro: TIBDataSet
    BeforePost = cadastroBeforePost
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from FIN_TPL'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into FIN_TPL'
      '  (FIN_DTPL, FIN_STA, ID)'
      'values'
      '  (:FIN_DTPL, :FIN_STA, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  FIN_DTPL,'
      '  FIN_STA'
      'from FIN_TPL '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM FIN_TPL'
      'WHERE FIN_STA = '#39'0'#39)
    ModifySQL.Strings = (
      'update FIN_TPL'
      'set'
      '  FIN_DTPL = :FIN_DTPL,'
      '  FIN_STA = :FIN_STA,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = '"FIN_TPL"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroFIN_DTPL: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'FIN_DTPL'
      Origin = '"FIN_TPL"."FIN_DTPL"'
      OnValidate = cadastroFIN_DTPLValidate
      Size = 40
    end
    object cadastroFIN_STA: TIBStringField
      FieldName = 'FIN_STA'
      Origin = '"FIN_TPL"."FIN_STA"'
      FixedChar = True
      Size = 1
    end
  end
end
