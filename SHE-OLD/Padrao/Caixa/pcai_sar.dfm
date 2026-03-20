inherited frmcai_sar: Tfrmcai_sar
  Left = 252
  Top = 70
  AlphaBlendValue = 0
  Caption = 'Sangria \ Suprimento'
  ClientHeight = 605
  ClientWidth = 834
  OldCreateOrder = True
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBRodape: TdxStatusBar
    Top = 584
    Width = 834
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Consulta'
        Width = 60
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 0
        Width = 625
      end
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.CapsLockKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
        MinWidth = 137
        Width = 137
      end>
  end
  inherited PNLForm: TPanel
    Width = 834
    Height = 519
    inherited PNLPrincipal: TPanel
      Width = 834
      Height = 519
      inherited PNLPrincipalRodape: TPanel
        Top = 519
        Width = 834
      end
      inherited PNLPrincipalME: TPanel
        Height = 519
      end
      inherited PNLPrincipalMD: TPanel
        Left = 834
        Height = 519
      end
      inherited PNLCadastro: TPanel
        Width = 834
        Height = 519
        inherited PNLCadastroCabecalho: TPanel
          Width = 834
        end
        inherited PNLCustomize: TPanel
          Width = 834
          Height = 519
          inherited PNLCustomizeSumario: TPanel
            Top = 519
            Width = 834
          end
          inherited PNLCustomizeConsulta: TPanel
            Width = 834
            Height = 519
            inherited GBCadastro: TGroupBox
              Width = 780
              Height = 519
              inherited PCConsulta: TdxPageControl
                Width = 776
                Height = 498
                inherited TSConsulta: TdxTabSheet
                  inherited DBGConsulta: TdxDBGrid
                    Width = 776
                    Height = 498
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
            inherited PNLCustomizeCabecalho: TPanel
              Width = 834
            end
            inherited PNLCustomizeRodape: TPanel
              Top = 519
              Width = 834
            end
            inherited GBMenuEdicao: TGroupBox
              Height = 519
              inherited SBMenuEdicao: TSpeedBar
                Height = 498
              end
            end
          end
        end
      end
    end
    inherited PNLFormRodape: TPanel
      Top = 519
      Width = 834
      inherited PNLFormRodapeME: TPanel
        TabOrder = 1
      end
      inherited PNLFormRodapeMD: TPanel
        Left = 834
        TabOrder = 0
      end
    end
  end
  inherited SBMenuPrincipal: TSpeedBar
    Width = 834
  end
  inherited Cadastro: TIBQuery
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
end
