inherited frmtab_ped: Tfrmtab_ped
  Left = 303
  Top = 108
  Caption = 'Tabela de Tipos de Pedidos'
  ClientHeight = 706
  ClientWidth = 1284
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Top = 687
    Width = 1284
  end
  inherited SBMenu: TSpeedBar
    Width = 1284
    inherited siREF: TSpeedItem [4]
    end
    inherited siPSQ: TSpeedItem [5]
      Visible = False
    end
    inherited siSAIR: TSpeedItem
      Left = 92
    end
    inherited siREL: TSpeedItem
      Visible = False
    end
  end
  inherited pnldir: TPanel
    Left = 1284
    Height = 611
  end
  inherited pnldbg: TPanel
    Width = 1284
    Height = 611
    inherited pnlbot: TPanel
      Top = 609
      Width = 1284
    end
    inherited gbDET: TGroupBox
      Width = 1284
      Height = 609
      inherited DBGConsulta: TdxDBGrid
        Width = 1236
        Height = 591
        HeaderMinRowCount = 2
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
        object dbgConsultaVEN_TIPO: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 144
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_TIPO'
        end
        object dbgConsultaVEN_STVE: TdxDBGridPickColumn
          CharCase = ecUpperCase
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_STVE'
        end
        object dbgConsultaVEN_DPAG: TdxDBGridPickColumn
          CharCase = ecUpperCase
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_DPAG'
        end
        object dbgConsultaVEN_CNA1: TdxDBGridMaskColumn
          Width = 52
          BandIndex = 0
          RowIndex = 0
          OnValidate = dbgConsultaVEN_CNA1Validate
          FieldName = 'VEN_CNA1'
        end
        object dbgConsultaVEN_CNA2: TdxDBGridMaskColumn
          Width = 52
          BandIndex = 0
          RowIndex = 0
          OnValidate = dbgConsultaVEN_CNA2Validate
          FieldName = 'VEN_CNA2'
        end
        object dbgConsultaVEN_PDSC: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          HeaderAlignment = taRightJustify
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_PDSC'
        end
        object dbgConsultaVEN_COMV: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          HeaderAlignment = taRightJustify
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_COMV'
        end
        object dbgConsultaVEN_COMR: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_COMR'
        end
        object dbgConsultaVEN_FATU: TdxDBGridCheckColumn
          CharCase = ecUpperCase
          Width = 57
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_FATU'
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbgConsultaVEN_QTSP: TdxDBGridCheckColumn
          CharCase = ecUpperCase
          Width = 65
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_QTSP'
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbgConsultaVEN_TINT: TdxDBGridCheckColumn
          CharCase = ecUpperCase
          Width = 59
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_TINT'
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbgConsultaVEN_BAIX: TdxDBGridCheckColumn
          CharCase = ecUpperCase
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_BAIX'
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbgConsultaVEN_BAIP: TdxDBGridCheckColumn
          CharCase = ecUpperCase
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_BAIP'
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbgConsultaVEN_NFEP: TdxDBGridCheckColumn
          CharCase = ecUpperCase
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_NFEP'
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbgConsultaVEN_AGRP: TdxDBGridCheckColumn
          CharCase = ecUpperCase
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_AGRP'
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbgConsultaVEN_AGRU: TdxDBGridCheckColumn
          CharCase = ecUpperCase
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_AGRU'
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbgConsultaVEN_BEST: TdxDBGridCheckColumn
          CharCase = ecUpperCase
          Width = 52
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_BEST'
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbgConsultaVEN_QTPC: TdxDBGridPickColumn
          CharCase = ecUpperCase
          Width = 72
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_QTPC'
          Items.Strings = (
            'QT'
            'PC')
        end
        object dbgConsultaVEN_TEST: TdxDBGridPickColumn
          CharCase = ecUpperCase
          Width = 79
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_TEST'
          Items.Strings = (
            'NORMAL'
            'DEFEITO')
        end
        object dbgConsultaVEN_PREC: TdxDBGridPickColumn
          CharCase = ecUpperCase
          Width = 214
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_PREC'
          Items.Strings = (
            'ATACADO - NORMAL'
            'ATACADO - PROMO'#199#195'O'
            'VAREJO - NORMAL'
            'VAREJO - PROMO'#199#195'O'
            'REPRESENTA'#199#195'O - NORMAL'
            'REPRESENTA'#199#195'O - PROMO'#199#195'O'
            'COMPRA'
            'CUSTO')
        end
        object dbgConsultaVEN_PTNG: TdxDBGridCheckColumn
          CharCase = ecUpperCase
          Width = 93
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_PTNG'
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbgConsultaVEN_DESC: TdxDBGridCheckColumn
          CharCase = ecUpperCase
          Width = 64
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_DESC'
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbgConsultaVEN_PACR: TdxDBGridCurrencyColumn
          CharCase = ecUpperCase
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_PACR'
          DisplayFormat = '0.00'
          Nullable = False
        end
        object dbgConsultaVEN_STA: TdxDBGridCheckColumn
          CharCase = ecUpperCase
          Width = 39
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_STA'
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      inherited SBEdicao: TSpeedBar
        Height = 591
      end
    end
  end
  inherited Cadastro: TIBDataSet
    AutoCalcFields = False
    BeforePost = cadastroBeforePost
    DeleteSQL.Strings = (
      'delete from TAB_PED'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_PED'
      
        '  (ID, VEN_AGRP, VEN_AGRU, VEN_BAIP, VEN_BAIX, VEN_BEST, VEN_CNA' +
        '1, VEN_CNA2, '
      
        '   VEN_COMR, VEN_COMV, VEN_DESC, VEN_DPAG, VEN_FATU, VEN_NFEP, V' +
        'EN_PACR, '
      
        '   VEN_PDSC, VEN_PREC, VEN_PTNG, VEN_QTPC, VEN_QTSP, VEN_STA, VE' +
        'N_STVE, '
      '   VEN_TEST, VEN_TINT, VEN_TIPO)'
      'values'
      
        '  (:ID, :VEN_AGRP, :VEN_AGRU, :VEN_BAIP, :VEN_BAIX, :VEN_BEST, :' +
        'VEN_CNA1, '
      
        '   :VEN_CNA2, :VEN_COMR, :VEN_COMV, :VEN_DESC, :VEN_DPAG, :VEN_F' +
        'ATU, :VEN_NFEP, '
      
        '   :VEN_PACR, :VEN_PDSC, :VEN_PREC, :VEN_PTNG, :VEN_QTPC, :VEN_Q' +
        'TSP, :VEN_STA, '
      '   :VEN_STVE, :VEN_TEST, :VEN_TINT, :VEN_TIPO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  VEN_TIPO,'
      '  VEN_FATU,'
      '  VEN_COMV,'
      '  VEN_COMR,'
      '  VEN_PDSC,'
      '  VEN_STVE,'
      '  VEN_DPAG,'
      '  VEN_PREC,'
      '  VEN_QTSP,'
      '  VEN_QTPC,'
      '  VEN_BAIX,'
      '  VEN_BAIP,'
      '  VEN_NFEP,'
      '  VEN_AGRU,'
      '  VEN_TINT,'
      '  VEN_AGRP,'
      '  VEN_STA,'
      '  VEN_BEST,'
      '  VEN_TEST,'
      '  VEN_PACR,'
      '  VEN_DESC,'
      '  VEN_PTNG,'
      '  VEN_CNA1,'
      '  VEN_CNA2'
      'from TAB_PED '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_PED')
    ModifySQL.Strings = (
      'update TAB_PED'
      'set'
      '  ID = :ID,'
      '  VEN_AGRP = :VEN_AGRP,'
      '  VEN_AGRU = :VEN_AGRU,'
      '  VEN_BAIP = :VEN_BAIP,'
      '  VEN_BAIX = :VEN_BAIX,'
      '  VEN_BEST = :VEN_BEST,'
      '  VEN_CNA1 = :VEN_CNA1,'
      '  VEN_CNA2 = :VEN_CNA2,'
      '  VEN_COMR = :VEN_COMR,'
      '  VEN_COMV = :VEN_COMV,'
      '  VEN_DESC = :VEN_DESC,'
      '  VEN_DPAG = :VEN_DPAG,'
      '  VEN_FATU = :VEN_FATU,'
      '  VEN_NFEP = :VEN_NFEP,'
      '  VEN_PACR = :VEN_PACR,'
      '  VEN_PDSC = :VEN_PDSC,'
      '  VEN_PREC = :VEN_PREC,'
      '  VEN_PTNG = :VEN_PTNG,'
      '  VEN_QTPC = :VEN_QTPC,'
      '  VEN_QTSP = :VEN_QTSP,'
      '  VEN_STA = :VEN_STA,'
      '  VEN_STVE = :VEN_STVE,'
      '  VEN_TEST = :VEN_TEST,'
      '  VEN_TINT = :VEN_TINT,'
      '  VEN_TIPO = :VEN_TIPO'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_ROM"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroVEN_TIPO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'VEN_TIPO'
      Origin = '"TAB_ROM"."VEN_TIPO"'
    end
    object cadastroVEN_FATU: TIBStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldName = 'VEN_FATU'
      Origin = '"TAB_ROM"."VEN_FATU"'
      FixedChar = True
      Size = 1
    end
    object cadastroVEN_COMV: TIBBCDField
      DisplayLabel = 'Comiss'#227'o Vendedor'
      FieldName = 'VEN_COMV'
      Origin = '"TAB_ROM"."VEN_COMV"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object cadastroVEN_COMR: TIBBCDField
      DisplayLabel = 'Comiss'#227'o Representante'
      FieldName = 'VEN_COMR'
      Origin = '"TAB_ROM"."VEN_COMR"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object cadastroVEN_PDSC: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'VEN_PDSC'
      Origin = '"TAB_ROM"."VEN_PDSC"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object cadastroVEN_STVE: TIBStringField
      DisplayLabel = 'Tipo Cobran'#231'a'
      FieldName = 'VEN_STVE'
      Origin = '"TAB_ROM"."VEN_STVE"'
    end
    object cadastroVEN_DPAG: TIBStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'VEN_DPAG'
      Origin = '"TAB_ROM"."VEN_DPAG"'
      Size = 50
    end
    object cadastroVEN_QTPC: TIBStringField
      DisplayLabel = 'Quantidade ou Pe'#231'a'
      FieldName = 'VEN_QTPC'
      Origin = '"TAB_PED"."VEN_QTPC"'
      FixedChar = True
      Size = 2
    end
    object cadastroVEN_QTSP: TIBStringField
      DisplayLabel = 'Separa'#231#227'o'
      FieldName = 'VEN_QTSP'
      Origin = '"TAB_PED"."VEN_QTSP"'
      FixedChar = True
      Size = 1
    end
    object cadastroVEN_PREC: TIBStringField
      DisplayLabel = 'Tipo de Pre'#231'o'
      FieldName = 'VEN_PREC'
      Origin = '"TAB_PED"."VEN_PREC"'
      Size = 30
    end
    object cadastroVEN_BAIX: TIBStringField
      DisplayLabel = 'Baixar na NF'
      FieldName = 'VEN_BAIX'
      Origin = '"TAB_PED"."VEN_BAIX"'
      FixedChar = True
      Size = 1
    end
    object cadastroVEN_BAIP: TIBStringField
      DisplayLabel = 'Baixa no Pedido'
      FieldName = 'VEN_BAIP'
      Origin = '"TAB_PED"."VEN_BAIP"'
      FixedChar = True
      Size = 1
    end
    object cadastroVEN_NFEP: TIBStringField
      DisplayLabel = 'NF no Pedido'
      FieldName = 'VEN_NFEP'
      Origin = '"TAB_PED"."VEN_NFEP"'
      FixedChar = True
      Size = 1
    end
    object cadastroVEN_AGRU: TIBStringField
      DisplayLabel = 'Agrupa NF'
      FieldName = 'VEN_AGRU'
      Origin = '"TAB_PED"."VEN_AGRU"'
      FixedChar = True
      Size = 1
    end
    object cadastroVEN_TINT: TIBStringField
      DisplayLabel = 'Tinturaria'
      FieldName = 'VEN_TINT'
      Origin = '"TAB_PED"."VEN_TINT"'
      FixedChar = True
      Size = 1
    end
    object cadastroVEN_AGRP: TIBStringField
      DisplayLabel = 'Agrupa Pedido'
      FieldName = 'VEN_AGRP'
      Origin = '"TAB_PED"."VEN_AGRP"'
      FixedChar = True
      Size = 1
    end
    object cadastroVEN_STA: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'VEN_STA'
      Origin = '"TAB_PED"."VEN_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroVEN_BEST: TIBStringField
      DisplayLabel = 'Baixar Estoque'
      FieldName = 'VEN_BEST'
      Origin = '"TAB_PED"."VEN_BEST"'
      FixedChar = True
      Size = 1
    end
    object cadastroVEN_TEST: TIBStringField
      DisplayLabel = 'Tipo Estoque'
      FieldName = 'VEN_TEST'
      Origin = '"TAB_PED"."VEN_TEST"'
      Size = 10
    end
    object cadastroVEN_PTNG: TIBStringField
      DisplayLabel = 'Alterar Pre'#231'o Apenas Tingido'
      FieldName = 'VEN_PTNG'
      Origin = '"TAB_PED"."VEN_PTNG"'
      FixedChar = True
      Size = 1
    end
    object cadastroVEN_DESC: TIBStringField
      DisplayLabel = 'Permite Desconto'
      FieldName = 'VEN_DESC'
      Origin = '"TAB_PED"."VEN_DESC"'
      FixedChar = True
      Size = 1
    end
    object cadastroVEN_PACR: TIBBCDField
      DisplayLabel = '% Acr'#233'simo no Pre'#231'o Unit'#225'rio'
      FieldName = 'VEN_PACR'
      Origin = '"TAB_PED"."VEN_PACR"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object cadastroVEN_CNA1: TIBStringField
      DisplayLabel = 'C.F.O.P. Dentro UF'
      FieldName = 'VEN_CNA1'
      Origin = '"TAB_PED"."VEN_CNA1"'
      Size = 10
    end
    object cadastroVEN_CNA2: TIBStringField
      DisplayLabel = 'C.F.O.P. Fora UF'
      FieldName = 'VEN_CNA2'
      Origin = '"TAB_PED"."VEN_CNA2"'
      Size = 10
    end
  end
end
