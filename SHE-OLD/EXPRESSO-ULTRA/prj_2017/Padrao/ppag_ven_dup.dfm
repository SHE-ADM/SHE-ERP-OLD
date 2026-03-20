inherited frmpag_ven_dup: Tfrmpag_ven_dup
  Caption = 'Duplica'#231#227'o de Vencimentos'
  FormStyle = fsNormal
  Position = poDesktopCenter
  Visible = False
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnldbg: TPanel
    inherited gbDET: TGroupBox
      inherited dbgConsulta: TdxDBGrid
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Criteria = {00000000}
        object dbgConsultaFIN_DOCT: TdxDBGridMaskColumn
          Width = 78
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_DOCT'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object dbgConsultaFIN_DCAD: TdxDBGridDateColumn
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_DCAD'
        end
        object dbgConsultaFIN_DVEN: TdxDBGridDateColumn
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_DVEN'
        end
      end
    end
  end
  inherited cadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from FIN_PAG'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into FIN_PAG'
      
        '  (FIN_AGEN, FIN_ATRA, FIN_BANC, FIN_CBCO, FIN_CCAB, FIN_CCUS, F' +
        'IN_CDBA, '
      
        '   FIN_CDBX, FIN_CDCO, FIN_CDCX, FIN_CFOR, FIN_CONC, FIN_CONT, F' +
        'IN_CPPL, '
      
        '   FIN_CREP, FIN_CVEN, FIN_DATR, FIN_DBAI, FIN_DBAN, FIN_DCAD, F' +
        'IN_DCAN, '
      
        '   FIN_DDES, FIN_DEBA, FIN_DESC, FIN_DMED, FIN_DOCT, FIN_DPAG, F' +
        'IN_DUPL, '
      
        '   FIN_DVEN, FIN_IDBX, FIN_MCHQ, FIN_NCHQ, FIN_OBSE, FIN_PDES, F' +
        'IN_PJUR, '
      
        '   FIN_PMUL, FIN_PORT, FIN_PRAZ, FIN_PREV, FIN_STA, FIN_STCO, FI' +
        'N_STDO, '
      
        '   FIN_STFI, FIN_TIPO, FIN_VALO, FIN_VDES, FIN_VENC, FIN_VJUR, F' +
        'IN_VMUL, '
      '   FIN_VPAG, FIN_VPEN, ID)'
      'values'
      
        '  (:FIN_AGEN, :FIN_ATRA, :FIN_BANC, :FIN_CBCO, :FIN_CCAB, :FIN_C' +
        'CUS, :FIN_CDBA, '
      
        '   :FIN_CDBX, :FIN_CDCO, :FIN_CDCX, :FIN_CFOR, :FIN_CONC, :FIN_C' +
        'ONT, :FIN_CPPL, '
      
        '   :FIN_CREP, :FIN_CVEN, :FIN_DATR, :FIN_DBAI, :FIN_DBAN, :FIN_D' +
        'CAD, :FIN_DCAN, '
      
        '   :FIN_DDES, :FIN_DEBA, :FIN_DESC, :FIN_DMED, :FIN_DOCT, :FIN_D' +
        'PAG, :FIN_DUPL, '
      
        '   :FIN_DVEN, :FIN_IDBX, :FIN_MCHQ, :FIN_NCHQ, :FIN_OBSE, :FIN_P' +
        'DES, :FIN_PJUR, '
      
        '   :FIN_PMUL, :FIN_PORT, :FIN_PRAZ, :FIN_PREV, :FIN_STA, :FIN_ST' +
        'CO, :FIN_STDO, '
      
        '   :FIN_STFI, :FIN_TIPO, :FIN_VALO, :FIN_VDES, :FIN_VENC, :FIN_V' +
        'JUR, :FIN_VMUL, '
      '   :FIN_VPAG, :FIN_VPEN, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  FIN_CCAB,'
      '  FIN_CDBX,'
      '  FIN_CDCX,'
      '  FIN_CFOR,'
      '  FIN_CVEN,'
      '  FIN_CREP,'
      '  FIN_PRAZ,'
      '  FIN_ATRA,'
      '  FIN_CONC,'
      '  FIN_DCAD,'
      '  FIN_DVEN,'
      '  FIN_DPAG,'
      '  FIN_DMED,'
      '  FIN_DATR,'
      '  FIN_STDO,'
      '  FIN_DOCT,'
      '  FIN_BANC,'
      '  FIN_DBAN,'
      '  FIN_AGEN,'
      '  FIN_CONT,'
      '  FIN_NCHQ,'
      '  FIN_MCHQ,'
      '  FIN_TIPO,'
      '  FIN_STFI,'
      '  FIN_STCO,'
      '  FIN_VALO,'
      '  FIN_VPAG,'
      '  FIN_VPEN,'
      '  FIN_OBSE,'
      '  FIN_STA,'
      '  FIN_PREV,'
      '  FIN_DUPL,'
      '  FIN_DCAN,'
      '  FIN_CPPL,'
      '  FIN_CCUS,'
      '  FIN_CBCO,'
      '  FIN_PORT,'
      '  FIN_VMUL,'
      '  FIN_PMUL,'
      '  FIN_VJUR,'
      '  FIN_PJUR,'
      '  FIN_VDES,'
      '  FIN_PDES,'
      '  FIN_DESC,'
      '  FIN_CDCO,'
      '  FIN_CDBA,'
      '  FIN_DEBA,'
      '  FIN_DBAI,'
      '  FIN_IDBX,'
      '  FIN_VENC,'
      '  FIN_DDES'
      'from FIN_PAG '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM FIN_PAG')
    ModifySQL.Strings = (
      'update FIN_PAG'
      'set'
      '  FIN_AGEN = :FIN_AGEN,'
      '  FIN_ATRA = :FIN_ATRA,'
      '  FIN_BANC = :FIN_BANC,'
      '  FIN_CBCO = :FIN_CBCO,'
      '  FIN_CCAB = :FIN_CCAB,'
      '  FIN_CCUS = :FIN_CCUS,'
      '  FIN_CDBA = :FIN_CDBA,'
      '  FIN_CDBX = :FIN_CDBX,'
      '  FIN_CDCO = :FIN_CDCO,'
      '  FIN_CDCX = :FIN_CDCX,'
      '  FIN_CFOR = :FIN_CFOR,'
      '  FIN_CONC = :FIN_CONC,'
      '  FIN_CONT = :FIN_CONT,'
      '  FIN_CPPL = :FIN_CPPL,'
      '  FIN_CREP = :FIN_CREP,'
      '  FIN_CVEN = :FIN_CVEN,'
      '  FIN_DATR = :FIN_DATR,'
      '  FIN_DBAI = :FIN_DBAI,'
      '  FIN_DBAN = :FIN_DBAN,'
      '  FIN_DCAD = :FIN_DCAD,'
      '  FIN_DCAN = :FIN_DCAN,'
      '  FIN_DDES = :FIN_DDES,'
      '  FIN_DEBA = :FIN_DEBA,'
      '  FIN_DESC = :FIN_DESC,'
      '  FIN_DMED = :FIN_DMED,'
      '  FIN_DOCT = :FIN_DOCT,'
      '  FIN_DPAG = :FIN_DPAG,'
      '  FIN_DUPL = :FIN_DUPL,'
      '  FIN_DVEN = :FIN_DVEN,'
      '  FIN_IDBX = :FIN_IDBX,'
      '  FIN_MCHQ = :FIN_MCHQ,'
      '  FIN_NCHQ = :FIN_NCHQ,'
      '  FIN_OBSE = :FIN_OBSE,'
      '  FIN_PDES = :FIN_PDES,'
      '  FIN_PJUR = :FIN_PJUR,'
      '  FIN_PMUL = :FIN_PMUL,'
      '  FIN_PORT = :FIN_PORT,'
      '  FIN_PRAZ = :FIN_PRAZ,'
      '  FIN_PREV = :FIN_PREV,'
      '  FIN_STA = :FIN_STA,'
      '  FIN_STCO = :FIN_STCO,'
      '  FIN_STDO = :FIN_STDO,'
      '  FIN_STFI = :FIN_STFI,'
      '  FIN_TIPO = :FIN_TIPO,'
      '  FIN_VALO = :FIN_VALO,'
      '  FIN_VDES = :FIN_VDES,'
      '  FIN_VENC = :FIN_VENC,'
      '  FIN_VJUR = :FIN_VJUR,'
      '  FIN_VMUL = :FIN_VMUL,'
      '  FIN_VPAG = :FIN_VPAG,'
      '  FIN_VPEN = :FIN_VPEN,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_PAG"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroFIN_CCAB: TIntegerField
      FieldName = 'FIN_CCAB'
      Origin = '"FIN_PAG"."FIN_CCAB"'
    end
    object cadastroFIN_CDBX: TIntegerField
      FieldName = 'FIN_CDBX'
      Origin = '"FIN_PAG"."FIN_CDBX"'
    end
    object cadastroFIN_CDCX: TIntegerField
      FieldName = 'FIN_CDCX'
      Origin = '"FIN_PAG"."FIN_CDCX"'
    end
    object cadastroFIN_CFOR: TIntegerField
      FieldName = 'FIN_CFOR'
      Origin = '"FIN_PAG"."FIN_CFOR"'
    end
    object cadastroFIN_CVEN: TIntegerField
      FieldName = 'FIN_CVEN'
      Origin = '"FIN_PAG"."FIN_CVEN"'
    end
    object cadastroFIN_CREP: TIntegerField
      FieldName = 'FIN_CREP'
      Origin = '"FIN_PAG"."FIN_CREP"'
    end
    object cadastroFIN_PRAZ: TSmallintField
      FieldName = 'FIN_PRAZ'
      Origin = '"FIN_PAG"."FIN_PRAZ"'
    end
    object cadastroFIN_ATRA: TSmallintField
      FieldName = 'FIN_ATRA'
      Origin = '"FIN_PAG"."FIN_ATRA"'
    end
    object cadastroFIN_CONC: TSmallintField
      FieldName = 'FIN_CONC'
      Origin = '"FIN_PAG"."FIN_CONC"'
    end
    object cadastroFIN_DCAD: TDateField
      DisplayLabel = 'Dt Lancto'
      FieldName = 'FIN_DCAD'
      Origin = '"FIN_PAG"."FIN_DCAD"'
    end
    object cadastroFIN_DVEN: TDateField
      DisplayLabel = 'Dt Vencto'
      FieldName = 'FIN_DVEN'
      Origin = '"FIN_PAG"."FIN_DVEN"'
    end
    object cadastroFIN_DPAG: TDateField
      FieldName = 'FIN_DPAG'
      Origin = '"FIN_PAG"."FIN_DPAG"'
    end
    object cadastroFIN_DMED: TDateField
      FieldName = 'FIN_DMED'
      Origin = '"FIN_PAG"."FIN_DMED"'
    end
    object cadastroFIN_DATR: TDateField
      FieldName = 'FIN_DATR'
      Origin = '"FIN_PAG"."FIN_DATR"'
    end
    object cadastroFIN_STDO: TIBStringField
      FieldName = 'FIN_STDO'
      Origin = '"FIN_PAG"."FIN_STDO"'
      Size = 3
    end
    object cadastroFIN_DOCT: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'FIN_DOCT'
      Origin = '"FIN_PAG"."FIN_DOCT"'
    end
    object cadastroFIN_BANC: TIBStringField
      FieldName = 'FIN_BANC'
      Origin = '"FIN_PAG"."FIN_BANC"'
      Size = 4
    end
    object cadastroFIN_DBAN: TIBStringField
      FieldName = 'FIN_DBAN'
      Origin = '"FIN_PAG"."FIN_DBAN"'
      Size = 50
    end
    object cadastroFIN_AGEN: TIBStringField
      FieldName = 'FIN_AGEN'
      Origin = '"FIN_PAG"."FIN_AGEN"'
      Size = 10
    end
    object cadastroFIN_CONT: TIBStringField
      FieldName = 'FIN_CONT'
      Origin = '"FIN_PAG"."FIN_CONT"'
      Size = 15
    end
    object cadastroFIN_NCHQ: TIBStringField
      FieldName = 'FIN_NCHQ'
      Origin = '"FIN_PAG"."FIN_NCHQ"'
      Size = 10
    end
    object cadastroFIN_MCHQ: TSmallintField
      FieldName = 'FIN_MCHQ'
      Origin = '"FIN_PAG"."FIN_MCHQ"'
    end
    object cadastroFIN_TIPO: TIBStringField
      FieldName = 'FIN_TIPO'
      Origin = '"FIN_PAG"."FIN_TIPO"'
    end
    object cadastroFIN_STFI: TIBStringField
      FieldName = 'FIN_STFI'
      Origin = '"FIN_PAG"."FIN_STFI"'
    end
    object cadastroFIN_STCO: TIBStringField
      FieldName = 'FIN_STCO'
      Origin = '"FIN_PAG"."FIN_STCO"'
    end
    object cadastroFIN_VALO: TIBBCDField
      FieldName = 'FIN_VALO'
      Origin = '"FIN_PAG"."FIN_VALO"'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_VPAG: TIBBCDField
      FieldName = 'FIN_VPAG'
      Origin = '"FIN_PAG"."FIN_VPAG"'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_VPEN: TIBBCDField
      FieldName = 'FIN_VPEN'
      Origin = '"FIN_PAG"."FIN_VPEN"'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_OBSE: TMemoField
      FieldName = 'FIN_OBSE'
      Origin = '"FIN_PAG"."FIN_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroFIN_STA: TIBStringField
      FieldName = 'FIN_STA'
      Origin = '"FIN_PAG"."FIN_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroFIN_PREV: TIBStringField
      FieldName = 'FIN_PREV'
      Origin = '"FIN_PAG"."FIN_PREV"'
      FixedChar = True
      Size = 1
    end
    object cadastroFIN_DUPL: TIBStringField
      FieldName = 'FIN_DUPL'
      Origin = '"FIN_PAG"."FIN_DUPL"'
      FixedChar = True
      Size = 1
    end
    object cadastroFIN_DCAN: TDateField
      FieldName = 'FIN_DCAN'
      Origin = '"FIN_PAG"."FIN_DCAN"'
    end
    object cadastroFIN_CPPL: TIntegerField
      FieldName = 'FIN_CPPL'
      Origin = '"FIN_PAG"."FIN_CPPL"'
    end
    object cadastroFIN_CCUS: TIntegerField
      FieldName = 'FIN_CCUS'
      Origin = '"FIN_PAG"."FIN_CCUS"'
    end
    object cadastroFIN_CBCO: TIntegerField
      FieldName = 'FIN_CBCO'
      Origin = '"FIN_PAG"."FIN_CBCO"'
    end
    object cadastroFIN_PORT: TIBStringField
      FieldName = 'FIN_PORT'
      Origin = '"FIN_PAG"."FIN_PORT"'
    end
    object cadastroFIN_VMUL: TIBBCDField
      FieldName = 'FIN_VMUL'
      Origin = '"FIN_PAG"."FIN_VMUL"'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_PMUL: TIBBCDField
      FieldName = 'FIN_PMUL'
      Origin = '"FIN_PAG"."FIN_PMUL"'
      Precision = 9
      Size = 2
    end
    object cadastroFIN_VJUR: TIBBCDField
      FieldName = 'FIN_VJUR'
      Origin = '"FIN_PAG"."FIN_VJUR"'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_PJUR: TIBBCDField
      FieldName = 'FIN_PJUR'
      Origin = '"FIN_PAG"."FIN_PJUR"'
      Precision = 9
      Size = 2
    end
    object cadastroFIN_VDES: TIBBCDField
      FieldName = 'FIN_VDES'
      Origin = '"FIN_PAG"."FIN_VDES"'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_PDES: TIBBCDField
      FieldName = 'FIN_PDES'
      Origin = '"FIN_PAG"."FIN_PDES"'
      Precision = 9
      Size = 2
    end
    object cadastroFIN_DESC: TIBStringField
      FieldName = 'FIN_DESC'
      Origin = '"FIN_PAG"."FIN_DESC"'
      Size = 40
    end
    object cadastroFIN_CDCO: TIntegerField
      FieldName = 'FIN_CDCO'
      Origin = '"FIN_PAG"."FIN_CDCO"'
    end
    object cadastroFIN_CDBA: TIBStringField
      FieldName = 'FIN_CDBA'
      Origin = '"FIN_PAG"."FIN_CDBA"'
      Size = 4
    end
    object cadastroFIN_DEBA: TIBStringField
      FieldName = 'FIN_DEBA'
      Origin = '"FIN_PAG"."FIN_DEBA"'
      Size = 50
    end
    object cadastroFIN_DBAI: TDateField
      FieldName = 'FIN_DBAI'
      Origin = '"FIN_PAG"."FIN_DBAI"'
    end
    object cadastroFIN_IDBX: TIBStringField
      FieldName = 'FIN_IDBX'
      Origin = '"FIN_PAG"."FIN_IDBX"'
      Size = 10
    end
    object cadastroFIN_VENC: TIBBCDField
      FieldName = 'FIN_VENC'
      Origin = '"FIN_PAG"."FIN_VENC"'
      Precision = 18
      Size = 2
    end
    object cadastroFIN_DDES: TDateField
      FieldName = 'FIN_DDES'
      Origin = '"FIN_PAG"."FIN_DDES"'
    end
  end
end
