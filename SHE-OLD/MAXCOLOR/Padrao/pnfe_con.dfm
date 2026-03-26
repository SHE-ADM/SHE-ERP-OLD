inherited frmnfe_con: Tfrmnfe_con
  Top = 113
  Caption = 'Consulta de Nota Fiscal'
  ClientHeight = 561
  ClientWidth = 564
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlcadastro: TPanel
    Width = 564
    Height = 428
    inherited PaintBox: TPaintBox
      Top = 89
      Width = 564
      Height = 339
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 564
      Height = 89
      Align = alTop
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 4
        Top = 21
        Width = 68
        Height = 14
        Caption = 'N'#250'mero NFe'
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
      object edcdnf: TdxEdit
        Tag = 1
        Left = 80
        Top = 16
        Width = 75
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 0
        AutoSize = False
        CharCase = ecUpperCase
        OnValidate = edcdnfValidate
        Height = 24
      end
      object Button1: TButton
        Left = 16
        Top = 48
        Width = 75
        Height = 25
        Caption = 'Processar'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 89
      Width = 564
      Height = 339
      Align = alClient
      Caption = 'Sum'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label2: TLabel
        Left = 4
        Top = 93
        Width = 42
        Height = 14
        Caption = 'Emiss'#227'o'
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
      object Label3: TLabel
        Left = 4
        Top = 141
        Width = 58
        Height = 14
        Caption = 'Favorecido'
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
      object Label4: TLabel
        Left = 4
        Top = 165
        Width = 54
        Height = 14
        Caption = 'Vendedor'
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
      object Label5: TLabel
        Left = 4
        Top = 189
        Width = 81
        Height = 14
        Caption = 'Representante'
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
      object Label6: TLabel
        Left = 4
        Top = 213
        Width = 83
        Height = 14
        Caption = 'Transportadora'
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
      object Label8: TLabel
        Left = 4
        Top = 237
        Width = 41
        Height = 14
        Caption = 'Volume'
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
      object Label9: TLabel
        Left = 4
        Top = 261
        Width = 63
        Height = 14
        Caption = 'Quantidade'
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
      object Label10: TLabel
        Left = 4
        Top = 285
        Width = 41
        Height = 14
        Caption = 'Peso Br'
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
      object Label11: TLabel
        Left = 4
        Top = 309
        Width = 43
        Height = 14
        Caption = 'Peso Lq'
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
      object Label12: TLabel
        Left = 4
        Top = 69
        Width = 40
        Height = 14
        Caption = 'Emissor'
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
      object Label7: TLabel
        Left = 4
        Top = 117
        Width = 52
        Height = 14
        Caption = 'Opera'#231#227'o'
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
      object Label13: TLabel
        Left = 4
        Top = 21
        Width = 35
        Height = 14
        Caption = 'Status'
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
      object Label14: TLabel
        Left = 4
        Top = 45
        Width = 93
        Height = 14
        Caption = 'Chave de Acesso'
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
      object dxDBEdit1: TdxDBEdit
        Left = 112
        Top = 88
        Width = 80
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsDefault
        Style.Shadow = True
        TabOrder = 0
        DataField = 'NFE_DEMI'
        DataSource = dtsconsulta
      end
      object dxDBEdit2: TdxDBEdit
        Left = 112
        Top = 136
        Width = 80
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsDefault
        Style.Shadow = True
        TabOrder = 1
        DataField = 'NFE_CFAV'
        DataSource = dtsconsulta
      end
      object dxDBEdit3: TdxDBEdit
        Left = 192
        Top = 136
        Width = 369
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsDefault
        Style.Shadow = True
        TabOrder = 2
        DataField = 'NFE_DFAV'
        DataSource = dtsconsulta
      end
      object dxDBEdit4: TdxDBEdit
        Left = 192
        Top = 160
        Width = 369
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsDefault
        Style.Shadow = True
        TabOrder = 3
        DataField = 'NFE_DVEN'
        DataSource = dtsconsulta
      end
      object dxDBEdit5: TdxDBEdit
        Left = 112
        Top = 160
        Width = 80
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsDefault
        Style.Shadow = True
        TabOrder = 4
        DataField = 'NFE_CREP'
        DataSource = dtsconsulta
      end
      object dxDBEdit6: TdxDBEdit
        Left = 192
        Top = 184
        Width = 369
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsDefault
        Style.Shadow = True
        TabOrder = 5
        DataField = 'NFE_DREP'
        DataSource = dtsconsulta
      end
      object dxDBEdit7: TdxDBEdit
        Left = 112
        Top = 184
        Width = 80
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsDefault
        Style.Shadow = True
        TabOrder = 6
        DataField = 'NFE_CREP'
        DataSource = dtsconsulta
      end
      object dxDBEdit8: TdxDBEdit
        Left = 192
        Top = 208
        Width = 369
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsDefault
        Style.Shadow = True
        TabOrder = 7
        DataField = 'TRA_FANT'
        DataSource = dtsconsulta
      end
      object dxDBEdit9: TdxDBEdit
        Left = 112
        Top = 208
        Width = 80
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsDefault
        Style.Shadow = True
        TabOrder = 8
        DataField = 'ID'
        DataSource = dtsconsulta
      end
      object dxDBEdit12: TdxDBEdit
        Left = 112
        Top = 232
        Width = 80
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsDefault
        Style.Shadow = True
        TabOrder = 9
        DataField = 'NFE_ESP'
        DataSource = dtsconsulta
      end
      object dxDBEdit13: TdxDBEdit
        Left = 112
        Top = 256
        Width = 80
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsDefault
        Style.Shadow = True
        TabOrder = 10
        DataField = 'NFE_QVOL'
        DataSource = dtsconsulta
      end
      object dxDBEdit14: TdxDBEdit
        Left = 112
        Top = 280
        Width = 80
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsDefault
        Style.Shadow = True
        TabOrder = 11
        DataField = 'NFE_PSLQ'
        DataSource = dtsconsulta
      end
      object dxDBEdit15: TdxDBEdit
        Left = 112
        Top = 304
        Width = 80
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsDefault
        Style.Shadow = True
        TabOrder = 12
        DataField = 'NFE_PSLQ'
        DataSource = dtsconsulta
      end
      object dxDBEdit11: TdxDBEdit
        Left = 112
        Top = 112
        Width = 80
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsDefault
        Style.Shadow = True
        TabOrder = 13
        DataField = 'NAT_OPER'
        DataSource = dtsconsulta
      end
      object dxDBEdit10: TdxDBEdit
        Left = 192
        Top = 112
        Width = 369
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsDefault
        Style.Shadow = True
        TabOrder = 14
        DataField = 'NAT_TIPO'
        DataSource = dtsconsulta
      end
      object edsta: TdxEdit
        Tag = 1
        Left = 112
        Top = 16
        Width = 75
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 15
        AutoSize = False
        CharCase = ecUpperCase
        OnValidate = edcdnfValidate
        Height = 24
      end
      object dxDBEdit16: TdxDBEdit
        Left = 112
        Top = 64
        Width = 449
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsDefault
        Style.Shadow = True
        TabOrder = 16
        DataField = 'PAR_FANT'
        DataSource = dtsconsulta
      end
      object edchav: TdxEdit
        Tag = 1
        Left = 112
        Top = 40
        Width = 449
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 17
        AutoSize = False
        CharCase = ecUpperCase
        OnValidate = edcdnfValidate
        Height = 24
      end
    end
  end
  inherited sbMSG: TStatusBar
    Top = 542
    Width = 564
  end
  inherited SpeedBar2: TSpeedBar
    Width = 564
    inherited siVAL: TSpeedItem [4]
    end
    inherited siSAIR: TSpeedItem [5]
      Left = 2
    end
    inherited siSAV: TSpeedItem [6]
      Visible = False
    end
    inherited siCAN: TSpeedItem [7]
      Visible = False
    end
  end
  inherited Consulta: TIBQuery
    AfterOpen = consultaAfterOpen
    SQL.Strings = (
      
        'SELECT PAR_FANT,NFE_DEMI,NFE_CFAV,NFE_DFAV,NFE_CVEN,NFE_DVEN,NFE' +
        '_CREP,NFE_DREP,CAD_TRA.ID,CAD_TRA.TRA_FANT,NFE_ESP,NFE_QVOL,NFE_' +
        'PSBR,NFE_PSLQ,NAT_OPER,NAT_TIPO,NFE_STA,NFE_CHAV'
      'FROM   NFE_CAB,NFE_TRA,PAR_SIS,CAD_TRA,TAB_NAT'
      'WHERE  PAR_SIS.ID = 1'
      'AND    NFE_TRA.NFE_CCAB = NFE_CAB.ID'
      'AND    CAD_TRA.ID = NFE_TRA.NFE_CTRA'
      'AND    NFE_CNAT = TAB_NAT.NAT_CNAT'
      'AND    NFE_CDNF = 25284')
    object consultaPAR_FANT: TIBStringField
      FieldName = 'PAR_FANT'
      Origin = '"PAR_SIS"."PAR_FANT"'
      Size = 40
    end
    object consultaNFE_DEMI: TDateField
      FieldName = 'NFE_DEMI'
      Origin = '"NFE_CAB"."NFE_DEMI"'
    end
    object consultaNFE_CFAV: TIntegerField
      FieldName = 'NFE_CFAV'
      Origin = '"NFE_CAB"."NFE_CFAV"'
    end
    object consultaNFE_DFAV: TIBStringField
      FieldName = 'NFE_DFAV'
      Origin = '"NFE_CAB"."NFE_DFAV"'
      Size = 60
    end
    object consultaNFE_CVEN: TIntegerField
      FieldName = 'NFE_CVEN'
      Origin = '"NFE_CAB"."NFE_CVEN"'
    end
    object consultaNFE_DVEN: TIBStringField
      FieldName = 'NFE_DVEN'
      Origin = '"NFE_CAB"."NFE_DVEN"'
      Size = 30
    end
    object consultaNFE_CREP: TIntegerField
      FieldName = 'NFE_CREP'
      Origin = '"NFE_CAB"."NFE_CREP"'
    end
    object consultaNFE_DREP: TIBStringField
      FieldName = 'NFE_DREP'
      Origin = '"NFE_CAB"."NFE_DREP"'
      Size = 40
    end
    object consultaID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_TRA"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object consultaTRA_FANT: TIBStringField
      FieldName = 'TRA_FANT'
      Origin = '"CAD_TRA"."TRA_FANT"'
      Size = 40
    end
    object consultaNFE_ESP: TIBStringField
      FieldName = 'NFE_ESP'
      Origin = '"NFE_TRA"."NFE_ESP"'
      Size = 60
    end
    object consultaNFE_QVOL: TSmallintField
      FieldName = 'NFE_QVOL'
      Origin = '"NFE_TRA"."NFE_QVOL"'
    end
    object consultaNFE_PSBR: TIBBCDField
      FieldName = 'NFE_PSBR'
      Origin = '"NFE_TRA"."NFE_PSBR"'
      Precision = 18
      Size = 3
    end
    object consultaNFE_PSLQ: TIBBCDField
      FieldName = 'NFE_PSLQ'
      Origin = '"NFE_TRA"."NFE_PSLQ"'
      Precision = 18
      Size = 3
    end
    object consultaNAT_OPER: TIBStringField
      FieldName = 'NAT_OPER'
      Origin = '"TAB_NAT"."NAT_OPER"'
      Size = 10
    end
    object consultaNAT_TIPO: TIBStringField
      FieldName = 'NAT_TIPO'
      Origin = '"TAB_NAT"."NAT_TIPO"'
    end
    object consultaNFE_STA: TIBStringField
      FieldName = 'NFE_STA'
      Origin = '"NFE_CAB"."NFE_STA"'
      FixedChar = True
      Size = 1
    end
    object consultaNFE_CHAV: TIBStringField
      FieldName = 'NFE_CHAV'
      Origin = '"NFE_CAB"."NFE_CHAV"'
      Size = 44
    end
  end
  inherited imageOPC: TImageList
    Left = 564
    Top = 94
  end
  inherited imageITEM: TImageList
    Left = 532
    Top = 94
  end
  object dtsconsulta: TDataSource
    DataSet = Consulta
    Left = 696
  end
end
