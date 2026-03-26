inherited frmtab_ori: Tfrmtab_ori
  Caption = 'Tabela de Origens de Mercadorias'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited SpeedBar2: TSpeedBar
    inherited siEVE: TSpeedItem [4]
      Left = 222
    end
    inherited siPSQ: TSpeedItem [5]
      Visible = False
    end
    inherited siREF: TSpeedItem [6]
      Left = 2
    end
    inherited siSAIR: TSpeedItem [7]
      Left = 442
    end
    inherited siREL: TSpeedItem
      Left = 332
    end
    inherited siLIXO: TSpeedItem [9]
      Left = 112
      OnClick = siLIXOClick
    end
  end
  inherited pnldbg: TPanel
    inherited gbDET: TGroupBox
      inherited dbgConsulta: TdxDBGrid
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Criteria = {00000000}
        object dbgConsultaORI_CORI: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ORI_CORI'
        end
        object dbgConsultaORI_DORI: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 214
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ORI_DORI'
        end
      end
    end
  end
  inherited cadastro: TIBDataSet
    BeforePost = cadastroBeforePost
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from TAB_ORI'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_ORI'
      '  (ID, ORI_CORI, ORI_DORI, ORI_STA)'
      'values'
      '  (:ID, :ORI_CORI, :ORI_DORI, :ORI_STA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ORI_CORI,'
      '  ORI_DORI,'
      '  ORI_STA'
      'from TAB_ORI '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_ORI'
      'WHERE ORI_STA = '#39'0'#39)
    ModifySQL.Strings = (
      'update TAB_ORI'
      'set'
      '  ID = :ID,'
      '  ORI_CORI = :ORI_CORI,'
      '  ORI_DORI = :ORI_DORI,'
      '  ORI_STA = :ORI_STA'
      'where'
      '  ID = :OLD_ID')
    Top = 48
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_ORI"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroORI_CORI: TIBStringField
      DisplayLabel = 'Referencia'
      FieldName = 'ORI_CORI'
      Origin = '"TAB_ORI"."ORI_CORI"'
      Size = 3
    end
    object cadastroORI_DORI: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORI_DORI'
      Origin = '"TAB_ORI"."ORI_DORI"'
      Size = 30
    end
    object cadastroORI_STA: TIBStringField
      FieldName = 'ORI_STA'
      Origin = '"TAB_ORI"."ORI_STA"'
      FixedChar = True
      Size = 1
    end
  end
  inherited imageOPC: TImageList
    Left = 260
    Top = 198
  end
end
