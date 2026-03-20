inherited frmfin_dup: Tfrmfin_dup
  Left = 324
  Top = 156
  Caption = 'Emiss'#227'o de Duplicatas'
  ClientHeight = 546
  ClientWidth = 752
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Top = 527
    Width = 752
  end
  inherited SBMenu: TSpeedBar
    Width = 752
  end
  inherited pnldir: TPanel
    Left = 752
    Height = 452
  end
  inherited pnldbg: TPanel
    Width = 752
    Height = 452
    inherited gbDET: TGroupBox [0]
      Width = 752
      Height = 450
      inherited DBGConsulta: TdxDBGrid
        Width = 704
        Height = 432
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Active = True
        Filter.Criteria = {00000000}
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSmartReload, edgoSyncSelection, edgoUseBookmarks]
        object dbgConsultaCLI_FANT: TdxDBGridMaskColumn
          DisableEditor = True
          Width = 180
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLI_FANT'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object dbgConsultaNFE_STPD: TdxDBGridMaskColumn
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_STPD'
        end
        object dbgConsultaNFE_STCO: TdxDBGridMaskColumn
          DisableEditor = True
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_STCO'
        end
        object dbgConsultaNFE_DNFE: TdxDBGridDateColumn
          DisableEditor = True
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_DNFE'
        end
        object dbgConsultaNFE_CDNF: TdxDBGridMaskColumn
          DisableEditor = True
          Width = 67
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_CDNF'
        end
        object dbgConsultaNFE_TITU: TdxDBGridMaskColumn
          DisableEditor = True
          Width = 71
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_TITU'
          DisableFilter = True
        end
        object dbgConsultaNFE_DVEN: TdxDBGridDateColumn
          DisableEditor = True
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_DVEN'
        end
        object dbgConsultaNFE_VDUP: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_VDUP'
          SummaryFooterType = cstSum
          SummaryFooterField = 'NFE_VDUP'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaNFE_DPAG: TdxDBGridDateColumn
          DisableEditor = True
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_DPAG'
        end
        object dbgConsultaNFE_VPAG: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_VPAG'
          SummaryFooterType = cstSum
          SummaryFooterField = 'NFE_VPAG'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaNFE_STA: TdxDBGridMaskColumn
          DisableEditor = True
          Visible = False
          Width = 39
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_STA'
        end
        object dbgConsultaNFE_STFI: TdxDBGridMaskColumn
          DisableEditor = True
          Width = 77
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_STFI'
        end
        object dbgConsultaNFE_IDBX: TdxDBGridMaskColumn
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_IDBX'
        end
      end
      inherited SBEdicao: TSpeedBar
        Height = 432
      end
    end
    inherited pnlbot: TPanel [1]
      Top = 450
      Width = 752
    end
  end
  inherited Cadastro: TIBDataSet
    OnCalcFields = cadastroCalcFields
    DeleteSQL.Strings = (
      'delete from NFE_DUP'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into NFE_DUP'
      
        '  (ID, NFE_CCAB, NFE_CDNF, NFE_CDRO, NFE_CFAV, NFE_DNFE, NFE_DPA' +
        'G, NFE_DROM, '
      
        '   NFE_DVEN, NFE_OBSE, NFE_PARC, NFE_STA, NFE_STCO, NFE_STFI, NF' +
        'E_STPD, '
      '   NFE_TITU, NFE_VDUP, NFE_VPAG, NFE_VPEN)'
      'values'
      
        '  (:ID, :NFE_CCAB, :NFE_CDNF, :NFE_CDRO, :NFE_CFAV, :NFE_DNFE, :' +
        'NFE_DPAG, '
      
        '   :NFE_DROM, :NFE_DVEN, :NFE_OBSE, :NFE_PARC, :NFE_STA, :NFE_ST' +
        'CO, :NFE_STFI, '
      '   :NFE_STPD, :NFE_TITU, :NFE_VDUP, :NFE_VPAG, :NFE_VPEN)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NFE_CDRO,'
      '  NFE_CCAB,'
      '  NFE_CFAV,'
      '  NFE_DROM,'
      '  NFE_CDNF,'
      '  NFE_DNFE,'
      '  NFE_TITU,'
      '  NFE_STPD,'
      '  NFE_STCO,'
      '  NFE_STFI,'
      '  NFE_PARC,'
      '  NFE_DVEN,'
      '  NFE_VDUP,'
      '  NFE_DPAG,'
      '  NFE_VPAG,'
      '  NFE_VPEN,'
      '  NFE_OBSE,'
      '  NFE_STA'
      'from NFE_DUP '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT   NFE_DUP.*,NFE_CAB.NFE_VNF,NFE_CAB.NFE_CHAV,'
      
        '         CAD_CLI.CLI_FANT,CAD_CLI.CLI_RAZA,CAD_CLI.CLI_DDD,CAD_C' +
        'LI.CLI_TEL1,CAD_CLI.CLI_CNPJ,CAD_CLI.CLI_INSC,'
      
        '         CAD_CLI.CLI_TLOG,CAD_CLI.CLI_LOGR,CAD_CLI.CLI_CEP ,CAD_' +
        'CLI.CLI_NUME,CAD_CLI.CLI_COMP,CAD_CLI.CLI_BAI ,CAD_CLI.CLI_CID ,' +
        'CAD_CLI.CLI_ESTA,'
      
        '         CAD_CLI.CLI_TLOC,CAD_CLI.CLI_LOGC,CAD_CLI.CLI_CEPC,CAD_' +
        'CLI.CLI_NUMC,CAD_CLI.CLI_COMC,CAD_CLI.CLI_BAIC,CAD_CLI.CLI_CIDC,' +
        'CAD_CLI.CLI_ESTC'
      'FROM     CAD_CLI,NFE_DUP_003 "NFE_DUP",NFE_CAB_003 "NFE_CAB"'
      'WHERE    CAD_CLI.ID = NFE_DUP.NFE_CFAV'
      'AND      NFE_DUP.NFE_CCAB = NFE_CAB.ID'
      'AND      NFE_DUP.NFE_DNFE BETWEEN '#39'09/01/12'#39' AND '#39'09/09/12'#39
      'ORDER BY NFE_DUP.ID')
    ModifySQL.Strings = (
      'update NFE_DUP'
      'set'
      '  ID = :ID,'
      '  NFE_CCAB = :NFE_CCAB,'
      '  NFE_CDNF = :NFE_CDNF,'
      '  NFE_CDRO = :NFE_CDRO,'
      '  NFE_CFAV = :NFE_CFAV,'
      '  NFE_DNFE = :NFE_DNFE,'
      '  NFE_DPAG = :NFE_DPAG,'
      '  NFE_DROM = :NFE_DROM,'
      '  NFE_DVEN = :NFE_DVEN,'
      '  NFE_OBSE = :NFE_OBSE,'
      '  NFE_PARC = :NFE_PARC,'
      '  NFE_STA = :NFE_STA,'
      '  NFE_STCO = :NFE_STCO,'
      '  NFE_STFI = :NFE_STFI,'
      '  NFE_STPD = :NFE_STPD,'
      '  NFE_TITU = :NFE_TITU,'
      '  NFE_VDUP = :NFE_VDUP,'
      '  NFE_VPAG = :NFE_VPAG,'
      '  NFE_VPEN = :NFE_VPEN'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_DUP"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroNFE_CDRO: TIntegerField
      FieldName = 'NFE_CDRO'
      Origin = '"NFE_DUP"."NFE_CDRO"'
    end
    object cadastroNFE_CCAB: TIntegerField
      FieldName = 'NFE_CCAB'
      Origin = '"NFE_DUP"."NFE_CCAB"'
    end
    object cadastroNFE_CFAV: TIntegerField
      FieldName = 'NFE_CFAV'
      Origin = '"NFE_DUP"."NFE_CFAV"'
    end
    object cadastroNFE_DROM: TDateField
      FieldName = 'NFE_DROM'
      Origin = '"NFE_DUP"."NFE_DROM"'
    end
    object cadastroNFE_CDNF: TIntegerField
      DisplayLabel = 'Nota Fiscal'
      FieldName = 'NFE_CDNF'
      Origin = '"NFE_DUP"."NFE_CDNF"'
    end
    object cadastroNFE_DNFE: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'NFE_DNFE'
      Origin = '"NFE_DUP"."NFE_DNFE"'
    end
    object cadastroNFE_TITU: TIBStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'NFE_TITU'
      Origin = '"NFE_DUP"."NFE_TITU"'
    end
    object cadastroNFE_STPD: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'NFE_STPD'
      Origin = '"NFE_DUP"."NFE_STPD"'
    end
    object cadastroNFE_STCO: TIBStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldName = 'NFE_STCO'
      Origin = '"NFE_DUP"."NFE_STCO"'
    end
    object cadastroNFE_STFI: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'NFE_STFI'
      Origin = '"NFE_DUP"."NFE_STFI"'
    end
    object cadastroNFE_PARC: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'NFE_PARC'
      Origin = '"NFE_DUP"."NFE_PARC"'
    end
    object cadastroNFE_DVEN: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'NFE_DVEN'
      Origin = '"NFE_DUP"."NFE_DVEN"'
    end
    object cadastroNFE_VDUP: TIBBCDField
      DisplayLabel = 'Valor Duplicata'
      FieldName = 'NFE_VDUP'
      Origin = '"NFE_DUP"."NFE_VDUP"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_DPAG: TDateField
      DisplayLabel = 'Pagamento'
      FieldName = 'NFE_DPAG'
      Origin = '"NFE_DUP"."NFE_DPAG"'
    end
    object cadastroNFE_VPAG: TIBBCDField
      DisplayLabel = 'Valor Pago'
      FieldName = 'NFE_VPAG'
      Origin = '"NFE_DUP"."NFE_VPAG"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VPEN: TIBBCDField
      DisplayLabel = 'Valor Pendente'
      FieldName = 'NFE_VPEN'
      Origin = '"NFE_DUP"."NFE_VPEN"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_OBSE: TMemoField
      FieldName = 'NFE_OBSE'
      Origin = '"NFE_DUP"."NFE_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroNFE_STA: TIBStringField
      FieldName = 'NFE_STA'
      Origin = '"NFE_DUP"."NFE_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroNFE_VNF: TIBBCDField
      FieldName = 'NFE_VNF'
      Origin = '"NFE_CAB_003"."NFE_VNF"'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_LOGR: TStringField
      FieldKind = fkCalculated
      FieldName = 'NFE_LOGR'
      Size = 200
      Calculated = True
    end
    object cadastroNFE_CHAV: TIBStringField
      FieldName = 'NFE_CHAV'
      Origin = '"NFE_CAB_003"."NFE_CHAV"'
      Size = 44
    end
    object cadastroCLI_FANT: TIBStringField
      DisplayLabel = 'Favorecido'
      FieldName = 'CLI_FANT'
      Origin = '"CAD_CLI"."CLI_FANT"'
      Size = 40
    end
    object cadastroCLI_RAZA: TIBStringField
      FieldName = 'CLI_RAZA'
      Origin = '"CAD_CLI"."CLI_RAZA"'
      Size = 60
    end
    object cadastroCLI_DDD: TIBStringField
      FieldName = 'CLI_DDD'
      Origin = '"CAD_CLI"."CLI_DDD"'
      Size = 2
    end
    object cadastroCLI_TEL1: TIBStringField
      FieldName = 'CLI_TEL1'
      Origin = '"CAD_CLI"."CLI_TEL1"'
      Size = 9
    end
    object cadastroCLI_CNPJ: TIBStringField
      FieldName = 'CLI_CNPJ'
      Origin = '"CAD_CLI"."CLI_CNPJ"'
      Size = 14
    end
    object cadastroCLI_INSC: TIBStringField
      FieldName = 'CLI_INSC'
      Origin = '"CAD_CLI"."CLI_INSC"'
    end
    object cadastroCLI_TLOG: TIBStringField
      FieldName = 'CLI_TLOG'
      Origin = '"CAD_CLI"."CLI_TLOG"'
      Size = 15
    end
    object cadastroCLI_LOGR: TIBStringField
      FieldName = 'CLI_LOGR'
      Origin = '"CAD_CLI"."CLI_LOGR"'
      Size = 60
    end
    object cadastroCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"CAD_CLI"."CLI_CEP"'
      Size = 9
    end
    object cadastroCLI_NUME: TIBStringField
      FieldName = 'CLI_NUME'
      Origin = '"CAD_CLI"."CLI_NUME"'
      Size = 10
    end
    object cadastroCLI_COMP: TIBStringField
      FieldName = 'CLI_COMP'
      Origin = '"CAD_CLI"."CLI_COMP"'
      Size = 40
    end
    object cadastroCLI_BAI: TIBStringField
      FieldName = 'CLI_BAI'
      Origin = '"CAD_CLI"."CLI_BAI"'
      Size = 40
    end
    object cadastroCLI_CID: TIBStringField
      FieldName = 'CLI_CID'
      Origin = '"CAD_CLI"."CLI_CID"'
      Size = 40
    end
    object cadastroCLI_ESTA: TIBStringField
      FieldName = 'CLI_ESTA'
      Origin = '"CAD_CLI"."CLI_ESTA"'
      Size = 2
    end
    object cadastroCLI_TLOC: TIBStringField
      FieldName = 'CLI_TLOC'
      Origin = '"CAD_CLI"."CLI_TLOC"'
      Size = 15
    end
    object cadastroCLI_LOGC: TIBStringField
      FieldName = 'CLI_LOGC'
      Origin = '"CAD_CLI"."CLI_LOGC"'
      Size = 60
    end
    object cadastroCLI_CEPC: TIBStringField
      FieldName = 'CLI_CEPC'
      Origin = '"CAD_CLI"."CLI_CEPC"'
      Size = 9
    end
    object cadastroCLI_NUMC: TIBStringField
      FieldName = 'CLI_NUMC'
      Origin = '"CAD_CLI"."CLI_NUMC"'
      Size = 10
    end
    object cadastroCLI_COMC: TIBStringField
      FieldName = 'CLI_COMC'
      Origin = '"CAD_CLI"."CLI_COMC"'
      Size = 40
    end
    object cadastroCLI_BAIC: TIBStringField
      FieldName = 'CLI_BAIC'
      Origin = '"CAD_CLI"."CLI_BAIC"'
      Size = 40
    end
    object cadastroCLI_CIDC: TIBStringField
      FieldName = 'CLI_CIDC'
      Origin = '"CAD_CLI"."CLI_CIDC"'
      Size = 40
    end
    object cadastroCLI_ESTC: TIBStringField
      FieldName = 'CLI_ESTC'
      Origin = '"CAD_CLI"."CLI_ESTC"'
      Size = 2
    end
    object cadastroTLOG: TStringField
      FieldKind = fkCalculated
      FieldName = 'TLOG'
      Size = 15
      Calculated = True
    end
    object cadastroLOGR: TStringField
      FieldKind = fkCalculated
      FieldName = 'LOGR'
      Size = 60
      Calculated = True
    end
    object cadastroCEP: TStringField
      FieldKind = fkCalculated
      FieldName = 'CEP'
      Size = 9
      Calculated = True
    end
    object cadastroNUME: TStringField
      FieldKind = fkCalculated
      FieldName = 'NUME'
      Size = 10
      Calculated = True
    end
    object cadastroCOMP: TStringField
      FieldKind = fkCalculated
      FieldName = 'COMP'
      Size = 40
      Calculated = True
    end
    object cadastroBAI: TStringField
      FieldKind = fkCalculated
      FieldName = 'BAI'
      Size = 40
      Calculated = True
    end
    object cadastroCID: TStringField
      FieldKind = fkCalculated
      FieldName = 'CID'
      Size = 40
      Calculated = True
    end
    object cadastroESTA: TStringField
      FieldKind = fkCalculated
      FieldName = 'ESTA'
      Size = 40
      Calculated = True
    end
    object cadastroCNPJ: TStringField
      FieldKind = fkCalculated
      FieldName = 'CNPJ'
      Calculated = True
    end
    object cadastroNFE_IDBX: TIBStringField
      DisplayLabel = 'Instru'#231#227'o Banc'#225'ria'
      FieldName = 'NFE_IDBX'
      Origin = '"NFE_DUP_003"."NFE_IDBX"'
      Size = 10
    end
  end
end
