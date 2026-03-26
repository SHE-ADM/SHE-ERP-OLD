inherited frmtab_col: Tfrmtab_col
  Caption = 'Tabela de Cole'#231#245'es'
  ClientWidth = 444
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Width = 444
  end
  inherited SpeedBar2: TSpeedBar
    Width = 444
    inherited siEVE: TSpeedItem [4]
      Visible = False
    end
    inherited siPSQ: TSpeedItem [5]
      Visible = False
    end
    inherited siREF: TSpeedItem [6]
      Left = 2
    end
    inherited siSAIR: TSpeedItem [7]
      Left = 332
    end
    inherited siREL: TSpeedItem
      Left = 222
    end
    inherited siLIXO: TSpeedItem [9]
      Left = 112
      OnClick = siLIXOClick
    end
  end
  inherited pnldir: TPanel
    Left = 444
  end
  inherited pnldbg: TPanel
    Width = 444
    inherited pnlbot: TPanel
      Width = 444
    end
    inherited gbDET: TGroupBox
      Width = 444
      inherited DBGConsulta: TdxDBGrid
        Width = 391
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Criteria = {00000000}
        object dbgConsultaID: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ID'
        end
        object dbgConsultaCOL_DCOL: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COL_DCOL'
        end
        object dbgConsultaCOL_PRAZ: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          DisableCustomizing = True
          DisableDragging = True
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'COL_PRAZ'
          DisableFilter = True
        end
      end
    end
  end
  inherited Cadastro: TIBDataSet
    BeforePost = cadastroBeforePost
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from TAB_COL'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_COL'
      '  (COL_DCOL, COL_PRAZ, COL_STA, ID)'
      'values'
      '  (:COL_DCOL, :COL_PRAZ, :COL_STA, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  COL_DCOL,'
      '  COL_STA,'
      '  COL_PRAZ'
      'from TAB_COL '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_COL'
      'WHERE COL_STA = '#39'0'#39)
    ModifySQL.Strings = (
      'update TAB_COL'
      'set'
      '  COL_DCOL = :COL_DCOL,'
      '  COL_PRAZ = :COL_PRAZ,'
      '  COL_STA = :COL_STA,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Top = 48
    object cadastroID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = '"TAB_COL"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroCOL_DCOL: TIBStringField
      DisplayLabel = 'Cole'#231#227'o'
      FieldName = 'COL_DCOL'
      Origin = '"TAB_COL"."COL_DCOL"'
      Size = 30
    end
    object cadastroCOL_STA: TIBStringField
      FieldName = 'COL_STA'
      Origin = '"TAB_COL"."COL_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroCOL_PRAZ: TDateField
      DisplayLabel = 'Data Validade'
      FieldName = 'COL_PRAZ'
      Origin = '"TAB_COL"."COL_PRAZ"'
      EditMask = '!99/99/00;1;_'
    end
  end
  inherited imageOPC: TImageList
    Left = 268
    Top = 206
  end
end
