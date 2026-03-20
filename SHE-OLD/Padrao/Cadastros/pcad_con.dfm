inherited frmcad_con: Tfrmcad_con
  Left = 547
  Top = 112
  AlphaBlendValue = 0
  Caption = 'Cadastro de Container'
  ClientHeight = 655
  ClientWidth = 884
  OldCreateOrder = True
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBRodape: TdxStatusBar
    Top = 634
    Width = 884
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Consulta'
        Width = 60
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 0
        Width = 675
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
    Width = 884
    Height = 569
    inherited PNLPrincipal: TPanel
      Width = 884
      Height = 569
      inherited PNLPrincipalRodape: TPanel
        Top = 569
        Width = 884
      end
      inherited PNLPrincipalME: TPanel
        Height = 569
      end
      inherited PNLPrincipalMD: TPanel
        Left = 884
        Height = 569
      end
      inherited PNLCadastro: TPanel
        Width = 884
        Height = 569
        inherited PNLCadastroCabecalho: TPanel
          Width = 884
        end
        inherited PNLCustomize: TPanel
          Width = 884
          Height = 569
          inherited PNLCustomizeSumario: TPanel
            Top = 569
            Width = 884
          end
          inherited PNLCustomizeConsulta: TPanel
            Width = 884
            Height = 569
            inherited GBCadastro: TGroupBox
              Width = 830
              Height = 569
              inherited PCConsulta: TdxPageControl
                Width = 826
                Height = 548
                inherited TSConsulta: TdxTabSheet
                  inherited DBGConsulta: TdxDBGrid
                    Width = 826
                    Height = 548
                    KeyField = 'ID'
                    ShowSummaryFooter = True
                    Filter.Active = True
                    Filter.Criteria = {00000000}
                    OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
                    object DBGConsultaFANTASIA: TdxDBGridMaskColumn
                      Width = 150
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FANTASIA'
                      SummaryFooterType = cstCount
                      SummaryFooterField = 'ID'
                      SummaryFooterFormat = '0'
                    end
                    object dbgConsultaCON_CTNR: TdxDBGridMaskColumn
                      Width = 100
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CON_CTNR'
                    end
                    object dbgConsultaCON_DCAD: TdxDBGridDateColumn
                      Width = 84
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CON_DCAD'
                    end
                    object dbgConsultaCON_PSBR: TdxDBGridMaskColumn
                      HeaderAlignment = taRightJustify
                      Width = 110
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CON_PSBR'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'CON_PSBR'
                      SummaryFooterFormat = '#,0.000'
                      DisableFilter = True
                    end
                    object dbgConsultaCON_PSLQ: TdxDBGridMaskColumn
                      HeaderAlignment = taRightJustify
                      Width = 110
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CON_PSLQ'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'CON_PSLQ'
                      SummaryFooterFormat = '#,0.000'
                      DisableFilter = True
                    end
                    object DBGConsultaCON_VCUSTO: TdxDBGridCurrencyColumn
                      HeaderAlignment = taRightJustify
                      Width = 105
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CON_VCUSTO'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'CON_VCUSTO'
                      SummaryFooterFormat = '#,0.00'
                      DisplayFormat = ',0.00;-,0.00'
                      Nullable = False
                      DisableFilter = True
                    end
                    object dbgConsultaCON_STA: TdxDBGridMaskColumn
                      Visible = False
                      Width = 56
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CON_STA'
                      DisableFilter = True
                    end
                  end
                end
              end
            end
            inherited PNLCustomizeCabecalho: TPanel
              Width = 884
            end
            inherited PNLCustomizeRodape: TPanel
              Top = 569
              Width = 884
            end
            inherited GBMenuEdicao: TGroupBox
              Height = 569
              inherited SBMenuEdicao: TSpeedBar
                Height = 548
              end
            end
          end
        end
      end
    end
    inherited PNLFormRodape: TPanel
      Top = 569
      Width = 884
      inherited PNLFormRodapeMD: TPanel
        Left = 884
      end
    end
  end
  inherited SBMenuPrincipal: TSpeedBar
    Width = 884
  end
  inherited Cadastro: TIBQuery
    SQL.Strings = (
      'SELECT CAD_CON.*,TPS.FANTASIA'
      'FROM   CAD_CON'
      'JOIN   TAB_PAR_SIS AS TPS ON (TPS.ID = CON_CEMP)'
      'ORDER BY CAD_CON.ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CON"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroCON_CTNR: TIBStringField
      DisplayLabel = 'Container'
      FieldName = 'CON_CTNR'
      Origin = '"CAD_CON"."CON_CTNR"'
    end
    object cadastroCON_DTNR: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CON_DTNR'
      Origin = '"CAD_CON"."CON_DTNR"'
      Size = 50
    end
    object cadastroCON_DCAD: TDateField
      DisplayLabel = 'Lancto'
      FieldName = 'CON_DCAD'
      Origin = '"CAD_CON"."CON_DCAD"'
    end
    object cadastroCON_DCOL: TDateField
      FieldName = 'CON_DCOL'
      Origin = '"CAD_CON"."CON_DCOL"'
    end
    object cadastroCON_DCOP: TDateField
      FieldName = 'CON_DCOP'
      Origin = '"CAD_CON"."CON_DCOP"'
    end
    object cadastroCON_PSBR: TIBBCDField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'CON_PSBR'
      Origin = '"CAD_CON"."CON_PSBR"'
      DisplayFormat = '#,0.000'
      Precision = 18
      Size = 3
    end
    object cadastroCON_PSLQ: TIBBCDField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'CON_PSLQ'
      Origin = '"CAD_CON"."CON_PSLQ"'
      DisplayFormat = '#,0.000'
      Precision = 18
      Size = 3
    end
    object cadastroCON_VICMS: TIBBCDField
      FieldName = 'CON_VICMS'
      Origin = '"CAD_CON"."CON_VICMS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VIPI: TIBBCDField
      FieldName = 'CON_VIPI'
      Origin = '"CAD_CON"."CON_VIPI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VPIS: TIBBCDField
      FieldName = 'CON_VPIS'
      Origin = '"CAD_CON"."CON_VPIS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VCOFINS: TIBBCDField
      FieldName = 'CON_VCOFINS'
      Origin = '"CAD_CON"."CON_VCOFINS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VFRETE: TIBBCDField
      FieldName = 'CON_VFRETE'
      Origin = '"CAD_CON"."CON_VFRETE"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VDESP: TIBBCDField
      FieldName = 'CON_VDESP'
      Origin = '"CAD_CON"."CON_VDESP"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VII: TIBBCDField
      FieldName = 'CON_VII'
      Origin = '"CAD_CON"."CON_VII"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VEXTRA: TIBBCDField
      FieldName = 'CON_VEXTRA'
      Origin = '"CAD_CON"."CON_VEXTRA"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VLI: TIBBCDField
      FieldName = 'CON_VLI'
      Origin = '"CAD_CON"."CON_VLI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VMULTALI: TIBBCDField
      FieldName = 'CON_VMULTALI'
      Origin = '"CAD_CON"."CON_VMULTALI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VTRANSP: TIBBCDField
      FieldName = 'CON_VTRANSP'
      Origin = '"CAD_CON"."CON_VTRANSP"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VARMAZEN: TIBBCDField
      FieldName = 'CON_VARMAZEN'
      Origin = '"CAD_CON"."CON_VARMAZEN"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VHONO: TIBBCDField
      FieldName = 'CON_VHONO'
      Origin = '"CAD_CON"."CON_VHONO"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VOUTRO: TIBBCDField
      FieldName = 'CON_VOUTRO'
      Origin = '"CAD_CON"."CON_VOUTRO"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VCOL: TIBBCDField
      FieldName = 'CON_VCOL'
      Origin = '"CAD_CON"."CON_VCOL"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_VCOP: TIBBCDField
      FieldName = 'CON_VCOP'
      Origin = '"CAD_CON"."CON_VCOP"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroCON_OBSE: TMemoField
      FieldName = 'CON_OBSE'
      Origin = '"CAD_CON"."CON_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroCON_STA: TIBStringField
      FieldName = 'CON_STA'
      Origin = '"CAD_CON"."CON_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroCON_CEMP: TIntegerField
      FieldName = 'CON_CEMP'
      Origin = '"CAD_CON"."CON_CEMP"'
    end
    object cadastroCON_VDUMP: TIBBCDField
      FieldName = 'CON_VDUMP'
      Origin = '"CAD_CON"."CON_VDUMP"'
      Precision = 18
      Size = 2
    end
    object CadastroCON_VCUSTO: TIBBCDField
      DisplayLabel = 'Custo Total - R$'
      FieldName = 'CON_VCUSTO'
      Origin = '"CAD_CON"."CON_VCUSTO"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroFANTASIA: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'FANTASIA'
      Origin = '"TAB_PAR_SIS"."FANTASIA"'
      Size = 60
    end
  end
end
