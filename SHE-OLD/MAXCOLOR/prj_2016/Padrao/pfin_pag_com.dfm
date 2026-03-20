inherited frmfin_pag_com: Tfrmfin_pag_com
  Caption = 'Pagamentos de Comiss'#245'es'
  ClientHeight = 600
  ClientWidth = 838
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlpesquisa: TPanel
    Width = 838
  end
  inherited sbMSG: TStatusBar
    Top = 581
    Width = 838
  end
  inherited SpeedBar1: TSpeedBar
    Height = 463
  end
  inherited dbgConsulta: TdxDBGrid
    Width = 802
    Height = 463
    KeyField = 'ID'
    Filter.Criteria = {00000000}
    object dbgConsultaFIN_TIPO: TdxDBGridPickColumn
      Width = 106
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FIN_TIPO'
      Items.Strings = (
        'VENDEDOR'
        'REPRESENTANTE')
    end
    object dbgConsultaFIN_DESC: TdxDBGridPickColumn
      Width = 142
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FIN_DESC'
    end
    object dbgConsultaFIN_FILT: TdxDBGridPickColumn
      Width = 86
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FIN_FILT'
      Items.Strings = (
        'FATURAMENTO'
        'PEDIDO')
    end
    object dbgConsultaFIN_PERC: TdxDBGridMaskColumn
      Width = 23
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FIN_PERC'
    end
    object dbgConsultaFIN_DAT1: TdxDBGridDateColumn
      Width = 64
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FIN_DAT1'
    end
    object dbgConsultaFIN_DAT2: TdxDBGridDateColumn
      Width = 64
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FIN_DAT2'
    end
    object dbgConsultaFIN_STCO: TdxDBGridPickColumn
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FIN_STCO'
      Items.Strings = (
        'PENDENTE'
        'PAGO'
        'CANCELADO')
    end
    object dbgConsultaFIN_DTCO: TdxDBGridDateColumn
      Width = 64
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FIN_DTCO'
    end
  end
  inherited SpeedBar2: TSpeedBar
    Width = 838
  end
  inherited cadastro: TIBDataSet
    SelectSQL.Strings = (
      'SELECT * FROM FIN_PAG_COC')
    Active = True
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_PAG_COC"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroFIN_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'FIN_TIPO'
      Origin = '"FIN_PAG_COC"."FIN_TIPO"'
    end
    object cadastroFIN_CODI: TIntegerField
      FieldName = 'FIN_CODI'
      Origin = '"FIN_PAG_COC"."FIN_CODI"'
    end
    object cadastroFIN_DESC: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'FIN_DESC'
      Origin = '"FIN_PAG_COC"."FIN_DESC"'
      Size = 40
    end
    object cadastroFIN_FILT: TIBStringField
      DisplayLabel = 'Filtro'
      FieldName = 'FIN_FILT'
      Origin = '"FIN_PAG_COC"."FIN_FILT"'
    end
    object cadastroFIN_DAT1: TDateField
      DisplayLabel = 'Dt Inicial'
      FieldName = 'FIN_DAT1'
      Origin = '"FIN_PAG_COC"."FIN_DAT1"'
    end
    object cadastroFIN_DAT2: TDateField
      DisplayLabel = 'Dt Final'
      FieldName = 'FIN_DAT2'
      Origin = '"FIN_PAG_COC"."FIN_DAT2"'
    end
    object cadastroFIN_STVE: TIBStringField
      FieldName = 'FIN_STVE'
      Origin = '"FIN_PAG_COC"."FIN_STVE"'
    end
    object cadastroFIN_PERC: TIBBCDField
      DisplayLabel = '%'
      FieldName = 'FIN_PERC'
      Origin = '"FIN_PAG_COC"."FIN_PERC"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object cadastroFIN_STCO: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'FIN_STCO'
      Origin = '"FIN_PAG_COC"."FIN_STCO"'
    end
    object cadastroFIN_DTCO: TDateField
      DisplayLabel = 'Dt Pagto'
      FieldName = 'FIN_DTCO'
      Origin = '"FIN_PAG_COC"."FIN_DTCO"'
    end
  end
  inherited ibTRA: TIBTransaction
    Active = True
  end
end
