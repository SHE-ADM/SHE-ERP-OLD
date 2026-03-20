inherited frmcad_tra: Tfrmcad_tra
  Left = 37
  HelpType = htKeyword
  HelpKeyword = '3'
  AlphaBlendValue = 0
  Caption = 'Cadastro de Transportadoras'
  ClientHeight = 1009
  ClientWidth = 1920
  OldCreateOrder = True
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBRodape: TdxStatusBar
    Top = 988
    Width = 1920
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 80
        Text = 'Consulta'
        Width = 80
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 0
        Width = 1680
      end
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.CapsLockKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
        MinWidth = 137
        Width = 137
      end>
  end
  inherited PNLForm: TPanel
    Width = 1920
    Height = 923
    inherited PNLPrincipal: TPanel
      Width = 1920
      Height = 923
      inherited PNLPrincipalRodape: TPanel
        Top = 923
        Width = 1920
      end
      inherited PNLPrincipalME: TPanel
        Height = 923
      end
      inherited PNLPrincipalMD: TPanel
        Left = 1920
        Height = 923
      end
      inherited PNLCadastro: TPanel
        Width = 1920
        Height = 923
        inherited PNLCadastroCabecalho: TPanel
          Width = 1920
        end
        inherited PNLCustomize: TPanel
          Width = 1920
          Height = 923
          inherited PNLCustomizeSumario: TPanel
            Top = 923
            Width = 1920
          end
          inherited PNLCustomizeConsulta: TPanel
            Width = 1920
            Height = 923
            inherited GBCadastro: TGroupBox
              Width = 1866
              Height = 923
              TabOrder = 0
              inherited PCConsulta: TdxPageControl
                Width = 1862
                Height = 902
                inherited TSConsulta: TdxTabSheet
                  inherited DBGConsulta: TdxDBGrid
                    Width = 1862
                    Height = 902
                    KeyField = 'ID'
                    ShowSummaryFooter = True
                    Font.Height = -11
                    Filter.Active = True
                    Filter.Criteria = {00000000}
                    HeaderFont.Height = -12
                    IndentDesc = 10
                    OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
                    OnCustomDrawCell = dbgConsultaCustomDrawCell
                    object DBGConsultaCD_ID: TdxDBGridMaskColumn
                      Alignment = taLeftJustify
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CD_ID'
                    end
                    object DBGConsultaCD_NO: TdxDBGridMaskColumn
                      Width = 200
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CD_NO'
                    end
                    object DBGConsultaCD_RZ_NO: TdxDBGridMaskColumn
                      Width = 300
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CD_RZ_NO'
                    end
                    object DBGConsultaCD_GP_NO: TdxDBGridMaskColumn
                      Width = 110
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CD_GP_NO'
                    end
                    object DBGConsultaCNPJ_MASK: TdxDBGridMaskColumn
                      Width = 110
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CNPJ_MASK'
                    end
                    object DBGConsultaIE: TdxDBGridMaskColumn
                      Width = 120
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'IE'
                    end
                    object DBGConsultaISUF: TdxDBGridMaskColumn
                      Width = 120
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'ISUF'
                    end
                    object DBGConsultaCPF_MASK: TdxDBGridMaskColumn
                      Width = 100
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CPF_MASK'
                    end
                    object DBGConsultaCR_NO: TdxDBGridMaskColumn
                      Width = 154
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CR_NO'
                    end
                    object DBGConsultaCV_NO: TdxDBGridMaskColumn
                      Width = 86
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CV_NO'
                    end
                    object DBGConsultaTEL_MASK: TdxDBGridMaskColumn
                      Width = 152
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TEL_MASK'
                    end
                    object DBGConsultaCEL_TEL_MASK: TdxDBGridMaskColumn
                      Width = 94
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CEL_TEL_MASK'
                    end
                    object DBGConsultaZAP_TEL_MASK: TdxDBGridMaskColumn
                      Width = 94
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'ZAP_TEL_MASK'
                    end
                    object DBGConsultaEMAIL: TdxDBGridMaskColumn
                      Width = 200
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'EMAIL'
                    end
                    object DBGConsultaLOG_NO_ABREV: TdxDBGridMaskColumn
                      Width = 250
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'LOG_NO_ABREV'
                    end
                    object DBGConsultaBAI_NO_ABREV: TdxDBGridMaskColumn
                      Width = 150
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'BAI_NO_ABREV'
                    end
                    object DBGConsultaLOC_NO_ABREV: TdxDBGridMaskColumn
                      Width = 150
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'LOC_NO_ABREV'
                    end
                    object DBGConsultaUF: TdxDBGridMaskColumn
                      Width = 40
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'UF'
                    end
                    object DBGConsultaDTCA: TdxDBGridDateColumn
                      Width = 67
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'DTCA'
                    end
                    object DBGConsultaDEST: TdxDBGridMaskColumn
                      Width = 68
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'DEST'
                    end
                  end
                end
              end
            end
            inherited PNLCustomizeCabecalho: TPanel
              Width = 1920
              TabOrder = 1
            end
            inherited PNLCustomizeRodape: TPanel
              Top = 923
              Width = 1920
            end
            inherited GBMenuEdicao: TGroupBox
              Height = 923
              inherited SBMenuEdicao: TSpeedBar
                Height = 902
              end
            end
          end
          object PNLINFADCAD: TPanel
            Left = 0
            Top = 923
            Width = 1920
            Height = 0
            Cursor = crHandPoint
            Hint = 'Informa'#231#245'es adicionais do pedido ...'
            Align = alBottom
            Alignment = taLeftJustify
            BevelInner = bvLowered
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Locked = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            object DBINFADAD: TdxDBMemo
              Left = 2
              Top = 2
              Width = 1916
              Cursor = crHandPoint
              Hint = 'Informa'#231#245'es adicionais do pedido ...'
              Align = alClient
              Color = clInfoBk
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 0
              DataField = 'INFADCAD'
              DataSource = DTSCadastro
              ReadOnly = True
              ScrollBars = ssBoth
              Height = 96
              StoredValues = 64
            end
          end
        end
      end
    end
    inherited PNLFormRodape: TPanel
      Tag = 1
      Top = 923
      Width = 1920
      Visible = False
      inherited PNLFormRodapeMD: TPanel
        Left = 1920
      end
    end
  end
  inherited SBMenuPrincipal: TSpeedBar
    Width = 1920
  end
  inherited Cadastro: TIBQuery
    AfterClose = CadastroAfterClose
    SQL.Strings = (
      'WITH RECURSIVE PK'
      'AS ('
      'SELECT PK.ID   ,PK.EP_ID,'
      
        '       PK.DTEV ,PK.DTCA ,CAST(PK.PED_DT AS DATE) AS PED_DT,CAST(' +
        'PK.NFE_DT AS DATE) AS NFE_DT,CAST(PK.NFS_DT AS DATE) AS NFS_DT,'
      '       PK.CDST ,PK.REST ,PK.DEST,CRD.CRD_DEST AS CRD_DEST,'
      '       PK.CD_ID,PK.CD_NO,PK.CD_RZ_NO,PK.CD_GP_NO ,'
      '       PK.CNPJ ,FCNPJ(PK.CNPJ) AS CNPJ_MASK,PK.IE,PK.ISUF,'
      '       PK.CPF  ,FCPF(PK.CPF)   AS CPF_MASK ,PK.IDESTRANGEIRO,'
      '       PK.CR_ID,PK.CR_NO,PK.CV_ID,PK.CV_NO,PK.CT_ID,PK.CT_NO,'
      
        '       TRIM(CAST(FTEL(PK.DDD_NU,PK.TEL_NU) || '#39' '#39' || LEFT(PK.CON' +
        'TATO_NO,10) AS VARCHAR(30))) TEL_MASK,'
      '       FTEL(PK.CEL_DDD_NU,PK.CEL_TEL_NU) AS CEL_TEL_MASK,'
      '       FTEL(PK.ZAP_DDD_NU,PK.ZAP_TEL_NU) AS ZAP_TEL_MASK,'
      
        '       TRIM(CAST(PK.EMAIL || '#39' '#39' || PK.EMAIL2 || '#39' '#39' || PK.EMAIL' +
        '3 AS VARCHAR(200))) AS EMAIL,'
      '       PK.LOG_NO_ABREV,PK.BAI_NO_ABREV,PK.LOC_NO_ABREV,PK.UF,'
      
        '       CRD.CRD_VPAD,CRD.CRD_VTAP,CRD.CRD_VTSD,CRD.CRD_VTKT,CRD.C' +
        'RD_BQST,'
      '       PK.FIS_DTFU,PK.FIS_CRT_NO,'
      '       PK.INFADCAD'
      'FROM      VW_PSQ_CAD_TRA  AS PK'
      
        'LEFT JOIN CAD_CLI_CRD_FIN AS CRD ON (CRD.EP_ID = :EP_ID AND CRD.' +
        'CD_ID = PK.CD_ID)'
      
        'WHERE     PK.DTEV >= DATEADD(DAY,-30,DATEADD(1 - EXTRACT(DAY FRO' +
        'M CURRENT_DATE) DAY TO CURRENT_DATE))'
      '),'
      'CTE_PSQ'
      'AS ('
      'SELECT PK.* FROM PK'
      ')'
      'SELECT DISTINCT PK.* FROM CTE_PSQ AS PK')
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'EP_ID'
        ParamType = ptInput
        Value = '4'
      end>
    object CadastroID: TLargeintField
      DisplayLabel = 'C'#243'digo'
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"VW_PSQ_CAD_CLI"."ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroEP_ID: TSmallintField
      FieldName = 'EP_ID'
      Origin = '"VW_PSQ_CAD_CLI"."EP_ID"'
    end
    object CadastroDTEV: TDateTimeField
      FieldName = 'DTEV'
      Origin = '"VW_PSQ_CAD_CLI"."DTEV"'
    end
    object CadastroDTCA: TDateTimeField
      DisplayLabel = 'Cadastro'
      FieldName = 'DTCA'
      Origin = '"VW_PSQ_CAD_CLI"."DTCA"'
    end
    object CadastroCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"VW_PSQ_CAD_CLI"."CDST"'
    end
    object CadastroREST: TIBStringField
      FieldName = 'REST'
      Origin = '"VW_PSQ_CAD_CLI"."REST"'
      Size = 10
    end
    object CadastroDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'DEST'
      Origin = '"VW_PSQ_CAD_CLI"."DEST"'
      Size = 30
    end
    object CadastroCRD_DEST: TIBStringField
      FieldName = 'CRD_DEST'
      Origin = '"CAD_CLI_CRD_FIN"."CRD_DEST"'
      Size = 60
    end
    object CadastroCD_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CD_ID'
      Origin = '"VW_PSQ_CAD_CLI"."CD_ID"'
    end
    object CadastroCD_NO: TIBStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'CD_NO'
      Origin = '"VW_PSQ_CAD_CLI"."CD_NO"'
      Size = 60
    end
    object CadastroCD_RZ_NO: TIBStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CD_RZ_NO'
      Origin = '"VW_PSQ_CAD_CLI"."CD_RZ_NO"'
      Size = 60
    end
    object CadastroCD_GP_NO: TIBStringField
      DisplayLabel = 'Grupo'
      FieldName = 'CD_GP_NO'
      Origin = '"VW_PSQ_CAD_CLI"."CD_GP_NO"'
      Size = 60
    end
    object CadastroCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"VW_PSQ_CAD_CLI"."CNPJ"'
      Size = 14
    end
    object CadastroCNPJ_MASK: TIBStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'CNPJ_MASK'
      ProviderFlags = []
      Size = 18
    end
    object CadastroIE: TIBStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'IE'
      Origin = '"VW_PSQ_CAD_CLI"."IE"'
    end
    object CadastroISUF: TIBStringField
      DisplayLabel = 'Inscri'#231#227'o Suframa'
      FieldName = 'ISUF'
      Origin = '"VW_PSQ_CAD_CLI"."ISUF"'
    end
    object CadastroCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"VW_PSQ_CAD_CLI"."CPF"'
      Size = 14
    end
    object CadastroCPF_MASK: TIBStringField
      DisplayLabel = 'CPF'
      FieldName = 'CPF_MASK'
      ProviderFlags = []
      Size = 14
    end
    object CadastroIDESTRANGEIRO: TIBStringField
      FieldName = 'IDESTRANGEIRO'
      Origin = '"VW_PSQ_CAD_CLI"."IDESTRANGEIRO"'
    end
    object CadastroCR_ID: TSmallintField
      FieldName = 'CR_ID'
      Origin = '"VW_PSQ_CAD_CLI"."CR_ID"'
    end
    object CadastroCR_NO: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'CR_NO'
      Origin = '"VW_PSQ_CAD_CLI"."CR_NO"'
      Size = 60
    end
    object CadastroCV_ID: TSmallintField
      FieldName = 'CV_ID'
      Origin = '"VW_PSQ_CAD_CLI"."CV_ID"'
    end
    object CadastroCV_NO: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'CV_NO'
      Origin = '"VW_PSQ_CAD_CLI"."CV_NO"'
      Size = 30
    end
    object CadastroCT_ID: TSmallintField
      FieldName = 'CT_ID'
      Origin = '"VW_PSQ_CAD_CLI"."CT_ID"'
    end
    object CadastroCT_NO: TIBStringField
      FieldName = 'CT_NO'
      Origin = '"VW_PSQ_CAD_CLI"."CT_NO"'
      Size = 1
    end
    object CadastroTEL_MASK: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'TEL_MASK'
      ProviderFlags = []
      Size = 30
    end
    object CadastroCEL_TEL_MASK: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CEL_TEL_MASK'
      ProviderFlags = []
      Size = 15
    end
    object CadastroZAP_TEL_MASK: TIBStringField
      DisplayLabel = 'Whatsapp'
      FieldName = 'ZAP_TEL_MASK'
      ProviderFlags = []
      Size = 15
    end
    object CadastroEMAIL: TIBStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      ProviderFlags = []
      Size = 200
    end
    object CadastroLOG_NO_ABREV: TIBStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'LOG_NO_ABREV'
      Origin = '"VW_PSQ_CAD_CLI"."LOG_NO_ABREV"'
      Size = 36
    end
    object CadastroBAI_NO_ABREV: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAI_NO_ABREV'
      Origin = '"VW_PSQ_CAD_CLI"."BAI_NO_ABREV"'
      Size = 36
    end
    object CadastroLOC_NO_ABREV: TIBStringField
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'LOC_NO_ABREV'
      Origin = '"VW_PSQ_CAD_CLI"."LOC_NO_ABREV"'
      Size = 36
    end
    object CadastroUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VW_PSQ_CAD_CLI"."UF"'
      FixedChar = True
      Size = 2
    end
    object CadastroCRD_VPAD: TIBBCDField
      FieldName = 'CRD_VPAD'
      Origin = '"CAD_CLI_CRD_FIN"."CRD_VPAD"'
      Precision = 18
      Size = 2
    end
    object CadastroCRD_VTAP: TIBBCDField
      FieldName = 'CRD_VTAP'
      Origin = '"CAD_CLI_CRD_FIN"."CRD_VTAP"'
      Precision = 18
      Size = 2
    end
    object CadastroCRD_VTSD: TIBBCDField
      FieldName = 'CRD_VTSD'
      Origin = '"CAD_CLI_CRD_FIN"."CRD_VTSD"'
      Precision = 18
      Size = 2
    end
    object CadastroCRD_VTKT: TIBBCDField
      FieldName = 'CRD_VTKT'
      Origin = '"CAD_CLI_CRD_FIN"."CRD_VTKT"'
      Precision = 18
      Size = 2
    end
    object CadastroCRD_BQST: TSmallintField
      FieldName = 'CRD_BQST'
      Origin = '"CAD_CLI_CRD_FIN"."CRD_BQST"'
    end
    object CadastroFIS_DTFU: TDateField
      FieldName = 'FIS_DTFU'
      Origin = '"VW_PSQ_CAD_CLI"."FIS_DTFU"'
    end
    object CadastroFIS_CRT_NO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FIS_CRT_NO'
      Origin = '"VW_PSQ_CAD_CLI"."FIS_CRT_NO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 52
    end
    object CadastroINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_PSQ_CAD_CLI"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 768
    end
  end
end
