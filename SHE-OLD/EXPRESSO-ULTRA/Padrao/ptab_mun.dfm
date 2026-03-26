inherited frmtab_mun: Tfrmtab_mun
  Left = 689
  Top = 67
  Caption = 'C'#243'digos de Munic'#237'pios'
  ClientWidth = 494
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Width = 494
  end
  inherited SBMenu: TSpeedBar
    Width = 494
    inherited siREF: TSpeedItem [4]
    end
    inherited siPSQ: TSpeedItem [5]
      Visible = False
    end
    inherited siSAIR: TSpeedItem
      Left = 92
    end
    inherited siREL: TSpeedItem
      Visible = False
    end
  end
  inherited pnldir: TPanel
    Left = 494
  end
  inherited pnldbg: TPanel
    Width = 494
    inherited pnlbot: TPanel
      Width = 494
    end
    inherited gbDET: TGroupBox
      Width = 494
      inherited DBGConsulta: TdxDBGrid
        Width = 446
        KeyField = 'ID'
        Filter.Active = True
        Filter.Criteria = {00000000}
        object dbgConsultaMUN_CDUF: TdxDBGridMaskColumn
          Width = 39
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MUN_CDUF'
        end
        object dbgConsultaMUN_DEUF: TdxDBGridMaskColumn
          Width = 127
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MUN_DEUF'
        end
        object dbgConsultaMUN_CMUN: TdxDBGridMaskColumn
          Width = 59
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MUN_CMUN'
        end
        object dbgConsultaMUN_DMUN: TdxDBGridMaskColumn
          Width = 184
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MUN_DMUN'
        end
      end
    end
  end
  inherited Cadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from TAB_MUN'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_MUN'
      '  (ID, MUN_CDUF, MUN_CMUN, MUN_DEUF, MUN_DMUN)'
      'values'
      '  (:ID, :MUN_CDUF, :MUN_CMUN, :MUN_DEUF, :MUN_DMUN)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  MUN_CDUF,'
      '  MUN_DEUF,'
      '  MUN_CMUN,'
      '  MUN_DMUN'
      'from TAB_MUN '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_MUN'
      'ORDER BY MUN_DMUN')
    ModifySQL.Strings = (
      'update TAB_MUN'
      'set'
      '  ID = :ID,'
      '  MUN_CDUF = :MUN_CDUF,'
      '  MUN_CMUN = :MUN_CMUN,'
      '  MUN_DEUF = :MUN_DEUF,'
      '  MUN_DMUN = :MUN_DMUN'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_MUN"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroMUN_CDUF: TIBStringField
      DisplayLabel = 'UF'
      FieldName = 'MUN_CDUF'
      Origin = '"TAB_MUN"."MUN_CDUF"'
      Size = 3
    end
    object cadastroMUN_DEUF: TIBStringField
      DisplayLabel = 'Estado'
      FieldName = 'MUN_DEUF'
      Origin = '"TAB_MUN"."MUN_DEUF"'
    end
    object cadastroMUN_CMUN: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'MUN_CMUN'
      Origin = '"TAB_MUN"."MUN_CMUN"'
      Size = 10
    end
    object cadastroMUN_DMUN: TIBStringField
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'MUN_DMUN'
      Origin = '"TAB_MUN"."MUN_DMUN"'
      Size = 30
    end
  end
end
