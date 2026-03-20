inherited frmcai_fec: Tfrmcai_fec
  Left = 250
  Top = 111
  Caption = 'Fechamento de Caixa'
  ClientHeight = 405
  ClientWidth = 933
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlcadastro: TPanel
    Width = 933
    Height = 272
    inherited PaintBox: TPaintBox
      Width = 933
      Height = 272
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 933
      Height = 272
      Align = alClient
      Caption = 'Rela'#231#227'o de Caixas em Aberto'
      TabOrder = 0
      object dbgConsulta: TdxDBGrid
        Left = 2
        Top = 15
        Width = 929
        Height = 255
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Color = clWhite
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        AutoSearchColor = 9395
        AutoSearchTextColor = clWhite
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'Tahoma'
        BandFont.Style = []
        DataSource = dtscadastro
        Filter.Criteria = {00000000}
        GridLineColor = clSilver
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        HideSelectionColor = 14789952
        HighlightColor = 14789952
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
        OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        object dbgConsultaPAR_FANT: TdxDBGridMaskColumn
          Width = 111
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PAR_FANT'
        end
        object dbgConsultaCAI_DECX: TdxDBGridMaskColumn
          Width = 69
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CAI_DECX'
        end
        object dbgConsultaUSU_DUSU: TdxDBGridMaskColumn
          Width = 110
          BandIndex = 0
          RowIndex = 0
          FieldName = 'USU_DUSU'
        end
        object dbgConsultaCAI_IP: TdxDBGridMaskColumn
          Width = 109
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CAI_IP'
        end
        object dbgConsultaCAI_DABR: TdxDBGridDateColumn
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CAI_DABR'
        end
        object dbgConsultaCAI_HABR: TdxDBGridTimeColumn
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CAI_HABR'
        end
        object dbgConsultaCAI_VABR: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CAI_VABR'
        end
        object dbgConsultaCAI_CRED: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CAI_CRED'
        end
        object dbgConsultaCAI_DEBI: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CAI_DEBI'
        end
        object dbgConsultaCAI_SATU: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CAI_SATU'
        end
      end
    end
  end
  inherited sbMSG: TStatusBar
    Top = 386
    Width = 933
  end
  inherited SpeedBar2: TSpeedBar
    Width = 933
  end
  object cadastro: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT CAI_LAF.*,PAR_SIS.PAR_FANT,CAD_USU.USU_DUSU'
      'FROM   CAI_LAF,PAR_SIS,CAD_USU'
      'WHERE  CAI_LAF.CAI_CDEP = PAR_SIS.ID'
      'AND    CAI_LAF.CAI_CUSU = CAD_USU.USU_CUSU'
      'AND    CAI_LAF.CAI_DFEC IS NULL')
    Left = 336
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAI_LAF"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroCAI_CDEP: TIntegerField
      FieldName = 'CAI_CDEP'
      Origin = '"CAI_LAF"."CAI_CDEP"'
    end
    object cadastroCAI_CDCX: TSmallintField
      FieldName = 'CAI_CDCX'
      Origin = '"CAI_LAF"."CAI_CDCX"'
    end
    object cadastroCAI_DECX: TIBStringField
      DisplayLabel = 'Caixa'
      FieldName = 'CAI_DECX'
      Origin = '"CAI_LAF"."CAI_DECX"'
    end
    object cadastroCAI_DABR: TDateField
      DisplayLabel = 'Dt Abertura'
      FieldName = 'CAI_DABR'
      Origin = '"CAI_LAF"."CAI_DABR"'
    end
    object cadastroCAI_HABR: TTimeField
      DisplayLabel = 'Hora Abertura'
      FieldName = 'CAI_HABR'
      Origin = '"CAI_LAF"."CAI_HABR"'
    end
    object cadastroCAI_VABR: TIBBCDField
      DisplayLabel = 'Valor Abertura'
      FieldName = 'CAI_VABR'
      Origin = '"CAI_LAF"."CAI_VABR"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCAI_DFEC: TDateField
      FieldName = 'CAI_DFEC'
      Origin = '"CAI_LAF"."CAI_DFEC"'
    end
    object cadastroCAI_HFEC: TTimeField
      FieldName = 'CAI_HFEC'
      Origin = '"CAI_LAF"."CAI_HFEC"'
    end
    object cadastroCAI_VFEC: TIBBCDField
      FieldName = 'CAI_VFEC'
      Origin = '"CAI_LAF"."CAI_VFEC"'
      Precision = 18
      Size = 2
    end
    object cadastroCAI_CUSU: TIntegerField
      FieldName = 'CAI_CUSU'
      Origin = '"CAI_LAF"."CAI_CUSU"'
    end
    object cadastroCAI_IP: TIBStringField
      DisplayLabel = 'Terminal'
      FieldName = 'CAI_IP'
      Origin = '"CAI_LAF"."CAI_IP"'
    end
    object cadastroCAI_TERM: TIBStringField
      FieldName = 'CAI_TERM'
      Origin = '"CAI_LAF"."CAI_TERM"'
      Size = 40
    end
    object cadastroCAI_CRED: TIBBCDField
      DisplayLabel = 'Total Cr'#233'dito'
      FieldName = 'CAI_CRED'
      Origin = '"CAI_LAF"."CAI_CRED"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCAI_DEBI: TIBBCDField
      DisplayLabel = 'Total D'#233'bito'
      FieldName = 'CAI_DEBI'
      Origin = '"CAI_LAF"."CAI_DEBI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCAI_SATU: TIBBCDField
      DisplayLabel = 'Saldo Caixa'
      FieldName = 'CAI_SATU'
      Origin = '"CAI_LAF"."CAI_SATU"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroPAR_FANT: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'PAR_FANT'
      Origin = '"PAR_SIS"."PAR_FANT"'
      Size = 40
    end
    object cadastroUSU_DUSU: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USU_DUSU'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
  end
  object dtscadastro: TDataSource
    DataSet = cadastro
    Left = 336
    Top = 32
  end
end
