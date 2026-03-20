inherited FrmPedidos: TFrmPedidos
  Left = 333
  Top = 13
  Caption = 'Controle de Pedidos'
  ClientHeight = 759
  ClientWidth = 1166
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLPrincipal: TPanel
    Width = 1166
    Height = 678
    inherited PCPrincipal: TdxPageControl
      Width = 1166
      Height = 678
      inherited TSPrincipal: TdxTabSheet
        inherited PNLConsultaRodape: TPanel
          Top = 678
          Width = 1166
        end
        inherited PNLConsulta: TPanel
          Width = 1166
          Height = 678
          inherited DBGConsulta: TdxDBGrid
            Width = 1166
            Height = 678
            Bands = <
              item
                Alignment = taLeftJustify
                Caption = 'Pedidos'
                Fixed = bfLeft
              end
              item
                Caption = 'Notas Fiscais'
              end
              item
                Caption = 'Entregas'
              end
              item
                Caption = 'Clientes'
              end
              item
                Caption = 'Grupo Comercial'
              end
              item
                Caption = 'Vendedores'
              end
              item
                Caption = 'Ordem de Separa'#231#227'o'
              end
              item
                Caption = 'Pedidos Separados'
              end
              item
                Caption = 'Totais Pedidos R$'
              end
              item
                Caption = 'Cobran'#231'a'
              end
              item
                Caption = 'Descontos'
              end>
            DefaultLayout = False
            KeyField = 'ID'
            ShowSummaryFooter = True
            BandColor = clGray
            BandFont.Color = clHighlightText
            BandFont.Name = 'Segoe UI Semibold'
            BandFont.Style = [fsBold, fsItalic]
            Filter.Active = True
            Filter.Criteria = {00000000}
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
            ShowBands = True
            object DBGConsultaDEPK: TdxDBGridMaskColumn
              Color = clGrayText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEPK'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
            end
            object DBGConsultaCTNR: TdxDBGridMaskColumn
              Color = clGrayText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CTNR'
            end
            object DBGConsultaDTPK: TdxDBGridColumn
              Color = clGrayText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 55
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DTPK'
            end
            object DBGConsultaHTPK: TdxDBGridColumn
              Color = clGrayText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 36
              BandIndex = 0
              RowIndex = 0
              FieldName = 'HTPK'
            end
            object DBGConsultaSTPD: TdxDBGridMaskColumn
              Color = clGrayText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'STPD'
            end
            object DBGConsultaD_DEST: TdxDBGridMaskColumn
              Color = clGrayText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'REST'
              SummaryFooterType = cstSum
              SummaryFooterField = 'BQST'
              SummaryFooterFormat = 'BLQ: 0'
            end
            object DBGConsultaAPST: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'APST'
            end
            object DBGConsultaFBST: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FBST'
            end
            object DBGConsultaBXST: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'BXST'
            end
            object DBGConsultaLQST: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LQST'
            end
            object DBGConsultaBQST: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'BQST'
            end
            object DBGConsultaSVPD: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SVPD'
            end
            object DBGConsultaABPD: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ABPD'
            end
            object DBGConsultaDVPD: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DVPD'
            end
            object DBGConsultaFAPD: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FAPD'
            end
            object DBGConsultaBQPD: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'BQPD'
            end
            object DBGConsultaBEPD: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'BEPD'
            end
            object DBGConsultaQEPD: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'QEPD'
            end
            object DBGConsultaSEPD: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SEPD'
            end
            object DBGConsultaSDPD: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SDPD'
            end
            object DBGConsultaD_CDNF: TdxDBGridColumn
              Alignment = taLeftJustify
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Width = 70
              BandIndex = 1
              RowIndex = 0
              FieldName = 'D_CDNF'
              SummaryFooterType = cstSum
              SummaryFooterField = 'D_NUSP'
              SummaryFooterFormat = 'NF: 0'
            end
            object DBGConsultaDTNF: TdxDBGridColumn
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 55
              BandIndex = 1
              RowIndex = 0
              FieldName = 'DTNF'
            end
            object DBGConsultaHTNF: TdxDBGridColumn
              Color = clBtnFace
              Width = 36
              BandIndex = 1
              RowIndex = 0
              FieldName = 'HTNF'
            end
            object DBGConsultaD_NUNF: TdxDBGridColumn
              Color = clBtnFace
              Visible = False
              BandIndex = 1
              RowIndex = 0
              FieldName = 'D_NUNF'
            end
            object DBGConsultaD_DTSA: TdxDBGridDateColumn
              Color = 8454143
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 78
              BandIndex = 2
              RowIndex = 0
              FieldName = 'D_DTSA'
              SummaryFooterType = cstSum
              SummaryFooterField = 'D_NUSA'
              SummaryFooterFormat = 'Saidas: 0'
            end
            object DBGConsultaD_NUSA: TdxDBGridColumn
              Color = clBtnFace
              Visible = False
              BandIndex = 2
              RowIndex = 0
              FieldName = 'D_NUSA'
            end
            object DBGConsultaDECD: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 250
              BandIndex = 3
              RowIndex = 0
              FieldName = 'DECD'
              SummaryFooterType = cstSum
              SummaryFooterField = 'CNCD'
              SummaryFooterFormat = 'Novos: 0'
            end
            object DBGConsultaUFCD: TdxDBGridMaskColumn
              Width = 40
              BandIndex = 3
              RowIndex = 0
              FieldName = 'UFCD'
            end
            object DBGConsultaGPCD: TdxDBGridMaskColumn
              Color = 8454143
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 110
              BandIndex = 4
              RowIndex = 0
              FieldName = 'GPCD'
            end
            object DBGConsultaCNCD: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 3
              RowIndex = 0
              FieldName = 'CNCD'
            end
            object DBGConsultaCSCD: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 3
              RowIndex = 0
              FieldName = 'CSCD'
            end
            object DBGConsultaDECV: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 86
              BandIndex = 5
              RowIndex = 0
              FieldName = 'DECV'
            end
            object DBGConsultaDECR: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 150
              BandIndex = 5
              RowIndex = 0
              FieldName = 'DECR'
            end
            object DBGConsultaCDOS: TdxDBGridColumn
              Alignment = taLeftJustify
              Color = clWindowText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 70
              BandIndex = 6
              RowIndex = 0
              FieldName = 'CDOS'
            end
            object DBGConsultaDTOS: TdxDBGridColumn
              Color = clWindowText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 55
              BandIndex = 6
              RowIndex = 0
              FieldName = 'DTOS'
            end
            object DBGConsultaHTOS: TdxDBGridColumn
              Color = clWindowText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 36
              BandIndex = 6
              RowIndex = 0
              FieldName = 'HTOS'
            end
            object DBGConsultaD_NUOS: TdxDBGridColumn
              Color = clWindowText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              Width = 69
              BandIndex = 6
              RowIndex = 0
              FieldName = 'D_NUOS'
            end
            object DBGConsultaDTSP: TdxDBGridColumn
              Color = clWindowText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 55
              BandIndex = 7
              RowIndex = 0
              FieldName = 'DTSP'
            end
            object DBGConsultaHTSP: TdxDBGridColumn
              Color = clWindowText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 36
              BandIndex = 7
              RowIndex = 0
              FieldName = 'HTSP'
            end
            object DBGConsultaPPSP: TdxDBGridMaskColumn
              Color = clWindowText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HeaderAlignment = taCenter
              Width = 45
              BandIndex = 7
              RowIndex = 0
              FieldName = 'PPSP'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'D_PPSP'
              SummaryFooterFormat = ',##,0.00'
            end
            object DBGConsultaD_NUSP: TdxDBGridColumn
              Color = clWindowText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              BandIndex = 7
              RowIndex = 0
              FieldName = 'D_NUSP'
            end
            object DBGConsultaTCDE: TdxDBGridMaskColumn
              Color = clGrayText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 90
              BandIndex = 8
              RowIndex = 0
              FieldName = 'TCDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'D_TCDE'
              SummaryFooterFormat = ',##,0.00'
            end
            object DBGConsultaD_TCDE: TdxDBGridMaskColumn
              Visible = False
              Width = 90
              BandIndex = 8
              RowIndex = 0
              FieldName = 'D_TCDE'
            end
            object DBGConsultaVTSP: TdxDBGridMaskColumn
              Color = clWindowText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 90
              BandIndex = 8
              RowIndex = 0
              FieldName = 'VTSP'
              SummaryFooterType = cstSum
              SummaryFooterField = 'D_VTSP'
              SummaryFooterFormat = ',##,0.00'
            end
            object DBGConsultaD_VTSP: TdxDBGridColumn
              Visible = False
              Width = 90
              BandIndex = 8
              RowIndex = 0
              FieldName = 'D_VTSP'
            end
            object DBGConsultaVTFA: TdxDBGridMaskColumn
              Color = 15268825
              Font.Charset = ANSI_CHARSET
              Font.Color = 4422672
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 90
              BandIndex = 8
              RowIndex = 0
              FieldName = 'VTFA'
              SummaryFooterType = cstSum
              SummaryFooterField = 'VTFA'
              SummaryFooterFormat = ',##,0.00'
            end
            object DBGConsultaVTAP: TdxDBGridMaskColumn
              Color = 16577773
              Font.Charset = ANSI_CHARSET
              Font.Color = 7492630
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 90
              BandIndex = 8
              RowIndex = 0
              FieldName = 'VTAP'
              SummaryFooterType = cstSum
              SummaryFooterField = 'VTAP'
              SummaryFooterFormat = ',##,0.00'
            end
            object DBGConsultaD_STCO: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 220
              BandIndex = 9
              RowIndex = 0
              FieldName = 'D_STCO'
            end
            object DBGConsultaRECO: TdxDBGridMaskColumn
              Width = 35
              BandIndex = 9
              RowIndex = 0
              FieldName = 'RECO'
            end
            object DBGConsultaTPCO: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 9
              RowIndex = 0
              FieldName = 'TPCO'
            end
            object DBGConsultaVDSC: TdxDBGridMaskColumn
              Color = 8454143
              Width = 72
              BandIndex = 10
              RowIndex = 0
              FieldName = 'VDSC'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'VDSC'
              SummaryFooterFormat = ',##,0.00'
            end
            object DBGConsultaPDSC: TdxDBGridMaskColumn
              Color = 8454143
              HeaderAlignment = taCenter
              Width = 45
              BandIndex = 10
              RowIndex = 0
              FieldName = 'PDSC'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'PDSC'
              SummaryFooterFormat = ',##,0.00'
            end
            object DBGConsultaC_IDPK: TdxDBGridColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'C_IDPK'
            end
          end
        end
      end
    end
  end
  inherited SBRodape: TdxStatusBar
    Top = 738
    Width = 1166
  end
  inherited SBMenu: TSpeedBar
    Width = 1166
  end
  inherited DTSCadastro: TDataSource
    Left = 280
    Top = 440
  end
  inherited Cadastro: TIBQuery
    Active = True
    SQL.Strings = (
      'SELECT   PK.ID  ,PK.IDEP,'
      '         PK.IDCA,PK.DTCA,PK.CDST,PK.REST,PK.DEST,PK.D_DEST,'
      '         PK.APST,PK.FBST,PK.BXST,PK.LQST,PK.BQST,'
      '         PK.IDPK,PK.DEPK,PK.DTPK,PK.HTPK,PK.D_DTPK,'
      '         PK.CDDV,PK.DEDV,PK.DTDV,'
      '         PK.CDCX,PK.CDPP,PK.CTNR,'
      
        '         PK.IDCD,PK.DECD,PK.RZCD,PK.PJCD,PK.GPCD,PK.CNCD,PK.CSCD' +
        ',PK.UFCD,PK.RSCD,'
      '         PK.IDCV,PK.DECV,PK.RSCV,'
      '         PK.IDCR,PK.DECR,PK.UFCR,PK.RSCR,'
      '         PK.IDCT,PK.DECT,PK.UFCT,PK.RSCT,'
      '         PK.IDOS,PK.CDOS,PK.DTOS,PK.HTOS,PK.D_DTOS,PK.D_NUOS,'
      '         PK.IDSP,PK.DESP,PK.DTSP,PK.HTSP,PK.D_DTSP,PK.D_NUSP,'
      '         PK.QTSP,PK.RLSP,PK.D_QTSP,PK.D_RLSP,'
      '         PK.VTSP,PK.D_VTSP,PK.PPSP,PK.D_PPSP,'
      '         PK.CDRO,PK.DTRO  ,PK.HTRO,PK.D_DTRO,'
      '         PK.CDNF,PK.D_CDNF,PK.DTNF,PK.HTNF,PK.D_DTNF,PK.D_NUNF,'
      '         PK.VNF ,PK.VIPI  ,PK.VST ,PK.CFOP,'
      '         PK.D_DTSA,PK.D_NUSA,'
      '         PK.IDSC,PK.TDSC,PK.PDSC,PK.VDSC,'
      '         PK.TSDE,PK.D_TSDE,PK.TCDE,PK.D_TCDE,'
      '         PK.VTFA,PK.VTAP,'
      '         PK.PCOM,PK.VCOM,'
      '         PK.MFRT,PK.D_MFRT,PK.VFRT,PK.PSBR,PK.PSLQ,'
      '         PK.CDPD,PK.STPD,'
      '         PK.SVPD,PK.ABPD,PK.DVPD,PK.FAPD,PK.BQPD,'
      '         PK.BEPD,PK.QEPD,PK.SEPD,PK.SDPD,'
      '         PK.CDCO,PK.STCO,PK.D_STCO,'
      '         PK.TPCO,PK.RECO,'
      '         PK.CDPG,PK.DEPG,'
      '         PK.CDBX,PK.DTBX,PK.HTBX,PK.D_DTBX,'
      '         PK.INFADCAD,PK.INFADOS,PK.INFSTOS,'
      '         PK.LOG_PRN_CDEV,PK.LOG_PRN_QTEV,PK.INFADPRN,'
      '         PK.API_B2B,PK.API_B2B_PZSP,'
      '         PK.IP,PK.HOST'
      '         FROM VW_PED_VEN_CAB_TMP_004 AS PK'
      'WHERE   PK.VTSP > 0'
      'AND PK.DTCA > '#39'01/01/24'#39
      'ORDER BY PK.DTCA DESC')
    Left = 248
    Top = 441
    object CadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"VW_PED_VEN_CAB_TMP"."ID"'
    end
    object CadastroIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"VW_PED_VEN_CAB_TMP"."IDEP"'
    end
    object CadastroIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"VW_PED_VEN_CAB_TMP"."IDCA"'
    end
    object CadastroDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"VW_PED_VEN_CAB_TMP"."DTCA"'
    end
    object CadastroCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"VW_PED_VEN_CAB_TMP"."CDST"'
    end
    object CadastroREST: TIBStringField
      FieldName = 'REST'
      Origin = '"VW_PED_VEN_CAB_TMP"."REST"'
      Size = 10
    end
    object CadastroDEST: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEST'
      Origin = '"VW_PED_VEN_CAB_TMP"."DEST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroD_DEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'D_DEST'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_DEST"'
      Size = 10
    end
    object CadastroAPST: TSmallintField
      FieldName = 'APST'
      Origin = '"VW_PED_VEN_CAB_TMP"."APST"'
    end
    object CadastroFBST: TSmallintField
      FieldName = 'FBST'
      Origin = '"VW_PED_VEN_CAB_TMP"."FBST"'
    end
    object CadastroBXST: TSmallintField
      FieldName = 'BXST'
      Origin = '"VW_PED_VEN_CAB_TMP"."BXST"'
    end
    object CadastroLQST: TSmallintField
      FieldName = 'LQST'
      Origin = '"VW_PED_VEN_CAB_TMP"."LQST"'
    end
    object CadastroBQST: TSmallintField
      FieldName = 'BQST'
      Origin = '"VW_PED_VEN_CAB_TMP"."BQST"'
    end
    object CadastroIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"VW_PED_VEN_CAB_TMP"."IDPK"'
    end
    object CadastroDEPK: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'DEPK'
      Origin = '"VW_PED_VEN_CAB_TMP"."DEPK"'
      Size = 30
    end
    object CadastroDTPK: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTPK'
      Origin = '"VW_PED_VEN_CAB_TMP"."DTPK"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy'
    end
    object CadastroHTPK: TTimeField
      DisplayLabel = 'Hora'
      FieldKind = fkInternalCalc
      FieldName = 'HTPK'
      Origin = '"VW_PED_VEN_CAB_TMP"."HTPK"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'hh:mm'
    end
    object CadastroD_DTPK: TDateTimeField
      FieldName = 'D_DTPK'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_DTPK"'
    end
    object CadastroCDDV: TLargeintField
      FieldName = 'CDDV'
      Origin = '"VW_PED_VEN_CAB_TMP"."CDDV"'
    end
    object CadastroDEDV: TIBStringField
      FieldName = 'DEDV'
      Origin = '"VW_PED_VEN_CAB_TMP"."DEDV"'
      Size = 30
    end
    object CadastroDTDV: TDateField
      FieldName = 'DTDV'
      Origin = '"VW_PED_VEN_CAB_TMP"."DTDV"'
    end
    object CadastroCDCX: TLargeintField
      FieldName = 'CDCX'
      Origin = '"VW_PED_VEN_CAB_TMP"."CDCX"'
    end
    object CadastroCDPP: TLargeintField
      FieldName = 'CDPP'
      Origin = '"VW_PED_VEN_CAB_TMP"."CDPP"'
    end
    object CadastroCTNR: TIBStringField
      DisplayLabel = 'Container'
      FieldName = 'CTNR'
      Origin = '"VW_PED_VEN_CAB_TMP"."CTNR"'
    end
    object CadastroIDCD: TIntegerField
      FieldName = 'IDCD'
      Origin = '"VW_PED_VEN_CAB_TMP"."IDCD"'
    end
    object CadastroDECD: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'DECD'
      Origin = '"VW_PED_VEN_CAB_TMP"."DECD"'
      Size = 60
    end
    object CadastroRZCD: TIBStringField
      FieldName = 'RZCD'
      Origin = '"VW_PED_VEN_CAB_TMP"."RZCD"'
      Size = 60
    end
    object CadastroPJCD: TIBStringField
      FieldName = 'PJCD'
      Origin = '"VW_PED_VEN_CAB_TMP"."PJCD"'
      Size = 14
    end
    object CadastroGPCD: TIBStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GPCD'
      Origin = '"VW_PED_VEN_CAB_TMP"."GPCD"'
      Size = 60
    end
    object CadastroCNCD: TSmallintField
      FieldName = 'CNCD'
      Origin = '"VW_PED_VEN_CAB_TMP"."CNCD"'
    end
    object CadastroCSCD: TSmallintField
      FieldName = 'CSCD'
      Origin = '"VW_PED_VEN_CAB_TMP"."CSCD"'
    end
    object CadastroUFCD: TIBStringField
      DisplayLabel = 'UF'
      FieldName = 'UFCD'
      Origin = '"VW_PED_VEN_CAB_TMP"."UFCD"'
      FixedChar = True
      Size = 2
    end
    object CadastroRSCD: TIBStringField
      FieldName = 'RSCD'
      Origin = '"VW_PED_VEN_CAB_TMP"."RSCD"'
      Size = 10
    end
    object CadastroIDCV: TSmallintField
      FieldName = 'IDCV'
      Origin = '"VW_PED_VEN_CAB_TMP"."IDCV"'
    end
    object CadastroDECV: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'DECV'
      Origin = '"VW_PED_VEN_CAB_TMP"."DECV"'
      Size = 30
    end
    object CadastroRSCV: TIBStringField
      FieldName = 'RSCV'
      Origin = '"VW_PED_VEN_CAB_TMP"."RSCV"'
      Size = 10
    end
    object CadastroIDCR: TSmallintField
      FieldName = 'IDCR'
      Origin = '"VW_PED_VEN_CAB_TMP"."IDCR"'
    end
    object CadastroDECR: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'DECR'
      Origin = '"VW_PED_VEN_CAB_TMP"."DECR"'
      Size = 60
    end
    object CadastroUFCR: TIBStringField
      FieldName = 'UFCR'
      Origin = '"VW_PED_VEN_CAB_TMP"."UFCR"'
      FixedChar = True
      Size = 2
    end
    object CadastroRSCR: TIBStringField
      FieldName = 'RSCR'
      Origin = '"VW_PED_VEN_CAB_TMP"."RSCR"'
      Size = 10
    end
    object CadastroIDCT: TSmallintField
      FieldName = 'IDCT'
      Origin = '"VW_PED_VEN_CAB_TMP"."IDCT"'
    end
    object CadastroDECT: TIBStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'DECT'
      Origin = '"VW_PED_VEN_CAB_TMP"."DECT"'
      Size = 60
    end
    object CadastroUFCT: TIBStringField
      DisplayLabel = 'UF'
      FieldName = 'UFCT'
      Origin = '"VW_PED_VEN_CAB_TMP"."UFCT"'
      FixedChar = True
      Size = 2
    end
    object CadastroRSCT: TIBStringField
      FieldName = 'RSCT'
      Origin = '"VW_PED_VEN_CAB_TMP"."RSCT"'
      Size = 10
    end
    object CadastroIDOS: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'IDOS'
      Origin = '"VW_PED_VEN_CAB_TMP"."IDOS"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroCDOS: TLargeintField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CDOS'
      Origin = '"VW_PED_VEN_CAB_TMP"."CDOS"'
    end
    object CadastroDTOS: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTOS'
      Origin = '"VW_PED_VEN_CAB_TMP"."DTOS"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy'
    end
    object CadastroHTOS: TTimeField
      DisplayLabel = 'Hora'
      FieldKind = fkInternalCalc
      FieldName = 'HTOS'
      Origin = '"VW_PED_VEN_CAB_TMP"."HTOS"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'hh:mm'
    end
    object CadastroD_DTOS: TDateTimeField
      FieldName = 'D_DTOS'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_DTOS"'
    end
    object CadastroD_NUOS: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'D_NUOS'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_NUOS"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroIDSP: TSmallintField
      FieldName = 'IDSP'
      Origin = '"VW_PED_VEN_CAB_TMP"."IDSP"'
    end
    object CadastroDESP: TIBStringField
      FieldName = 'DESP'
      Origin = '"VW_PED_VEN_CAB_TMP"."DESP"'
      Size = 30
    end
    object CadastroDTSP: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTSP'
      Origin = '"VW_PED_VEN_CAB_TMP"."DTSP"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd.mm.mm'
    end
    object CadastroHTSP: TTimeField
      DisplayLabel = 'Hora'
      FieldKind = fkInternalCalc
      FieldName = 'HTSP'
      Origin = '"VW_PED_VEN_CAB_TMP"."HTSP"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'hh:mm'
    end
    object CadastroD_DTSP: TDateTimeField
      FieldName = 'D_DTSP'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_DTSP"'
    end
    object CadastroD_NUSP: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'D_NUSP'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_NUSP"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroQTSP: TIBBCDField
      FieldName = 'QTSP'
      Origin = '"VW_PED_VEN_CAB_TMP"."QTSP"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroRLSP: TIntegerField
      FieldName = 'RLSP'
      Origin = '"VW_PED_VEN_CAB_TMP"."RLSP"'
    end
    object CadastroD_QTSP: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'D_QTSP'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_QTSP"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object CadastroD_RLSP: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'D_RLSP'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_RLSP"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroVTSP: TIBBCDField
      DisplayLabel = 'Separados'
      FieldName = 'VTSP'
      Origin = '"VW_PED_VEN_CAB_TMP"."VTSP"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroD_VTSP: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'D_VTSP'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_VTSP"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroPPSP: TIBBCDField
      DisplayLabel = '%'
      FieldName = 'PPSP'
      Origin = '"VW_PED_VEN_CAB_TMP"."PPSP"'
      DisplayFormat = ',##,0.%'
      Precision = 9
      Size = 2
    end
    object CadastroD_PPSP: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'D_PPSP'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_PPSP"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object CadastroCDRO: TLargeintField
      FieldName = 'CDRO'
      Origin = '"VW_PED_VEN_CAB_TMP"."CDRO"'
    end
    object CadastroDTRO: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'DTRO'
      Origin = '"VW_PED_VEN_CAB_TMP"."DTRO"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroHTRO: TTimeField
      FieldKind = fkInternalCalc
      FieldName = 'HTRO'
      Origin = '"VW_PED_VEN_CAB_TMP"."HTRO"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroD_DTRO: TDateTimeField
      FieldName = 'D_DTRO'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_DTRO"'
    end
    object CadastroCDNF: TLargeintField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CDNF'
      Origin = '"VW_PED_VEN_CAB_TMP"."CDNF"'
    end
    object CadastroD_CDNF: TLargeintField
      DisplayLabel = 'N'#250'mero'
      FieldKind = fkInternalCalc
      FieldName = 'D_CDNF'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_CDNF"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroDTNF: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTNF'
      Origin = '"VW_PED_VEN_CAB_TMP"."DTNF"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy'
    end
    object CadastroHTNF: TTimeField
      DisplayLabel = 'Hora'
      FieldKind = fkInternalCalc
      FieldName = 'HTNF'
      Origin = '"VW_PED_VEN_CAB_TMP"."HTNF"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'hh:mm'
    end
    object CadastroD_DTNF: TDateTimeField
      FieldName = 'D_DTNF'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_DTNF"'
    end
    object CadastroD_NUNF: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'D_NUNF'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_NUNF"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroVNF: TIBBCDField
      DisplayLabel = 'Total Fiscal R$'
      FieldName = 'VNF'
      Origin = '"VW_PED_VEN_CAB_TMP"."VNF"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroVIPI: TIBBCDField
      DisplayLabel = 'Total IPI R$'
      FieldName = 'VIPI'
      Origin = '"VW_PED_VEN_CAB_TMP"."VIPI"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroVST: TIBBCDField
      DisplayLabel = 'Total ST R$'
      FieldName = 'VST'
      Origin = '"VW_PED_VEN_CAB_TMP"."VST"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroCFOP: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'CFOP'
      Origin = '"VW_PED_VEN_CAB_TMP"."CFOP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object CadastroD_DTSA: TDateTimeField
      DisplayLabel = 'Sa'#237'da'
      FieldName = 'D_DTSA'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_DTSA"'
      DisplayFormat = 'dd.mm hh:mm'
    end
    object CadastroD_NUSA: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'D_NUSA'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_NUSA"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroIDSC: TSmallintField
      FieldName = 'IDSC'
      Origin = '"VW_PED_VEN_CAB_TMP"."IDSC"'
    end
    object CadastroTDSC: TIBStringField
      FieldName = 'TDSC'
      Origin = '"VW_PED_VEN_CAB_TMP"."TDSC"'
      FixedChar = True
      Size = 1
    end
    object CadastroPDSC: TIBBCDField
      DisplayLabel = '%'
      FieldName = 'PDSC'
      Origin = '"VW_PED_VEN_CAB_TMP"."PDSC"'
      DisplayFormat = ',##,0.##'
      Precision = 9
      Size = 2
    end
    object CadastroVDSC: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'VDSC'
      Origin = '"VW_PED_VEN_CAB_TMP"."VDSC"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroTSDE: TIBBCDField
      FieldName = 'TSDE'
      Origin = '"VW_PED_VEN_CAB_TMP"."TSDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroD_TSDE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'D_TSDE'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_TSDE"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroTCDE: TIBBCDField
      DisplayLabel = 'Entradas'
      FieldName = 'TCDE'
      Origin = '"VW_PED_VEN_CAB_TMP"."TCDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroD_TCDE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'D_TCDE'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_TCDE"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroVTFA: TIBBCDField
      DisplayLabel = 'Faturados'
      FieldName = 'VTFA'
      Origin = '"VW_PED_VEN_CAB_TMP"."VTFA"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroVTAP: TIBBCDField
      DisplayLabel = 'Em Aberto'
      FieldKind = fkInternalCalc
      FieldName = 'VTAP'
      Origin = '"VW_PED_VEN_CAB_TMP"."VTAP"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroPCOM: TIBBCDField
      FieldName = 'PCOM'
      Origin = '"VW_PED_VEN_CAB_TMP"."PCOM"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object CadastroVCOM: TIBBCDField
      FieldName = 'VCOM'
      Origin = '"VW_PED_VEN_CAB_TMP"."VCOM"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroMFRT: TSmallintField
      FieldName = 'MFRT'
      Origin = '"VW_PED_VEN_CAB_TMP"."MFRT"'
    end
    object CadastroD_MFRT: TIBStringField
      DisplayLabel = 'v'
      FieldKind = fkInternalCalc
      FieldName = 'D_MFRT'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_MFRT"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object CadastroVFRT: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'VFRT'
      Origin = '"VW_PED_VEN_CAB_TMP"."VFRT"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroPSBR: TIBBCDField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PSBR'
      Origin = '"VW_PED_VEN_CAB_TMP"."PSBR"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 3
    end
    object CadastroPSLQ: TIBBCDField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'PSLQ'
      Origin = '"VW_PED_VEN_CAB_TMP"."PSLQ"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 3
    end
    object CadastroCDPD: TSmallintField
      FieldName = 'CDPD'
      Origin = '"VW_PED_VEN_CAB_TMP"."CDPD"'
    end
    object CadastroSTPD: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'STPD'
      Origin = '"VW_PED_VEN_CAB_TMP"."STPD"'
      Size = 60
    end
    object CadastroSVPD: TSmallintField
      FieldName = 'SVPD'
      Origin = '"VW_PED_VEN_CAB_TMP"."SVPD"'
    end
    object CadastroABPD: TSmallintField
      FieldName = 'ABPD'
      Origin = '"VW_PED_VEN_CAB_TMP"."ABPD"'
    end
    object CadastroDVPD: TSmallintField
      FieldName = 'DVPD'
      Origin = '"VW_PED_VEN_CAB_TMP"."DVPD"'
    end
    object CadastroFAPD: TSmallintField
      FieldName = 'FAPD'
      Origin = '"VW_PED_VEN_CAB_TMP"."FAPD"'
    end
    object CadastroBQPD: TSmallintField
      FieldName = 'BQPD'
      Origin = '"VW_PED_VEN_CAB_TMP"."BQPD"'
    end
    object CadastroBEPD: TSmallintField
      FieldName = 'BEPD'
      Origin = '"VW_PED_VEN_CAB_TMP"."BEPD"'
    end
    object CadastroQEPD: TSmallintField
      FieldName = 'QEPD'
      Origin = '"VW_PED_VEN_CAB_TMP"."QEPD"'
    end
    object CadastroSEPD: TSmallintField
      FieldName = 'SEPD'
      Origin = '"VW_PED_VEN_CAB_TMP"."SEPD"'
    end
    object CadastroSDPD: TSmallintField
      FieldName = 'SDPD'
      Origin = '"VW_PED_VEN_CAB_TMP"."SDPD"'
    end
    object CadastroCDCO: TSmallintField
      FieldName = 'CDCO'
      Origin = '"VW_PED_VEN_CAB_TMP"."CDCO"'
    end
    object CadastroSTCO: TIBStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldName = 'STCO'
      Origin = '"VW_PED_VEN_CAB_TMP"."STCO"'
      Size = 60
    end
    object CadastroD_STCO: TIBStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldKind = fkInternalCalc
      FieldName = 'D_STCO'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_STCO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 84
    end
    object CadastroTPCO: TSmallintField
      FieldName = 'TPCO'
      Origin = '"VW_PED_VEN_CAB_TMP"."TPCO"'
    end
    object CadastroRECO: TIBStringField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'RECO'
      Origin = '"VW_PED_VEN_CAB_TMP"."RECO"'
      Size = 3
    end
    object CadastroCDPG: TSmallintField
      FieldName = 'CDPG'
      Origin = '"VW_PED_VEN_CAB_TMP"."CDPG"'
    end
    object CadastroDEPG: TIBStringField
      DisplayLabel = 'Prazos'
      FieldName = 'DEPG'
      Origin = '"VW_PED_VEN_CAB_TMP"."DEPG"'
      Size = 60
    end
    object CadastroCDBX: TLargeintField
      FieldName = 'CDBX'
      Origin = '"VW_PED_VEN_CAB_TMP"."CDBX"'
    end
    object CadastroDTBX: TDateField
      DisplayLabel = 'Baixas'
      FieldKind = fkInternalCalc
      FieldName = 'DTBX'
      Origin = '"VW_PED_VEN_CAB_TMP"."DTBX"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd.mm'
    end
    object CadastroHTBX: TTimeField
      DisplayLabel = 'Hora'
      FieldKind = fkInternalCalc
      FieldName = 'HTBX'
      Origin = '"VW_PED_VEN_CAB_TMP"."HTBX"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'hh:mm'
    end
    object CadastroD_DTBX: TDateTimeField
      FieldName = 'D_DTBX'
      Origin = '"VW_PED_VEN_CAB_TMP"."D_DTBX"'
    end
    object CadastroINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_PED_VEN_CAB_TMP"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 1064
    end
    object CadastroINFADOS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADOS'
      Origin = '"VW_PED_VEN_CAB_TMP"."INFADOS"'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object CadastroINFSTOS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFSTOS'
      Origin = '"VW_PED_VEN_CAB_TMP"."INFSTOS"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object CadastroLOG_PRN_CDEV: TSmallintField
      FieldName = 'LOG_PRN_CDEV'
      Origin = '"VW_PED_VEN_CAB_TMP"."LOG_PRN_CDEV"'
    end
    object CadastroLOG_PRN_QTEV: TSmallintField
      FieldName = 'LOG_PRN_QTEV'
      Origin = '"VW_PED_VEN_CAB_TMP"."LOG_PRN_QTEV"'
    end
    object CadastroINFADPRN: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADPRN'
      Origin = '"VW_PED_VEN_CAB_TMP"."INFADPRN"'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object CadastroAPI_B2B: TSmallintField
      FieldName = 'API_B2B'
      Origin = '"VW_PED_VEN_CAB_TMP"."API_B2B"'
    end
    object CadastroAPI_B2B_PZSP: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'API_B2B_PZSP'
      Origin = '"VW_PED_VEN_CAB_TMP"."API_B2B_PZSP"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroIP: TIBStringField
      FieldName = 'IP'
      Origin = '"VW_PED_VEN_CAB_TMP"."IP"'
      Size = 30
    end
    object CadastroHOST: TIBStringField
      FieldName = 'HOST'
      Origin = '"VW_PED_VEN_CAB_TMP"."HOST"'
      Size = 30
    end
    object CadastroC_IDPK: TLargeintField
      FieldKind = fkCalculated
      FieldName = 'C_IDPK'
      Calculated = True
    end
  end
  inherited TConsulta: TIBTransaction
    Active = True
    Left = 248
    Top = 408
  end
  inherited SQLConsulta: TIBSQL
    Left = 280
    Top = 408
  end
  inherited TEdicao: TIBTransaction
    Left = 344
    Top = 408
  end
  inherited SQLEdicao: TIBSQL
    Left = 376
    Top = 408
  end
  inherited SPEdicao: TIBStoredProc
    Left = 408
    Top = 408
  end
  inherited TEvent: TIBTransaction
    Left = 440
    Top = 408
  end
  inherited SPEvent: TIBStoredProc
    Left = 504
    Top = 408
  end
  inherited EEvent: TIBEvents
    Left = 536
    Top = 408
  end
  inherited SQLEvent: TIBSQL
    Left = 472
    Top = 408
  end
  inherited Consulta: TIBQuery
    Left = 312
    Top = 408
  end
  inherited ALPrincipal: TActionList
    Left = 568
    Top = 408
  end
  inherited ILMenu: TImageList
    Left = 600
    Top = 408
  end
end
