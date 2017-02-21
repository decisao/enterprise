inherited formSequencias: TformSequencias
  Caption = 'Seq'#252#234'ncias'
  ClientWidth = 568
  ExplicitWidth = 576
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 568
    ExplicitWidth = 568
    ClientRectRight = 567
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 566
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 566
        ExplicitWidth = 566
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Width = 566
        ExplicitWidth = 566
      end
      inherited pnlFundoGrade: TPanel
        Width = 566
        ExplicitWidth = 566
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 323
          Width = 566
          Height = 3
          ExplicitTop = 323
          ExplicitWidth = 566
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 566
          ExplicitWidth = 566
        end
        inherited grdDados: TcxGrid
          Width = 566
          Height = 301
          ExplicitWidth = 566
          ExplicitHeight = 305
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
            end
            object cxGrid1DBTableView1TABELA: TcxGridDBColumn
              DataBinding.FieldName = 'TABELA'
              SortIndex = 0
              SortOrder = soAscending
            end
            object cxGrid1DBTableView1SEQUENCIA: TcxGridDBColumn
              DataBinding.FieldName = 'SEQUENCIA'
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 566
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 566
        ExplicitWidth = 566
      end
      inherited pnlEdicao: TPanel
        Width = 566
        ExplicitWidth = 566
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 92
          Height = 13
          Caption = 'C'#243'd.Seq'#252#234'ncias'
          FocusControl = cxDBTextEdit1
        end
        object Label2: TLabel
          Left = 8
          Top = 48
          Width = 38
          Height = 13
          Caption = 'Tabela'
          FocusControl = cxDBTextEdit2
        end
        object Label3: TLabel
          Left = 8
          Top = 88
          Width = 59
          Height = 13
          Caption = 'Seq'#252#234'ncia'
          FocusControl = cxDBTextEdit3
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 7
          Top = 23
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = False
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 7
          Top = 63
          DataBinding.DataField = 'TABELA'
          DataBinding.DataSource = dsrDados
          TabOrder = 1
          Width = 313
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 7
          Top = 103
          DataBinding.DataField = 'SEQUENCIA'
          DataBinding.DataSource = dsrDados
          TabOrder = 2
          Width = 121
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Width = 568
    ExplicitWidth = 568
  end
  inherited dxBarManagerCad: TdxBarManager
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
      FloatClientWidth = 157
      FloatClientHeight = 49
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
  end
  inherited cdsDados: TClientDataSet
    CommandText = 'SELECT '#39'N'#39' AS SEL, SEQUENCIA.* FROM SEQUENCIA'
    ProviderName = 'pvSequencia'
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd.Seq'#252#234'ncias'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosTABELA: TStringField
      DisplayLabel = 'Tabela'
      FieldName = 'TABELA'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsDadosSEQUENCIA: TIntegerField
      DisplayLabel = 'Seq'#252#234'ncia'
      FieldName = 'SEQUENCIA'
      Required = True
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.761602060190000000
      BuiltInReportLink = True
    end
  end
end
