inherited frmcai_tsr: Tfrmcai_tsr
  Caption = 'Tipos de Sangria \ Suprimento'
  ClientWidth = 577
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Width = 577
  end
  inherited SBMenu: TSpeedBar
    Width = 577
    inherited siPSQ: TSpeedItem
      Visible = False
    end
    inherited siSAIR: TSpeedItem [6]
      Left = 87
    end
    inherited siREL: TSpeedItem [7]
      Visible = False
    end
  end
  inherited pnldir: TPanel
    Left = 577
  end
  inherited pnldbg: TPanel
    Width = 577
    inherited pnlbot: TPanel
      Width = 577
    end
    inherited gbDET: TGroupBox
      Width = 577
      inherited DBGConsulta: TdxDBGrid
        Width = 529
        KeyField = 'ID'
        Filter.Criteria = {00000000}
        object dbgConsultaID: TdxDBGridMaskColumn
          DisableEditor = True
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ID'
        end
        object dbgConsultaCAI_DESC: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 329
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CAI_DESC'
        end
        object dbgConsultaCAI_TIPO: TdxDBGridPickColumn
          CharCase = ecUpperCase
          Width = 111
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CAI_TIPO'
          Items.Strings = (
            'ENTRADA'
            'SA'#205'DA')
        end
      end
    end
  end
  inherited Cadastro: TIBDataSet
    BeforePost = cadastroBeforePost
    DeleteSQL.Strings = (
      'delete from CAI_TSR'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAI_TSR'
      '  (CAI_DESC, CAI_TIPO, ID)'
      'values'
      '  (:CAI_DESC, :CAI_TIPO, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CAI_DESC,'
      '  CAI_TIPO'
      'from CAI_TSR '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAI_TSR')
    ModifySQL.Strings = (
      'update CAI_TSR'
      'set'
      '  CAI_DESC = :CAI_DESC,'
      '  CAI_TIPO = :CAI_TIPO,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = '"CAI_SAR"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroCAI_DESC: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CAI_DESC'
      Origin = '"CAI_SAR"."CAI_DESC"'
      Size = 40
    end
    object cadastroCAI_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'CAI_TIPO'
      Origin = '"CAI_SAR"."CAI_TIPO"'
      Size = 15
    end
  end
  inherited ILEdicao: TImageList
    Top = 350
  end
end
