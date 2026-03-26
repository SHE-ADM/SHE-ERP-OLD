inherited frmcai_sar: Tfrmcai_sar
  Top = 76
  Caption = 'Sangria \ Suprimento'
  ClientHeight = 530
  ClientWidth = 976
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMSG: TStatusBar
    Top = 511
    Width = 976
  end
  inherited pnldir: TPanel
    Left = 976
    Height = 436
  end
  inherited SBMenu: TSpeedBar
    Width = 976
  end
  inherited pnlpri: TPanel
    Width = 976
    Height = 436
    inherited pnlbot: TPanel
      Top = 241
      Width = 976
      Height = 195
      Visible = True
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 976
        Height = 195
        Align = alClient
        Caption = 'Bordero de Cheques'
        TabOrder = 0
        object dxDBGrid1: TdxDBGrid
          Left = 2
          Top = 15
          Width = 972
          Height = 178
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ID'
          ShowSummaryFooter = True
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
          DataSource = dtsfin_rec
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
          object dxDBGrid1CLI_FANT: TdxDBGridMaskColumn
            Width = 250
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_FANT'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
          end
          object dxDBGrid1FIN_BANC: TdxDBGridMaskColumn
            Width = 45
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FIN_BANC'
          end
          object dxDBGrid1FIN_AGEN: TdxDBGridMaskColumn
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FIN_AGEN'
          end
          object dxDBGrid1FIN_CONT: TdxDBGridMaskColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FIN_CONT'
          end
          object dxDBGrid1FIN_NCHQ: TdxDBGridMaskColumn
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FIN_NCHQ'
          end
          object dxDBGrid1FIN_DVEN: TdxDBGridDateColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FIN_DVEN'
          end
          object dxDBGrid1FIN_VALO: TdxDBGridCurrencyColumn
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FIN_VALO'
            SummaryFooterType = cstSum
            SummaryFooterField = 'FIN_VALO'
            SummaryFooterFormat = '#,0.00'
            Nullable = False
          end
        end
      end
    end
    inherited pnldbg: TPanel
      Width = 976
      Height = 241
      inherited gbDET: TGroupBox
        Width = 976
        Height = 241
        inherited SBEdicao: TSpeedBar
          Height = 224
        end
        inherited DBGConsulta: TdxDBGrid
          Width = 928
          Height = 224
          KeyField = 'ID'
          ShowSummaryFooter = True
          Filter.Criteria = {00000000}
          object dbgConsultaCAI_DESC: TdxDBGridMaskColumn
            Width = 282
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CAI_DESC'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
          end
          object dbgConsultaCAI_DOCT: TdxDBGridMaskColumn
            Width = 146
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CAI_DOCT'
          end
          object dbgConsultaCAI_DCAD: TdxDBGridDateColumn
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CAI_DCAD'
          end
          object dbgConsultaCAI_HCAD: TdxDBGridTimeColumn
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CAI_HCAD'
          end
          object dbgConsultaCAI_CRED: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CAI_CRED'
            SummaryFooterType = cstSum
            SummaryFooterField = 'CAI_CRED'
            SummaryFooterFormat = '#,0.00'
          end
          object dbgConsultaCAI_DEBI: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CAI_DEBI'
            SummaryFooterType = cstSum
            SummaryFooterField = 'CAI_DEBI'
            SummaryFooterFormat = '#,0.00'
          end
        end
      end
    end
  end
  inherited DTSCadastro: TDataSource
    OnDataChange = dtscadastroDataChange
  end
  inherited Cadastro: TIBQuery
    Tag = 1
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT * FROM CAI_MOV'
      'WHERE    CAI_CCAB = '#39'2367'#39)
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAI_MOV"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroCAI_CCAB: TIntegerField
      FieldName = 'CAI_CCAB'
      Origin = '"CAI_MOV"."CAI_CCAB"'
    end
    object cadastroCAI_CTSR: TIntegerField
      FieldName = 'CAI_CTSR'
      Origin = '"CAI_MOV"."CAI_CTSR"'
    end
    object cadastroCAI_DESC: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CAI_DESC'
      Origin = '"CAI_MOV"."CAI_DESC"'
      Size = 120
    end
    object cadastroCAI_DOCT: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'CAI_DOCT'
      Origin = '"CAI_MOV"."CAI_DOCT"'
    end
    object cadastroCAI_DCAD: TDateField
      DisplayLabel = 'Data Lancto'
      FieldName = 'CAI_DCAD'
      Origin = '"CAI_MOV"."CAI_DCAD"'
    end
    object cadastroCAI_HCAD: TTimeField
      DisplayLabel = 'Hora Lancto'
      FieldName = 'CAI_HCAD'
      Origin = '"CAI_MOV"."CAI_HCAD"'
    end
    object cadastroCAI_SANT: TIBBCDField
      FieldName = 'CAI_SANT'
      Origin = '"CAI_MOV"."CAI_SANT"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCAI_CRED: TIBBCDField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'CAI_CRED'
      Origin = '"CAI_MOV"."CAI_CRED"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCAI_DEBI: TIBBCDField
      DisplayLabel = 'D'#233'bito'
      FieldName = 'CAI_DEBI'
      Origin = '"CAI_MOV"."CAI_DEBI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCAI_SATU: TIBBCDField
      FieldName = 'CAI_SATU'
      Origin = '"CAI_MOV"."CAI_SATU"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCAI_CONC: TSmallintField
      FieldName = 'CAI_CONC'
      Origin = '"CAI_MOV"."CAI_CONC"'
    end
    object cadastroCAI_CDBX: TIntegerField
      FieldName = 'CAI_CDBX'
      Origin = '"CAI_MOV"."CAI_CDBX"'
    end
    object cadastroCAI_BCON: TIntegerField
      FieldName = 'CAI_BCON'
      Origin = '"CAI_MOV"."CAI_BCON"'
    end
    object cadastroCAI_DCON: TIBStringField
      FieldName = 'CAI_DCON'
      Origin = '"CAI_MOV"."CAI_DCON"'
      Size = 120
    end
  end
  inherited ILEdicao: TImageList
    Top = 390
  end
  inherited TConsulta: TIBTransaction
    AllowAutoStart = True
  end
  object fin_rec: TIBQuery
    Database = DMDados.IBDB
    Transaction = TConsulta
    SQL.Strings = (
      
        'SELECT FIN_REC_CAR_REC.ID,FIN_DVEN,FIN_BANC,FIN_AGEN,FIN_CONT,FI' +
        'N_NCHQ,FIN_VALO,CLI_FANT'
      'FROM   CAD_CLI,FIN_REC_CAR_REC'
      'WHERE  CAD_CLI.ID = FIN_REC_CAR_REC.FIN_CCLI'
      'AND FIN_CDBX = 15930')
    Left = 456
    Top = 56
    object fin_recID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_REC_CAR_REC"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fin_recFIN_DVEN: TDateField
      DisplayLabel = 'Dt Vencto'
      FieldName = 'FIN_DVEN'
      Origin = '"FIN_REC_CAR_REC"."FIN_DVEN"'
    end
    object fin_recFIN_BANC: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'FIN_BANC'
      Origin = '"FIN_REC_CAR_REC"."FIN_BANC"'
      Size = 4
    end
    object fin_recFIN_AGEN: TIBStringField
      DisplayLabel = 'Agencia'
      FieldName = 'FIN_AGEN'
      Origin = '"FIN_REC_CAR_REC"."FIN_AGEN"'
      Size = 10
    end
    object fin_recFIN_CONT: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'FIN_CONT'
      Origin = '"FIN_REC_CAR_REC"."FIN_CONT"'
      Size = 15
    end
    object fin_recFIN_NCHQ: TIBStringField
      DisplayLabel = 'Cheque No'
      FieldName = 'FIN_NCHQ'
      Origin = '"FIN_REC_CAR_REC"."FIN_NCHQ"'
      Size = 10
    end
    object fin_recFIN_VALO: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'FIN_VALO'
      Origin = '"FIN_REC_CAR_REC"."FIN_VALO"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object fin_recCLI_FANT: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLI_FANT'
      Origin = '"CAD_CLI"."CLI_FANT"'
      Size = 40
    end
  end
  object dtsfin_rec: TDataSource
    DataSet = fin_rec
    Left = 456
    Top = 88
  end
end
