inherited frmtab_alq: Tfrmtab_alq
  Left = 139
  Top = 74
  Caption = 'Al'#237'quota de I.C.M.S.'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited SpeedBar2: TSpeedBar
    inherited siEVE: TSpeedItem [4]
    end
    inherited siREF: TSpeedItem
      Left = 2
    end
    inherited siSAIR: TSpeedItem
      Left = 332
    end
    inherited siPSQ: TSpeedItem [7]
      Tag = 1
      Visible = False
    end
    inherited siREL: TSpeedItem
      Left = 222
    end
    inherited siLIXO: TSpeedItem [9]
      Left = 112
      Visible = False
    end
  end
  inherited pnldbg: TPanel
    inherited gbDET: TGroupBox
      inherited DBGConsulta: TdxDBGrid
        HeaderMinRowCount = 2
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Criteria = {00000000}
        object dbgConsultaALQ_ESTA: TdxDBGridMaskColumn
          Width = 30
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ALQ_ESTA'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object dbgConsultaALQ_ICMS: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ALQ_ICMS'
        end
        object dbgConsultaALQ_ICME: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ALQ_ICME'
        end
      end
    end
  end
  inherited Cadastro: TIBDataSet
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from TAB_ALQ'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_ALQ'
      '  (ALQ_ESTA, ALQ_ICME, ALQ_ICMS, ID)'
      'values'
      '  (:ALQ_ESTA, :ALQ_ICME, :ALQ_ICMS, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ALQ_ESTA,'
      '  ALQ_ICMS,'
      '  ALQ_ICME'
      'from TAB_ALQ '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_ALQ')
    ModifySQL.Strings = (
      'update TAB_ALQ'
      'set'
      '  ALQ_ESTA = :ALQ_ESTA,'
      '  ALQ_ICME = :ALQ_ICME,'
      '  ALQ_ICMS = :ALQ_ICMS,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_ALQ"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroALQ_ESTA: TIBStringField
      DisplayLabel = 'UF'
      FieldName = 'ALQ_ESTA'
      Origin = '"TAB_ALQ"."ALQ_ESTA"'
      Size = 2
    end
    object cadastroALQ_ICMS: TIBBCDField
      DisplayLabel = '%'
      FieldName = 'ALQ_ICMS'
      Origin = '"TAB_ALQ"."ALQ_ICMS"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object cadastroALQ_ICME: TIBBCDField
      DisplayLabel = '% Interno'
      FieldName = 'ALQ_ICME'
      Origin = '"TAB_ALQ"."ALQ_ICME"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
  end
  inherited imageOPC: TImageList
    Left = 260
    Top = 206
  end
end
