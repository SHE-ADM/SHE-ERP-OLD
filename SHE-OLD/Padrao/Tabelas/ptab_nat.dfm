inherited frmtab_nat: Tfrmtab_nat
  Left = 175
  Top = 62
  HelpContext = 90
  AlphaBlendValue = 0
  Caption = 'Tabela de CFOP'
  ClientHeight = 876
  ClientWidth = 1274
  OldCreateOrder = True
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBRodape: TdxStatusBar
    Top = 855
    Width = 1274
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 80
        Text = 'Consulta'
        Width = 80
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 0
        Width = 1320
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
    Width = 1274
    Height = 790
    inherited PNLPrincipal: TPanel
      Width = 1274
      Height = 790
      inherited PNLPrincipalRodape: TPanel
        Top = 790
        Width = 1274
      end
      inherited PNLPrincipalME: TPanel
        Height = 790
      end
      inherited PNLPrincipalMD: TPanel
        Left = 1274
        Height = 790
      end
      inherited PNLCadastro: TPanel
        Width = 1274
        Height = 790
        inherited PNLCadastroCabecalho: TPanel
          Width = 1274
        end
        inherited PNLCustomize: TPanel
          Width = 1274
          Height = 790
          inherited PNLCustomizeSumario: TPanel
            Top = 790
            Width = 1274
          end
          inherited PNLCustomizeConsulta: TPanel
            Width = 1274
            Height = 790
            inherited GBCadastro: TGroupBox
              Width = 1220
              Height = 790
              inherited PCConsulta: TdxPageControl
                Width = 1216
                Height = 769
                inherited TSConsulta: TdxTabSheet
                  inherited DBGConsulta: TdxDBGrid
                    Width = 1216
                    Height = 769
                    HeaderMinRowCount = 2
                    KeyField = 'ID'
                    Filter.Criteria = {00000000}
                    object dbgConsultaNAT_CNAT: TdxDBGridMaskColumn
                      Width = 69
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'NAT_CNAT'
                    end
                    object dbgConsultaNAT_DNAT: TdxDBGridMaskColumn
                      Width = 430
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'NAT_DNAT'
                    end
                    object dbgConsultaNAT_OPER: TdxDBGridMaskColumn
                      Width = 69
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'NAT_OPER'
                    end
                    object dbgConsultaNAT_TIPO: TdxDBGridMaskColumn
                      Width = 120
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'NAT_TIPO'
                    end
                    object dbgConsultaNAT_CCST: TdxDBGridMaskColumn
                      Width = 30
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'NAT_CCST'
                    end
                    object dbgConsultaNAT_CSTS: TdxDBGridMaskColumn
                      Width = 50
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'NAT_CSTS'
                    end
                    object dbgConsultaNAT_CSTA: TdxDBGridMaskColumn
                      Width = 50
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'NAT_CSTA'
                    end
                    object dbgConsultaNAT_CSTI: TdxDBGridMaskColumn
                      Width = 30
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'NAT_CSTI'
                    end
                    object dbgConsultaNAT_CSTP: TdxDBGridMaskColumn
                      Width = 30
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'NAT_CSTP'
                    end
                    object dbgConsultaNAT_PIPP: TdxDBGridMaskColumn
                      HeaderAlignment = taRightJustify
                      Width = 30
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'NAT_PIPP'
                    end
                    object dbgConsultaNAT_CSTC: TdxDBGridMaskColumn
                      Width = 50
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'NAT_CSTC'
                    end
                    object dbgConsultaNAT_PIPC: TdxDBGridMaskColumn
                      HeaderAlignment = taRightJustify
                      Width = 50
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'NAT_PIPC'
                    end
                    object dbgConsultaNAT_CFOP: TdxDBGridMaskColumn
                      Width = 70
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'NAT_CFOP'
                    end
                    object DBGConsultaCENQ: TdxDBGridMaskColumn
                      Width = 95
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CENQ'
                    end
                  end
                end
              end
            end
            inherited PNLCustomizeCabecalho: TPanel
              Width = 1274
            end
            inherited PNLCustomizeRodape: TPanel
              Top = 790
              Width = 1274
            end
            inherited GBMenuEdicao: TGroupBox
              Height = 790
              inherited SBMenuEdicao: TSpeedBar
                Height = 769
              end
            end
          end
        end
      end
    end
    inherited PNLFormRodape: TPanel
      Top = 790
      Width = 1274
      inherited PNLFormRodapeMD: TPanel
        Left = 1274
      end
    end
  end
  inherited SBMenuPrincipal: TSpeedBar
    Width = 1274
  end
  inherited Cadastro: TIBQuery
    SQL.Strings = (
      'SELECT * FROM TAB_NAT'
      'ORDER BY ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_NAT"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroNAT_CNAT: TIBStringField
      DisplayLabel = 'CFOP'
      FieldName = 'NAT_CNAT'
      Origin = '"TAB_NAT"."NAT_CNAT"'
      Size = 10
    end
    object cadastroNAT_DNAT: TIBStringField
      DisplayLabel = 'Natureza de Opera'#231#227'o'
      FieldName = 'NAT_DNAT'
      Origin = '"TAB_NAT"."NAT_DNAT"'
      Size = 60
    end
    object cadastroNAT_OPER: TIBStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'NAT_OPER'
      Origin = '"TAB_NAT"."NAT_OPER"'
      Size = 10
    end
    object cadastroNAT_BIPI: TIBStringField
      FieldName = 'NAT_BIPI'
      Origin = '"TAB_NAT"."NAT_BIPI"'
      FixedChar = True
      Size = 1
    end
    object cadastroNAT_MATE: TIBStringField
      FieldName = 'NAT_MATE'
      Origin = '"TAB_NAT"."NAT_MATE"'
      FixedChar = True
      Size = 1
    end
    object cadastroNAT_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'NAT_TIPO'
      Origin = '"TAB_NAT"."NAT_TIPO"'
      Size = 30
    end
    object cadastroNAT_CSTI: TIBStringField
      DisplayLabel = 'CST IPI'
      FieldName = 'NAT_CSTI'
      Origin = '"TAB_NAT"."NAT_CSTI"'
      Size = 3
    end
    object CadastroNAT_CSTI0: TIBStringField
      FieldName = 'NAT_CSTI0'
      Origin = '"TAB_NAT"."NAT_CSTI0"'
      Size = 3
    end
    object cadastroNAT_PIPP: TIBBCDField
      DisplayLabel = 'PIS %'
      FieldName = 'NAT_PIPP'
      Origin = '"TAB_NAT"."NAT_PIPP"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object CadastroNAT_PIPP_SIM: TIBBCDField
      DisplayLabel = 'PIS %'
      FieldName = 'NAT_PIPP_SIM'
      Origin = '"TAB_NAT"."NAT_PIPP_SIM"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object CadastroNAT_PIPP_REAL: TIBBCDField
      FieldName = 'NAT_PIPP_REAL'
      Origin = '"TAB_NAT"."NAT_PIPP_REAL"'
      Precision = 9
      Size = 2
    end
    object cadastroNAT_CSTP: TIBStringField
      DisplayLabel = 'CST PIS'
      FieldName = 'NAT_CSTP'
      Origin = '"TAB_NAT"."NAT_CSTP"'
      Size = 3
    end
    object cadastroNAT_PIPC: TIBBCDField
      DisplayLabel = 'COFINS %'
      FieldName = 'NAT_PIPC'
      Origin = '"TAB_NAT"."NAT_PIPC"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object CadastroNAT_PIPC_SIM: TIBBCDField
      DisplayLabel = 'COFINS %'
      FieldName = 'NAT_PIPC_SIM'
      Origin = '"TAB_NAT"."NAT_PIPC_SIM"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object CadastroNAT_PIPC_REAL: TIBBCDField
      FieldName = 'NAT_PIPC_REAL'
      Origin = '"TAB_NAT"."NAT_PIPC_REAL"'
      Precision = 9
      Size = 2
    end
    object cadastroNAT_CSTC: TIBStringField
      DisplayLabel = 'CST COFINS'
      FieldName = 'NAT_CSTC'
      Origin = '"TAB_NAT"."NAT_CSTC"'
      Size = 3
    end
    object cadastroNAT_STA: TIBStringField
      FieldName = 'NAT_STA'
      Origin = '"TAB_NAT"."NAT_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroNAT_CCST: TIBStringField
      DisplayLabel = 'CST'
      FieldName = 'NAT_CCST'
      Origin = '"TAB_NAT"."NAT_CCST"'
      Size = 3
    end
    object cadastroNAT_PENF: TIBBCDField
      FieldName = 'NAT_PENF'
      Origin = '"TAB_NAT"."NAT_PENF"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object cadastroNAT_FRET: TIBStringField
      FieldName = 'NAT_FRET'
      Origin = '"TAB_NAT"."NAT_FRET"'
      FixedChar = True
      Size = 1
    end
    object cadastroNAT_OBSE: TMemoField
      FieldName = 'NAT_OBSE'
      Origin = '"TAB_NAT"."NAT_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroNAT_CSTS: TIBStringField
      DisplayLabel = 'CSOSN'
      FieldName = 'NAT_CSTS'
      Origin = '"TAB_NAT"."NAT_CSTS"'
      Size = 3
    end
    object cadastroNAT_CSTA: TIBStringField
      DisplayLabel = 'CSOSN [CICM]'
      FieldName = 'NAT_CSTA'
      Origin = '"TAB_NAT"."NAT_CSTA"'
      Size = 3
    end
    object cadastroNAT_INDT: TIBStringField
      FieldName = 'NAT_INDT'
      Origin = '"TAB_NAT"."NAT_INDT"'
      FixedChar = True
      Size = 1
    end
    object cadastroNAT_CFOP: TIBStringField
      DisplayLabel = 'CFOP Equivalente'
      FieldName = 'NAT_CFOP'
      Origin = '"TAB_NAT"."NAT_CFOP"'
      Size = 10
    end
    object CadastroNAT_INV: TIBStringField
      FieldName = 'NAT_INV'
      Origin = '"TAB_NAT"."NAT_INV"'
      FixedChar = True
      Size = 1
    end
    object CadastroNAT_FATU: TIBStringField
      FieldName = 'NAT_FATU'
      Origin = '"TAB_NAT"."NAT_FATU"'
      FixedChar = True
      Size = 1
    end
    object CadastroNAT_TPNF: TIBStringField
      FieldName = 'NAT_TPNF'
      Origin = '"TAB_NAT"."NAT_TPNF"'
      FixedChar = True
      Size = 1
    end
    object CadastroNAT_REDBC: TIBBCDField
      FieldName = 'NAT_REDBC'
      Origin = '"TAB_NAT"."NAT_REDBC"'
      Precision = 9
      Size = 2
    end
    object CadastroCENQ: TIBStringField
      DisplayLabel = 'C'#243'digo de Enquadramento'
      FieldName = 'CENQ'
      Origin = '"TAB_NAT"."CENQ"'
      Size = 3
    end
  end
end
