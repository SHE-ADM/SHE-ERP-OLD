inherited frmcad_for_ram: Tfrmcad_for_ram
  Left = 428
  Top = 113
  Caption = 'Tipos de Fornecedores'
  ClientWidth = 567
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Width = 567
  end
  inherited SpeedBar2: TSpeedBar
    Width = 567
    inherited siEVE: TSpeedItem [4]
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
    inherited siLIXO: TSpeedItem [8]
      Visible = False
    end
    inherited siREL: TSpeedItem [9]
      Left = 222
    end
  end
  inherited pnldir: TPanel
    Left = 567
  end
  inherited pnldbg: TPanel
    Width = 567
    inherited pnlbot: TPanel
      Width = 565
    end
    inherited gbDET: TGroupBox
      Width = 565
      inherited dbgConsulta: TdxDBGrid
        Width = 512
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Criteria = {00000000}
        object dbgConsultaFOR_RAMO: TdxDBGridMaskColumn
          Width = 491
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FOR_RAMO'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
      end
    end
  end
  inherited cadastro: TIBDataSet
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from CAD_FOR_RAM'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_FOR_RAM'
      '  (FOR_RAMO, ID)'
      'values'
      '  (:FOR_RAMO, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  FOR_RAMO'
      'from CAD_FOR_RAM '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_FOR_RAM')
    ModifySQL.Strings = (
      'update CAD_FOR_RAM'
      'set'
      '  FOR_RAMO = :FOR_RAMO,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_FOR_RAM"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroFOR_RAMO: TIBStringField
      DisplayLabel = 'Ramo'
      FieldName = 'FOR_RAMO'
      Origin = '"CAD_FOR_RAM"."FOR_RAMO"'
      Size = 40
    end
  end
  inherited imageITEM: TImageList
    Left = 300
    Top = 270
  end
end
