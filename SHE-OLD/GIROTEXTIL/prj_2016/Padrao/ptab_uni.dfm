inherited frmtab_uni: Tfrmtab_uni
  Caption = 'Tabela de Unidades de Medidas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited SpeedBar2: TSpeedBar
    inherited siREF: TSpeedItem [4]
    end
    inherited siSAIR: TSpeedItem [5]
    end
    inherited siREL: TSpeedItem [6]
    end
    inherited siEVE: TSpeedItem [7]
    end
    inherited siPSQ: TSpeedItem [8]
      Tag = 1
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
        object dbgConsultaUNI_DUNI: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 142
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UNI_DUNI'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = 'iItens 0'
        end
        object dbgConsultaUNI_REFE: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 43
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UNI_REFE'
        end
      end
    end
  end
  inherited consulta: TIBQuery
    Left = 288
    Top = 80
  end
  inherited cadastro: TIBDataSet
    BeforePost = cadastroBeforePost
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from TAB_UNI'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_UNI'
      '  (ID, UNI_DUNI, UNI_REFE, UNI_STA)'
      'values'
      '  (:ID, :UNI_DUNI, :UNI_REFE, :UNI_STA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  UNI_DUNI,'
      '  UNI_REFE,'
      '  UNI_STA'
      'from TAB_UNI '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_UNI')
    ModifySQL.Strings = (
      'update TAB_UNI'
      'set'
      '  ID = :ID,'
      '  UNI_DUNI = :UNI_DUNI,'
      '  UNI_REFE = :UNI_REFE,'
      '  UNI_STA = :UNI_STA'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_UNI"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroUNI_DUNI: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'UNI_DUNI'
      Origin = '"TAB_UNI"."UNI_DUNI"'
      Size = 10
    end
    object cadastroUNI_REFE: TIBStringField
      DisplayLabel = 'Ref'
      FieldName = 'UNI_REFE'
      Origin = '"TAB_UNI"."UNI_REFE"'
      Size = 3
    end
    object cadastroUNI_STA: TIBStringField
      FieldName = 'UNI_STA'
      Origin = '"TAB_UNI"."UNI_STA"'
      FixedChar = True
      Size = 1
    end
  end
  inherited imageITEM: TImageList
    Left = 308
    Top = 254
  end
end
