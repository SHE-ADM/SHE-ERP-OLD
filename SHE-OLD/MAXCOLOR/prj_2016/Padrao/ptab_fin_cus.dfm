inherited frmtab_fin_cus: Tfrmtab_fin_cus
  Caption = 'Tabela de Centro de Custo'
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
      inherited DBGConsulta: TdxDBGrid
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
        object dbgConsultaFIN_DCUS: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_DCUS'
        end
      end
    end
  end
  inherited Cadastro: TIBDataSet
    BeforePost = cadastroBeforePost
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from FIN_CUS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into FIN_CUS'
      '  (FIN_DCUS, FIN_STA, ID)'
      'values'
      '  (:FIN_DCUS, :FIN_STA, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  FIN_DCUS,'
      '  FIN_STA'
      'from FIN_CUS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM FIN_CUS'
      'WHERE FIN_STA = '#39'0'#39)
    ModifySQL.Strings = (
      'update FIN_CUS'
      'set'
      '  FIN_DCUS = :FIN_DCUS,'
      '  FIN_STA = :FIN_STA,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = '"FIN_CUS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroFIN_DCUS: TIBStringField
      DisplayLabel = 'Centro de Custo'
      FieldName = 'FIN_DCUS'
      Origin = '"FIN_CUS"."FIN_DCUS"'
      OnValidate = cadastroFIN_DCUSValidate
      Size = 40
    end
    object cadastroFIN_STA: TIBStringField
      FieldName = 'FIN_STA'
      Origin = '"FIN_CUS"."FIN_STA"'
      FixedChar = True
      Size = 1
    end
  end
end
