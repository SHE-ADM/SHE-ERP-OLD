inherited frmcad_usu: Tfrmcad_usu
  Left = 0
  Top = 67
  Caption = 'Cadastro de Usu'#225'rios do Sistema'
  ClientWidth = 1020
  FormStyle = fsNormal
  OldCreateOrder = True
  Position = poDesigned
  Visible = False
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBMenuPrincipal: TSpeedBar
    Width = 1020
  end
  inherited pnldir: TPanel
    Left = 1020
  end
  inherited pnlpri: TPanel
    Width = 1020
    inherited pnldbg: TPanel
      Width = 1020
      inherited gbDET: TGroupBox
        Width = 966
        inherited DBGConsulta: TdxDBGrid
          Width = 962
          HeaderMinRowCount = 2
          KeyField = 'ID'
          ShowSummaryFooter = True
          Filter.Active = True
          Filter.Criteria = {00000000}
          OnCustomDrawCell = dbgConsultaCustomDrawCell
          object dbgConsultaUSU_CUSU: TdxDBGridMaskColumn
            Width = 46
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USU_CUSU'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
            DisableFilter = True
          end
          object dbgConsultaUSU_DUSU: TdxDBGridMaskColumn
            Width = 140
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USU_DUSU'
          end
          object dbgConsultaUSU_NOME: TdxDBGridMaskColumn
            Width = 280
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USU_NOME'
          end
          object dbgConsultaPAR_FANT: TdxDBGridMaskColumn
            Width = 144
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PAR_FANT'
          end
          object dbgConsultaUSU_DCAD: TdxDBGridDateColumn
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USU_DCAD'
          end
          object dbgConsultaUSU_DULT: TdxDBGridDateColumn
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USU_DULT'
          end
          object dbgConsultaUSU_DESC: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 69
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USU_DESC'
            DisableFilter = True
          end
          object dbgConsultaUSU_DIAS: TdxDBGridMaskColumn
            Width = 98
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USU_DIAS'
          end
          object dbgConsultaUSU_ADM: TdxDBGridMaskColumn
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USU_ADM'
          end
          object dbgConsultaUSU_STAT: TdxDBGridColumn
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USU_STAT'
          end
        end
      end
    end
    inherited pnlbot: TPanel
      Width = 1020
    end
  end
  inherited sbMSG: TStatusBar
    Width = 1020
  end
  inherited Cadastro: TIBQuery
    OnCalcFields = cadastroCalcFields
    SQL.Strings = (
      'SELECT CAD_USU.*,PAR_SIS.PAR_FANT '
      'FROM    CAD_USU,PAR_SIS'
      'WHERE CAD_USU.USU_CDEP = PAR_SIS.ID')
    object cadastroID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = '"CAD_USU"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroUSU_DCAD: TDateField
      DisplayLabel = 'Dt Cadastro'
      FieldName = 'USU_DCAD'
      Origin = '"CAD_USU"."USU_DCAD"'
    end
    object cadastroUSU_DULT: TDateTimeField
      DisplayLabel = 'Dt '#218'ltimo Acesso'
      FieldName = 'USU_DULT'
      Origin = '"CAD_USU"."USU_DULT"'
    end
    object cadastroUSU_CUSU: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'USU_CUSU'
      Origin = '"CAD_USU"."USU_CUSU"'
    end
    object cadastroUSU_DUSU: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USU_DUSU'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object cadastroUSU_NOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'USU_NOME'
      Origin = '"CAD_USU"."USU_NOME"'
      Size = 120
    end
    object cadastroUSU_DIAS: TSmallintField
      DisplayLabel = 'Limite de Acesso em Dias'
      FieldName = 'USU_DIAS'
      Origin = '"CAD_USU"."USU_DIAS"'
    end
    object cadastroUSU_PASS: TIBStringField
      FieldName = 'USU_PASS'
      Origin = '"CAD_USU"."USU_PASS"'
      Size = 6
    end
    object cadastroUSU_ADM: TIBStringField
      DisplayLabel = 'Administrador do Sistema'
      FieldName = 'USU_ADM'
      Origin = '"CAD_USU"."USU_ADM"'
      FixedChar = True
      Size = 1
    end
    object cadastroUSU_STA: TIBStringField
      FieldName = 'USU_STA'
      Origin = '"CAD_USU"."USU_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroUSU_PPRI: TIBStringField
      FieldName = 'USU_PPRI'
      Origin = '"CAD_USU"."USU_PPRI"'
    end
    object cadastroUSU_PSEC: TIBStringField
      FieldName = 'USU_PSEC'
      Origin = '"CAD_USU"."USU_PSEC"'
    end
    object cadastroUSU_MENU: TIBStringField
      FieldName = 'USU_MENU'
      Origin = '"CAD_USU"."USU_MENU"'
      Size = 3
    end
    object cadastroUSU_TUSU: TSmallintField
      FieldName = 'USU_TUSU'
      Origin = '"CAD_USU"."USU_TUSU"'
    end
    object cadastroUSU_CDEP: TIntegerField
      FieldName = 'USU_CDEP'
      Origin = '"CAD_USU"."USU_CDEP"'
    end
    object cadastroPAR_FANT: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'PAR_FANT'
      Origin = '"PAR_SIS"."PAR_FANT"'
      Size = 40
    end
    object cadastroUSU_STAV: TIBStringField
      FieldName = 'USU_STAV'
      Origin = '"CAD_USU"."USU_STAV"'
      FixedChar = True
      Size = 1
    end
    object cadastroUSU_STAT: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'USU_STAT'
      Size = 10
      Calculated = True
    end
    object cadastroUSU_DESC: TSmallintField
      DisplayLabel = 'Desconto Venda (%)'
      FieldName = 'USU_DESC'
      Origin = '"CAD_USU"."USU_DESC"'
      DisplayFormat = '0'
    end
    object cadastroUSU_RELA: TIBStringField
      FieldName = 'USU_RELA'
      Origin = '"CAD_USU"."USU_RELA"'
      FixedChar = True
      Size = 1
    end
  end
end
