inherited frmcai_san: Tfrmcai_san
  Left = 173
  Caption = 'Sangria'
  ClientWidth = 730
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Width = 730
  end
  inherited SBMenu: TSpeedBar
    Width = 730
  end
  inherited pnldir: TPanel
    Left = 730
  end
  inherited pnldbg: TPanel
    Width = 730
    inherited pnlbot: TPanel
      Width = 730
    end
    inherited gbDET: TGroupBox
      Width = 730
      inherited DBGConsulta: TdxDBGrid
        Width = 682
        KeyField = 'ID'
        ShowSummaryFooter = True
        Filter.Active = True
        Filter.Criteria = {00000000}
        object dbgConsultaCAI_DATA: TdxDBGridDateColumn
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CAI_DATA'
        end
        object dbgConsultaCAI_RESP: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CAI_RESP'
        end
        object dbgConsultaCAI_MOTI: TdxDBGridMaskColumn
          Width = 280
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CAI_MOTI'
        end
        object dbgConsultaCAI_CRED: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CAI_CRED'
          DisableFilter = True
        end
        object dbgConsultaCAI_DEBI: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CAI_DEBI'
          DisableFilter = True
        end
        object dbgConsultaCAI_SALD: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CAI_SALD'
          DisableFilter = True
        end
      end
    end
  end
  inherited Cadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from CAI_SAN'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAI_SAN'
      
        '  (CAI_CRED, CAI_DATA, CAI_DEBI, CAI_MOTI, CAI_RESP, CAI_SALD, I' +
        'D)'
      'values'
      
        '  (:CAI_CRED, :CAI_DATA, :CAI_DEBI, :CAI_MOTI, :CAI_RESP, :CAI_S' +
        'ALD, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CAI_DATA,'
      '  CAI_RESP,'
      '  CAI_MOTI,'
      '  CAI_CRED,'
      '  CAI_DEBI,'
      '  CAI_SALD'
      'from CAI_SAN '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAI_SAN')
    ModifySQL.Strings = (
      'update CAI_SAN'
      'set'
      '  CAI_CRED = :CAI_CRED,'
      '  CAI_DATA = :CAI_DATA,'
      '  CAI_DEBI = :CAI_DEBI,'
      '  CAI_MOTI = :CAI_MOTI,'
      '  CAI_RESP = :CAI_RESP,'
      '  CAI_SALD = :CAI_SALD,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAI_SAN"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroCAI_DATA: TDateField
      DisplayLabel = 'Dt Lancto'
      FieldName = 'CAI_DATA'
      Origin = '"CAI_SAN"."CAI_DATA"'
    end
    object cadastroCAI_RESP: TIBStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'CAI_RESP'
      Origin = '"CAI_SAN"."CAI_RESP"'
      Size = 15
    end
    object cadastroCAI_MOTI: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'CAI_MOTI'
      Origin = '"CAI_SAN"."CAI_MOTI"'
      Size = 60
    end
    object cadastroCAI_CRED: TIBBCDField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'CAI_CRED'
      Origin = '"CAI_SAN"."CAI_CRED"'
      Precision = 9
      Size = 2
    end
    object cadastroCAI_DEBI: TIBBCDField
      DisplayLabel = 'D'#233'bito'
      FieldName = 'CAI_DEBI'
      Origin = '"CAI_SAN"."CAI_DEBI"'
      Precision = 9
      Size = 2
    end
    object cadastroCAI_SALD: TIBBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'CAI_SALD'
      Origin = '"CAI_SAN"."CAI_SALD"'
      Precision = 9
      Size = 2
    end
    object cadastroCAI_OBSE: TMemoField
      DisplayLabel = 'Obse'
      FieldName = 'CAI_OBSE'
      Origin = '"CAI_SAN"."CAI_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  inherited ILEdicao: TImageList
    Top = 350
  end
end
