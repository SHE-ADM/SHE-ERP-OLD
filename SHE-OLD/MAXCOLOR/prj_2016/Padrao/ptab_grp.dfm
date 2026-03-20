inherited frmtab_grp: Tfrmtab_grp
  Caption = 'Tabela de Grupos'
  ClientHeight = 585
  ClientWidth = 656
  OldCreateOrder = True
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Top = 566
    Width = 656
  end
  inherited SpeedBar2: TSpeedBar
    Width = 656
    inherited siEVE: TSpeedItem [4]
      Visible = False
    end
    inherited siREF: TSpeedItem
      Left = 2
    end
    inherited siSAIR: TSpeedItem
      Left = 332
    end
    inherited siPSQ: TSpeedItem [7]
      Tag = 1
      Visible = False
    end
    inherited siREL: TSpeedItem
      Left = 222
    end
    inherited siLIXO: TSpeedItem [9]
      Left = 112
      OnClick = siLIXOClick
    end
  end
  inherited pnldir: TPanel
    Left = 656
    Height = 452
  end
  inherited pnldbg: TPanel
    Width = 656
    Height = 452
    inherited pnlbot: TPanel
      Top = 252
      Width = 656
      Height = 200
      Visible = True
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 656
        Height = 200
        Align = alClient
        Caption = 'Produtos'
        TabOrder = 0
        object dbgcad_pro: TdxDBGrid
          Left = 2
          Top = 16
          Width = 652
          Height = 182
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'PRO_CART'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Color = clBtnFace
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          OnDblClick = DBGConsultaDblClick
          OnKeyDown = DBGConsultaKeyDown
          AutoSearchColor = 9395
          AutoSearchTextColor = clWhite
          DataSource = dtscad_pro
          Filter.Criteria = {00000000}
          GridLineColor = clSilver
          HideSelectionColor = 14789952
          HighlightColor = 14789952
          LookAndFeel = lfUltraFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
          OnBackgroundDrawEvent = DBGConsultaBackgroundDrawEvent
          object dbgcad_proPRO_CART: TdxDBGridMaskColumn
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_CART'
          end
          object dbgcad_proPRO_DPRO: TdxDBGridMaskColumn
            Width = 500
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_DPRO'
          end
          object dbgcad_proPRO_DUNI: TdxDBGridMaskColumn
            Width = 40
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_DUNI'
          end
        end
      end
    end
    inherited gbDET: TGroupBox
      Width = 656
      Height = 252
      inherited DBGConsulta: TdxDBGrid
        Width = 603
        Height = 234
        HeaderMinRowCount = 2
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Criteria = {00000000}
        object dbgConsultaGRP_CGRP: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 63
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GRP_CGRP'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object dbgConsultaGRP_DGRP: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 328
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GRP_DGRP'
        end
        object dbgConsultaGRP_APRC: TdxDBGridCheckColumn
          CharCase = ecUpperCase
          Width = 104
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GRP_APRC'
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbgConsultaGRP_LDSC: TdxDBGridCurrencyColumn
          CharCase = ecUpperCase
          HeaderAlignment = taRightJustify
          Width = 85
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GRP_LDSC'
          DisplayFormat = '#,0.00'
          Nullable = False
        end
      end
      inherited SpeedBar1: TSpeedBar
        Height = 234
      end
    end
  end
  inherited Consulta: TIBQuery
    Left = 352
    Top = 72
  end
  inherited Cadastro: TIBDataSet
    BeforePost = cadastroBeforePost
    OnNewRecord = cadastroNewRecord
    DeleteSQL.Strings = (
      'delete from CAD_PRO_GRP'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_PRO_GRP'
      
        '  (GRP_APRC, GRP_CCLF, GRP_CDEP, GRP_CGRP, GRP_DGRP, GRP_LDSC, G' +
        'RP_PADR, '
      '   GRP_STA, ID)'
      'values'
      
        '  (:GRP_APRC, :GRP_CCLF, :GRP_CDEP, :GRP_CGRP, :GRP_DGRP, :GRP_L' +
        'DSC, :GRP_PADR, '
      '   :GRP_STA, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  GRP_CGRP,'
      '  GRP_DGRP,'
      '  GRP_STA,'
      '  GRP_CCLF,'
      '  GRP_PADR,'
      '  GRP_APRC,'
      '  GRP_LDSC,'
      '  GRP_CDEP'
      'from CAD_PRO_GRP '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_PRO_GRP'
      'WHERE GRP_STA = '#39'0'#39
      'ORDER BY GRP_DGRP')
    ModifySQL.Strings = (
      'update CAD_PRO_GRP'
      'set'
      '  GRP_APRC = :GRP_APRC,'
      '  GRP_CCLF = :GRP_CCLF,'
      '  GRP_CDEP = :GRP_CDEP,'
      '  GRP_CGRP = :GRP_CGRP,'
      '  GRP_DGRP = :GRP_DGRP,'
      '  GRP_LDSC = :GRP_LDSC,'
      '  GRP_PADR = :GRP_PADR,'
      '  GRP_STA = :GRP_STA,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_GRP"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroGRP_CGRP: TIBStringField
      DisplayLabel = 'Referencia'
      FieldName = 'GRP_CGRP'
      Origin = '"CAD_GRP"."GRP_CGRP"'
      Size = 5
    end
    object cadastroGRP_DGRP: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'GRP_DGRP'
      Origin = '"CAD_GRP"."GRP_DGRP"'
      Size = 30
    end
    object cadastroGRP_STA: TIBStringField
      FieldName = 'GRP_STA'
      Origin = '"CAD_GRP"."GRP_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroGRP_CCLF: TIBStringField
      DisplayLabel = 'N.C.M.'
      FieldName = 'GRP_CCLF'
      Origin = '"CAD_PRO_GRP"."GRP_CCLF"'
      Size = 10
    end
    object cadastroGRP_PADR: TIBStringField
      FieldName = 'GRP_PADR'
      Origin = '"CAD_PRO_GRP"."GRP_PADR"'
      FixedChar = True
      Size = 1
    end
    object cadastroGRP_APRC: TIBStringField
      DisplayLabel = 'Permite Altera'#231#227'o de Pre'#231'o'
      FieldName = 'GRP_APRC'
      Origin = '"CAD_PRO_GRP"."GRP_APRC"'
      FixedChar = True
      Size = 1
    end
    object cadastroGRP_LDSC: TIBBCDField
      DisplayLabel = 'Limite M'#225'ximo de Desconto'
      FieldName = 'GRP_LDSC'
      Origin = '"CAD_PRO_GRP"."GRP_LDSC"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object cadastroGRP_CDEP: TIntegerField
      FieldName = 'GRP_CDEP'
      Origin = '"CAD_PRO_GRP"."GRP_CDEP"'
    end
  end
  inherited imageITEM: TImageList
    Left = 364
    Top = 222
  end
  inherited pEVE: TIBEvents
    Left = 424
  end
  inherited pTRA: TIBTransaction
    Left = 496
    Top = 56
  end
  object cad_pro: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT PRO_CART,PRO_DPRO,PRO_DUNI'
      'FROM CAD_PRO'
      'WHERE PRO_CGRP = :ID'
      'GROUP BY PRO_CART,PRO_DPRO,PRO_DUNI')
    Left = 352
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
    object cad_proPRO_CART: TIBStringField
      DisplayLabel = 'Referencia'
      FieldName = 'PRO_CART'
      Origin = '"CAD_PRO"."PRO_CART"'
    end
    object cad_proPRO_DPRO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRO_DPRO'
      Origin = '"CAD_PRO"."PRO_DPRO"'
      Size = 120
    end
    object cad_proPRO_DUNI: TIBStringField
      DisplayLabel = 'UN'
      FieldName = 'PRO_DUNI'
      Origin = '"CAD_PRO"."PRO_DUNI"'
      Size = 3
    end
  end
  object dtscad_pro: TDataSource
    DataSet = cad_pro
    Left = 384
    Top = 40
  end
end
