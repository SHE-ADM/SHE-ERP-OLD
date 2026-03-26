object FrmPrincipal: TFrmPrincipal
  Left = 638
  Top = 106
  Width = 1044
  Height = 540
  Caption = 'FrmPrincipal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 104
    Top = 40
    Width = 865
    Height = 289
    DataSource = DTSCOR
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 16
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 104
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Abrir'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 16
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 136
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Commit'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 216
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Rollback'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 16
    Top = 264
    Width = 75
    Height = 25
    Caption = 'update'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 448
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Button8: TButton
    Left = 184
    Top = 8
    Width = 75
    Height = 25
    Caption = '3 segundos'
    TabOrder = 9
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 528
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Trava Tabela'
    TabOrder = 10
  end
  object DBErp: TIBDatabase
    DatabaseName = 'C:\Sheild\FBird\Otimotex.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=ri1903'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    Left = 16
    Top = 8
  end
  object TEdicao: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = DBErp
    DefaultAction = TARollback
    Params.Strings = (
      'consistency'
      'lock_write=TAB_COR'
      'exclusive'
      'nowait')
    OnIdleTimer = TEdicaoIdleTimer
    Left = 16
    Top = 40
  end
  object COR: TIBTable
    Database = DBErp
    Transaction = TEdicao
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftSmallint
      end
      item
        Name = 'IDCA'
        DataType = ftSmallint
      end
      item
        Name = 'DTCA'
        DataType = ftDateTime
      end
      item
        Name = 'IDED'
        DataType = ftSmallint
      end
      item
        Name = 'DTED'
        DataType = ftDateTime
      end
      item
        Name = 'IDST'
        DataType = ftSmallint
      end
      item
        Name = 'CDST'
        DataType = ftSmallint
      end
      item
        Name = 'REST'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DTST'
        DataType = ftDateTime
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'SISTEMA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ESCALA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PRECO'
        DataType = ftSmallint
      end
      item
        Name = 'PADRAO'
        DataType = ftSmallint
      end
      item
        Name = 'IP'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'HOST'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FLAG'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'IDX_TAB_COR_DECOR'
        Fields = 'DESCRICAO'
        Options = [ixUnique]
      end
      item
        Name = 'PK_TAB_COR'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'TAB_COR'
    Left = 16
    Top = 72
  end
  object DTSCOR: TDataSource
    DataSet = COR
    Left = 16
    Top = 104
  end
  object consulta: TIBQuery
    Database = DBErp
    Transaction = TEdicao
    Left = 56
    Top = 24
  end
end
