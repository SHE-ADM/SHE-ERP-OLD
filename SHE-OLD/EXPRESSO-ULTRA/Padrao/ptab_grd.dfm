inherited frmtab_grd: Tfrmtab_grd
  Caption = 'Tabela de Grades'
  OldCreateOrder = True
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 14
  inherited SpeedBar2: TSpeedBar
    inherited siREL: TSpeedItem [7]
    end
    inherited siEVE: TSpeedItem [8]
    end
    inherited siLIXO: TSpeedItem [9]
      OnClick = siLIXOClick
    end
  end
  inherited pnldbg: TPanel
    inherited gbDET: TGroupBox
      inherited DBGConsulta: TdxDBGrid
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
        object dbgConsultaGRD_CGRD: TdxDBGridMaskColumn
          Width = 38
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GRD_CGRD'
        end
        object dbgConsultaGRD_DGRD: TdxDBGridMaskColumn
          Width = 109
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GRD_DGRD'
        end
        object dbgConsultaGRD_PADR: TdxDBGridCheckColumn
          Width = 43
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GRD_PADR'
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
  end
  inherited Cadastro: TIBDataSet
    BeforePost = cadastroBeforePost
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from TAB_GRD'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_GRD'
      '  (GRD_CGRD, GRD_DGRD, GRD_PADR, GRD_STA, ID)'
      'values'
      '  (:GRD_CGRD, :GRD_DGRD, :GRD_PADR, :GRD_STA, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  GRD_CGRD,'
      '  GRD_DGRD,'
      '  GRD_STA,'
      '  GRD_PADR'
      'from TAB_GRD '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_GRD'
      'WHERE GRD_STA = 0')
    ModifySQL.Strings = (
      'update TAB_GRD'
      'set'
      '  GRD_CGRD = :GRD_CGRD,'
      '  GRD_DGRD = :GRD_DGRD,'
      '  GRD_PADR = :GRD_PADR,'
      '  GRD_STA = :GRD_STA,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 256
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_GRD"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroGRD_CGRD: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRD_CGRD'
      Origin = '"TAB_GRD"."GRD_CGRD"'
      OnValidate = cadastroGRD_CGRDValidate
      Size = 2
    end
    object cadastroGRD_DGRD: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'GRD_DGRD'
      Origin = '"TAB_GRD"."GRD_DGRD"'
      Size = 15
    end
    object cadastroGRD_STA: TIBStringField
      FieldName = 'GRD_STA'
      Origin = '"TAB_GRD"."GRD_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroGRD_PADR: TIBStringField
      DisplayLabel = 'Padr'#227'o'
      FieldName = 'GRD_PADR'
      Origin = '"TAB_GRD"."GRD_PADR"'
      FixedChar = True
      Size = 1
    end
  end
  inherited imageOPC: TImageList
    Left = 260
    Top = 206
  end
end
