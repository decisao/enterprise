inherited formPessoasEquip: TformPessoasEquip
  Caption = 'Equipamentos do Cliente'
  ClientHeight = 395
  ClientWidth = 461
  ExplicitWidth = 469
  ExplicitHeight = 429
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 461
    Height = 375
    ExplicitWidth = 461
    ExplicitHeight = 375
    ClientRectBottom = 374
    ClientRectRight = 460
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 459
      ExplicitHeight = 373
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 459
        ExplicitWidth = 459
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 344
        Width = 459
        ExplicitTop = 344
        ExplicitWidth = 459
      end
      inherited pnlFundoGrade: TPanel
        Width = 459
        Height = 267
        ExplicitWidth = 459
        ExplicitHeight = 267
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 264
          Width = 459
          Height = 3
          ExplicitTop = 264
          ExplicitWidth = 459
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 459
          ExplicitWidth = 459
        end
        inherited grdDados: TcxGrid
          Width = 459
          Height = 242
          ExplicitWidth = 455
          ExplicitHeight = 242
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              Caption = '**'
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ImmediatePost = True
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              MinWidth = 36
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 36
            end
            object cxGrid1DBTableView1MARCA: TcxGridDBColumn
              Caption = 'Marca'
              DataBinding.FieldName = 'MARCA'
              Options.Editing = False
              Options.Focusing = False
              Width = 201
            end
            object cxGrid1DBTableView1MODELO: TcxGridDBColumn
              Caption = 'Modelo'
              DataBinding.FieldName = 'MODELO'
              Options.Editing = False
              Options.Focusing = False
              Width = 240
            end
            object cxGrid1DBTableView1SERIE: TcxGridDBColumn
              Caption = 'N'#250'm.S'#233'rie'
              DataBinding.FieldName = 'SERIE'
              Options.Editing = False
              Options.Focusing = False
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 459
      ExplicitHeight = 373
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 459
        ExplicitWidth = 459
      end
      inherited pnlEdicao: TPanel
        Width = 459
        Height = 296
        ExplicitWidth = 437
        ExplicitHeight = 303
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 34
          Height = 13
          Cursor = crHandPoint
          Caption = 'Marca'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = Label1Click
          OnMouseEnter = lbModeloMouseEnter
          OnMouseLeave = lbModeloMouseLeave
        end
        object dedModelo: TLabel
          Left = 8
          Top = 48
          Width = 40
          Height = 13
          Cursor = crHandPoint
          Caption = 'Modelo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = dedModeloClick
          OnMouseEnter = lbModeloMouseEnter
          OnMouseLeave = lbModeloMouseLeave
        end
        object Label3: TLabel
          Left = 8
          Top = 88
          Width = 97
          Height = 13
          Caption = 'N'#250'mero de S'#233'rie'
          FocusControl = dedSERIE
        end
        object Label6: TLabel
          Left = 8
          Top = 224
          Width = 96
          Height = 13
          Caption = 'Tipo de Contrato'
        end
        object Label2: TLabel
          Left = 8
          Top = 264
          Width = 64
          Height = 13
          Caption = 'Numerador'
          FocusControl = dedNUMERADOR
        end
        object Label93: TLabel
          Left = 8
          Top = 176
          Width = 65
          Height = 13
          Caption = 'Localiza'#231#227'o'
        end
        object Label7: TLabel
          Left = 168
          Top = 264
          Width = 53
          Height = 13
          Caption = 'Territ'#243'rio'
          FocusControl = cxDBTextEdit1
        end
        object dedMarca: TcxDBTextEdit
          Left = 7
          Top = 23
          TabStop = False
          DataBinding.DataField = 'MARCA'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          TabOrder = 0
          Width = 282
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 7
          Top = 63
          TabStop = False
          DataBinding.DataField = 'MODELO'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          TabOrder = 1
          Width = 282
        end
        object dedSERIE: TcxDBTextEdit
          Left = 7
          Top = 103
          DataBinding.DataField = 'SERIE'
          DataBinding.DataSource = dsrDados
          TabOrder = 2
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 186
        end
        object dedNUMERADOR: TcxDBTextEdit
          Left = 7
          Top = 279
          DataBinding.DataField = 'NUMERADOR'
          DataBinding.DataSource = dsrDados
          TabOrder = 3
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 122
        end
        object GroupBox1: TGroupBox
          Left = 8
          Top = 128
          Width = 281
          Height = 81
          TabOrder = 4
          object Label4: TLabel
            Left = 8
            Top = 32
            Width = 31
            Height = 13
            Caption = 'In'#237'cio'
            FocusControl = dedDataIni
          end
          object Label5: TLabel
            Left = 152
            Top = 32
            Width = 26
            Height = 13
            Caption = 'Final'
            FocusControl = dedDataFim
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 4
            Top = 8
            Caption = 'Garantia'
            DataBinding.DataField = 'GARANTIA'
            DataBinding.DataSource = dsrDados
            Properties.ImmediatePost = True
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            TabOrder = 0
            Width = 121
          end
        end
        object dblLocalizacao: TcxDBLookupComboBox
          Left = 7
          Top = 239
          DataBinding.DataField = 'TIPOCONTRATO'
          DataBinding.DataSource = dsrDados
          Properties.KeyFieldNames = 'ITEM'
          Properties.ListColumns = <
            item
              FieldName = 'ITEM'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsrTipoContrato
          TabOrder = 5
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 282
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 167
          Top = 279
          DataBinding.DataField = 'TERRITORIO'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 1
          TabOrder = 6
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 122
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 375
    Width = 461
    ExplicitTop = 375
    ExplicitWidth = 461
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 336
    Top = 255
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManagerCadBar1: TdxBar
      FloatClientWidth = 183
      FloatClientHeight = 85
    end
    inherited dxBarManagerCadBar2: TdxBar
      FloatClientHeight = 280
    end
    inherited dxBarManagerCadBar3: TdxBar
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnEmpresas'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnOcultos'
        end>
      OldName = 'Links'
      Visible = False
    end
    inherited dxBarManagerCadBar4: TdxBar
      FloatClientWidth = 69
      FloatClientHeight = 22
      OldName = 'Where'
    end
    inherited dxBarManagerCadBar5: TdxBar
      FloatClientWidth = 88
      FloatClientHeight = 223
      OldName = 'BotoesDetalhes'
    end
    inherited btnAdicionar: TdxBarLargeButton
      ImageIndex = 96
    end
    inherited btnAjuda: TdxBarLargeButton
      SyncImageIndex = False
      ImageIndex = 0
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 
      'SELECT '#39'N'#39' AS SEL, CE.*, MA.DESCRICAO AS MARCA, MO.DESCRICAO AS ' +
      'MODELO FROM CLI_EQUIP CE JOIN MARCAS MA ON (MA.CODIGO = CE.CODMA' +
      'RCA) JOIN MODELOS MO ON (MO.CODIGO = CE.CODMODELO AND MO.CODEQUI' +
      'PAMENTO = CE.CODMARCA)'
    ProviderName = 'pvCliequip'
    Left = 368
    Top = 304
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosCODEQUIPAMENTO: TIntegerField
      FieldName = 'CODEQUIPAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosCODMARCA: TIntegerField
      FieldName = 'CODMARCA'
      Required = True
    end
    object cdsDadosCODMODELO: TIntegerField
      FieldName = 'CODMODELO'
      Required = True
    end
    object cdsDadosSERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
      Size = 30
    end
    object cdsDadosGARANTIA: TStringField
      FieldName = 'GARANTIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosDATAINI: TDateField
      FieldName = 'DATAINI'
    end
    object cdsDadosDATAFIM: TDateField
      FieldName = 'DATAFIM'
    end
    object cdsDadosTIPOCONTRATO: TStringField
      FieldName = 'TIPOCONTRATO'
      FixedChar = True
      Size = 30
    end
    object cdsDadosNUMERADOR: TIntegerField
      FieldName = 'NUMERADOR'
    end
    object cdsDadosMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosMODELO: TStringField
      FieldName = 'MODELO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosTERRITORIO: TStringField
      FieldName = 'TERRITORIO'
      FixedChar = True
      Size = 1
    end
  end
  inherited dsrDados: TDataSource
    Left = 368
    Top = 352
  end
  inherited tmrFocus: TTimer
    Left = 368
    Top = 256
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 464
    Top = 256
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.759428680560000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 544
    Top = 256
  end
  inherited actDetalhes: TActionList
    Left = 464
    Top = 200
  end
  inherited tmrRelogio: TTimer
    Left = 368
    Top = 200
  end
  inherited tmrLabel: TTimer
    Left = 632
    Top = 200
  end
  inherited menuGrade: TPopupMenu
    Left = 624
    Top = 256
  end
  inherited tmrFocus2: TTimer
    Left = 464
    Top = 312
  end
  inherited SaveDialog: TSaveDialog
    Left = 544
    Top = 200
  end
  object memTipoContrato: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 426
    Top = 91
    object memTipoContratoITEM: TStringField
      FieldName = 'ITEM'
      Size = 40
    end
  end
  object dsrTipoContrato: TDataSource
    AutoEdit = False
    DataSet = memTipoContrato
    Left = 426
    Top = 147
  end
end
