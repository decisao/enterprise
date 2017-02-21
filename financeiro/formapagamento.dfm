inherited formFormaPagamento: TformFormaPagamento
  Caption = 'Condi'#231#245'es de Pagamento'
  ClientHeight = 428
  ClientWidth = 494
  ExplicitWidth = 502
  ExplicitHeight = 462
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 494
    Height = 408
    ExplicitWidth = 494
    ExplicitHeight = 408
    ClientRectBottom = 407
    ClientRectRight = 493
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 492
      ExplicitHeight = 406
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 492
        ExplicitWidth = 492
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 377
        Width = 492
        ExplicitTop = 377
        ExplicitWidth = 492
      end
      inherited pnlFundoGrade: TPanel
        Width = 492
        Height = 300
        ExplicitWidth = 492
        ExplicitHeight = 300
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 297
          Width = 492
          Height = 3
          ExplicitTop = 297
          ExplicitWidth = 492
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 492
          ExplicitWidth = 492
        end
        inherited grdDados: TcxGrid
          Width = 492
          Height = 275
          ExplicitWidth = 492
          ExplicitHeight = 279
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              Tag = 1
              Caption = '*'
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              MinWidth = 24
              Options.Filtering = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 24
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
              Options.Editing = False
            end
            object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'DESCRICAO'
              Options.Editing = False
              SortIndex = 0
              SortOrder = soAscending
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 492
      ExplicitHeight = 406
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 492
        ExplicitWidth = 492
      end
      inherited pnlEdicao: TPanel
        Width = 492
        Height = 329
        ExplicitWidth = 492
        ExplicitHeight = 331
        object lbCODIGO: TLabel
          Left = 8
          Top = 8
          Width = 40
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = dedCODIGO
        end
        object lbDESCRICAO: TLabel
          Left = 8
          Top = 48
          Width = 56
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = dedDESCRICAO
        end
        object lbCONDICAO: TLabel
          Left = 8
          Top = 88
          Width = 101
          Height = 13
          Caption = 'Condi'#231#227'o Regular'
          FocusControl = dedCONDICAO
        end
        object Label1: TLabel
          Left = 8
          Top = 128
          Width = 108
          Height = 13
          Caption = 'Documento a Vista'
          FocusControl = cxDBTextEdit1
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
        object Label2: TLabel
          Left = 8
          Top = 168
          Width = 112
          Height = 13
          Caption = 'Documento a Prazo'
          FocusControl = cxDBTextEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = Label2Click
          OnMouseEnter = lbModeloMouseEnter
          OnMouseLeave = lbModeloMouseLeave
        end
        object dedCODIGO: TcxDBTextEdit
          Left = 7
          Top = 23
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = dsrDados
          TabOrder = 0
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 81
        end
        object dedDESCRICAO: TcxDBTextEdit
          Left = 7
          Top = 63
          DataBinding.DataField = 'DESCRICAO'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 385
        end
        object dedCONDICAO: TcxDBTextEdit
          Left = 7
          Top = 103
          DataBinding.DataField = 'CONDICAO'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 385
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 7
          Top = 143
          TabStop = False
          DataBinding.DataField = 'DOCVISTA'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          TabOrder = 3
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 210
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 7
          Top = 183
          TabStop = False
          DataBinding.DataField = 'DOCPRAZO'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          TabOrder = 4
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 210
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 7
          Top = 222
          Caption = 'Habilitar Pessoas no Cadastro'
          DataBinding.DataField = 'CADASTRAR_CLIENTES'
          DataBinding.DataSource = dsrDados
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          TabOrder = 5
          Width = 369
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 408
    Width = 494
    ExplicitTop = 408
    ExplicitWidth = 494
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 352
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManagerCadBar1: TdxBar
      FloatClientWidth = 251
      FloatClientHeight = 45
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmbSelecionar'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 172
          Visible = True
          ItemName = 'edtSelecionar'
        end>
    end
    inherited dxBarManagerCadBar2: TdxBar
      FloatClientHeight = 280
    end
    inherited dxBarManagerCadBar3: TdxBar
      FloatClientWidth = 23
      FloatClientHeight = 22
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
    inherited cmbSelecionar: TdxBarCombo
      Tag = 1
    end
    inherited btnAjuda: TdxBarLargeButton
      SyncImageIndex = False
      ImageIndex = 0
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 
      'SELECT '#39'N'#39' AS SEL, CONDPAG.*, DA.DOCUMENTO AS DOCVISTA, DP.DOCUM' +
      'ENTO AS DOCPRAZO FROM CONDPAG JOIN DOCUMENTOS DA ON (DA.CODIGO =' +
      ' CONDPAG.CODDOC_AVISTA) JOIN DOCUMENTOS DP ON (DP.CODIGO = CONDP' +
      'AG.CODDOC_PRAZO)'
    PacketRecords = 50
    ProviderName = 'pvCondpagtos'
    Left = 432
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsDadosCONDICAO: TStringField
      FieldName = 'CONDICAO'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsDadosQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object cdsDadosPRAZOMEDIO: TIntegerField
      FieldName = 'PRAZOMEDIO'
    end
    object cdsDadosTAXAJUROS: TFloatField
      FieldName = 'TAXAJUROS'
    end
    object cdsDadosCODDOC_AVISTA: TIntegerField
      FieldName = 'CODDOC_AVISTA'
    end
    object cdsDadosCODDOC_PRAZO: TIntegerField
      FieldName = 'CODDOC_PRAZO'
    end
    object cdsDadosCADASTRAR_CLIENTES: TStringField
      FieldName = 'CADASTRAR_CLIENTES'
      FixedChar = True
      Size = 1
    end
    object cdsDadosDOCVISTA: TStringField
      FieldName = 'DOCVISTA'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosDOCPRAZO: TStringField
      FieldName = 'DOCPRAZO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
  end
  inherited dsrDados: TDataSource
    Left = 432
  end
  inherited tmrFocus: TTimer
    Left = 432
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 528
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.755175231480000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 608
  end
  inherited actDetalhes: TActionList
    Left = 528
  end
  inherited tmrRelogio: TTimer
    Left = 432
  end
  inherited SaveDialog: TSaveDialog
    Left = 608
  end
end
