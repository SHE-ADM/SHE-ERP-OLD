inherited frmpar_sis: Tfrmpar_sis
  Caption = 'Parametros do Sistema'
  ClientHeight = 585
  FormStyle = fsNormal
  OldCreateOrder = True
  Position = poScreenCenter
  Visible = False
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Top = 566
  end
  inherited SpeedBar9: TSpeedBar
    inherited siPRN: TSpeedItem [7]
    end
    inherited siEVE: TSpeedItem [8]
    end
    inherited siLIXO: TSpeedItem [9]
      Enabled = False
    end
  end
  inherited pnldir: TPanel
    Height = 452
  end
  inherited pnlpri: TPanel
    Height = 452
    inherited pnldbg: TPanel
      Height = 451
      inherited gbDET: TGroupBox
        Height = 451
        inherited SpeedBar1: TSpeedBar
          Height = 433
        end
        inherited DBGConsulta: TdxDBGrid
          Height = 433
          KeyField = 'ID'
          ShowSummaryFooter = True
          Filter.Criteria = {00000000}
          OnCustomDrawCell = dbgConsultaCustomDrawCell
          object dbgConsultaID: TdxDBGridMaskColumn
            Width = 46
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
          end
          object dbgConsultaPAR_FANT: TdxDBGridMaskColumn
            Width = 314
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PAR_FANT'
          end
          object dbgConsultaPAR_CNPJ: TdxDBGridMaskColumn
            Width = 137
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PAR_CNPJ'
          end
          object dbgConsultaPAR_STAV: TdxDBGridColumn
            Width = 111
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PAR_STAV'
          end
        end
      end
    end
    inherited pnlbot: TPanel
      Top = 451
    end
  end
  inherited Cadastro: TIBQuery
    OnCalcFields = cadastroCalcFields
    SQL.Strings = (
      'SELECT * FROM PAR_SIS')
    object cadastroID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = '"PAR_SIS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroPAR_CDNF: TIBStringField
      FieldName = 'PAR_CDNF'
      Origin = '"PAR_SIS"."PAR_CDNF"'
      Size = 6
    end
    object cadastroPAR_SERI: TIBStringField
      FieldName = 'PAR_SERI'
      Origin = '"PAR_SIS"."PAR_SERI"'
      Size = 3
    end
    object cadastroPAR_CCRT: TIBStringField
      FieldName = 'PAR_CCRT'
      Origin = '"PAR_SIS"."PAR_CCRT"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_OCRT: TMemoField
      FieldName = 'PAR_OCRT'
      Origin = '"PAR_SIS"."PAR_OCRT"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroPAR_CNA1: TIBStringField
      FieldName = 'PAR_CNA1'
      Origin = '"PAR_SIS"."PAR_CNA1"'
      Size = 10
    end
    object cadastroPAR_CNA2: TIBStringField
      FieldName = 'PAR_CNA2'
      Origin = '"PAR_SIS"."PAR_CNA2"'
      Size = 10
    end
    object cadastroPAR_CCLI: TIntegerField
      FieldName = 'PAR_CCLI'
      Origin = '"PAR_SIS"."PAR_CCLI"'
    end
    object cadastroPAR_FANT: TIBStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'PAR_FANT'
      Origin = '"PAR_SIS"."PAR_FANT"'
      Size = 40
    end
    object cadastroPAR_RAZA: TIBStringField
      FieldName = 'PAR_RAZA'
      Origin = '"PAR_SIS"."PAR_RAZA"'
      Size = 60
    end
    object cadastroPAR_RAMO: TIBStringField
      FieldName = 'PAR_RAMO'
      Origin = '"PAR_SIS"."PAR_RAMO"'
      Size = 120
    end
    object cadastroPAR_CNAE: TIBStringField
      FieldName = 'PAR_CNAE'
      Origin = '"PAR_SIS"."PAR_CNAE"'
      Size = 15
    end
    object cadastroPAR_CNPJ: TIBStringField
      DisplayLabel = 'C.N.P.J.'
      FieldName = 'PAR_CNPJ'
      Origin = '"PAR_SIS"."PAR_CNPJ"'
      EditMask = '99.999.999/9999-99;0'
      Size = 14
    end
    object cadastroPAR_INSC: TIBStringField
      FieldName = 'PAR_INSC'
      Origin = '"PAR_SIS"."PAR_INSC"'
      Size = 15
    end
    object cadastroPAR_DDD: TIBStringField
      FieldName = 'PAR_DDD'
      Origin = '"PAR_SIS"."PAR_DDD"'
      Size = 2
    end
    object cadastroPAR_FONE: TIBStringField
      FieldName = 'PAR_FONE'
      Origin = '"PAR_SIS"."PAR_FONE"'
      Size = 8
    end
    object cadastroPAR_TLOG: TIBStringField
      FieldName = 'PAR_TLOG'
      Origin = '"PAR_SIS"."PAR_TLOG"'
      Size = 15
    end
    object cadastroPAR_LOGR: TIBStringField
      FieldName = 'PAR_LOGR'
      Origin = '"PAR_SIS"."PAR_LOGR"'
      Size = 60
    end
    object cadastroPAR_NUME: TIBStringField
      FieldName = 'PAR_NUME'
      Origin = '"PAR_SIS"."PAR_NUME"'
      Size = 60
    end
    object cadastroPAR_COMP: TIBStringField
      FieldName = 'PAR_COMP'
      Origin = '"PAR_SIS"."PAR_COMP"'
      Size = 60
    end
    object cadastroPAR_CEP: TIBStringField
      FieldName = 'PAR_CEP'
      Origin = '"PAR_SIS"."PAR_CEP"'
      Size = 8
    end
    object cadastroPAR_BAI: TIBStringField
      FieldName = 'PAR_BAI'
      Origin = '"PAR_SIS"."PAR_BAI"'
      Size = 60
    end
    object cadastroPAR_CID: TIBStringField
      FieldName = 'PAR_CID'
      Origin = '"PAR_SIS"."PAR_CID"'
      Size = 60
    end
    object cadastroPAR_CCID: TIBStringField
      FieldName = 'PAR_CCID'
      Origin = '"PAR_SIS"."PAR_CCID"'
      Size = 10
    end
    object cadastroPAR_UF: TIBStringField
      FieldName = 'PAR_UF'
      Origin = '"PAR_SIS"."PAR_UF"'
      Size = 2
    end
    object cadastroPAR_CUF: TIBStringField
      FieldName = 'PAR_CUF'
      Origin = '"PAR_SIS"."PAR_CUF"'
      Size = 2
    end
    object cadastroPAR_FMAI: TIBStringField
      FieldName = 'PAR_FMAI'
      Origin = '"PAR_SIS"."PAR_FMAI"'
      Size = 120
    end
    object cadastroPAR_DOLA: TIBBCDField
      FieldName = 'PAR_DOLA'
      Origin = '"PAR_SIS"."PAR_DOLA"'
      Precision = 9
      Size = 2
    end
    object cadastroPAR_DUPL: TIBStringField
      FieldName = 'PAR_DUPL'
      Origin = '"PAR_SIS"."PAR_DUPL"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_FRET: TIBStringField
      FieldName = 'PAR_FRET'
      Origin = '"PAR_SIS"."PAR_FRET"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_TCLI: TIBStringField
      FieldName = 'PAR_TCLI'
      Origin = '"PAR_SIS"."PAR_TCLI"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_TPRO: TIBStringField
      FieldName = 'PAR_TPRO'
      Origin = '"PAR_SIS"."PAR_TPRO"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_GRAD: TIBStringField
      FieldName = 'PAR_GRAD'
      Origin = '"PAR_SIS"."PAR_GRAD"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_NVIA: TIBStringField
      FieldName = 'PAR_NVIA'
      Origin = '"PAR_SIS"."PAR_NVIA"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_STA: TIBStringField
      FieldName = 'PAR_STA'
      Origin = '"PAR_SIS"."PAR_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_FOTO: TBlobField
      FieldName = 'PAR_FOTO'
      Origin = '"PAR_SIS"."PAR_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cadastroPAR_CPAG: TIntegerField
      FieldName = 'PAR_CPAG'
      Origin = '"PAR_SIS"."PAR_CPAG"'
    end
    object cadastroPAR_CTRA: TIntegerField
      FieldName = 'PAR_CTRA'
      Origin = '"PAR_SIS"."PAR_CTRA"'
    end
    object cadastroPAR_TVOL: TIBStringField
      FieldName = 'PAR_TVOL'
      Origin = '"PAR_SIS"."PAR_TVOL"'
    end
    object cadastroPAR_CICM: TIBBCDField
      FieldName = 'PAR_CICM'
      Origin = '"PAR_SIS"."PAR_CICM"'
      Precision = 9
      Size = 2
    end
    object cadastroPAR_FOT2: TBlobField
      FieldName = 'PAR_FOT2'
      Origin = '"PAR_SIS"."PAR_FOT2"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cadastroPAR_FOT3: TBlobField
      FieldName = 'PAR_FOT3'
      Origin = '"PAR_SIS"."PAR_FOT3"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cadastroPAR_CAIX: TIBStringField
      FieldName = 'PAR_CAIX'
      Origin = '"PAR_SIS"."PAR_CAIX"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_CNSD: TIBStringField
      FieldName = 'PAR_CNSD'
      Origin = '"PAR_SIS"."PAR_CNSD"'
      Size = 10
    end
    object cadastroPAR_CSTD: TIBStringField
      FieldName = 'PAR_CSTD'
      Origin = '"PAR_SIS"."PAR_CSTD"'
      Size = 3
    end
    object cadastroPAR_CNSF: TIBStringField
      FieldName = 'PAR_CNSF'
      Origin = '"PAR_SIS"."PAR_CNSF"'
      Size = 10
    end
    object cadastroPAR_CSTF: TIBStringField
      FieldName = 'PAR_CSTF'
      Origin = '"PAR_SIS"."PAR_CSTF"'
      Size = 3
    end
    object cadastroPAR_STPD: TIBStringField
      FieldName = 'PAR_STPD'
      Origin = '"PAR_SIS"."PAR_STPD"'
    end
    object cadastroPAR_STCO: TIBStringField
      FieldName = 'PAR_STCO'
      Origin = '"PAR_SIS"."PAR_STCO"'
    end
    object cadastroPAR_STAV: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'PAR_STAV'
      Size = 10
      Calculated = True
    end
    object cadastroPAR_TIPO: TIBStringField
      FieldName = 'PAR_TIPO'
      Origin = '"PAR_SIS"."PAR_TIPO"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_PGRD: TIBStringField
      FieldName = 'PAR_PGRD'
      Origin = '"PAR_SIS"."PAR_PGRD"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_CFOR: TIntegerField
      FieldName = 'PAR_CFOR'
      Origin = '"PAR_SIS"."PAR_CFOR"'
    end
    object cadastroPAR_CREP: TIntegerField
      FieldName = 'PAR_CREP'
      Origin = '"PAR_SIS"."PAR_CREP"'
    end
    object cadastroPAR_MAIL: TIBStringField
      FieldName = 'PAR_MAIL'
      Origin = '"PAR_SIS"."PAR_MAIL"'
      Size = 120
    end
    object cadastroPAR_SITE: TIBStringField
      FieldName = 'PAR_SITE'
      Origin = '"PAR_SIS"."PAR_SITE"'
      Size = 60
    end
    object cadastroPAR_LOGO: TIBStringField
      FieldName = 'PAR_LOGO'
      Origin = '"PAR_SIS"."PAR_LOGO"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_CANH: TIBStringField
      FieldName = 'PAR_CANH'
      Origin = '"PAR_SIS"."PAR_CANH"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_CEND: TIBStringField
      FieldName = 'PAR_CEND'
      Origin = '"PAR_SIS"."PAR_CEND"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_SPRO: TIBStringField
      FieldName = 'PAR_SPRO'
      Origin = '"PAR_SIS"."PAR_SPRO"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_RICM: TIBStringField
      FieldName = 'PAR_RICM'
      Origin = '"PAR_SIS"."PAR_RICM"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_PECA: TIBStringField
      FieldName = 'PAR_PECA'
      Origin = '"PAR_SIS"."PAR_PECA"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_LIMC: TSmallintField
      FieldName = 'PAR_LIMC'
      Origin = '"PAR_SIS"."PAR_LIMC"'
    end
    object cadastroPAR_LIMB: TSmallintField
      FieldName = 'PAR_LIMB'
      Origin = '"PAR_SIS"."PAR_LIMB"'
    end
    object cadastroPAR_ONFE: TMemoField
      FieldName = 'PAR_ONFE'
      Origin = '"PAR_SIS"."PAR_ONFE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroPAR_LIME: TIBStringField
      FieldName = 'PAR_LIME'
      Origin = '"PAR_SIS"."PAR_LIME"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_ESEG: TIBStringField
      FieldName = 'PAR_ESEG'
      Origin = '"PAR_SIS"."PAR_ESEG"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_OPED: TMemoField
      FieldName = 'PAR_OPED'
      Origin = '"PAR_SIS"."PAR_OPED"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroPAR_DIOR: TIBStringField
      FieldName = 'PAR_DIOR'
      Origin = '"PAR_SIS"."PAR_DIOR"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_PSEP: TIBStringField
      FieldName = 'PAR_PSEP'
      Origin = '"PAR_SIS"."PAR_PSEP"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_RFOR: TIBStringField
      FieldName = 'PAR_RFOR'
      Origin = '"PAR_SIS"."PAR_RFOR"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_IEST: TIBStringField
      FieldName = 'PAR_IEST'
      Origin = '"PAR_SIS"."PAR_IEST"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_BPAG: TSmallintField
      FieldName = 'PAR_BPAG'
      Origin = '"PAR_SIS"."PAR_BPAG"'
    end
    object cadastroPAR_CSEQ: TIBStringField
      FieldName = 'PAR_CSEQ'
      Origin = '"PAR_SIS"."PAR_CSEQ"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_PVAR: TIBBCDField
      FieldName = 'PAR_PVAR'
      Origin = '"PAR_SIS"."PAR_PVAR"'
      Precision = 9
      Size = 2
    end
    object cadastroPAR_PREP: TIBBCDField
      FieldName = 'PAR_PREP'
      Origin = '"PAR_SIS"."PAR_PREP"'
      Precision = 9
      Size = 2
    end
    object cadastroPAR_DSEP: TSmallintField
      FieldName = 'PAR_DSEP'
      Origin = '"PAR_SIS"."PAR_DSEP"'
    end
    object cadastroPAR_BCHQ: TSmallintField
      FieldName = 'PAR_BCHQ'
      Origin = '"PAR_SIS"."PAR_BCHQ"'
    end
    object cadastroPAR_MCRD: TIBBCDField
      FieldName = 'PAR_MCRD'
      Origin = '"PAR_SIS"."PAR_MCRD"'
      Precision = 18
      Size = 2
    end
    object cadastroPAR_PCRD: TIBBCDField
      FieldName = 'PAR_PCRD'
      Origin = '"PAR_SIS"."PAR_PCRD"'
      Precision = 9
      Size = 2
    end
    object cadastroPAR_PREL: TIBStringField
      FieldName = 'PAR_PREL'
      Origin = '"PAR_SIS"."PAR_PREL"'
      Size = 60
    end
    object cadastroPAR_REND: TIBStringField
      FieldName = 'PAR_REND'
      Origin = '"PAR_SIS"."PAR_REND"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_DCRD: TIBStringField
      FieldName = 'PAR_DCRD'
      Origin = '"PAR_SIS"."PAR_DCRD"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAR_DMAP: TIBStringField
      FieldName = 'PAR_DMAP'
      Origin = '"PAR_SIS"."PAR_DMAP"'
    end
    object CadastroPAR_CBAR: TBlobField
      FieldName = 'PAR_CBAR'
      Origin = '"PAR_SIS"."PAR_CBAR"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CadastroPAR_IM: TIBStringField
      FieldName = 'PAR_IM'
      Origin = '"PAR_SIS"."PAR_IM"'
      Size = 15
    end
    object CadastroPAR_IE: TIBStringField
      FieldName = 'PAR_IE'
      Origin = '"PAR_SIS"."PAR_IE"'
      Size = 15
    end
    object CadastroPAR_UNIDADEFEDERADA: TIBStringField
      FieldName = 'PAR_UNIDADEFEDERADA'
      Origin = '"PAR_SIS"."PAR_UNIDADEFEDERADA"'
      FixedChar = True
      Size = 2
    end
    object CadastroPAR_UNIDADEFEDERADACODIGO: TSmallintField
      FieldName = 'PAR_UNIDADEFEDERADACODIGO'
      Origin = '"PAR_SIS"."PAR_UNIDADEFEDERADACODIGO"'
    end
    object CadastroPAR_NOSERIECERTIFICADO: TIBStringField
      FieldName = 'PAR_NOSERIECERTIFICADO'
      Origin = '"PAR_SIS"."PAR_NOSERIECERTIFICADO"'
      Size = 100
    end
    object CadastroPAR_EMAILCONTABIL: TIBStringField
      FieldName = 'PAR_EMAILCONTABIL'
      Origin = '"PAR_SIS"."PAR_EMAILCONTABIL"'
      Size = 120
    end
    object CadastroPAR_EMAILXMLCOFRE: TIBStringField
      FieldName = 'PAR_EMAILXMLCOFRE'
      Origin = '"PAR_SIS"."PAR_EMAILXMLCOFRE"'
      Size = 120
    end
    object CadastroPAR_LKFACEBOOK: TIBStringField
      FieldName = 'PAR_LKFACEBOOK'
      Origin = '"PAR_SIS"."PAR_LKFACEBOOK"'
      Size = 60
    end
    object CadastroPAR_FTFACEBOOK: TBlobField
      FieldName = 'PAR_FTFACEBOOK'
      Origin = '"PAR_SIS"."PAR_FTFACEBOOK"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CadastroPAR_LKINSTAGRAM: TIBStringField
      FieldName = 'PAR_LKINSTAGRAM'
      Origin = '"PAR_SIS"."PAR_LKINSTAGRAM"'
      Size = 60
    end
    object CadastroPAR_FTINSTAGRAM: TBlobField
      FieldName = 'PAR_FTINSTAGRAM'
      Origin = '"PAR_SIS"."PAR_FTINSTAGRAM"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CadastroPAR_LKTWITTER: TIBStringField
      FieldName = 'PAR_LKTWITTER'
      Origin = '"PAR_SIS"."PAR_LKTWITTER"'
      Size = 60
    end
    object CadastroPAR_FTTWITTER: TBlobField
      FieldName = 'PAR_FTTWITTER'
      Origin = '"PAR_SIS"."PAR_FTTWITTER"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CadastroPAR_SWHASSINATURA: TIBStringField
      FieldName = 'PAR_SWHASSINATURA'
      Origin = '"PAR_SIS"."PAR_SWHASSINATURA"'
      Size = 344
    end
  end
  inherited imageOPC: TImageList
    Left = 268
    Top = 206
  end
end
