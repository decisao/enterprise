inherited formBairros: TformBairros
  Caption = 'Bairros'
  ClientWidth = 515
  ExplicitWidth = 523
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 515
    ExplicitWidth = 515
    ClientRectRight = 514
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 513
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 513
        ExplicitWidth = 513
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Width = 513
        ExplicitWidth = 513
      end
      inherited pnlFundoGrade: TPanel
        Width = 513
        ExplicitWidth = 513
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 323
          Width = 513
          Height = 3
          ExplicitTop = 323
          ExplicitWidth = 513
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 513
          ExplicitWidth = 513
        end
        inherited grdDados: TcxGrid
          Width = 513
          Height = 301
          ExplicitWidth = 509
          ExplicitHeight = 301
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            OptionsBehavior.IncSearch = True
            OptionsBehavior.IncSearchItem = cxGrid1DBTableView1BAIRRO
            OptionsBehavior.NavigatorHints = True
            OptionsBehavior.PullFocusing = True
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
            end
            object cxGrid1DBTableView1BAIRRO: TcxGridDBColumn
              Caption = 'Bairro'
              DataBinding.FieldName = 'BAIRRO'
              SortIndex = 0
              SortOrder = soAscending
            end
            object cxGrid1DBTableView1NOMECIDADE: TcxGridDBColumn
              Caption = 'Cidade'
              DataBinding.FieldName = 'NOMECIDADE'
              Width = 385
            end
            object cxGrid1DBTableView1ESTADO: TcxGridDBColumn
              Caption = 'UF'
              DataBinding.FieldName = 'ESTADO'
              Width = 49
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 513
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 513
        ExplicitWidth = 513
      end
      inherited pnlEdicao: TPanel
        Width = 513
        ExplicitWidth = 491
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 40
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = dedCODIGO
        end
        object Label2: TLabel
          Left = 8
          Top = 48
          Width = 90
          Height = 13
          Caption = 'Nome do Bairro'
          FocusControl = dedBAIRRO
        end
        object Label3: TLabel
          Left = 8
          Top = 88
          Width = 40
          Height = 13
          Caption = 'Cidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = Label3Click
        end
        object Label4: TLabel
          Left = 8
          Top = 128
          Width = 14
          Height = 13
          Caption = 'UF'
          FocusControl = dedESTADO
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
        object dedBAIRRO: TcxDBTextEdit
          Left = 7
          Top = 63
          DataBinding.DataField = 'BAIRRO'
          DataBinding.DataSource = dsrDados
          TabOrder = 1
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 401
        end
        object dedESTADO: TcxDBTextEdit
          Left = 7
          Top = 143
          DataBinding.DataField = 'ESTADO'
          DataBinding.DataSource = dsrDados
          TabOrder = 2
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 81
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 7
          Top = 103
          TabStop = False
          DataBinding.DataField = 'NOMECIDADE'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          TabOrder = 3
          Width = 402
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Width = 515
    ExplicitWidth = 515
  end
  inherited dxBarManagerCad: TdxBarManager
    Top = 191
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManagerCadBar1: TdxBar
      FloatClientWidth = 233
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
      FloatClientWidth = 51
      FloatClientHeight = 16
      OldName = 'Where'
    end
    inherited dxBarManagerCadBar5: TdxBar
      FloatClientWidth = 88
      FloatClientHeight = 223
      OldName = 'BotoesDetalhes'
    end
    inherited btnAdicionar: TdxBarLargeButton
      ImageIndex = 2
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
      'SELECT '#39'N'#39' AS SEL, BA.CODIGO, BA.BAIRRO, BA.CIDADE, CI.CIDADE AS' +
      ' NOMECIDADE, BA.ESTADO FROM BAIRROS BA  JOIN CIDADES CI ON (CI.C' +
      'ODIGO = BA.CIDADE AND CI.ESTADO = BA.ESTADO)'
    FieldDefs = <
      item
        Name = 'SEL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'BAIRRO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CIDADE'
        DataType = ftInteger
      end
      item
        Name = 'NOMECIDADE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ESTADO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end>
    PacketRecords = 40
    ProviderName = 'pvBairros'
    StoreDefs = True
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
    object cdsDadosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Required = True
      FixedChar = True
      Size = 60
    end
    object cdsDadosCIDADE: TIntegerField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      ProviderFlags = []
      Required = True
      FixedChar = True
      Size = 60
    end
    object cdsDadosESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  inherited dsrDados: TDataSource
    Top = 264
  end
  inherited tmrFocus: TTimer
    Top = 168
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Top = 168
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.758949166670000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Top = 168
  end
  inherited actDetalhes: TActionList
    Top = 112
  end
  inherited tmrRelogio: TTimer
    Top = 112
  end
  inherited SaveDialog: TSaveDialog
    Top = 112
  end
end
