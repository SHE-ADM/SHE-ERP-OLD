inherited frmlog_eve: Tfrmlog_eve
  Left = 223
  Top = 60
  Caption = 'Log de Eventos'
  ClientHeight = 582
  ClientWidth = 946
  OldCreateOrder = True
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Top = 563
    Width = 946
  end
  inherited SpeedBar9: TSpeedBar
    Width = 946
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
    end
  end
  inherited pnldir: TPanel
    Left = 946
    Height = 449
  end
  inherited pnlpri: TPanel
    Width = 946
    Height = 449
    inherited pnldbg: TPanel
      Width = 944
      Height = 213
      inherited gbDET: TGroupBox
        Width = 942
        Height = 211
        inherited SpeedBar1: TSpeedBar
          Height = 193
          Visible = False
        end
        inherited dbgConsulta: TdxDBGrid
          Width = 889
          Height = 193
          KeyField = 'ID'
          ShowGroupPanel = True
          ShowSummaryFooter = True
          SummaryGroups = <
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  ColumnName = 'dbgConsultaPAR_FANT'
                  SummaryField = 'ID'
                  SummaryFormat = '0'
                  SummaryType = cstCount
                end>
              Name = 'dbgConsultaSummaryGroup1'
            end>
          Filter.Active = True
          Filter.Criteria = {00000000}
          ShowRowFooter = True
          object dbgConsultaPAR_FANT: TdxDBGridMaskColumn
            Width = 140
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PAR_FANT'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
            SummaryGroupName = 'dbgConsultaSummaryGroup1'
          end
          object dbgConsultaEVE_DEVE: TdxDBGridDateColumn
            Width = 130
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EVE_DEVE'
            SummaryGroupName = 'dbgConsultaSummaryGroup1'
          end
          object dbgConsultaEVE_DLOG: TdxDBGridMaskColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EVE_DLOG'
            SummaryGroupName = 'dbgConsultaSummaryGroup1'
          end
          object dbgConsultaEVE_IP: TdxDBGridMaskColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EVE_IP'
            SummaryGroupName = 'dbgConsultaSummaryGroup1'
          end
          object dbgConsultaEVE_ROTI: TdxDBGridMaskColumn
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EVE_ROTI'
            SummaryGroupName = 'dbgConsultaSummaryGroup1'
          end
          object dbgConsultaEVE_EVEN: TdxDBGridMaskColumn
            Width = 180
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EVE_EVEN'
            SummaryGroupName = 'dbgConsultaSummaryGroup1'
          end
          object dbgConsultaEVE_CODI: TdxDBGridMaskColumn
            Width = 91
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EVE_CODI'
            SummaryGroupName = 'dbgConsultaSummaryGroup1'
          end
          object dbgConsultaEVE_DESC: TdxDBGridMaskColumn
            Width = 250
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EVE_DESC'
            SummaryGroupName = 'dbgConsultaSummaryGroup1'
          end
        end
      end
    end
    inherited pnlbot: TPanel
      Top = 214
      Width = 944
      Height = 234
      Visible = True
      object Bevel1: TBevel
        Left = 1
        Top = 1
        Width = 671
        Height = 232
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
        Left = 128
        Top = 8
        Width = 52
        Height = 14
        AutoSize = True
        DataField = 'ID'
        DataSource = dtscadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 24
        Width = 46
        Height = 14
        Caption = 'Empresa'
      end
      object DBText2: TDBText
        Left = 128
        Top = 24
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
      object Label3: TLabel
        Left = 8
        Top = 40
        Width = 25
        Height = 14
        Caption = 'Data'
      end
      object DBText3: TDBText
        Left = 128
        Top = 40
        Width = 52
        Height = 14
        AutoSize = True
        DataField = 'EVE_DEVE'
        DataSource = dtscadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 56
        Width = 39
        Height = 14
        Caption = 'Usu'#225'rio'
      end
      object DBText4: TDBText
        Left = 128
        Top = 56
        Width = 52
        Height = 14
        AutoSize = True
        DataField = 'EVE_DLOG'
        DataSource = dtscadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laauto: TLabel
        Left = 8
        Top = 168
        Width = 109
        Height = 14
        Caption = 'Tipo de Autoriza'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dbauto: TDBText
        Left = 128
        Top = 168
        Width = 45
        Height = 14
        AutoSize = True
        DataField = 'EVE_TAUT'
        DataSource = dtscadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 8
        Top = 72
        Width = 11
        Height = 14
        Caption = 'IP'
      end
      object DBText6: TDBText
        Left = 128
        Top = 72
        Width = 52
        Height = 14
        AutoSize = True
        DataField = 'EVE_IP'
        DataSource = dtscadastro
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
        Width = 39
        Height = 14
        Caption = 'Fun'#231#227'o'
      end
      object DBText7: TDBText
        Left = 128
        Top = 88
        Width = 52
        Height = 14
        AutoSize = True
        DataField = 'EVE_FUNC'
        DataSource = dtscadastro
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
        Width = 34
        Height = 14
        Caption = 'Rotina'
      end
      object DBText8: TDBText
        Left = 128
        Top = 104
        Width = 52
        Height = 14
        AutoSize = True
        DataField = 'EVE_ROTI'
        DataSource = dtscadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 8
        Top = 120
        Width = 39
        Height = 14
        Caption = 'Evento'
      end
      object DBText9: TDBText
        Left = 128
        Top = 120
        Width = 52
        Height = 14
        AutoSize = True
        DataField = 'EVE_EVEN'
        DataSource = dtscadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 8
        Top = 136
        Width = 37
        Height = 14
        Caption = 'C'#243'digo'
      end
      object DBText10: TDBText
        Left = 128
        Top = 136
        Width = 60
        Height = 14
        AutoSize = True
        DataField = 'EVE_CODI'
        DataSource = dtscadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 8
        Top = 152
        Width = 51
        Height = 14
        Caption = 'Descri'#231#227'o'
      end
      object DBText11: TDBText
        Left = 128
        Top = 152
        Width = 60
        Height = 14
        AutoSize = True
        DataField = 'EVE_DESC'
        DataSource = dtscadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtaut: TDBText
        Left = 128
        Top = 184
        Width = 43
        Height = 14
        AutoSize = True
        DataField = 'EVE_AUTO'
        DataSource = dtscadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lataut: TLabel
        Left = 8
        Top = 184
        Width = 99
        Height = 14
        Caption = 'Quem Autorizou ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox1: TGroupBox
        Left = 672
        Top = 1
        Width = 271
        Height = 232
        Align = alRight
        Caption = 'Imagem do Usu'#225'rio'
        TabOrder = 0
        object writeFoto: TImage
          Left = 2
          Top = 16
          Width = 267
          Height = 214
          Align = alClient
          Stretch = True
        end
      end
    end
  end
  inherited dtscadastro: TDataSource
    OnDataChange = dtscadastroDataChange
  end
  inherited cadastro: TIBQuery
    SQL.Strings = (
      'SELECT LOG_EVE.*,PAR_SIS.PAR_FANT,CAD_FUN.FUN_FOTO'
      'FROM   LOG_EVE,PAR_SIS,CAD_FUN'
      'WHERE  LOG_EVE.EVE_CDEP = PAR_SIS.ID'
      'AND    LOG_EVE.EVE_CLOG = CAD_FUN.ID'
      'AND    LOG_EVE.ID = 0')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"LOG_EVE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroEVE_DEVE: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'EVE_DEVE'
      Origin = '"LOG_EVE"."EVE_DEVE"'
    end
    object cadastroEVE_CDEP: TIntegerField
      FieldName = 'EVE_CDEP'
      Origin = '"LOG_EVE"."EVE_CDEP"'
    end
    object cadastroPAR_FANT: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'PAR_FANT'
      Origin = '"PAR_SIS"."PAR_FANT"'
      Size = 40
    end
    object cadastroEVE_CLOG: TIntegerField
      FieldName = 'EVE_CLOG'
      Origin = '"LOG_EVE"."EVE_CLOG"'
    end
    object cadastroEVE_DLOG: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'EVE_DLOG'
      Origin = '"LOG_EVE"."EVE_DLOG"'
      Size = 15
    end
    object cadastroEVE_AUTO: TIBStringField
      FieldName = 'EVE_AUTO'
      Origin = '"LOG_EVE"."EVE_AUTO"'
      Size = 15
    end
    object cadastroEVE_IP: TIBStringField
      DisplayLabel = 'IP'
      FieldName = 'EVE_IP'
      Origin = '"LOG_EVE"."EVE_IP"'
    end
    object cadastroEVE_FUNC: TIBStringField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'EVE_FUNC'
      Origin = '"LOG_EVE"."EVE_FUNC"'
      Size = 30
    end
    object cadastroEVE_ROTI: TIBStringField
      DisplayLabel = 'Rotina'
      FieldName = 'EVE_ROTI'
      Origin = '"LOG_EVE"."EVE_ROTI"'
      Size = 60
    end
    object cadastroEVE_EVEN: TIBStringField
      DisplayLabel = 'Evento'
      FieldName = 'EVE_EVEN'
      Origin = '"LOG_EVE"."EVE_EVEN"'
      Size = 60
    end
    object cadastroEVE_CODI: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EVE_CODI'
      Origin = '"LOG_EVE"."EVE_CODI"'
    end
    object cadastroEVE_DESC: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'EVE_DESC'
      Origin = '"LOG_EVE"."EVE_DESC"'
      Size = 120
    end
    object cadastroFUN_FOTO: TBlobField
      FieldName = 'FUN_FOTO'
      Origin = '"CAD_FUN"."FUN_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cadastroEVE_CEVE: TIBStringField
      FieldName = 'EVE_CEVE'
      Origin = '"LOG_EVE"."EVE_CEVE"'
    end
    object cadastroEVE_TAUT: TIBStringField
      FieldName = 'EVE_TAUT'
      Origin = '"LOG_EVE"."EVE_TAUT"'
      Size = 60
    end
  end
end
