inherited frmtab_emb: Tfrmtab_emb
  Caption = 'Tabela de Embalagens'
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
        Filter.Active = True
        Filter.Criteria = {00000000}
        object dbgConsultaEMB_DEMB: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 193
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EMB_DEMB'
        end
        object dbgConsultaEMB_PESO: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EMB_PESO'
          SummaryFooterType = cstAvg
          SummaryFooterField = 'EMB_PESO'
          SummaryFooterFormat = '0.00'
          DisableFilter = True
        end
      end
    end
  end
  inherited cadastro: TIBDataSet
    BeforePost = cadastroBeforePost
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from TAB_EMB'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_EMB'
      '  (EMB_DEMB, EMB_PESO, EMB_STA, ID)'
      'values'
      '  (:EMB_DEMB, :EMB_PESO, :EMB_STA, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  EMB_DEMB,'
      '  EMB_PESO,'
      '  EMB_STA'
      'from TAB_EMB '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_EMB')
    ModifySQL.Strings = (
      'update TAB_EMB'
      'set'
      '  EMB_DEMB = :EMB_DEMB,'
      '  EMB_PESO = :EMB_PESO,'
      '  EMB_STA = :EMB_STA,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_EMB"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroEMB_DEMB: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'EMB_DEMB'
      Origin = '"TAB_EMB"."EMB_DEMB"'
      Size = 30
    end
    object cadastroEMB_PESO: TIBBCDField
      DisplayLabel = 'Peso (Kg)'
      FieldName = 'EMB_PESO'
      Origin = '"TAB_EMB"."EMB_PESO"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object cadastroEMB_STA: TIBStringField
      FieldName = 'EMB_STA'
      Origin = '"TAB_EMB"."EMB_STA"'
      FixedChar = True
      Size = 1
    end
  end
  inherited imageOPC: TImageList
    Left = 252
    Top = 198
  end
end
