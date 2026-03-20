inherited frmcad_for: Tfrmcad_for
  Left = 458
  Top = 30
  Caption = 'Cadastro de Fornecedores'
  ClientHeight = 604
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
    Top = 585
    Width = 936
  end
  inherited pnldir: TPanel
    Left = 936
    Height = 510
  end
  inherited pnlpri: TPanel
    Width = 936
    Height = 510
    inherited pnldbg: TPanel
      Width = 936
      Height = 509
      inherited gbDET: TGroupBox
        Width = 936
        Height = 509
        inherited SBEdicao: TSpeedBar
          Height = 492
        end
        inherited DBGConsulta: TdxDBGrid
          Width = 888
          Height = 492
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
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
            DisableFilter = True
          end
          object dbgConsultaFOR_FANT: TdxDBGridMaskColumn
            Width = 172
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FOR_FANT'
          end
          object dbgConsultaFOR_RAZA: TdxDBGridMaskColumn
            Width = 298
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FOR_RAZA'
            DisableFilter = True
          end
          object dbgConsultaFOR_CNPJ: TdxDBGridMaskColumn
            Width = 131
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FOR_CNPJ'
            DisableFilter = True
          end
          object dbgConsultaFOR_CPF: TdxDBGridMaskColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FOR_CPF'
            DisableFilter = True
          end
          object dbgConsultaFOR_LOGR: TdxDBGridMaskColumn
            Width = 342
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FOR_LOGR'
          end
          object dbgConsultaFOR_CID: TdxDBGridMaskColumn
            Width = 205
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FOR_CID'
          end
          object dbgConsultaFOR_BAI: TdxDBGridMaskColumn
            Width = 236
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FOR_BAI'
          end
          object dbgConsultaFOR_ESTA: TdxDBGridMaskColumn
            Width = 40
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FOR_ESTA'
          end
          object dbgConsultaFOR_STAV: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FOR_STAV'
          end
        end
      end
    end
    inherited pnlbot: TPanel
      Top = 509
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
      
        'SELECT CAD_FOR.ID,FOR_FANT,FOR_RAZA,FOR_CNPJ,FOR_CPF,FOR_CRED,FO' +
        'R_CID,FOR_BAI,FOR_TLOG,FOR_LOGR,FOR_NUME,FOR_CEP,FOR_COMP,FOR_ES' +
        'TA,FOR_STA,FOR_STAV,FOR_DPAG,'
      
        '       FOR_VDSC,FOR_DCAD,FOR_DFUN,FOR_DALT,FOR_DULT,FOR_VULT,FOR' +
        '_DDD,FOR_TEL1,FOR_DTRA,FOR_CDEP,'
      
        '       TRIM(CAST(SUBSTRING(FOR_OBSO FROM 1 FOR 8192) AS VARCHAR(' +
        '8192))) FOR_OBSO'
      'FROM CAD_FOR')
    Left = 600
    Top = 48
    object cadastroID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = '"CAD_FOR"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroFOR_FANT: TIBStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FOR_FANT'
      Origin = '"CAD_FOR"."FOR_FANT"'
      Size = 40
    end
    object cadastroFOR_RAZA: TIBStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'FOR_RAZA'
      Origin = '"CAD_FOR"."FOR_RAZA"'
      Size = 60
    end
    object cadastroFOR_CNPJ: TIBStringField
      DisplayLabel = 'C.N.P.J.'
      FieldName = 'FOR_CNPJ'
      Origin = '"CAD_FOR"."FOR_CNPJ"'
      EditMask = '99.999.999/9999-99;0'
      Size = 14
    end
    object cadastroFOR_CPF: TIBStringField
      DisplayLabel = 'C.P.F.'
      FieldName = 'FOR_CPF'
      Origin = '"CAD_FOR"."FOR_CPF"'
      Size = 11
    end
    object cadastroFOR_CRED: TIBBCDField
      FieldName = 'FOR_CRED'
      Origin = '"CAD_FOR"."FOR_CRED"'
      Precision = 9
      Size = 2
    end
    object cadastroFOR_CID: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'FOR_CID'
      Origin = '"CAD_FOR"."FOR_CID"'
      Size = 40
    end
    object cadastroFOR_BAI: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'FOR_BAI'
      Origin = '"CAD_FOR"."FOR_BAI"'
      Size = 40
    end
    object cadastroFOR_LOGR: TIBStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'FOR_LOGR'
      Origin = '"CAD_FOR"."FOR_LOGR"'
      Size = 60
    end
    object cadastroFOR_ESTA: TIBStringField
      DisplayLabel = 'UF'
      FieldName = 'FOR_ESTA'
      Origin = '"CAD_FOR"."FOR_ESTA"'
      Size = 2
    end
    object cadastroFOR_STA: TIBStringField
      FieldName = 'FOR_STA'
      Origin = '"CAD_FOR"."FOR_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroFOR_STAV: TIBStringField
      FieldName = 'FOR_STAV'
      Origin = '"CAD_FOR"."FOR_STAV"'
      FixedChar = True
      Size = 1
    end
    object cadastroFOR_DPAG: TIBStringField
      FieldName = 'FOR_DPAG'
      Origin = '"CAD_FOR"."FOR_DPAG"'
      Size = 50
    end
    object cadastroFOR_VDSC: TIBBCDField
      FieldName = 'FOR_VDSC'
      Origin = '"CAD_FOR"."FOR_VDSC"'
      Precision = 9
      Size = 2
    end
    object cadastroFOR_CDEP: TIntegerField
      FieldName = 'FOR_CDEP'
      Origin = '"CAD_FOR"."FOR_CDEP"'
    end
    object CadastroFOR_TLOG: TIBStringField
      FieldName = 'FOR_TLOG'
      Origin = '"CAD_FOR"."FOR_TLOG"'
      Size = 15
    end
    object CadastroFOR_NUME: TIBStringField
      FieldName = 'FOR_NUME'
      Origin = '"CAD_FOR"."FOR_NUME"'
      Size = 10
    end
    object CadastroFOR_CEP: TIBStringField
      FieldName = 'FOR_CEP'
      Origin = '"CAD_FOR"."FOR_CEP"'
      Size = 9
    end
    object CadastroFOR_COMP: TIBStringField
      FieldName = 'FOR_COMP'
      Origin = '"CAD_FOR"."FOR_COMP"'
      Size = 40
    end
    object CadastroFOR_DCAD: TDateField
      FieldName = 'FOR_DCAD'
      Origin = '"CAD_FOR"."FOR_DCAD"'
    end
    object CadastroFOR_DFUN: TDateField
      FieldName = 'FOR_DFUN'
      Origin = '"CAD_FOR"."FOR_DFUN"'
    end
    object CadastroFOR_DALT: TDateField
      FieldName = 'FOR_DALT'
      Origin = '"CAD_FOR"."FOR_DALT"'
    end
    object CadastroFOR_DULT: TDateField
      FieldName = 'FOR_DULT'
      Origin = '"CAD_FOR"."FOR_DULT"'
    end
    object CadastroFOR_VULT: TIBBCDField
      FieldName = 'FOR_VULT'
      Origin = '"CAD_FOR"."FOR_VULT"'
      Precision = 9
      Size = 2
    end
    object CadastroFOR_DDD: TIBStringField
      FieldName = 'FOR_DDD'
      Origin = '"CAD_FOR"."FOR_DDD"'
      Size = 2
    end
    object CadastroFOR_TEL1: TIBStringField
      FieldName = 'FOR_TEL1'
      Origin = '"CAD_FOR"."FOR_TEL1"'
      Size = 9
    end
    object CadastroFOR_DTRA: TIBStringField
      FieldName = 'FOR_DTRA'
      Origin = '"CAD_FOR"."FOR_DTRA"'
    end
    object CadastroFOR_OBSO: TIBStringField
      FieldName = 'FOR_OBSO'
      ProviderFlags = []
      Size = 8192
    end
  end
end
