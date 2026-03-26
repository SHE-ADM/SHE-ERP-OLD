inherited frmtab_lan: Tfrmtab_lan
  Caption = 'Tipos de Lan'#231'amentos de Estoque'
  PixelsPerInch = 96
  TextHeight = 14
  inherited SpeedBar2: TSpeedBar
    inherited siEVE: TSpeedItem [6]
    end
    inherited siSAIR: TSpeedItem [7]
      Left = 332
    end
    inherited siLIXO: TSpeedItem [8]
      Visible = False
    end
    inherited siREL: TSpeedItem [9]
      Visible = False
    end
  end
  inherited pnldbg: TPanel
    inherited gbDET: TGroupBox
      inherited DBGConsulta: TdxDBGrid
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Criteria = {00000000}
        object dbgConsultaID: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ID'
        end
        object dbgConsultaLAN_TIPO: TdxDBGridPickColumn
          CharCase = ecUpperCase
          Width = 108
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LAN_TIPO'
          Items.Strings = (
            'ENTRADA'
            'SA'#205'DA'
            'DEFEITO'
            'DEVOLU'#199#195'O'
            'TROCA')
        end
        object dbgConsultaLAN_DESC: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 284
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LAN_DESC'
        end
      end
    end
  end
  inherited Cadastro: TIBDataSet
    BeforePost = cadastroBeforePost
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from TAB_LAN'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_LAN'
      '  (ID, LAN_DESC, LAN_TIPO)'
      'values'
      '  (:ID, :LAN_DESC, :LAN_TIPO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  LAN_TIPO,'
      '  LAN_DESC'
      'from TAB_LAN '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_LAN')
    ModifySQL.Strings = (
      'update TAB_LAN'
      'set'
      '  ID = :ID,'
      '  LAN_DESC = :LAN_DESC,'
      '  LAN_TIPO = :LAN_TIPO'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = '"TAB_DEF"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroLAN_TIPO: TIBStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'LAN_TIPO'
      Origin = '"TAB_LAN"."LAN_TIPO"'
      Size = 15
    end
    object cadastroLAN_DESC: TIBStringField
      DisplayLabel = 'Descri'#231#227'o do Tipo'
      FieldName = 'LAN_DESC'
      Origin = '"TAB_LAN"."LAN_DESC"'
      Size = 40
    end
  end
end
