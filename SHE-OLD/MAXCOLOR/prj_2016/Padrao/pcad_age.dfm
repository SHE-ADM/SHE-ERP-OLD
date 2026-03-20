inherited frmcad_age: Tfrmcad_age
  Left = 211
  Top = 34
  Caption = 'Agenda'
  ClientHeight = 617
  ClientWidth = 1002
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited sbMSG: TStatusBar
    Top = 598
    Width = 1002
  end
  inherited SpeedBar9: TSpeedBar
    Width = 1002
    inherited siPRN: TSpeedItem [7]
    end
    inherited siEVE: TSpeedItem [8]
      OnClick = siEVEClick
    end
    inherited siLIXO: TSpeedItem [9]
      OnClick = siLIXOClick
    end
  end
  inherited pnldir: TPanel
    Left = 1002
    Height = 484
  end
  inherited pnlpri: TPanel
    Width = 1002
    Height = 484
    inherited pnldbg: TPanel
      Width = 1002
      Height = 273
      inherited gbDET: TGroupBox
        Width = 1002
        Height = 273
        inherited SpeedBar1: TSpeedBar
          Height = 255
        end
        inherited DBGConsulta: TdxDBGrid
          Width = 949
          Height = 255
          KeyField = 'ID'
          ShowSummaryFooter = True
          Filter.Active = True
          Filter.Criteria = {00000000}
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
          object dbgConsultaAGE_NOME: TdxDBGridMaskColumn
            Width = 282
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AGE_NOME'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = 'Itens 0'
            DisableFilter = True
          end
          object dbgConsultaAGE_TIPO: TdxDBGridMaskColumn
            Width = 220
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AGE_TIPO'
          end
          object dbgConsultaAGE_DCAD: TdxDBGridDateColumn
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AGE_DCAD'
          end
          object dbgConsultaAGE_DDD1: TdxDBGridMaskColumn
            Width = 31
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AGE_DDD1'
            DisableFilter = True
          end
          object dbgConsultaAGE_TEL1: TdxDBGridMaskColumn
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AGE_TEL1'
            DisableFilter = True
          end
          object dbgConsultaAGE_LOGR: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AGE_LOGR'
          end
          object dbgConsultaAGE_BAI: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AGE_BAI'
          end
          object dbgConsultaAGE_CID: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AGE_CID'
          end
        end
      end
    end
    inherited pnlbot: TPanel
      Top = 273
      Width = 1002
      Height = 211
      Visible = True
      object pcdet: TdxPageControl
        Left = 0
        Top = 0
        Width = 1002
        Height = 211
        ActivePage = tsdet
        Align = alClient
        HideButtons = False
        HotTrack = False
        MultiLine = False
        OwnerDraw = False
        RaggedRight = False
        ScrollOpposite = False
        TabHeight = 0
        TabOrder = 0
        TabPosition = dxtpTop
        TabWidth = 0
        object tsdet: TdxTabSheet
          Caption = 'Fich'#225'rio'
          object pnlfic: TPanel
            Left = 0
            Top = 0
            Width = 1002
            Height = 187
            Align = alClient
            BevelOuter = bvNone
            Color = 15788249
            TabOrder = 0
            object Shape3: TShape
              Left = 2
              Top = 8
              Width = 103
              Height = 18
              Brush.Color = 14789952
              Pen.Color = 11764252
              Shape = stRoundRect
            end
            object Label7: TLabel
              Left = 10
              Top = 10
              Width = 47
              Height = 14
              Caption = 'Detalhe'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object linha2: TShape
              Left = 112
              Top = 18
              Width = 473
              Height = 3
              Brush.Color = 11106843
              Pen.Color = 14789952
            end
            object Label48: TLabel
              Left = 6
              Top = 36
              Width = 34
              Height = 14
              Caption = 'Nome'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object Label1: TLabel
              Left = 6
              Top = 68
              Width = 59
              Height = 14
              Caption = 'Ocupa'#231#227'o'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object Label2: TLabel
              Left = 6
              Top = 84
              Width = 51
              Height = 14
              Caption = 'Contato'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object Label3: TLabel
              Left = 6
              Top = 100
              Width = 45
              Height = 14
              Caption = 'Fone_1'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object Label4: TLabel
              Left = 6
              Top = 52
              Width = 31
              Height = 14
              Caption = 'Email'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object DBText1: TDBText
              Left = 88
              Top = 36
              Width = 48
              Height = 14
              AutoSize = True
              DataField = 'AGE_NOME'
              DataSource = DTSCadastro
            end
            object DBText2: TDBText
              Left = 88
              Top = 52
              Width = 48
              Height = 14
              AutoSize = True
              DataField = 'AGE_MAIL'
              DataSource = DTSCadastro
            end
            object DBText3: TDBText
              Left = 88
              Top = 68
              Width = 48
              Height = 14
              AutoSize = True
              DataField = 'AGE_TIPO'
              DataSource = DTSCadastro
            end
            object DBText4: TDBText
              Left = 88
              Top = 84
              Width = 48
              Height = 14
              AutoSize = True
              DataField = 'AGE_CONT'
              DataSource = DTSCadastro
            end
            object DBText5: TDBText
              Left = 88
              Top = 100
              Width = 48
              Height = 14
              AutoSize = True
              DataField = 'AGE_DDD1'
              DataSource = DTSCadastro
            end
            object DBText7: TDBText
              Left = 120
              Top = 100
              Width = 48
              Height = 14
              AutoSize = True
              DataField = 'AGE_TEL1'
              DataSource = DTSCadastro
            end
            object DBText6: TDBText
              Left = 296
              Top = 100
              Width = 48
              Height = 14
              AutoSize = True
              DataField = 'AGE_TEL2'
              DataSource = DTSCadastro
            end
            object DBText8: TDBText
              Left = 264
              Top = 100
              Width = 48
              Height = 14
              AutoSize = True
              DataField = 'AGE_DDD2'
              DataSource = DTSCadastro
            end
            object Label5: TLabel
              Left = 214
              Top = 100
              Width = 45
              Height = 14
              Caption = 'Fone_2'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object DBText9: TDBText
              Left = 120
              Top = 116
              Width = 48
              Height = 14
              AutoSize = True
              DataField = 'AGE_TEL3'
              DataSource = DTSCadastro
            end
            object DBText10: TDBText
              Left = 88
              Top = 116
              Width = 55
              Height = 14
              AutoSize = True
              DataField = 'AGE_DDD3'
              DataSource = DTSCadastro
            end
            object Label6: TLabel
              Left = 6
              Top = 116
              Width = 45
              Height = 14
              Caption = 'Fone_3'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object DBText11: TDBText
              Left = 120
              Top = 132
              Width = 55
              Height = 14
              AutoSize = True
              DataField = 'AGE_CEL'
              DataSource = DTSCadastro
            end
            object DBText12: TDBText
              Left = 88
              Top = 132
              Width = 55
              Height = 14
              AutoSize = True
              DataField = 'AGE_DDD5'
              DataSource = DTSCadastro
            end
            object Label8: TLabel
              Left = 6
              Top = 132
              Width = 41
              Height = 14
              Caption = 'Celular'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object Label9: TLabel
              Left = 214
              Top = 116
              Width = 20
              Height = 14
              Caption = 'Fax'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object DBText13: TDBText
              Left = 264
              Top = 116
              Width = 55
              Height = 14
              AutoSize = True
              DataField = 'AGE_DDD4'
              DataSource = DTSCadastro
            end
            object DBText14: TDBText
              Left = 296
              Top = 116
              Width = 55
              Height = 14
              AutoSize = True
              DataField = 'AGE_FAX'
              DataSource = DTSCadastro
            end
            object DBText15: TDBText
              Left = 214
              Top = 132
              Width = 55
              Height = 14
              AutoSize = True
              DataField = 'AGE_TCE1'
              DataSource = DTSCadastro
            end
            object Label10: TLabel
              Left = 6
              Top = 148
              Width = 35
              Height = 14
              Caption = 'R'#225'dio'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object DBText16: TDBText
              Left = 88
              Top = 148
              Width = 55
              Height = 14
              AutoSize = True
              DataField = 'AGE_DDD6'
              DataSource = DTSCadastro
            end
            object DBText17: TDBText
              Left = 120
              Top = 148
              Width = 55
              Height = 14
              AutoSize = True
              DataField = 'AGE_NCEL'
              DataSource = DTSCadastro
            end
            object DBText18: TDBText
              Left = 214
              Top = 148
              Width = 55
              Height = 14
              AutoSize = True
              DataField = 'AGE_TCE2'
              DataSource = DTSCadastro
            end
            object Label11: TLabel
              Left = 6
              Top = 164
              Width = 14
              Height = 14
              Caption = 'ID'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object DBText19: TDBText
              Left = 88
              Top = 164
              Width = 55
              Height = 14
              AutoSize = True
              DataField = 'AGE_NEID'
              DataSource = DTSCadastro
            end
            object Panel1: TPanel
              Left = 596
              Top = 0
              Width = 406
              Height = 187
              Align = alRight
              Color = 15788249
              TabOrder = 0
              object Shape1: TShape
                Left = 7
                Top = 8
                Width = 103
                Height = 18
                Brush.Color = 14789952
                Pen.Color = 11764252
                Shape = stRoundRect
              end
              object Label12: TLabel
                Left = 18
                Top = 10
                Width = 76
                Height = 14
                Caption = 'Observa'#231#245'es'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Shape2: TShape
                Left = 117
                Top = 18
                Width = 284
                Height = 3
                Brush.Color = 11106843
                Pen.Color = 14789952
              end
              object dxDBMemo1: TdxDBMemo
                Left = 1
                Top = 33
                Width = 404
                Align = alBottom
                Color = 15788249
                Style.BorderStyle = xbsNone
                Style.Shadow = True
                TabOrder = 0
                DataField = 'AGE_OBSE'
                DataSource = DTSCadastro
                Height = 153
              end
            end
          end
        end
      end
    end
  end
  inherited Cadastro: TIBQuery
    SQL.Strings = (
      'SELECT * FROM CAD_AGE'
      'WHERE AGE_STA = 0'
      'ORDER BY ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_AGE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroAGE_NOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'AGE_NOME'
      Origin = '"CAD_AGE"."AGE_NOME"'
      Size = 60
    end
    object cadastroAGE_TIPO: TIBStringField
      DisplayLabel = 'Ocupa'#231#227'o'
      FieldName = 'AGE_TIPO'
      Origin = '"CAD_AGE"."AGE_TIPO"'
      Size = 60
    end
    object cadastroAGE_CONT: TIBStringField
      FieldName = 'AGE_CONT'
      Origin = '"CAD_AGE"."AGE_CONT"'
      Size = 40
    end
    object cadastroAGE_DCAD: TDateField
      DisplayLabel = 'Cadastro'
      FieldName = 'AGE_DCAD'
      Origin = '"CAD_AGE"."AGE_DCAD"'
    end
    object cadastroAGE_DDD1: TIBStringField
      DisplayLabel = 'DDD'
      FieldName = 'AGE_DDD1'
      Origin = '"CAD_AGE"."AGE_DDD1"'
      EditMask = '(99);0; '
      Size = 2
    end
    object cadastroAGE_TEL1: TIBStringField
      DisplayLabel = 'Fone_1'
      FieldName = 'AGE_TEL1'
      Origin = '"CAD_AGE"."AGE_TEL1"'
      EditMask = '99999-9999;0; '
      Size = 9
    end
    object cadastroAGE_DDD2: TIBStringField
      FieldName = 'AGE_DDD2'
      Origin = '"CAD_AGE"."AGE_DDD2"'
      EditMask = '(99);0; '
      Size = 2
    end
    object cadastroAGE_TEL2: TIBStringField
      FieldName = 'AGE_TEL2'
      Origin = '"CAD_AGE"."AGE_TEL2"'
      EditMask = '99999-9999;0; '
      Size = 9
    end
    object cadastroAGE_DDD3: TIBStringField
      FieldName = 'AGE_DDD3'
      Origin = '"CAD_AGE"."AGE_DDD3"'
      EditMask = '(99);0; '
      Size = 2
    end
    object cadastroAGE_TEL3: TIBStringField
      FieldName = 'AGE_TEL3'
      Origin = '"CAD_AGE"."AGE_TEL3"'
      EditMask = '99999-9999;0; '
      Size = 9
    end
    object cadastroAGE_DDD4: TIBStringField
      FieldName = 'AGE_DDD4'
      Origin = '"CAD_AGE"."AGE_DDD4"'
      EditMask = '(99);0; '
      Size = 2
    end
    object cadastroAGE_FAX: TIBStringField
      FieldName = 'AGE_FAX'
      Origin = '"CAD_AGE"."AGE_FAX"'
      EditMask = '99999-9999;0; '
      Size = 9
    end
    object cadastroAGE_DDD5: TIBStringField
      FieldName = 'AGE_DDD5'
      Origin = '"CAD_AGE"."AGE_DDD5"'
      EditMask = '(99);0; '
      Size = 2
    end
    object cadastroAGE_CEL: TIBStringField
      FieldName = 'AGE_CEL'
      Origin = '"CAD_AGE"."AGE_CEL"'
      EditMask = '99999-9999;0; '
      Size = 9
    end
    object cadastroAGE_TCE1: TIBStringField
      FieldName = 'AGE_TCE1'
      Origin = '"CAD_AGE"."AGE_TCE1"'
      Size = 10
    end
    object cadastroAGE_DDD6: TIBStringField
      FieldName = 'AGE_DDD6'
      Origin = '"CAD_AGE"."AGE_DDD6"'
      EditMask = '(99);0; '
      Size = 2
    end
    object cadastroAGE_NCEL: TIBStringField
      FieldName = 'AGE_NCEL'
      Origin = '"CAD_AGE"."AGE_NCEL"'
      EditMask = '99999-9999;0; '
      Size = 9
    end
    object cadastroAGE_TCE2: TIBStringField
      FieldName = 'AGE_TCE2'
      Origin = '"CAD_AGE"."AGE_TCE2"'
      Size = 10
    end
    object cadastroAGE_NEID: TIBStringField
      FieldName = 'AGE_NEID'
      Origin = '"CAD_AGE"."AGE_NEID"'
      Size = 15
    end
    object cadastroAGE_TLOG: TIBStringField
      FieldName = 'AGE_TLOG'
      Origin = '"CAD_AGE"."AGE_TLOG"'
      Size = 15
    end
    object cadastroAGE_LOGR: TIBStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'AGE_LOGR'
      Origin = '"CAD_AGE"."AGE_LOGR"'
      Size = 60
    end
    object cadastroAGE_CEP: TIBStringField
      FieldName = 'AGE_CEP'
      Origin = '"CAD_AGE"."AGE_CEP"'
      Size = 9
    end
    object cadastroAGE_NUME: TIBStringField
      FieldName = 'AGE_NUME'
      Origin = '"CAD_AGE"."AGE_NUME"'
      Size = 10
    end
    object cadastroAGE_COMP: TIBStringField
      FieldName = 'AGE_COMP'
      Origin = '"CAD_AGE"."AGE_COMP"'
      Size = 40
    end
    object cadastroAGE_BAI: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'AGE_BAI'
      Origin = '"CAD_AGE"."AGE_BAI"'
      Size = 40
    end
    object cadastroAGE_CID: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'AGE_CID'
      Origin = '"CAD_AGE"."AGE_CID"'
      Size = 40
    end
    object cadastroAGE_ESTA: TIBStringField
      FieldName = 'AGE_ESTA'
      Origin = '"CAD_AGE"."AGE_ESTA"'
      Size = 2
    end
    object cadastroAGE_TLO2: TIBStringField
      FieldName = 'AGE_TLO2'
      Origin = '"CAD_AGE"."AGE_TLO2"'
      Size = 15
    end
    object cadastroAGE_LOG2: TIBStringField
      FieldName = 'AGE_LOG2'
      Origin = '"CAD_AGE"."AGE_LOG2"'
      Size = 60
    end
    object cadastroAGE_CEP2: TIBStringField
      FieldName = 'AGE_CEP2'
      Origin = '"CAD_AGE"."AGE_CEP2"'
      Size = 9
    end
    object cadastroAGE_NUM2: TIBStringField
      FieldName = 'AGE_NUM2'
      Origin = '"CAD_AGE"."AGE_NUM2"'
      Size = 10
    end
    object cadastroAGE_COM2: TIBStringField
      FieldName = 'AGE_COM2'
      Origin = '"CAD_AGE"."AGE_COM2"'
      Size = 40
    end
    object cadastroAGE_BAI2: TIBStringField
      FieldName = 'AGE_BAI2'
      Origin = '"CAD_AGE"."AGE_BAI2"'
      Size = 40
    end
    object cadastroAGE_CID2: TIBStringField
      FieldName = 'AGE_CID2'
      Origin = '"CAD_AGE"."AGE_CID2"'
      Size = 40
    end
    object cadastroAGE_EST2: TIBStringField
      FieldName = 'AGE_EST2'
      Origin = '"CAD_AGE"."AGE_EST2"'
      Size = 2
    end
    object cadastroAGE_MAIL: TIBStringField
      FieldName = 'AGE_MAIL'
      Origin = '"CAD_AGE"."AGE_MAIL"'
      Size = 60
    end
    object cadastroAGE_OBSE: TMemoField
      FieldName = 'AGE_OBSE'
      Origin = '"CAD_AGE"."AGE_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroAGE_STA: TIBStringField
      FieldName = 'AGE_STA'
      Origin = '"CAD_AGE"."AGE_STA"'
      FixedChar = True
      Size = 1
    end
  end
  inherited IBTra: TIBTransaction
    Left = 512
    Top = 8
  end
  inherited ibSP: TIBStoredProc
    Left = 544
    Top = 8
  end
  inherited imageITEM: TImageList
    Left = 244
    Top = 198
  end
  inherited imageOPC: TImageList
    Left = 508
    Top = 46
  end
end
