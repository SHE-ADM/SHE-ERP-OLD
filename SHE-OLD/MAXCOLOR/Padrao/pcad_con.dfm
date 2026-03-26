inherited frmcad_con: Tfrmcad_con
  Left = 17
  Top = 1
  Caption = 'Cadastro de Container'
  ClientHeight = 574
  ClientWidth = 1005
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Top = 555
    Width = 1005
  end
  inherited SpeedBar9: TSpeedBar
    Width = 1005
    inherited siEVE: TSpeedItem [6]
    end
    inherited siSAIR: TSpeedItem [7]
      Left = 442
    end
    inherited siLIXO: TSpeedItem [8]
      Visible = False
    end
    inherited siPRN: TSpeedItem [9]
      Left = 332
      OnClick = siPRNClick
    end
  end
  inherited pnldir: TPanel
    Left = 572
    Width = 433
    Height = 441
    Visible = True
    object dxPageControl1: TdxPageControl
      Left = 1
      Top = 1
      Width = 431
      Height = 439
      ActivePage = dxTabSheet1
      Align = alClient
      HideButtons = False
      HotTrack = False
      MultiLine = False
      OwnerDraw = False
      RaggedRight = False
      ScrollOpposite = False
      TabHeight = 0
      TabOrder = 0
      TabPosition = dxtpTop
      TabWidth = 0
      object dxTabSheet1: TdxTabSheet
        Caption = 'Sum'#225'rio'
        object GroupBox1: TGroupBox
          Left = 0
          Top = 310
          Width = 431
          Height = 105
          Align = alBottom
          Caption = 'Observa'#231#245'es'
          TabOrder = 0
          object dxDBMemo1: TdxDBMemo
            Left = 2
            Top = 16
            Width = 427
            Align = alClient
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 0
            DataField = 'CON_OBSE'
            DataSource = dtscadastro
            Height = 87
          end
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 41
          Width = 431
          Height = 81
          Align = alTop
          Caption = 'Cambio'
          TabOrder = 1
          object Label1: TLabel
            Left = 16
            Top = 24
            Width = 179
            Height = 14
            Caption = 'Cota'#231#227'o do Dolar para Libera'#231#227'o:'
          end
          object Label2: TLabel
            Left = 16
            Top = 40
            Width = 25
            Height = 14
            Caption = 'Data'
          end
          object Label3: TLabel
            Left = 16
            Top = 56
            Width = 27
            Height = 14
            Caption = 'Valor'
          end
          object DBText2: TDBText
            Left = 48
            Top = 40
            Width = 52
            Height = 14
            AutoSize = True
            DataField = 'CON_DCOL'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 48
            Top = 56
            Width = 52
            Height = 14
            AutoSize = True
            DataField = 'CON_VCOL'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 248
            Top = 24
            Width = 163
            Height = 14
            Caption = 'Cota'#231#227'o do Dolar de Produto:'
          end
          object Label5: TLabel
            Left = 248
            Top = 40
            Width = 25
            Height = 14
            Caption = 'Data'
          end
          object Label6: TLabel
            Left = 248
            Top = 56
            Width = 27
            Height = 14
            Caption = 'Valor'
          end
          object DBText3: TDBText
            Left = 280
            Top = 40
            Width = 52
            Height = 14
            AutoSize = True
            DataField = 'CON_DCOP'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText4: TDBText
            Left = 280
            Top = 56
            Width = 52
            Height = 14
            AutoSize = True
            DataField = 'CON_VCOP'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object GroupBox3: TGroupBox
          Left = 209
          Top = 122
          Width = 222
          Height = 188
          Align = alClient
          Caption = 'Despesas'
          TabOrder = 2
          object Label7: TLabel
            Left = 16
            Top = 24
            Width = 62
            Height = 14
            Caption = 'Importa'#231#227'o'
          end
          object Label8: TLabel
            Left = 16
            Top = 88
            Width = 78
            Height = 14
            Caption = 'Despesa China'
          end
          object DBText5: TDBText
            Left = 120
            Top = 24
            Width = 52
            Height = 14
            AutoSize = True
            DataField = 'CON_VII'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText6: TDBText
            Left = 120
            Top = 88
            Width = 52
            Height = 14
            AutoSize = True
            DataField = 'CON_VDESP'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 16
            Top = 104
            Width = 28
            Height = 14
            Caption = 'Extra'
          end
          object DBText15: TDBText
            Left = 120
            Top = 104
            Width = 60
            Height = 14
            AutoSize = True
            DataField = 'CON_VEXTRA'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 16
            Top = 56
            Width = 43
            Height = 14
            Caption = 'Multa LI'
          end
          object DBText16: TDBText
            Left = 120
            Top = 56
            Width = 60
            Height = 14
            AutoSize = True
            DataField = 'CON_VMULTALI'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 16
            Top = 120
            Width = 100
            Height = 14
            Caption = 'Transp. Rodovi'#225'rio'
          end
          object DBText19: TDBText
            Left = 120
            Top = 120
            Width = 60
            Height = 14
            AutoSize = True
            DataField = 'CON_VTRANSP'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 16
            Top = 136
            Width = 77
            Height = 14
            Caption = 'Armazenagem'
          end
          object DBText20: TDBText
            Left = 120
            Top = 136
            Width = 60
            Height = 14
            AutoSize = True
            DataField = 'CON_VARMAZEN'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 16
            Top = 72
            Width = 29
            Height = 14
            Caption = 'Frete'
          end
          object DBText21: TDBText
            Left = 120
            Top = 72
            Width = 60
            Height = 14
            AutoSize = True
            DataField = 'CON_VFRETE'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 16
            Top = 40
            Width = 10
            Height = 14
            Caption = 'LI'
          end
          object DBText22: TDBText
            Left = 120
            Top = 40
            Width = 60
            Height = 14
            AutoSize = True
            DataField = 'CON_VLI'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 16
            Top = 152
            Width = 53
            Height = 14
            Caption = 'Honor'#225'ios'
          end
          object DBText23: TDBText
            Left = 120
            Top = 152
            Width = 60
            Height = 14
            AutoSize = True
            DataField = 'CON_VHONO'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 16
            Top = 168
            Width = 37
            Height = 14
            Caption = 'Outros'
          end
          object DBText24: TDBText
            Left = 120
            Top = 168
            Width = 60
            Height = 14
            AutoSize = True
            DataField = 'CON_VOUTRO'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object GroupBox4: TGroupBox
          Left = 0
          Top = 122
          Width = 209
          Height = 188
          Align = alLeft
          Caption = 'Impostos'
          TabOrder = 3
          object Label14: TLabel
            Left = 16
            Top = 24
            Width = 43
            Height = 14
            Caption = 'I.C.M.S.'
          end
          object Label15: TLabel
            Left = 16
            Top = 40
            Width = 15
            Height = 14
            Caption = 'IPI'
          end
          object DBText9: TDBText
            Left = 96
            Top = 24
            Width = 52
            Height = 14
            AutoSize = True
            DataField = 'CON_VICMS'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText10: TDBText
            Left = 96
            Top = 40
            Width = 60
            Height = 14
            AutoSize = True
            DataField = 'CON_VIPI'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 248
            Top = 24
            Width = 159
            Height = 14
            Caption = 'Cota'#231#227'o do Dolar de Produto'
          end
          object Label17: TLabel
            Left = 248
            Top = 40
            Width = 25
            Height = 14
            Caption = 'Data'
          end
          object Label18: TLabel
            Left = 248
            Top = 56
            Width = 27
            Height = 14
            Caption = 'Valor'
          end
          object DBText11: TDBText
            Left = 280
            Top = 40
            Width = 60
            Height = 14
            AutoSize = True
            DataField = 'CON_DCOP'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText12: TDBText
            Left = 280
            Top = 56
            Width = 60
            Height = 14
            AutoSize = True
            DataField = 'CON_VCOP'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 16
            Top = 56
            Width = 14
            Height = 14
            Caption = 'Pis'
          end
          object DBText13: TDBText
            Left = 96
            Top = 56
            Width = 60
            Height = 14
            AutoSize = True
            DataField = 'CON_VPIS'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label19: TLabel
            Left = 16
            Top = 72
            Width = 32
            Height = 14
            Caption = 'Cofins'
          end
          object DBText14: TDBText
            Left = 96
            Top = 72
            Width = 60
            Height = 14
            AutoSize = True
            DataField = 'CON_VCOFINS'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 16
            Top = 88
            Width = 74
            Height = 14
            Caption = 'Anti Dumping'
          end
          object DBText7: TDBText
            Left = 96
            Top = 88
            Width = 52
            Height = 14
            AutoSize = True
            DataField = 'CON_VDUMP'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object GroupBox5: TGroupBox
          Left = 0
          Top = 0
          Width = 431
          Height = 41
          Align = alTop
          TabOrder = 4
          object Label12: TLabel
            Left = 16
            Top = 16
            Width = 51
            Height = 14
            Caption = 'Descri'#231#227'o'
          end
          object DBText8: TDBText
            Left = 72
            Top = 16
            Width = 52
            Height = 14
            AutoSize = True
            DataField = 'PAR_FANT'
            DataSource = dtscadastro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
  end
  inherited pnlpri: TPanel
    Width = 572
    Height = 441
    inherited pnldbg: TPanel
      Width = 570
      Height = 438
      inherited gbDET: TGroupBox
        Width = 568
        Height = 436
        inherited SpeedBar1: TSpeedBar
          Height = 418
        end
        inherited dbgConsulta: TdxDBGrid
          Width = 515
          Height = 418
          KeyField = 'ID'
          ShowSummaryFooter = True
          Filter.Criteria = {00000000}
          object dbgConsultaCON_CTNR: TdxDBGridMaskColumn
            Width = 109
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CON_CTNR'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
          end
          object dbgConsultaCON_DCAD: TdxDBGridDateColumn
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CON_DCAD'
          end
          object dbgConsultaPAR_FANT: TdxDBGridMaskColumn
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PAR_FANT'
          end
          object dbgConsultaCON_PSBR: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CON_PSBR'
          end
          object dbgConsultaCON_PSLQ: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CON_PSLQ'
          end
          object dbgConsultaCON_STA: TdxDBGridMaskColumn
            Visible = False
            Width = 54
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CON_STA'
          end
        end
      end
    end
    inherited pnlbot: TPanel
      Top = 439
      Width = 570
    end
  end
  inherited cadastro: TIBQuery
    SQL.Strings = (
      'SELECT CAD_CON.*,PAR_FANT'
      'FROM   CAD_CON,PAR_SIS'
      'WHERE  CAD_CON.CON_CEMP = PAR_SIS.ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CON"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroCON_CTNR: TIBStringField
      DisplayLabel = 'N'#250'm. Container'
      FieldName = 'CON_CTNR'
      Origin = '"CAD_CON"."CON_CTNR"'
    end
    object cadastroCON_DTNR: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CON_DTNR'
      Origin = '"CAD_CON"."CON_DTNR"'
      Size = 50
    end
    object cadastroCON_DCAD: TDateField
      DisplayLabel = 'Dt Lancto'
      FieldName = 'CON_DCAD'
      Origin = '"CAD_CON"."CON_DCAD"'
    end
    object cadastroCON_DCOL: TDateField
      FieldName = 'CON_DCOL'
      Origin = '"CAD_CON"."CON_DCOL"'
    end
    object cadastroCON_DCOP: TDateField
      FieldName = 'CON_DCOP'
      Origin = '"CAD_CON"."CON_DCOP"'
    end
    object cadastroCON_PSBR: TIBBCDField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'CON_PSBR'
      Origin = '"CAD_CON"."CON_PSBR"'
      DisplayFormat = '#,0.000'
      Precision = 18
      Size = 3
    end
    object cadastroCON_PSLQ: TIBBCDField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'CON_PSLQ'
      Origin = '"CAD_CON"."CON_PSLQ"'
      DisplayFormat = '#,0.000'
      Precision = 18
      Size = 3
    end
    object cadastroCON_VICMS: TIBBCDField
      FieldName = 'CON_VICMS'
      Origin = '"CAD_CON"."CON_VICMS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VIPI: TIBBCDField
      FieldName = 'CON_VIPI'
      Origin = '"CAD_CON"."CON_VIPI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VPIS: TIBBCDField
      FieldName = 'CON_VPIS'
      Origin = '"CAD_CON"."CON_VPIS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VCOFINS: TIBBCDField
      FieldName = 'CON_VCOFINS'
      Origin = '"CAD_CON"."CON_VCOFINS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VFRETE: TIBBCDField
      FieldName = 'CON_VFRETE'
      Origin = '"CAD_CON"."CON_VFRETE"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VDESP: TIBBCDField
      FieldName = 'CON_VDESP'
      Origin = '"CAD_CON"."CON_VDESP"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VII: TIBBCDField
      FieldName = 'CON_VII'
      Origin = '"CAD_CON"."CON_VII"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VEXTRA: TIBBCDField
      FieldName = 'CON_VEXTRA'
      Origin = '"CAD_CON"."CON_VEXTRA"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VLI: TIBBCDField
      FieldName = 'CON_VLI'
      Origin = '"CAD_CON"."CON_VLI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VMULTALI: TIBBCDField
      FieldName = 'CON_VMULTALI'
      Origin = '"CAD_CON"."CON_VMULTALI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VTRANSP: TIBBCDField
      FieldName = 'CON_VTRANSP'
      Origin = '"CAD_CON"."CON_VTRANSP"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VARMAZEN: TIBBCDField
      FieldName = 'CON_VARMAZEN'
      Origin = '"CAD_CON"."CON_VARMAZEN"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VHONO: TIBBCDField
      FieldName = 'CON_VHONO'
      Origin = '"CAD_CON"."CON_VHONO"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VOUTRO: TIBBCDField
      FieldName = 'CON_VOUTRO'
      Origin = '"CAD_CON"."CON_VOUTRO"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VCOL: TIBBCDField
      FieldName = 'CON_VCOL'
      Origin = '"CAD_CON"."CON_VCOL"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VCOP: TIBBCDField
      FieldName = 'CON_VCOP'
      Origin = '"CAD_CON"."CON_VCOP"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_OBSE: TMemoField
      FieldName = 'CON_OBSE'
      Origin = '"CAD_CON"."CON_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroCON_STA: TIBStringField
      FieldName = 'CON_STA'
      Origin = '"CAD_CON"."CON_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroCON_CEMP: TIntegerField
      FieldName = 'CON_CEMP'
      Origin = '"CAD_CON"."CON_CEMP"'
    end
    object cadastroPAR_FANT: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'PAR_FANT'
      Origin = '"PAR_SIS"."PAR_FANT"'
      Size = 40
    end
    object cadastroCON_VDUMP: TIBBCDField
      FieldName = 'CON_VDUMP'
      Origin = '"CAD_CON"."CON_VDUMP"'
      Precision = 18
      Size = 2
    end
  end
  inherited pEVE: TIBEvents
    Left = 296
  end
  inherited pSP: TIBStoredProc
    Left = 328
  end
end
