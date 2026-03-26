inherited frmfin_cfn: Tfrmfin_cfn
  Left = 393
  Top = 41
  Caption = 'Calculadora Financeira'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited SpeedBar2: TSpeedBar
    inherited siPSQ: TSpeedItem
      Visible = False
    end
    inherited siREF: TSpeedItem
      Visible = False
    end
    inherited siSAIR: TSpeedItem
      Left = 112
    end
    inherited siLIXO: TSpeedItem
      Visible = False
    end
    inherited siREL: TSpeedItem
      Visible = False
    end
    inherited siEVE: TSpeedItem
      Visible = False
    end
    object siLIM: TSpeedItem
      BtnCaption = 'Limpar'
      Hint = 'Exclui todos os lan'#231'amentos'
      ImageIndex = 0
      Spacing = 1
      Left = 2
      Top = 2
      Visible = True
      OnClick = siLIMClick
      SectionName = 'Movimento'
    end
  end
  inherited pnldbg: TPanel
    inherited pnlbot: TPanel
      Top = 314
      Height = 82
      Visible = True
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 664
        Height = 82
        Align = alClient
        Caption = 'Sum'#225'rio'
        TabOrder = 0
        object Label5: TLabel
          Left = 23
          Top = 29
          Width = 79
          Height = 14
          Caption = 'Total Cheques'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edmpond: TLabel
          Left = 23
          Top = 52
          Width = 93
          Height = 14
          Caption = 'M'#233'dia Ponderada'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edtchq: TdxEdit
          Tag = 1
          Left = 126
          Top = 24
          Width = 91
          Hint = 'Nome Fantasia'
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          Style.Shadow = False
          TabOrder = 0
          Alignment = taRightJustify
          CharCase = ecUpperCase
          MaxLength = 60
          StoredValues = 3
        end
        object edvpon: TdxEdit
          Tag = 1
          Left = 126
          Top = 47
          Width = 91
          Hint = 'Nome Fantasia'
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          Style.Shadow = False
          TabOrder = 1
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          MaxLength = 60
          StoredValues = 3
        end
      end
    end
    inherited gbDET: TGroupBox
      Height = 314
      inherited DBGConsulta: TdxDBGrid
        Height = 296
        KeyField = 'ID'
        Filter.Criteria = {00000000}
        object dbgConsultaFIN_DATA: TdxDBGridDateColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_DATA'
          UseEditMask = True
        end
        object dbgConsultaFIN_VALO: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_VALO'
        end
      end
      inherited SpeedBar1: TSpeedBar
        Height = 296
      end
    end
  end
  inherited Consulta: TIBQuery
    Database = dmDADOS.bSHEILD
  end
  inherited Cadastro: TIBDataSet
    Database = dmDADOS.bSHEILD
    BeforeInsert = CadastroBeforeEdit
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from FIN_CFN'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into FIN_CFN'
      '  (FIN_DATA, FIN_VALO, ID)'
      'values'
      '  (:FIN_DATA, :FIN_VALO, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  FIN_DATA,'
      '  FIN_VALO'
      'from FIN_CFN '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM FIN_CFN')
    ModifySQL.Strings = (
      'update FIN_CFN'
      'set'
      '  FIN_DATA = :FIN_DATA,'
      '  FIN_VALO = :FIN_VALO,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_CFN"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroFIN_DATA: TDateField
      DisplayLabel = 'Data Vencto'
      FieldName = 'FIN_DATA'
      Origin = '"FIN_CFN"."FIN_DATA"'
    end
    object cadastroFIN_VALO: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'FIN_VALO'
      Origin = '"FIN_CFN"."FIN_VALO"'
      Precision = 18
      Size = 2
    end
  end
  inherited IBTra: TIBTransaction
    DefaultDatabase = dmDADOS.bSHEILD
  end
end
