inherited frmcad_rep: Tfrmcad_rep
  Left = 368
  Top = 166
  Caption = 'Cadastro de Representantes'
  ClientHeight = 614
  ClientWidth = 936
  OldCreateOrder = True
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel [0]
    Left = 156
    Top = 37
    Width = 4
    Height = 13
    Caption = '/'
  end
  inherited sbMSG: TStatusBar
    Top = 595
    Width = 936
  end
  inherited pnldir: TPanel
    Left = 936
    Height = 520
  end
  inherited pnlpri: TPanel
    Width = 936
    Height = 520
    inherited pnldbg: TPanel
      Width = 936
      Height = 519
      inherited gbDET: TGroupBox
        Width = 936
        Height = 519
        inherited SBEdicao: TSpeedBar
          Height = 502
        end
        inherited DBGConsulta: TdxDBGrid
          Width = 888
          Height = 502
          KeyField = 'ID'
          ShowGroupPanel = True
          ShowSummaryFooter = True
          Filter.Active = True
          Filter.Criteria = {00000000}
          OnCustomDrawCell = dbgConsultaCustomDrawCell
          object dbgConsultaID: TdxDBGridMaskColumn
            Width = 49
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID'
            DisableFilter = True
          end
          object dbgConsultaREP_FANT: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REP_FANT'
            DisableFilter = True
          end
          object dbgConsultaREP_RAZA: TdxDBGridMaskColumn
            Width = 298
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REP_RAZA'
            DisableFilter = True
          end
          object dbgConsultaREP_CNPJ: TdxDBGridMaskColumn
            Width = 131
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REP_CNPJ'
            DisableFilter = True
          end
          object dbgConsultaREP_CPF: TdxDBGridMaskColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REP_CPF'
            DisableFilter = True
          end
          object dbgConsultaREP_LOGR: TdxDBGridMaskColumn
            Width = 342
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REP_LOGR'
          end
          object dbgConsultaREP_BAI: TdxDBGridMaskColumn
            Width = 236
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REP_BAI'
          end
          object dbgConsultaREP_CID: TdxDBGridMaskColumn
            Width = 205
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REP_CID'
          end
          object dbgConsultaREP_ESTA: TdxDBGridMaskColumn
            Width = 40
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REP_ESTA'
          end
          object dbgConsultaREP_STAV: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REP_STAV'
          end
        end
      end
    end
    inherited pnlbot: TPanel
      Top = 519
      Width = 936
    end
  end
  inherited SBMenu: TSpeedBar
    Width = 936
  end
  inherited Consulta: TIBQuery
    Left = 568
    Top = 112
  end
  inherited DTSCadastro: TDataSource
    Left = 600
    Top = 80
  end
  inherited Cadastro: TIBQuery
    SQL.Strings = (
      
        'SELECT ID,REP_FANT,REP_RAZA,REP_CNPJ,REP_CPF,REP_CRED,REP_CID,RE' +
        'P_BAI,REP_LOGR,REP_ESTA,REP_STA,REP_STAV,REP_DPAG,REP_OBSO,REP_V' +
        'DSC,REP_COMI FROM CAD_REP'
      'WHERE ID = 0')
    Left = 600
    Top = 48
    object cadastroID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = '"CAD_REP"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroREP_FANT: TIBStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'REP_FANT'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 40
    end
    object cadastroREP_RAZA: TIBStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'REP_RAZA'
      Origin = '"CAD_REP"."REP_RAZA"'
      Size = 60
    end
    object cadastroREP_CNPJ: TIBStringField
      DisplayLabel = 'C.N.P.J.'
      FieldName = 'REP_CNPJ'
      Origin = '"CAD_REP"."REP_CNPJ"'
      Size = 14
    end
    object cadastroREP_CPF: TIBStringField
      DisplayLabel = 'C.P.F.'
      FieldName = 'REP_CPF'
      Origin = '"CAD_REP"."REP_CPF"'
      Size = 11
    end
    object cadastroREP_CRED: TIBBCDField
      FieldName = 'REP_CRED'
      Origin = '"CAD_REP"."REP_CRED"'
      Precision = 9
      Size = 2
    end
    object cadastroREP_CID: TIBStringField
      FieldName = 'REP_CID'
      Origin = '"CAD_REP"."REP_CID"'
      Size = 40
    end
    object cadastroREP_BAI: TIBStringField
      FieldName = 'REP_BAI'
      Origin = '"CAD_REP"."REP_BAI"'
      Size = 40
    end
    object cadastroREP_LOGR: TIBStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'REP_LOGR'
      Origin = '"CAD_REP"."REP_LOGR"'
      Size = 60
    end
    object cadastroREP_ESTA: TIBStringField
      DisplayLabel = 'UF'
      FieldName = 'REP_ESTA'
      Origin = '"CAD_REP"."REP_ESTA"'
      Size = 2
    end
    object cadastroREP_STA: TIBStringField
      FieldName = 'REP_STA'
      Origin = '"CAD_REP"."REP_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroREP_STAV: TIBStringField
      FieldName = 'REP_STAV'
      Origin = '"CAD_REP"."REP_STAV"'
      FixedChar = True
      Size = 1
    end
    object cadastroREP_DPAG: TIBStringField
      FieldName = 'REP_DPAG'
      Origin = '"CAD_REP"."REP_DPAG"'
      Size = 50
    end
    object cadastroREP_OBSO: TMemoField
      FieldName = 'REP_OBSO'
      Origin = '"CAD_REP"."REP_OBSO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroREP_VDSC: TIBBCDField
      FieldName = 'REP_VDSC'
      Origin = '"CAD_REP"."REP_VDSC"'
      Precision = 9
      Size = 2
    end
    object cadastroREP_COMI: TIBBCDField
      FieldName = 'REP_COMI'
      Origin = '"CAD_REP"."REP_COMI"'
      Precision = 9
      Size = 2
    end
  end
end
