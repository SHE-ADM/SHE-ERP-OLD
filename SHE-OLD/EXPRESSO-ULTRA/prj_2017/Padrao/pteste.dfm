object frmteste: Tfrmteste
  Left = 192
  Top = 110
  Width = 696
  Height = 480
  Caption = 'frmteste'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBTreeView1: TdxDBTreeView
    Left = 0
    Top = 0
    Width = 377
    Height = 446
    ShowNodeHint = False
    DataSource = DataSource1
    KeyField = 'ID'
    ListField = 'COR_DCOR'
    ParentField = 'COR_CCOR'
    SeparatedSt = ', id =  '
    RaiseOnError = True
    DragMode = dmAutomatic
    Indent = 19
    Align = alLeft
    ParentColor = False
    Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
    SelectedIndex = -1
    TabOrder = 0
  end
  object tab_cor: TIBTable
    Database = dmDADOS.ibDB
    Transaction = dmDADOS.ibTRA
    AfterPost = tab_corAfterPost
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'COR_CCOR'
        DataType = ftSmallint
      end
      item
        Name = 'COR_DCOR'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'COR_STA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COR_PREC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COR_REFE'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'PK_TAB_COR'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'TAB_COR'
    Left = 88
    Top = 40
    object tab_corID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tab_corCOR_CCOR: TSmallintField
      FieldName = 'COR_CCOR'
    end
    object tab_corCOR_DCOR: TIBStringField
      FieldName = 'COR_DCOR'
      Size = 30
    end
    object tab_corCOR_STA: TIBStringField
      FieldName = 'COR_STA'
      Size = 1
    end
    object tab_corCOR_PREC: TIBStringField
      FieldName = 'COR_PREC'
      Size = 1
    end
    object tab_corCOR_REFE: TIBStringField
      FieldName = 'COR_REFE'
      Size = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = tab_cor
    Left = 88
    Top = 72
  end
end
