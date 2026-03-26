inherited frmtab_cor: Tfrmtab_cor
  Caption = 'Tabela de Cores'
  ClientWidth = 633
  OldCreateOrder = True
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Width = 633
  end
  inherited SBMenu: TSpeedBar
    Width = 633
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
    Left = 633
  end
  inherited pnldbg: TPanel
    Width = 633
    inherited pnlbot: TPanel
      Width = 633
    end
    inherited gbDET: TGroupBox
      Width = 633
      inherited DBGConsulta: TdxDBGrid
        Width = 585
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Active = True
        Filter.Criteria = {00000000}
        object dbgConsultaCOR_CCOR: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          DisableEditor = True
          Width = 46
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COR_CCOR'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
          DisableFilter = True
        end
        object dbgConsultaCOR_REFE: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 81
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COR_REFE'
        end
        object dbgConsultaCOR_DCOR: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 214
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COR_DCOR'
        end
        object dbgConsultaCOR_PCOR: TdxDBGridMaskColumn
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COR_PCOR'
        end
        object dbgConsultaCOR_PREC: TdxDBGridCheckColumn
          CharCase = ecUpperCase
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COR_PREC'
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbgConsultaCOR_PADR: TdxDBGridCheckColumn
          CharCase = ecUpperCase
          Width = 61
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COR_PADR'
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
  end
  inherited Cadastro: TIBDataSet
    BeforeDelete = CadastroBeforeDelete
    BeforePost = CadastroBeforePost
    DeleteSQL.Strings = (
      'delete from TAB_COR'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_COR'
      
        '  (COR_CCOR, COR_DCOR, COR_PADR, COR_PCOR, COR_PREC, COR_REFE, C' +
        'OR_STA, '
      '   ID)'
      'values'
      
        '  (:COR_CCOR, :COR_DCOR, :COR_PADR, :COR_PCOR, :COR_PREC, :COR_R' +
        'EFE, :COR_STA, '
      '   :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  COR_CCOR,'
      '  COR_DCOR,'
      '  COR_STA,'
      '  COR_PREC,'
      '  COR_REFE,'
      '  COR_PADR,'
      '  COR_PCOR'
      'from TAB_COR '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_COR'
      'WHERE COR_STA = 0'
      'ORDER BY COR_DCOR')
    ModifySQL.Strings = (
      'update TAB_COR'
      'set'
      '  COR_CCOR = :COR_CCOR,'
      '  COR_DCOR = :COR_DCOR,'
      '  COR_PADR = :COR_PADR,'
      '  COR_PCOR = :COR_PCOR,'
      '  COR_PREC = :COR_PREC,'
      '  COR_REFE = :COR_REFE,'
      '  COR_STA = :COR_STA,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 288
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_COR"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroCOR_CCOR: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COR_CCOR'
      Origin = '"TAB_COR"."COR_CCOR"'
      OnValidate = cadastroCOR_CCORValidate
    end
    object cadastroCOR_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'COR_DCOR'
      Origin = '"TAB_COR"."COR_DCOR"'
      OnValidate = cadastroCOR_DCORValidate
      Size = 30
    end
    object cadastroCOR_STA: TIBStringField
      FieldName = 'COR_STA'
      Origin = '"TAB_COR"."COR_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroCOR_PREC: TIBStringField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'COR_PREC'
      Origin = '"TAB_COR"."COR_PREC"'
      FixedChar = True
      Size = 1
    end
    object cadastroCOR_REFE: TIBStringField
      DisplayLabel = 'Referencia'
      FieldName = 'COR_REFE'
      Origin = '"TAB_COR"."COR_REFE"'
      Size = 3
    end
    object cadastroCOR_PADR: TIBStringField
      DisplayLabel = 'Padr'#227'o'
      FieldName = 'COR_PADR'
      Origin = '"TAB_COR"."COR_PADR"'
      FixedChar = True
      Size = 1
    end
    object cadastroCOR_PCOR: TIBStringField
      DisplayLabel = 'Pantone'
      FieldName = 'COR_PCOR'
      Origin = '"TAB_COR"."COR_PCOR"'
      Size = 30
    end
  end
  inherited DTSCadastro: TDataSource
    Left = 320
  end
end
