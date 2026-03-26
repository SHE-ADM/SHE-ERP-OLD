inherited frmcad_fun: Tfrmcad_fun
  Left = 168
  Top = 0
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 663
  ClientWidth = 1014
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Top = 644
    Width = 1014
  end
  inherited SpeedBar9: TSpeedBar
    Width = 1014
    Height = 109
    BtnWidth = 105
    BtnHeight = 105
    inherited siREF: TSpeedItem
      Left = 212
    end
    inherited siSAIR: TSpeedItem
      Left = 527
    end
    inherited siPRN: TSpeedItem [7]
      Left = 422
    end
    inherited siEVE: TSpeedItem [8]
      Left = 107
      OnClick = siEVEClick
    end
    inherited siLIXO: TSpeedItem [9]
      Left = 317
      OnClick = siLIXOClick
    end
  end
  inherited pnldir: TPanel
    Left = 1014
    Top = 109
    Height = 535
  end
  inherited pnlpri: TPanel
    Top = 109
    Width = 1014
    Height = 535
    inherited pnldbg: TPanel
      Width = 1014
      Height = 311
      inherited gbDET: TGroupBox
        Width = 1014
        Height = 311
        inherited SpeedBar1: TSpeedBar
          Height = 293
        end
        inherited DBGConsulta: TdxDBGrid
          Width = 961
          Height = 293
          KeyField = 'ID'
          ShowSummaryFooter = True
          Filter.Active = True
          Filter.Criteria = {00000000}
          object dbgConsultaID: TdxDBGridMaskColumn
            Width = 46
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
            DisableFilter = True
          end
          object dbgConsultaFUN_APEL: TdxDBGridMaskColumn
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FUN_APEL'
            DisableFilter = True
          end
          object dbgConsultaFUN_NOME: TdxDBGridMaskColumn
            Width = 261
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FUN_NOME'
            DisableFilter = True
          end
          object dbgConsultaFUN_DCAD: TdxDBGridDateColumn
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FUN_DCAD'
          end
          object dbgConsultaFUN_DCAR: TdxDBGridMaskColumn
            Width = 170
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FUN_DCAR'
          end
          object dbgConsultaFUN_DDEP: TdxDBGridMaskColumn
            Width = 170
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FUN_DDEP'
          end
          object dbgConsultaPAR_FANT: TdxDBGridMaskColumn
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PAR_FANT'
          end
        end
      end
    end
    inherited pnlbot: TPanel
      Top = 311
      Width = 1014
      Height = 224
      Visible = True
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 771
        Height = 224
        Align = alClient
      end
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 37
        Height = 14
        Caption = 'C'#243'digo'
      end
      object DBText1: TDBText
        Left = 112
        Top = 8
        Width = 52
        Height = 14
        AutoSize = True
        DataField = 'ID'
        DataSource = DTSCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 40
        Width = 40
        Height = 14
        Caption = 'Apelido'
      end
      object DBText2: TDBText
        Left = 112
        Top = 40
        Width = 52
        Height = 14
        AutoSize = True
        DataField = 'FUN_APEL'
        DataSource = DTSCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 56
        Width = 32
        Height = 14
        Caption = 'Nome'
      end
      object DBText3: TDBText
        Left = 112
        Top = 56
        Width = 52
        Height = 14
        AutoSize = True
        DataField = 'FUN_NOME'
        DataSource = DTSCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 72
        Width = 31
        Height = 14
        Caption = 'Cargo'
      end
      object DBText4: TDBText
        Left = 112
        Top = 72
        Width = 52
        Height = 14
        AutoSize = True
        DataField = 'FUN_DCAR'
        DataSource = DTSCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 8
        Top = 88
        Width = 79
        Height = 14
        Caption = 'Departamento'
      end
      object DBText7: TDBText
        Left = 112
        Top = 88
        Width = 52
        Height = 14
        AutoSize = True
        DataField = 'FUN_DDEP'
        DataSource = DTSCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 8
        Top = 104
        Width = 46
        Height = 14
        Caption = 'Empresa'
      end
      object DBText8: TDBText
        Left = 112
        Top = 104
        Width = 52
        Height = 14
        AutoSize = True
        DataField = 'PAR_FANT'
        DataSource = DTSCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 112
        Top = 24
        Width = 52
        Height = 14
        AutoSize = True
        DataField = 'FUN_DCAD'
        DataSource = DTSCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 8
        Top = 24
        Width = 47
        Height = 14
        Caption = 'Cadastro'
      end
      object Label6: TLabel
        Left = 8
        Top = 120
        Width = 50
        Height = 14
        Caption = 'Admiss'#227'o'
      end
      object DBText6: TDBText
        Left = 112
        Top = 120
        Width = 52
        Height = 14
        AutoSize = True
        DataField = 'FUN_DADM'
        DataSource = DTSCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 8
        Top = 136
        Width = 96
        Height = 14
        Caption = 'Tipo de Admiss'#227'o'
      end
      object DBText12: TDBText
        Left = 112
        Top = 136
        Width = 60
        Height = 14
        AutoSize = True
        DataField = 'FUN_TADM'
        DataSource = DTSCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 8
        Top = 152
        Width = 61
        Height = 14
        Caption = 'Experiencia'
      end
      object DBText13: TDBText
        Left = 112
        Top = 152
        Width = 60
        Height = 14
        AutoSize = True
        DataField = 'FUN_EXPE'
        DataSource = DTSCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 8
        Top = 168
        Width = 27
        Height = 14
        Caption = 'Email'
      end
      object DBText14: TDBText
        Left = 112
        Top = 168
        Width = 60
        Height = 14
        AutoSize = True
        DataField = 'FUN_MAIL'
        DataSource = DTSCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 8
        Top = 184
        Width = 41
        Height = 14
        Caption = 'Fone_1'
      end
      object DBText15: TDBText
        Left = 112
        Top = 184
        Width = 60
        Height = 14
        AutoSize = True
        DataField = 'FUN_DDD1'
        DataSource = DTSCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText16: TDBText
        Left = 152
        Top = 184
        Width = 60
        Height = 14
        AutoSize = True
        DataField = 'FUN_TEL1'
        DataSource = DTSCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText17: TDBText
        Left = 152
        Top = 200
        Width = 60
        Height = 14
        AutoSize = True
        DataField = 'FUN_TEL2'
        DataSource = DTSCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText18: TDBText
        Left = 112
        Top = 200
        Width = 60
        Height = 14
        AutoSize = True
        DataField = 'FUN_DDD2'
        DataSource = DTSCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 8
        Top = 200
        Width = 41
        Height = 14
        Caption = 'Fone_2'
      end
      object GroupBox1: TGroupBox
        Left = 771
        Top = 0
        Width = 243
        Height = 224
        Align = alRight
        Caption = 'Imagem do Funcion'#225'rio'
        TabOrder = 0
        object writeFoto: TImage
          Left = 2
          Top = 16
          Width = 239
          Height = 206
          Align = alClient
          Stretch = True
        end
      end
    end
  end
  inherited DTSCadastro: TDataSource
    OnDataChange = dtscadastroDataChange
  end
  inherited Cadastro: TIBQuery
    SQL.Strings = (
      'SELECT      CAD_FUN.*,PAR_SIS.PAR_FANT '
      'FROM         CAD_FUN,PAR_SIS'
      'WHERE      CAD_FUN.FUN_CEMP = PAR_SIS.ID'
      'AND            CAD_FUN.FUN_STA = '#39'0'#39
      'ORDER BY CAD_FUN.FUN_APEL '
      '')
    object cadastroID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = '"CAD_FUN"."ID"'
      Required = True
    end
    object cadastroFUN_NOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'FUN_NOME'
      Origin = '"CAD_FUN"."FUN_NOME"'
      Size = 120
    end
    object cadastroFUN_APEL: TIBStringField
      DisplayLabel = 'Apelido'
      FieldName = 'FUN_APEL'
      Origin = '"CAD_FUN"."FUN_APEL"'
      Size = 30
    end
    object cadastroFUN_DCAD: TDateField
      DisplayLabel = 'Dt Admiss'#227'o'
      FieldName = 'FUN_DCAD'
      Origin = '"CAD_FUN"."FUN_DCAD"'
    end
    object cadastroFUN_STA: TIBStringField
      FieldName = 'FUN_STA'
      Origin = '"CAD_FUN"."FUN_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroFUN_CEMP: TIntegerField
      FieldName = 'FUN_CEMP'
      Origin = '"CAD_FUN"."FUN_CEMP"'
    end
    object cadastroPAR_FANT: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'PAR_FANT'
      Origin = '"PAR_SIS"."PAR_FANT"'
      Size = 40
    end
    object cadastroFUN_CDEP: TIntegerField
      FieldName = 'FUN_CDEP'
      Origin = '"CAD_FUN"."FUN_CDEP"'
    end
    object cadastroFUN_DDEP: TIBStringField
      DisplayLabel = 'Departamento'
      FieldName = 'FUN_DDEP'
      Origin = '"CAD_FUN"."FUN_DDEP"'
      Size = 40
    end
    object cadastroFUN_CSEC: TIntegerField
      FieldName = 'FUN_CSEC'
      Origin = '"CAD_FUN"."FUN_CSEC"'
    end
    object cadastroFUN_DSEC: TIBStringField
      FieldName = 'FUN_DSEC'
      Origin = '"CAD_FUN"."FUN_DSEC"'
      Size = 40
    end
    object cadastroFUN_CCUS: TIntegerField
      FieldName = 'FUN_CCUS'
      Origin = '"CAD_FUN"."FUN_CCUS"'
    end
    object cadastroFUN_DCUS: TIBStringField
      FieldName = 'FUN_DCUS'
      Origin = '"CAD_FUN"."FUN_DCUS"'
      Size = 40
    end
    object cadastroFUN_CCAR: TIntegerField
      FieldName = 'FUN_CCAR'
      Origin = '"CAD_FUN"."FUN_CCAR"'
    end
    object cadastroFUN_DCAR: TIBStringField
      DisplayLabel = 'Cargo'
      FieldName = 'FUN_DCAR'
      Origin = '"CAD_FUN"."FUN_DCAR"'
      Size = 40
    end
    object cadastroFUN_CCBO: TIntegerField
      FieldName = 'FUN_CCBO'
      Origin = '"CAD_FUN"."FUN_CCBO"'
    end
    object cadastroFUN_CHAP: TIntegerField
      FieldName = 'FUN_CHAP'
      Origin = '"CAD_FUN"."FUN_CHAP"'
    end
    object cadastroFUN_CVIN: TIntegerField
      FieldName = 'FUN_CVIN'
      Origin = '"CAD_FUN"."FUN_CVIN"'
    end
    object cadastroFUN_DVIN: TIBStringField
      FieldName = 'FUN_DVIN'
      Origin = '"CAD_FUN"."FUN_DVIN"'
      Size = 40
    end
    object cadastroFUN_VSTA: TIBStringField
      FieldName = 'FUN_VSTA'
      Origin = '"CAD_FUN"."FUN_VSTA"'
    end
    object cadastroFUN_VSAL: TIBBCDField
      FieldName = 'FUN_VSAL'
      Origin = '"CAD_FUN"."FUN_VSAL"'
      Precision = 9
      Size = 2
    end
    object cadastroFUN_TSAL: TIBStringField
      FieldName = 'FUN_TSAL'
      Origin = '"CAD_FUN"."FUN_TSAL"'
    end
    object cadastroFUN_ALTU: TIBBCDField
      FieldName = 'FUN_ALTU'
      Origin = '"CAD_FUN"."FUN_ALTU"'
      Precision = 9
      Size = 2
    end
    object cadastroFUN_PESO: TIBBCDField
      FieldName = 'FUN_PESO'
      Origin = '"CAD_FUN"."FUN_PESO"'
      Precision = 9
      Size = 2
    end
    object cadastroFUN_CABE: TIBStringField
      FieldName = 'FUN_CABE'
      Origin = '"CAD_FUN"."FUN_CABE"'
    end
    object cadastroFUN_OLHO: TIBStringField
      FieldName = 'FUN_OLHO'
      Origin = '"CAD_FUN"."FUN_OLHO"'
    end
    object cadastroFUN_RACA: TIBStringField
      FieldName = 'FUN_RACA'
      Origin = '"CAD_FUN"."FUN_RACA"'
    end
    object cadastroFUN_DEFI: TIBStringField
      FieldName = 'FUN_DEFI'
      Origin = '"CAD_FUN"."FUN_DEFI"'
    end
    object cadastroFUN_ALVA: TIBStringField
      FieldName = 'FUN_ALVA'
      Origin = '"CAD_FUN"."FUN_ALVA"'
      FixedChar = True
      Size = 1
    end
    object cadastroFUN_SINA: TMemoField
      FieldName = 'FUN_SINA'
      Origin = '"CAD_FUN"."FUN_SINA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroFUN_DNAS: TDateField
      FieldName = 'FUN_DNAS'
      Origin = '"CAD_FUN"."FUN_DNAS"'
    end
    object cadastroFUN_IDAD: TSmallintField
      FieldName = 'FUN_IDAD'
      Origin = '"CAD_FUN"."FUN_IDAD"'
    end
    object cadastroFUN_DADM: TDateField
      FieldName = 'FUN_DADM'
      Origin = '"CAD_FUN"."FUN_DADM"'
    end
    object cadastroFUN_EXPE: TSmallintField
      FieldName = 'FUN_EXPE'
      Origin = '"CAD_FUN"."FUN_EXPE"'
    end
    object cadastroFUN_PROR: TSmallintField
      FieldName = 'FUN_PROR'
      Origin = '"CAD_FUN"."FUN_PROR"'
    end
    object cadastroFUN_APOS: TIBStringField
      FieldName = 'FUN_APOS'
      Origin = '"CAD_FUN"."FUN_APOS"'
      FixedChar = True
      Size = 1
    end
    object cadastroFUN_TADM: TIBStringField
      FieldName = 'FUN_TADM'
      Origin = '"CAD_FUN"."FUN_TADM"'
      Size = 40
    end
    object cadastroFUN_DTRA: TDateField
      FieldName = 'FUN_DTRA'
      Origin = '"CAD_FUN"."FUN_DTRA"'
    end
    object cadastroFUN_DDEM: TDateField
      FieldName = 'FUN_DDEM'
      Origin = '"CAD_FUN"."FUN_DDEM"'
    end
    object cadastroFUN_SITU: TIBStringField
      FieldName = 'FUN_SITU'
      Origin = '"CAD_FUN"."FUN_SITU"'
    end
    object cadastroFUN_CAGE: TIBStringField
      FieldName = 'FUN_CAGE'
      Origin = '"CAD_FUN"."FUN_CAGE"'
    end
    object cadastroFUN_CAFI: TIntegerField
      FieldName = 'FUN_CAFI'
      Origin = '"CAD_FUN"."FUN_CAFI"'
    end
    object cadastroFUN_DAFI: TDateField
      FieldName = 'FUN_DAFI'
      Origin = '"CAD_FUN"."FUN_DAFI"'
    end
    object cadastroFUN_CAFR: TIntegerField
      FieldName = 'FUN_CAFR'
      Origin = '"CAD_FUN"."FUN_CAFR"'
    end
    object cadastroFUN_DAFR: TDateField
      FieldName = 'FUN_DAFR'
      Origin = '"CAD_FUN"."FUN_DAFR"'
    end
    object cadastroFUN_DFEI: TDateField
      FieldName = 'FUN_DFEI'
      Origin = '"CAD_FUN"."FUN_DFEI"'
    end
    object cadastroFUN_DFET: TDateField
      FieldName = 'FUN_DFET'
      Origin = '"CAD_FUN"."FUN_DFET"'
    end
    object cadastroFUN_DAQI: TDateField
      FieldName = 'FUN_DAQI'
      Origin = '"CAD_FUN"."FUN_DAQI"'
    end
    object cadastroFUN_DAQT: TDateField
      FieldName = 'FUN_DAQT'
      Origin = '"CAD_FUN"."FUN_DAQT"'
    end
    object cadastroFUN_IRRF: TIBBCDField
      FieldName = 'FUN_IRRF'
      Origin = '"CAD_FUN"."FUN_IRRF"'
      Precision = 9
      Size = 2
    end
    object cadastroFUN_INSS: TIBBCDField
      FieldName = 'FUN_INSS'
      Origin = '"CAD_FUN"."FUN_INSS"'
      Precision = 9
      Size = 2
    end
    object cadastroFUN_FPAG: TIBStringField
      FieldName = 'FUN_FPAG'
      Origin = '"CAD_FUN"."FUN_FPAG"'
      Size = 40
    end
    object cadastroFUN_PCBA: TIntegerField
      FieldName = 'FUN_PCBA'
      Origin = '"CAD_FUN"."FUN_PCBA"'
    end
    object cadastroFUN_PDBA: TIBStringField
      FieldName = 'FUN_PDBA'
      Origin = '"CAD_FUN"."FUN_PDBA"'
      Size = 50
    end
    object cadastroFUN_PAGE: TIBStringField
      FieldName = 'FUN_PAGE'
      Origin = '"CAD_FUN"."FUN_PAGE"'
      Size = 10
    end
    object cadastroFUN_PCON: TIBStringField
      FieldName = 'FUN_PCON'
      Origin = '"CAD_FUN"."FUN_PCON"'
      Size = 15
    end
    object cadastroFUN_PTIP: TIBStringField
      FieldName = 'FUN_PTIP'
      Origin = '"CAD_FUN"."FUN_PTIP"'
    end
    object cadastroFUN_PDOC: TIBStringField
      FieldName = 'FUN_PDOC'
      Origin = '"CAD_FUN"."FUN_PDOC"'
      Size = 14
    end
    object cadastroFUN_FCOP: TIBStringField
      FieldName = 'FUN_FCOP'
      Origin = '"CAD_FUN"."FUN_FCOP"'
    end
    object cadastroFUN_FDOP: TDateField
      FieldName = 'FUN_FDOP'
      Origin = '"CAD_FUN"."FUN_FDOP"'
    end
    object cadastroFUN_FCBA: TIntegerField
      FieldName = 'FUN_FCBA'
      Origin = '"CAD_FUN"."FUN_FCBA"'
    end
    object cadastroFUN_FDBA: TIBStringField
      FieldName = 'FUN_FDBA'
      Origin = '"CAD_FUN"."FUN_FDBA"'
      Size = 50
    end
    object cadastroFUN_FCAT: TIBStringField
      FieldName = 'FUN_FCAT'
      Origin = '"CAD_FUN"."FUN_FCAT"'
      Size = 40
    end
    object cadastroFUN_FCON: TIBStringField
      FieldName = 'FUN_FCON'
      Origin = '"CAD_FUN"."FUN_FCON"'
      Size = 15
    end
    object cadastroFUN_FSAL: TIBBCDField
      FieldName = 'FUN_FSAL'
      Origin = '"CAD_FUN"."FUN_FSAL"'
      Precision = 9
      Size = 2
    end
    object cadastroFUN_CSIN: TIntegerField
      FieldName = 'FUN_CSIN'
      Origin = '"CAD_FUN"."FUN_CSIN"'
    end
    object cadastroFUN_DSIN: TIBStringField
      FieldName = 'FUN_DSIN'
      Origin = '"CAD_FUN"."FUN_DSIN"'
      Size = 40
    end
    object cadastroFUN_SIND: TIBStringField
      FieldName = 'FUN_SIND'
      Origin = '"CAD_FUN"."FUN_SIND"'
      FixedChar = True
      Size = 1
    end
    object cadastroFUN_TCON: TIBStringField
      FieldName = 'FUN_TCON'
      Origin = '"CAD_FUN"."FUN_TCON"'
      Size = 40
    end
    object cadastroFUN_PENS: TSmallintField
      FieldName = 'FUN_PENS'
      Origin = '"CAD_FUN"."FUN_PENS"'
    end
    object cadastroFUN_NCRT: TIBStringField
      FieldName = 'FUN_NCRT'
      Origin = '"CAD_FUN"."FUN_NCRT"'
      Size = 10
    end
    object cadastroFUN_SCRT: TIBStringField
      FieldName = 'FUN_SCRT'
      Origin = '"CAD_FUN"."FUN_SCRT"'
      Size = 5
    end
    object cadastroFUN_DCRT: TDateField
      FieldName = 'FUN_DCRT'
      Origin = '"CAD_FUN"."FUN_DCRT"'
    end
    object cadastroFUN_RGNU: TIBStringField
      FieldName = 'FUN_RGNU'
      Origin = '"CAD_FUN"."FUN_RGNU"'
      Size = 15
    end
    object cadastroFUN_RGEM: TIBStringField
      FieldName = 'FUN_RGEM'
      Origin = '"CAD_FUN"."FUN_RGEM"'
      Size = 10
    end
    object cadastroFUN_RGUF: TIBStringField
      FieldName = 'FUN_RGUF'
      Origin = '"CAD_FUN"."FUN_RGUF"'
      Size = 2
    end
    object cadastroFUN_RGDT: TDateField
      FieldName = 'FUN_RGDT'
      Origin = '"CAD_FUN"."FUN_RGDT"'
    end
    object cadastroFUN_TENU: TIBStringField
      FieldName = 'FUN_TENU'
      Origin = '"CAD_FUN"."FUN_TENU"'
    end
    object cadastroFUN_TEZO: TIBStringField
      FieldName = 'FUN_TEZO'
      Origin = '"CAD_FUN"."FUN_TEZO"'
      Size = 5
    end
    object cadastroFUN_TESE: TIBStringField
      FieldName = 'FUN_TESE'
      Origin = '"CAD_FUN"."FUN_TESE"'
      Size = 5
    end
    object cadastroFUN_RNUM: TIBStringField
      FieldName = 'FUN_RNUM'
      Origin = '"CAD_FUN"."FUN_RNUM"'
    end
    object cadastroFUN_RSEC: TIBStringField
      FieldName = 'FUN_RSEC'
      Origin = '"CAD_FUN"."FUN_RSEC"'
      Size = 5
    end
    object cadastroFUN_RCAT: TIBStringField
      FieldName = 'FUN_RCAT'
      Origin = '"CAD_FUN"."FUN_RCAT"'
    end
    object cadastroFUN_CPF: TIBStringField
      FieldName = 'FUN_CPF'
      Origin = '"CAD_FUN"."FUN_CPF"'
      Size = 11
    end
    object cadastroFUN_CAMT: TIBStringField
      FieldName = 'FUN_CAMT'
      Origin = '"CAD_FUN"."FUN_CAMT"'
      Size = 12
    end
    object cadastroFUN_DOTI: TIBStringField
      FieldName = 'FUN_DOTI'
      Origin = '"CAD_FUN"."FUN_DOTI"'
    end
    object cadastroFUN_DONU: TIBStringField
      FieldName = 'FUN_DONU'
      Origin = '"CAD_FUN"."FUN_DONU"'
    end
    object cadastroFUN_NACI: TIBStringField
      FieldName = 'FUN_NACI'
      Origin = '"CAD_FUN"."FUN_NACI"'
    end
    object cadastroFUN_NAAN: TSmallintField
      FieldName = 'FUN_NAAN'
      Origin = '"CAD_FUN"."FUN_NAAN"'
    end
    object cadastroFUN_GRAU: TIBStringField
      FieldName = 'FUN_GRAU'
      Origin = '"CAD_FUN"."FUN_GRAU"'
      Size = 40
    end
    object cadastroFUN_GFIP: TIBStringField
      FieldName = 'FUN_GFIP'
      Origin = '"CAD_FUN"."FUN_GFIP"'
      Size = 40
    end
    object cadastroFUN_GGFI: TIBStringField
      FieldName = 'FUN_GGFI'
      Origin = '"CAD_FUN"."FUN_GGFI"'
      FixedChar = True
      Size = 1
    end
    object cadastroFUN_CIVI: TIBStringField
      FieldName = 'FUN_CIVI'
      Origin = '"CAD_FUN"."FUN_CIVI"'
    end
    object cadastroFUN_DDD1: TIBStringField
      FieldName = 'FUN_DDD1'
      Origin = '"CAD_FUN"."FUN_DDD1"'
      EditMask = '(99);0; '
      Size = 2
    end
    object cadastroFUN_TEL1: TIBStringField
      FieldName = 'FUN_TEL1'
      Origin = '"CAD_FUN"."FUN_TEL1"'
      EditMask = '9999-9999;0; '
      Size = 9
    end
    object cadastroFUN_DDD2: TIBStringField
      FieldName = 'FUN_DDD2'
      Origin = '"CAD_FUN"."FUN_DDD2"'
      EditMask = '(99);0; '
      Size = 2
    end
    object cadastroFUN_TEL2: TIBStringField
      FieldName = 'FUN_TEL2'
      Origin = '"CAD_FUN"."FUN_TEL2"'
      EditMask = '9999-9999;0; '
      Size = 9
    end
    object cadastroFUN_DDD3: TIBStringField
      FieldName = 'FUN_DDD3'
      Origin = '"CAD_FUN"."FUN_DDD3"'
      EditMask = '(99);0; '
      Size = 2
    end
    object cadastroFUN_TEL3: TIBStringField
      FieldName = 'FUN_TEL3'
      Origin = '"CAD_FUN"."FUN_TEL3"'
      EditMask = '9999-9999;0; '
      Size = 9
    end
    object cadastroFUN_DDD4: TIBStringField
      FieldName = 'FUN_DDD4'
      Origin = '"CAD_FUN"."FUN_DDD4"'
      EditMask = '(99);0; '
      Size = 2
    end
    object cadastroFUN_CEL1: TIBStringField
      FieldName = 'FUN_CEL1'
      Origin = '"CAD_FUN"."FUN_CEL1"'
      EditMask = '9999-9999;0; '
      Size = 9
    end
    object cadastroFUN_CTC1: TIBStringField
      FieldName = 'FUN_CTC1'
      Origin = '"CAD_FUN"."FUN_CTC1"'
      Size = 10
    end
    object cadastroFUN_DDD5: TIBStringField
      FieldName = 'FUN_DDD5'
      Origin = '"CAD_FUN"."FUN_DDD5"'
      EditMask = '(99);0; '
      Size = 2
    end
    object cadastroFUN_CEL2: TIBStringField
      FieldName = 'FUN_CEL2'
      Origin = '"CAD_FUN"."FUN_CEL2"'
      EditMask = '9999-9999;0; '
      Size = 9
    end
    object cadastroFUN_CTC2: TIBStringField
      FieldName = 'FUN_CTC2'
      Origin = '"CAD_FUN"."FUN_CTC2"'
      Size = 10
    end
    object cadastroFUN_NEID: TIBStringField
      FieldName = 'FUN_NEID'
      Origin = '"CAD_FUN"."FUN_NEID"'
      Size = 15
    end
    object cadastroFUN_MAIL: TIBStringField
      FieldName = 'FUN_MAIL'
      Origin = '"CAD_FUN"."FUN_MAIL"'
      Size = 60
    end
    object cadastroFUN_CONJ: TIBStringField
      FieldName = 'FUN_CONJ'
      Origin = '"CAD_FUN"."FUN_CONJ"'
      Size = 120
    end
    object cadastroFUN_NACC: TIBStringField
      FieldName = 'FUN_NACC'
      Origin = '"CAD_FUN"."FUN_NACC"'
    end
    object cadastroFUN_MAE: TIBStringField
      FieldName = 'FUN_MAE'
      Origin = '"CAD_FUN"."FUN_MAE"'
      Size = 120
    end
    object cadastroFUN_NACM: TIBStringField
      FieldName = 'FUN_NACM'
      Origin = '"CAD_FUN"."FUN_NACM"'
    end
    object cadastroFUN_PAI: TIBStringField
      FieldName = 'FUN_PAI'
      Origin = '"CAD_FUN"."FUN_PAI"'
      Size = 120
    end
    object cadastroFUN_NACP: TIBStringField
      FieldName = 'FUN_NACP'
      Origin = '"CAD_FUN"."FUN_NACP"'
    end
    object cadastroFUN_TLOG: TIBStringField
      FieldName = 'FUN_TLOG'
      Origin = '"CAD_FUN"."FUN_TLOG"'
      Size = 15
    end
    object cadastroFUN_LOGR: TIBStringField
      FieldName = 'FUN_LOGR'
      Origin = '"CAD_FUN"."FUN_LOGR"'
      Size = 60
    end
    object cadastroFUN_CEP: TIBStringField
      FieldName = 'FUN_CEP'
      Origin = '"CAD_FUN"."FUN_CEP"'
      Size = 9
    end
    object cadastroFUN_NUME: TIBStringField
      FieldName = 'FUN_NUME'
      Origin = '"CAD_FUN"."FUN_NUME"'
      Size = 10
    end
    object cadastroFUN_COMP: TIBStringField
      FieldName = 'FUN_COMP'
      Origin = '"CAD_FUN"."FUN_COMP"'
      Size = 40
    end
    object cadastroFUN_BAI: TIBStringField
      FieldName = 'FUN_BAI'
      Origin = '"CAD_FUN"."FUN_BAI"'
      Size = 40
    end
    object cadastroFUN_CID: TIBStringField
      FieldName = 'FUN_CID'
      Origin = '"CAD_FUN"."FUN_CID"'
      Size = 40
    end
    object cadastroFUN_CIDN: TIBStringField
      FieldName = 'FUN_CIDN'
      Origin = '"CAD_FUN"."FUN_CIDN"'
      Size = 40
    end
    object cadastroFUN_ESTA: TIBStringField
      FieldName = 'FUN_ESTA'
      Origin = '"CAD_FUN"."FUN_ESTA"'
      Size = 2
    end
    object cadastroFUN_ESTN: TIBStringField
      FieldName = 'FUN_ESTN'
      Origin = '"CAD_FUN"."FUN_ESTN"'
      Size = 40
    end
    object cadastroFUN_CONV: TIBStringField
      FieldName = 'FUN_CONV'
      Origin = '"CAD_FUN"."FUN_CONV"'
      FixedChar = True
      Size = 1
    end
    object cadastroFUN_SSIN: TIBStringField
      FieldName = 'FUN_SSIN'
      Origin = '"CAD_FUN"."FUN_SSIN"'
      FixedChar = True
      Size = 1
    end
    object cadastroFUN_MDIS: TSmallintField
      FieldName = 'FUN_MDIS'
      Origin = '"CAD_FUN"."FUN_MDIS"'
    end
    object cadastroFUN_HEIN: TIBStringField
      FieldName = 'FUN_HEIN'
      Origin = '"CAD_FUN"."FUN_HEIN"'
      Size = 5
    end
    object cadastroFUN_HSIN: TIBStringField
      FieldName = 'FUN_HSIN'
      Origin = '"CAD_FUN"."FUN_HSIN"'
      Size = 5
    end
    object cadastroFUN_HEFN: TIBStringField
      FieldName = 'FUN_HEFN'
      Origin = '"CAD_FUN"."FUN_HEFN"'
      Size = 5
    end
    object cadastroFUN_HSFN: TIBStringField
      FieldName = 'FUN_HSFN'
      Origin = '"CAD_FUN"."FUN_HSFN"'
      Size = 5
    end
    object cadastroFUN_PPRI: TIBStringField
      FieldName = 'FUN_PPRI'
      Origin = '"CAD_FUN"."FUN_PPRI"'
      FixedChar = True
      Size = 1
    end
    object cadastroFUN_VTRA: TIBStringField
      FieldName = 'FUN_VTRA'
      Origin = '"CAD_FUN"."FUN_VTRA"'
      FixedChar = True
      Size = 1
    end
    object cadastroFUN_SOKA: TIBStringField
      FieldName = 'FUN_SOKA'
      Origin = '"CAD_FUN"."FUN_SOKA"'
      FixedChar = True
      Size = 1
    end
    object cadastroFUN_VALE: TIBStringField
      FieldName = 'FUN_VALE'
      Origin = '"CAD_FUN"."FUN_VALE"'
      FixedChar = True
      Size = 1
    end
    object cadastroFUN_13SA: TIBStringField
      FieldName = 'FUN_13SA'
      Origin = '"CAD_FUN"."FUN_13SA"'
      FixedChar = True
      Size = 1
    end
    object cadastroFUN_FOTO: TBlobField
      FieldName = 'FUN_FOTO'
      Origin = '"CAD_FUN"."FUN_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cadastroFUN_ABON: TIBBCDField
      FieldName = 'FUN_ABON'
      Origin = '"CAD_FUN"."FUN_ABON"'
      Precision = 9
      Size = 2
    end
    object cadastroFUN_COMI: TIBBCDField
      FieldName = 'FUN_COMI'
      Origin = '"CAD_FUN"."FUN_COMI"'
      Precision = 9
      Size = 2
    end
    object cadastroFUN_HORA: TIBBCDField
      FieldName = 'FUN_HORA'
      Origin = '"CAD_FUN"."FUN_HORA"'
      Precision = 9
      Size = 2
    end
    object cadastroFUN_60SH: TIBBCDField
      FieldName = 'FUN_60SH'
      Origin = '"CAD_FUN"."FUN_60SH"'
      Precision = 9
      Size = 2
    end
    object cadastroFUN_60VL: TIBBCDField
      FieldName = 'FUN_60VL'
      Origin = '"CAD_FUN"."FUN_60VL"'
      Precision = 9
      Size = 2
    end
    object cadastroFUN_10SH: TIBBCDField
      FieldName = 'FUN_10SH'
      Origin = '"CAD_FUN"."FUN_10SH"'
      Precision = 9
      Size = 2
    end
    object cadastroFUN_10VL: TIBBCDField
      FieldName = 'FUN_10VL'
      Origin = '"CAD_FUN"."FUN_10VL"'
      Precision = 9
      Size = 2
    end
    object cadastroFUN_TOTA: TIBBCDField
      FieldName = 'FUN_TOTA'
      Origin = '"CAD_FUN"."FUN_TOTA"'
      Precision = 9
      Size = 2
    end
    object cadastroFUN_REGI: TIBStringField
      FieldName = 'FUN_REGI'
      Origin = '"CAD_FUN"."FUN_REGI"'
    end
    object cadastroFUN_NORD: TSmallintField
      FieldName = 'FUN_NORD'
      Origin = '"CAD_FUN"."FUN_NORD"'
    end
  end
  inherited imageOPC: TImageList
    Left = 268
    Top = 270
  end
end
