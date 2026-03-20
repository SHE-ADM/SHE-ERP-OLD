inherited frmtab_epo: Tfrmtab_epo
  Left = 0
  Top = 143
  Caption = 'Local de Estoque'
  ClientWidth = 1008
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Width = 1008
  end
  inherited SpeedBar9: TSpeedBar
    Width = 1008
  end
  inherited pnldir: TPanel
    Left = 711
    Width = 297
    Visible = True
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 295
      Height = 401
      Align = alClient
      Caption = 'Imagem do Local'
      TabOrder = 0
      object imag: TImage
        Left = 2
        Top = 16
        Width = 291
        Height = 383
        Align = alClient
        Stretch = True
      end
    end
  end
  inherited pnlpri: TPanel
    Width = 711
    inherited pnldbg: TPanel
      Width = 709
      Height = 313
      inherited gbDET: TGroupBox
        Width = 707
        Height = 311
        inherited SpeedBar1: TSpeedBar
          Height = 293
        end
        inherited dbgConsulta: TdxDBGrid
          Width = 654
          Height = 293
          KeyField = 'ID'
          ShowSummaryFooter = True
          Filter.Criteria = {00000000}
          object dbgConsultaEPO_DESC: TdxDBGridMaskColumn
            Width = 144
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EPO_DESC'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
          end
          object dbgConsultaEPO_ANDA: TdxDBGridMaskColumn
            Width = 45
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EPO_ANDA'
          end
          object dbgConsultaEPO_SETO: TdxDBGridMaskColumn
            Width = 45
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EPO_SETO'
          end
          object dbgConsultaEPO_SALA: TdxDBGridMaskColumn
            Width = 45
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EPO_SALA'
          end
          object dbgConsultaEPO_BOX: TdxDBGridMaskColumn
            Width = 45
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EPO_BOX'
          end
          object dbgConsultaEPO_DPRI: TdxDBGridMaskColumn
            Width = 307
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EPO_DPRI'
          end
        end
      end
    end
    inherited pnlbot: TPanel
      Top = 314
      Width = 709
      Height = 88
      Visible = True
      object GroupBox2: TGroupBox
        Left = 1
        Top = 1
        Width = 707
        Height = 86
        Align = alClient
        Caption = 'Observa'#231#245'es'
        TabOrder = 0
        object dxDBMemo1: TdxDBMemo
          Left = 2
          Top = 16
          Width = 703
          Align = alClient
          Style.BorderStyle = xbsFlat
          Style.Shadow = True
          TabOrder = 0
          DataField = 'EPO_OBSE'
          DataSource = dtscadastro
          Height = 68
        end
      end
    end
  end
  inherited dtscadastro: TDataSource
    OnDataChange = dtscadastroDataChange
  end
  inherited cadastro: TIBQuery
    SQL.Strings = (
      'SELECT * FROM TAB_EPO')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_EPO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroEPO_DESC: TIBStringField
      DisplayLabel = 'Mapeamento'
      FieldName = 'EPO_DESC'
      Origin = '"TAB_EPO"."EPO_DESC"'
    end
    object cadastroEPO_ANDA: TIBStringField
      DisplayLabel = 'Andar'
      FieldName = 'EPO_ANDA'
      Origin = '"TAB_EPO"."EPO_ANDA"'
      Size = 10
    end
    object cadastroEPO_SETO: TIBStringField
      DisplayLabel = 'Setor'
      FieldName = 'EPO_SETO'
      Origin = '"TAB_EPO"."EPO_SETO"'
      Size = 10
    end
    object cadastroEPO_SALA: TIBStringField
      DisplayLabel = 'Sala'
      FieldName = 'EPO_SALA'
      Origin = '"TAB_EPO"."EPO_SALA"'
      Size = 10
    end
    object cadastroEPO_BOX: TIBStringField
      DisplayLabel = 'Box'
      FieldName = 'EPO_BOX'
      Origin = '"TAB_EPO"."EPO_BOX"'
      Size = 10
    end
    object cadastroEPO_DPRI: TIBStringField
      DisplayLabel = 'Impressora'
      FieldName = 'EPO_DPRI'
      Origin = '"TAB_EPO"."EPO_DPRI"'
      Size = 50
    end
    object cadastroEPO_OBSE: TMemoField
      FieldName = 'EPO_OBSE'
      Origin = '"TAB_EPO"."EPO_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroEPO_FOTO: TBlobField
      FieldName = 'EPO_FOTO'
      Origin = '"TAB_EPO"."EPO_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cadastroEPO_DUSU: TIBStringField
      FieldName = 'EPO_DUSU'
      Origin = '"TAB_EPO"."EPO_DUSU"'
      Size = 15
    end
  end
end
