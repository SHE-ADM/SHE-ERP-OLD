inherited frmtab_pag: Tfrmtab_pag
  Left = 191
  Top = 36
  Caption = 'Condi'#231#245'es de Pagamentos'
  ClientWidth = 791
  OldCreateOrder = True
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Width = 791
  end
  inherited SpeedBar2: TSpeedBar
    Width = 791
    inherited siEVE: TSpeedItem [4]
    end
    inherited siREF: TSpeedItem
      Left = 2
    end
    inherited siSAIR: TSpeedItem
      Left = 442
    end
    inherited siPSQ: TSpeedItem [7]
      Tag = 1
      Visible = False
    end
    inherited siREL: TSpeedItem
      Left = 332
    end
    inherited siLIXO: TSpeedItem [9]
      Left = 222
      OnClick = siLIXOClick
    end
  end
  inherited pnldir: TPanel
    Left = 791
  end
  inherited pnldbg: TPanel
    Width = 791
    inherited pnlbot: TPanel
      Width = 791
    end
    inherited gbDET: TGroupBox
      Width = 791
      inherited DBGConsulta: TdxDBGrid
        Width = 738
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Criteria = {00000000}
        object dbgConsultaPAG_DPAG: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 172
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PAG_DPAG'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object dbgConsultaPAG_D001: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PAG_D001'
        end
        object dbgConsultaPAG_D002: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PAG_D002'
        end
        object dbgConsultaPAG_D003: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PAG_D003'
        end
        object dbgConsultaPAG_D004: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PAG_D004'
        end
        object dbgConsultaPAG_D005: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PAG_D005'
        end
        object dbgConsultaPAG_D006: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PAG_D006'
        end
        object dbgConsultaPAG_D007: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PAG_D007'
        end
        object dbgConsultaPAG_D008: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PAG_D008'
        end
        object dbgConsultaPAG_D009: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PAG_D009'
        end
        object dbgConsultaPAG_D010: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PAG_D010'
        end
        object dbgConsultaPAG_PARC: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PAG_PARC'
        end
        object dbgConsultaPAG_PRAZ: TdxDBGridMaskColumn
          Caption = 'Total'
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PAG_PRAZ'
        end
        object dbgConsultaPAG_DUPL: TdxDBGridPickColumn
          CharCase = ecUpperCase
          HeaderAlignment = taCenter
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PAG_DUPL'
          Items.Strings = (
            'SIM'
            'N'#195'O')
        end
      end
    end
  end
  inherited Cadastro: TIBDataSet
    BeforePost = cadastroBeforePost
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from TAB_PAG'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_PAG'
      
        '  (ID, PAG_D001, PAG_D002, PAG_D003, PAG_D004, PAG_D005, PAG_D00' +
        '6, PAG_D007, '
      
        '   PAG_D008, PAG_D009, PAG_D010, PAG_DPAG, PAG_DUPL, PAG_PARC, P' +
        'AG_PRAZ, '
      '   PAG_STA)'
      'values'
      
        '  (:ID, :PAG_D001, :PAG_D002, :PAG_D003, :PAG_D004, :PAG_D005, :' +
        'PAG_D006, '
      
        '   :PAG_D007, :PAG_D008, :PAG_D009, :PAG_D010, :PAG_DPAG, :PAG_D' +
        'UPL, :PAG_PARC, '
      '   :PAG_PRAZ, :PAG_STA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  PAG_DPAG,'
      '  PAG_D001,'
      '  PAG_D002,'
      '  PAG_D003,'
      '  PAG_D004,'
      '  PAG_D005,'
      '  PAG_D006,'
      '  PAG_D007,'
      '  PAG_D008,'
      '  PAG_D009,'
      '  PAG_D010,'
      '  PAG_STA,'
      '  PAG_PARC,'
      '  PAG_DUPL,'
      '  PAG_PRAZ'
      'from TAB_PAG '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_PAG')
    ModifySQL.Strings = (
      'update TAB_PAG'
      'set'
      '  ID = :ID,'
      '  PAG_D001 = :PAG_D001,'
      '  PAG_D002 = :PAG_D002,'
      '  PAG_D003 = :PAG_D003,'
      '  PAG_D004 = :PAG_D004,'
      '  PAG_D005 = :PAG_D005,'
      '  PAG_D006 = :PAG_D006,'
      '  PAG_D007 = :PAG_D007,'
      '  PAG_D008 = :PAG_D008,'
      '  PAG_D009 = :PAG_D009,'
      '  PAG_D010 = :PAG_D010,'
      '  PAG_DPAG = :PAG_DPAG,'
      '  PAG_DUPL = :PAG_DUPL,'
      '  PAG_PARC = :PAG_PARC,'
      '  PAG_PRAZ = :PAG_PRAZ,'
      '  PAG_STA = :PAG_STA'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_PAG"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroPAG_DPAG: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PAG_DPAG'
      Origin = '"TAB_PAG"."PAG_DPAG"'
      Size = 50
    end
    object cadastroPAG_D001: TIntegerField
      DisplayLabel = 'Prz_1'
      FieldName = 'PAG_D001'
      Origin = '"TAB_PAG"."PAG_D001"'
    end
    object cadastroPAG_D002: TIntegerField
      DisplayLabel = 'Prz_2'
      FieldName = 'PAG_D002'
      Origin = '"TAB_PAG"."PAG_D002"'
    end
    object cadastroPAG_D003: TIntegerField
      DisplayLabel = 'Prz_3'
      FieldName = 'PAG_D003'
      Origin = '"TAB_PAG"."PAG_D003"'
    end
    object cadastroPAG_D004: TIntegerField
      DisplayLabel = 'Prz_4'
      FieldName = 'PAG_D004'
      Origin = '"TAB_PAG"."PAG_D004"'
    end
    object cadastroPAG_D005: TIntegerField
      DisplayLabel = 'Prz_5'
      FieldName = 'PAG_D005'
      Origin = '"TAB_PAG"."PAG_D005"'
    end
    object cadastroPAG_D006: TIntegerField
      DisplayLabel = 'Prz_6'
      FieldName = 'PAG_D006'
      Origin = '"TAB_PAG"."PAG_D006"'
    end
    object cadastroPAG_D007: TIntegerField
      DisplayLabel = 'Prz_7'
      FieldName = 'PAG_D007'
      Origin = '"TAB_PAG"."PAG_D007"'
    end
    object cadastroPAG_D008: TIntegerField
      DisplayLabel = 'Prz_8'
      FieldName = 'PAG_D008'
      Origin = '"TAB_PAG"."PAG_D008"'
    end
    object cadastroPAG_D009: TIntegerField
      DisplayLabel = 'Prz_9'
      FieldName = 'PAG_D009'
      Origin = '"TAB_PAG"."PAG_D009"'
    end
    object cadastroPAG_D010: TIntegerField
      DisplayLabel = 'Prz_10'
      FieldName = 'PAG_D010'
      Origin = '"TAB_PAG"."PAG_D010"'
    end
    object cadastroPAG_STA: TIBStringField
      FieldName = 'PAG_STA'
      Origin = '"TAB_PAG"."PAG_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroPAG_PARC: TSmallintField
      DisplayLabel = 'Parcelas'
      FieldName = 'PAG_PARC'
      Origin = '"TAB_PAG"."PAG_PARC"'
    end
    object cadastroPAG_DUPL: TIBStringField
      DisplayLabel = 'Duplicata'
      FieldName = 'PAG_DUPL'
      Origin = '"TAB_PAG"."PAG_DUPL"'
      Size = 3
    end
    object cadastroPAG_PRAZ: TSmallintField
      FieldName = 'PAG_PRAZ'
      Origin = '"TAB_PAG"."PAG_PRAZ"'
    end
  end
  inherited imageOPC: TImageList
    Left = 252
    Top = 206
  end
end
