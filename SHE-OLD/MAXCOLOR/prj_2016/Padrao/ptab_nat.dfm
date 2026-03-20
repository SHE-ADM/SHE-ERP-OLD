inherited frmtab_nat: Tfrmtab_nat
  Left = 252
  Caption = 'Tabela de C.F.O.P.'
  ClientWidth = 1089
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Width = 1089
  end
  inherited SpeedBar9: TSpeedBar
    Width = 1089
    inherited siPSQ: TSpeedItem
      Visible = False
    end
    inherited siREF: TSpeedItem
      Left = 112
    end
    inherited siSAIR: TSpeedItem
      Left = 332
    end
    inherited siLIXO: TSpeedItem
      Left = 222
    end
    inherited siPRN: TSpeedItem
      Visible = False
    end
    inherited siEVE: TSpeedItem
      Left = 2
    end
  end
  inherited pnldir: TPanel
    Left = 1089
  end
  inherited pnlpri: TPanel
    Width = 1089
    inherited pnldbg: TPanel
      Width = 1089
      inherited gbDET: TGroupBox
        Width = 1089
        inherited DBGConsulta: TdxDBGrid
          Width = 1036
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
            Width = 40
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_CCST'
          end
          object dbgConsultaNAT_CSTS: TdxDBGridMaskColumn
            Width = 66
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_CSTS'
          end
          object dbgConsultaNAT_CSTA: TdxDBGridMaskColumn
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_CSTA'
          end
          object dbgConsultaNAT_CSTI: TdxDBGridMaskColumn
            Width = 40
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_CSTI'
          end
          object dbgConsultaNAT_CSTP: TdxDBGridMaskColumn
            Width = 40
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_CSTP'
          end
          object dbgConsultaNAT_PIPP: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 40
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_PIPP'
          end
          object dbgConsultaNAT_CSTC: TdxDBGridMaskColumn
            Width = 40
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_CSTC'
          end
          object dbgConsultaNAT_PIPC: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 40
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
        end
      end
    end
    inherited pnlbot: TPanel
      Width = 1089
    end
  end
  inherited Cadastro: TIBQuery
    SQL.Strings = (
      'SELECT * FROM TAB_NAT'
      'WHERE NAT_STA = '#39'0'#39)
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_NAT"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroNAT_CNAT: TIBStringField
      DisplayLabel = 'C.F.O.P.'
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
    end
    object cadastroNAT_CSTI: TIBStringField
      DisplayLabel = 'C.S.T. I.P.I.'
      FieldName = 'NAT_CSTI'
      Origin = '"TAB_NAT"."NAT_CSTI"'
      Size = 3
    end
    object cadastroNAT_PIPP: TIBBCDField
      DisplayLabel = '% P.I.S.'
      FieldName = 'NAT_PIPP'
      Origin = '"TAB_NAT"."NAT_PIPP"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object cadastroNAT_CSTP: TIBStringField
      DisplayLabel = 'C.S.T. P.I.S.'
      FieldName = 'NAT_CSTP'
      Origin = '"TAB_NAT"."NAT_CSTP"'
      Size = 3
    end
    object cadastroNAT_PIPC: TIBBCDField
      DisplayLabel = '% P.I.S.'
      FieldName = 'NAT_PIPC'
      Origin = '"TAB_NAT"."NAT_PIPC"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object cadastroNAT_CSTC: TIBStringField
      DisplayLabel = 'C.S.T. C.O.F.I.N.S.'
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
      DisplayLabel = 'C.S.T.'
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
      DisplayLabel = 'C.S.O.S.N.'
      FieldName = 'NAT_CSTS'
      Origin = '"TAB_NAT"."NAT_CSTS"'
      Size = 3
    end
    object cadastroNAT_CSTA: TIBStringField
      DisplayLabel = 'C.S.O.S.N. [C.I.C.M.]'
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
      DisplayLabel = 'C.F.O.P. Equivalente'
      FieldName = 'NAT_CFOP'
      Origin = '"TAB_NAT"."NAT_CFOP"'
      Size = 10
    end
  end
  inherited imageOPC: TImageList
    Left = 268
    Top = 206
  end
end
