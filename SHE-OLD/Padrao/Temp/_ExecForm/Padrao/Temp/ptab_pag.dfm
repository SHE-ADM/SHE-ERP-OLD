inherited frmtab_pag: Tfrmtab_pag
  Left = 199
  Top = 35
  AlphaBlendValue = 0
  Caption = 'Condi'#231#245'es de Pagamentos'
  ClientHeight = 722
  ClientWidth = 1317
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited SpeedBar2: TSpeedBar
    Width = 1317
    inherited siREF: TSpeedItem [4]
    end
    inherited siSAIR: TSpeedItem [5]
    end
    inherited siEVE: TSpeedItem [6]
    end
    inherited siPSQ: TSpeedItem [7]
      Tag = 1
    end
    inherited siREL: TSpeedItem
      Left = 332
    end
    inherited siLIXO: TSpeedItem [9]
      Left = 222
    end
  end
  inherited pnldir: TPanel
    Left = 1317
    Height = 604
  end
  inherited pnldbg: TPanel
    Width = 1317
    Height = 604
    inherited pnlbot: TPanel
      Top = 602
      Width = 1317
    end
    inherited gbDET: TGroupBox
      Width = 1317
      Height = 602
      inherited DBGConsulta: TdxDBGrid
        Width = 1258
        Height = 581
        Bands = <
          item
            Caption = 'Cadastro'
            Fixed = bfLeft
            Width = 307
          end
          item
            Caption = 'Prazos'
          end
          item
            Caption = 'Totais'
            Width = 156
          end
          item
            Alignment = taLeftJustify
            Caption = 'Cria'#231#227'o'
            Visible = False
          end
          item
            Alignment = taLeftJustify
            Caption = 'Edi'#231#227'o'
            Visible = False
          end
          item
            Alignment = taLeftJustify
            Caption = 'Dispositivo'
            Visible = False
          end>
        DefaultLayout = False
        KeyField = 'ID'
        ShowSummaryFooter = True
        BandColor = clGray
        BandFont.Color = clWhite
        BandFont.Name = 'Segoe UI Semibold'
        BandFont.Style = [fsBold, fsItalic]
        Filter.Active = True
        Filter.Criteria = {00000000}
        ShowBands = True
        OnCustomDrawCell = DBGConsultaCustomDrawCell
        object dbgConsultaPAG_DPAG: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Width = 300
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PAG_DPAG'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object dbgConsultaPAG_D001: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D001'
          DisableFilter = True
        end
        object dbgConsultaPAG_D002: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D002'
          DisableFilter = True
        end
        object dbgConsultaPAG_D003: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D003'
          DisableFilter = True
        end
        object dbgConsultaPAG_D004: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D004'
          DisableFilter = True
        end
        object dbgConsultaPAG_D005: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D005'
          DisableFilter = True
        end
        object dbgConsultaPAG_D006: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D006'
          DisableFilter = True
        end
        object dbgConsultaPAG_D007: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D007'
          DisableFilter = True
        end
        object dbgConsultaPAG_D008: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D008'
          DisableFilter = True
        end
        object dbgConsultaPAG_D009: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D009'
          DisableFilter = True
        end
        object dbgConsultaPAG_D010: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D010'
          DisableFilter = True
        end
        object dbgConsultaPAG_D011: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D011'
          DisableFilter = True
        end
        object dbgConsultaPAG_D012: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D012'
          DisableFilter = True
        end
        object DBGConsultaPAG_D013: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D013'
          DisableFilter = True
        end
        object DBGConsultaPAG_D014: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D014'
          DisableFilter = True
        end
        object DBGConsultaPAG_D015: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D015'
          DisableFilter = True
        end
        object DBGConsultaPAG_D016: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D016'
          DisableFilter = True
        end
        object DBGConsultaPAG_D017: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D017'
          DisableFilter = True
        end
        object DBGConsultaPAG_D018: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D018'
          DisableFilter = True
        end
        object DBGConsultaPAG_D019: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D019'
          DisableFilter = True
        end
        object DBGConsultaPAG_D020: TdxDBGridMaskColumn
          Alignment = taRightJustify
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 1
          RowIndex = 0
          FieldName = 'PAG_D020'
          DisableFilter = True
        end
        object dbgConsultaPAG_PARC: TdxDBGridMaskColumn
          Color = 15329769
          DisableEditor = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 69
          BandIndex = 2
          RowIndex = 0
          FieldName = 'PAG_PARC'
        end
        object DBGConsultaPAG_PRAZ: TdxDBGridMaskColumn
          Color = 15329769
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 55
          BandIndex = 2
          RowIndex = 0
          FieldName = 'PAG_PRAZ'
        end
        object DBGConsultaDECA: TdxDBGridMaskColumn
          Color = clInfoBk
          MinWidth = 80
          Width = 80
          BandIndex = 3
          RowIndex = 0
          FieldName = 'DECA'
        end
        object DBGConsultaDEED: TdxDBGridMaskColumn
          Color = clInfoBk
          MinWidth = 80
          Width = 80
          BandIndex = 4
          RowIndex = 0
          FieldName = 'DEED'
        end
        object DBGConsultaHOST: TdxDBGridMaskColumn
          Color = clInfoBk
          MinWidth = 80
          Width = 82
          BandIndex = 5
          RowIndex = 0
          FieldName = 'HOST'
        end
      end
      inherited SpeedBar1: TSpeedBar
        Height = 581
      end
    end
  end
  inherited SBRodape: TdxStatusBar
    Top = 701
    Width = 1317
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 125
        Text = 'Consulta'
        Width = 125
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 0
        Width = 1040
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
  inherited Cadastro: TIBDataSet
    BeforePost = cadastroBeforePost
    DeleteSQL.Strings = (
      'delete from TAB_PAG'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_PAG'
      '  (HOST, ID, IDCA, IDEP,'
      
        '   IP, PAG_D001, PAG_D002, PAG_D003, PAG_D004, PAG_D005, PAG_D00' +
        '6,'
      
        '   PAG_D007, PAG_D008, PAG_D009, PAG_D010, PAG_D011, PAG_D012, P' +
        'AG_D013, '
      
        '   PAG_D014, PAG_D015, PAG_D016, PAG_D017, PAG_D018, PAG_D019, P' +
        'AG_D020, '
      '   PAG_DPAG, PAG_PARC, PAG_PRAZ)'
      'values'
      '  (:HOST, :ID, :IDCA,'
      
        '   :IDEP, :IP, :PAG_D001, :PAG_D002, :PAG_D003, :PAG_D004, :PAG_' +
        'D005,'
      
        '   :PAG_D006, :PAG_D007, :PAG_D008, :PAG_D009, :PAG_D010, :PAG_D' +
        '011, :PAG_D012, '
      
        '   :PAG_D013, :PAG_D014, :PAG_D015, :PAG_D016, :PAG_D017, :PAG_D' +
        '018, :PAG_D019, '
      '   :PAG_D020, :PAG_DPAG, :PAG_PARC, :PAG_PRAZ)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  IDEP,'
      '  IDCA,'
      '  IDED,'
      '  PAG_D001,'
      '  PAG_D002,'
      '  PAG_D003,'
      '  PAG_D004,'
      '  PAG_D005,'
      '  PAG_D006,'
      '  PAG_D007,'
      '  PAG_D008,'
      '  PAG_D009,'
      '  PAG_D010,'
      '  PAG_D011,'
      '  PAG_D012,'
      '  PAG_D013,'
      '  PAG_D014,'
      '  PAG_D015,'
      '  PAG_D016,'
      '  PAG_D017,'
      '  PAG_D018,'
      '  PAG_D019,'
      '  PAG_D020,'
      '  PAG_PARC,'
      '  PAG_PRAZ,'
      '  PAG_DPAG,'
      '  IP,'
      '  HOST'
      'from TAB_PAG'
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'SELECT   PK.*,CA.LOGIN||'#39' '#39'||FTIMESTAMP(PK.DTCA) AS DECA,ED.LOGI' +
        'N||'#39' '#39'||FTIMESTAMP(PK.DTED) AS DEED'
      'FROM     TAB_PAG  AS PK'
      'JOIN     TAB_USER AS CA ON (CA.ID = PK.IDCA)'
      'JOIN     TAB_USER AS ED ON (ED.ID = PK.IDED)'
      'WHERE    PK.ID > 0'
      'ORDER BY PK.ID')
    ModifySQL.Strings = (
      'update TAB_PAG'
      'set'
      '  HOST = :HOST,'
      '  ID = :ID,'
      '  IDCA = :IDCA,'
      '  IDEP = :IDEP,'
      '  IP = :IP,'
      '  PAG_D001 = :PAG_D001,'
      '  PAG_D002 = :PAG_D002,'
      '  PAG_D003 = :PAG_D003,'
      '  PAG_D004 = :PAG_D004,'
      '  PAG_D005 = :PAG_D005,'
      '  PAG_D006 = :PAG_D006,'
      '  PAG_D007 = :PAG_D007,'
      '  PAG_D008 = :PAG_D008,'
      '  PAG_D009 = :PAG_D009,'
      '  PAG_D010 = :PAG_D010,'
      '  PAG_D011 = :PAG_D011,'
      '  PAG_D012 = :PAG_D012,'
      '  PAG_D013 = :PAG_D013,'
      '  PAG_D014 = :PAG_D014,'
      '  PAG_D015 = :PAG_D015,'
      '  PAG_D016 = :PAG_D016,'
      '  PAG_D017 = :PAG_D017,'
      '  PAG_D018 = :PAG_D018,'
      '  PAG_D019 = :PAG_D019,'
      '  PAG_D020 = :PAG_D020,'
      '  PAG_DPAG = :PAG_DPAG,'
      '  PAG_PARC = :PAG_PARC,'
      '  PAG_PRAZ = :PAG_PRAZ'
      'where'
      '  ID = :OLD_ID')
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_PAG"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadastroIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"TAB_PAG"."IDEP"'
    end
    object CadastroIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"TAB_PAG"."IDCA"'
    end
    object CadastroDECA: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'DECA'
      ProviderFlags = []
      Size = 46
    end
    object CadastroIDED: TSmallintField
      FieldName = 'IDED'
      Origin = '"TAB_PAG"."IDED"'
    end
    object CadastroDEED: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'DEED'
      ProviderFlags = []
      Size = 46
    end
    object cadastroPAG_DPAG: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PAG_DPAG'
      Origin = '"TAB_PAG"."PAG_DPAG"'
      Size = 50
    end
    object cadastroPAG_PARC: TSmallintField
      DisplayLabel = 'Parcelas'
      FieldName = 'PAG_PARC'
      Origin = '"TAB_PAG"."PAG_PARC"'
      DisplayFormat = '0'
    end
    object cadastroPAG_PRAZ: TSmallintField
      DisplayLabel = 'Prazo'
      FieldName = 'PAG_PRAZ'
      Origin = '"TAB_PAG"."PAG_PRAZ"'
      DisplayFormat = '0'
    end
    object cadastroPAG_D001: TIntegerField
      DisplayLabel = '1'#186' )'
      FieldName = 'PAG_D001'
      Origin = '"TAB_PAG"."PAG_D001"'
      DisplayFormat = '0'
    end
    object cadastroPAG_D002: TIntegerField
      DisplayLabel = '2'#186' )'
      FieldName = 'PAG_D002'
      Origin = '"TAB_PAG"."PAG_D002"'
      DisplayFormat = '0'
    end
    object cadastroPAG_D003: TIntegerField
      DisplayLabel = '3'#186' )'
      FieldName = 'PAG_D003'
      Origin = '"TAB_PAG"."PAG_D003"'
      DisplayFormat = '0'
    end
    object cadastroPAG_D004: TIntegerField
      DisplayLabel = '4'#186' )'
      FieldName = 'PAG_D004'
      Origin = '"TAB_PAG"."PAG_D004"'
      DisplayFormat = '0'
    end
    object cadastroPAG_D005: TIntegerField
      DisplayLabel = '5'#186' )'
      FieldName = 'PAG_D005'
      Origin = '"TAB_PAG"."PAG_D005"'
      DisplayFormat = '0'
    end
    object cadastroPAG_D006: TIntegerField
      DisplayLabel = '6'#186' )'
      FieldName = 'PAG_D006'
      Origin = '"TAB_PAG"."PAG_D006"'
      DisplayFormat = '0'
    end
    object cadastroPAG_D007: TIntegerField
      DisplayLabel = '7'#186' )'
      FieldName = 'PAG_D007'
      Origin = '"TAB_PAG"."PAG_D007"'
      DisplayFormat = '0'
    end
    object cadastroPAG_D008: TIntegerField
      DisplayLabel = '8'#186' )'
      FieldName = 'PAG_D008'
      Origin = '"TAB_PAG"."PAG_D008"'
      DisplayFormat = '0'
    end
    object cadastroPAG_D009: TIntegerField
      DisplayLabel = '8'#186' )'
      FieldName = 'PAG_D009'
      Origin = '"TAB_PAG"."PAG_D009"'
      DisplayFormat = '0'
    end
    object cadastroPAG_D010: TIntegerField
      DisplayLabel = '10'#186' )'
      FieldName = 'PAG_D010'
      Origin = '"TAB_PAG"."PAG_D010"'
      DisplayFormat = '0'
    end
    object CadastroPAG_D011: TIntegerField
      DisplayLabel = '11'#186' )'
      FieldName = 'PAG_D011'
      Origin = '"TAB_PAG"."PAG_D011"'
      DisplayFormat = '0'
    end
    object CadastroPAG_D012: TIntegerField
      DisplayLabel = '12'#186' )'
      FieldName = 'PAG_D012'
      Origin = '"TAB_PAG"."PAG_D012"'
      DisplayFormat = '0'
    end
    object CadastroPAG_D013: TIntegerField
      DisplayLabel = '13'#186' )'
      FieldName = 'PAG_D013'
      Origin = '"TAB_PAG"."PAG_D013"'
      DisplayFormat = '0'
    end
    object CadastroPAG_D014: TIntegerField
      DisplayLabel = '14'#186' )'
      FieldName = 'PAG_D014'
      Origin = '"TAB_PAG"."PAG_D014"'
      DisplayFormat = '0'
    end
    object CadastroPAG_D015: TIntegerField
      DisplayLabel = '15'#186' )'
      FieldName = 'PAG_D015'
      Origin = '"TAB_PAG"."PAG_D015"'
      DisplayFormat = '0'
    end
    object CadastroPAG_D016: TIntegerField
      DisplayLabel = '16'#186' )'
      FieldName = 'PAG_D016'
      Origin = '"TAB_PAG"."PAG_D016"'
      DisplayFormat = '0'
    end
    object CadastroPAG_D017: TIntegerField
      DisplayLabel = '17'#186' )'
      FieldName = 'PAG_D017'
      Origin = '"TAB_PAG"."PAG_D017"'
      DisplayFormat = '0'
    end
    object CadastroPAG_D018: TIntegerField
      DisplayLabel = '18'#186' )'
      FieldName = 'PAG_D018'
      Origin = '"TAB_PAG"."PAG_D018"'
      DisplayFormat = '0'
    end
    object CadastroPAG_D019: TIntegerField
      DisplayLabel = '19'#186' )'
      FieldName = 'PAG_D019'
      Origin = '"TAB_PAG"."PAG_D019"'
    end
    object CadastroPAG_D020: TIntegerField
      DisplayLabel = '20'#186' )'
      FieldName = 'PAG_D020'
      Origin = '"TAB_PAG"."PAG_D020"'
    end
    object CadastroIP: TIBStringField
      FieldName = 'IP'
      Origin = '"TAB_PAG"."IP"'
      Size = 30
    end
    object CadastroHOST: TIBStringField
      DisplayLabel = 'Dispositivo'
      FieldName = 'HOST'
      Origin = '"TAB_PAG"."HOST"'
      Size = 30
    end
  end
  inherited DTSCadastro: TDataSource
    OnDataChange = DTSCadastroDataChange
  end
  inherited ALPrincipal: TActionList
    Top = 320
  end
end
