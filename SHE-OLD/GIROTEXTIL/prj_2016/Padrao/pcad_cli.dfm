inherited frmcad_cli: Tfrmcad_cli
  Left = 554
  Top = 55
  Caption = 'Cadastro de Clientes'
  ClientHeight = 642
  ClientWidth = 1008
  OldCreateOrder = True
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 14
  object Label8: TLabel [0]
    Left = 168
    Top = 40
    Width = 5
    Height = 14
    Caption = '/'
  end
  inherited SBMenuPrincipal: TSpeedBar
    Width = 1008
  end
  inherited pnldir: TPanel
    Left = 1008
    Height = 558
  end
  inherited pnlpri: TPanel
    Width = 1008
    Height = 558
    inherited pnldbg: TPanel
      Width = 1008
      Height = 557
      inherited gbDET: TGroupBox
        Width = 954
        Height = 557
        inherited DBGConsulta: TdxDBGrid
          Width = 950
          Height = 536
          HeaderMinRowCount = 2
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
          object dbgConsultaCLI_FANT: TdxDBGridMaskColumn
            Width = 172
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_FANT'
          end
          object dbgConsultaCLI_RAZA: TdxDBGridMaskColumn
            Width = 280
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_RAZA'
            DisableFilter = True
          end
          object dbgConsultaCLI_DDD: TdxDBGridMaskColumn
            Width = 49
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_DDD'
          end
          object dbgConsultaCLI_TEL1: TdxDBGridMaskColumn
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_TEL1'
          end
          object dbgConsultaCLI_DCAD: TdxDBGridDateColumn
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_DCAD'
          end
          object dbgConsultaCLI_DFUN: TdxDBGridDateColumn
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_DFUN'
          end
          object dbgConsultaCLI_DULT: TdxDBGridDateColumn
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_DULT'
          end
          object dbgConsultaCLI_DALT: TdxDBGridDateColumn
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_DALT'
          end
          object dbgConsultaCLI_DUSU: TdxDBGridMaskColumn
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_DUSU'
          end
          object dbgConsultaREP_FANT: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REP_FANT'
          end
          object dbgConsultaUSU_DUSU: TdxDBGridMaskColumn
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USU_DUSU'
          end
          object dbgConsultaCLI_CRED: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_CRED'
            DisableFilter = True
          end
          object dbgConsultaCLI_CPF: TdxDBGridMaskColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_CPF'
            DisableFilter = True
          end
          object dbgConsultaCLI_CNPJ: TdxDBGridMaskColumn
            Width = 131
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_CNPJ'
            DisableFilter = True
          end
          object dbgConsultaCLI_LOGR: TdxDBGridMaskColumn
            Width = 342
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_LOGR'
          end
          object dbgConsultaCLI_BAI: TdxDBGridMaskColumn
            Width = 236
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_BAI'
          end
          object dbgConsultaCLI_CID: TdxDBGridMaskColumn
            Width = 205
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_CID'
          end
          object dbgConsultaCLI_ESTA: TdxDBGridMaskColumn
            Width = 40
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_ESTA'
          end
          object dbgConsultaCLI_STAV: TdxDBGridMaskColumn
            Visible = False
            Width = 35
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_STAV'
          end
        end
      end
      inherited GBMenuEdicao: TGroupBox
        Height = 557
        inherited SBMenuEdicao: TSpeedBar
          Height = 536
        end
      end
    end
    inherited pnlbot: TPanel
      Top = 557
      Width = 1008
    end
  end
  inherited sbMSG: TStatusBar
    Top = 623
    Width = 1008
  end
  inherited Consulta: TIBQuery
    Left = 632
    Top = 240
  end
  inherited DTSCadastro: TDataSource
    Left = 632
    Top = 208
  end
  inherited Cadastro: TIBQuery
    SQL.Strings = (
      
        'SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CL' +
        'I_CID,CLI_BAI,CLI_TLOG,CLI_LOGR,CLI_NUME,CLI_CEP,CLI_COMP,CLI_ES' +
        'TA,CLI_STA,CLI_STAV,CLI_DPAG,'
      
        '       CLI_VDSC,CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,CLI_VULT,CLI' +
        '_DDD,CLI_TEL1,REP_FANT,USU_DUSU,CLI_STPD,CLI_DTRA,CLI_DUSU,'
      
        '       TRIM(CAST(SUBSTRING(CLI_OBSO FROM 1 FOR 8192) AS VARCHAR(' +
        '8192))) CLI_OBSO'
      'FROM   CAD_CLI'
      'LEFT   OUTER JOIN CAD_USU ON CAD_CLI.CLI_CVEN = CAD_USU.USU_CUSU'
      'LEFT   OUTER JOIN CAD_REP ON CAD_CLI.CLI_CREP = CAD_REP.ID'
      'WHERE  CAD_CLI.CLI_STA  = '#39'0'#39
      '')
    Left = 632
    Top = 176
    object cadastroID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = '"CAD_CLI"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroCLI_RAZA: TIBStringField
      Tag = 1
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CLI_RAZA'
      Origin = '"CAD_CLI"."CLI_RAZA"'
      Size = 60
    end
    object cadastroCLI_FANT: TIBStringField
      Tag = 2
      DisplayLabel = 'Fantasia'
      FieldName = 'CLI_FANT'
      Origin = '"CAD_CLI"."CLI_FANT"'
      Size = 40
    end
    object cadastroCLI_STA: TIBStringField
      FieldName = 'CLI_STA'
      Origin = '"CAD_CLI"."CLI_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroCLI_CPF: TIBStringField
      Tag = 5
      DisplayLabel = 'C.P.F.'
      FieldName = 'CLI_CPF'
      Origin = '"CAD_CLI"."CLI_CPF"'
      EditMask = '999.999.999-99;0'
      Size = 11
    end
    object cadastroCLI_CNPJ: TIBStringField
      Tag = 3
      DisplayLabel = 'C.N.P.J.'
      FieldName = 'CLI_CNPJ'
      Origin = '"CAD_CLI"."CLI_CNPJ"'
      EditMask = '99.999.999/9999-99;0'
      Size = 14
    end
    object cadastroCLI_LOGR: TIBStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'CLI_LOGR'
      Origin = '"CAD_CLI"."CLI_LOGR"'
      Size = 60
    end
    object cadastroCLI_BAI: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CLI_BAI'
      Origin = '"CAD_CLI"."CLI_BAI"'
      Size = 40
    end
    object cadastroCLI_CID: TIBStringField
      Tag = 4
      DisplayLabel = 'Cidade'
      FieldName = 'CLI_CID'
      Origin = '"CAD_CLI"."CLI_CID"'
      Size = 40
    end
    object cadastroCLI_ESTA: TIBStringField
      Tag = 9
      DisplayLabel = 'UF'
      FieldName = 'CLI_ESTA'
      Origin = '"CAD_CLI"."CLI_ESTA"'
      Size = 2
    end
    object cadastroCLI_CRED: TIBBCDField
      DisplayLabel = 'Limite de Cr'#233'dito'
      FieldName = 'CLI_CRED'
      Origin = '"CAD_CLI"."CLI_CRED"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object cadastroCLI_DPAG: TIBStringField
      FieldName = 'CLI_DPAG'
      Origin = '"CAD_CLI"."CLI_DPAG"'
      Size = 50
    end
    object cadastroCLI_STAV: TIBStringField
      FieldName = 'CLI_STAV'
      Origin = '"CAD_CLI"."CLI_STAV"'
      FixedChar = True
      Size = 1
    end
    object cadastroCLI_VDSC: TIBBCDField
      FieldName = 'CLI_VDSC'
      Origin = '"CAD_CLI"."CLI_VDSC"'
      Precision = 9
      Size = 2
    end
    object cadastroCLI_DCAD: TDateField
      DisplayLabel = 'Cadastro'
      FieldName = 'CLI_DCAD'
      Origin = '"CAD_CLI"."CLI_DCAD"'
    end
    object cadastroCLI_DFUN: TDateField
      DisplayLabel = 'Funda'#231#227'o'
      FieldName = 'CLI_DFUN'
      Origin = '"CAD_CLI"."CLI_DFUN"'
    end
    object cadastroCLI_DALT: TDateField
      DisplayLabel = #218'ltima Altera'#231#227'o'
      FieldName = 'CLI_DALT'
      Origin = '"CAD_CLI"."CLI_DALT"'
    end
    object cadastroCLI_DULT: TDateField
      DisplayLabel = #218'ltima Compra'
      FieldName = 'CLI_DULT'
      Origin = '"CAD_CLI"."CLI_DULT"'
    end
    object cadastroCLI_DDD: TIBStringField
      DisplayLabel = 'DDD'
      FieldName = 'CLI_DDD'
      Origin = '"CAD_CLI"."CLI_DDD"'
      EditMask = '(99);0; '
      Size = 2
    end
    object cadastroCLI_TEL1: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'CLI_TEL1'
      Origin = '"CAD_CLI"."CLI_TEL1"'
      EditMask = '9999-9999;0; '
      Size = 9
    end
    object cadastroREP_FANT: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'REP_FANT'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 40
    end
    object cadastroUSU_DUSU: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'USU_DUSU'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object cadastroCLI_DUSU: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'CLI_DUSU'
      Origin = '"CAD_CLI"."CLI_DUSU"'
      Size = 40
    end
    object cadastroCLI_VULT: TIBBCDField
      FieldName = 'CLI_VULT'
      Origin = '"CAD_CLI"."CLI_VULT"'
      Precision = 9
      Size = 2
    end
    object CadastroCLI_TLOG: TIBStringField
      FieldName = 'CLI_TLOG'
      Origin = '"CAD_CLI"."CLI_TLOG"'
      Size = 15
    end
    object CadastroCLI_NUME: TIBStringField
      FieldName = 'CLI_NUME'
      Origin = '"CAD_CLI"."CLI_NUME"'
      Size = 10
    end
    object CadastroCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"CAD_CLI"."CLI_CEP"'
      Size = 9
    end
    object CadastroCLI_COMP: TIBStringField
      FieldName = 'CLI_COMP'
      Origin = '"CAD_CLI"."CLI_COMP"'
      Size = 40
    end
    object CadastroCLI_STPD: TSmallintField
      FieldName = 'CLI_STPD'
      Origin = '"CAD_CLI"."CLI_STPD"'
    end
    object CadastroCLI_DTRA: TIBStringField
      FieldName = 'CLI_DTRA'
      Origin = '"CAD_CLI"."CLI_DTRA"'
      Size = 60
    end
    object CadastroCLI_OBSO: TIBStringField
      FieldName = 'CLI_OBSO'
      ProviderFlags = []
      Size = 8192
    end
  end
  inherited IBTra: TIBTransaction
    Left = 600
  end
  inherited ibSP: TIBStoredProc
    Left = 600
    Top = 208
  end
  inherited ILMenuPrincipal: TImageList
    Top = 384
  end
  inherited ILMenuEdicao: TImageList
    Top = 384
  end
end
