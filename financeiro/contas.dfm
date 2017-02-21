inherited formContas: TformContas
  Caption = 'Contas Caixa'
  ClientWidth = 531
  ExplicitWidth = 539
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 531
    ExplicitWidth = 531
    ClientRectRight = 530
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 529
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 529
        ExplicitWidth = 529
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Width = 529
        ExplicitWidth = 529
      end
      inherited pnlFundoGrade: TPanel
        Width = 529
        ExplicitWidth = 529
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 323
          Width = 529
          Height = 3
          ExplicitTop = 323
          ExplicitWidth = 529
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 529
          ExplicitWidth = 529
        end
        inherited grdDados: TcxGrid
          Width = 529
          Height = 301
          ExplicitWidth = 529
          ExplicitHeight = 305
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
            end
            object cxGrid1DBTableView1CONTA: TcxGridDBColumn
              Caption = 'Conta'
              DataBinding.FieldName = 'CONTA'
              SortIndex = 0
              SortOrder = soAscending
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 529
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 529
        ExplicitWidth = 529
      end
      inherited pnlEdicao: TPanel
        Width = 529
        ExplicitWidth = 529
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
          Width = 222
          Height = 13
          Caption = 'Conta (caixa, corrente, poupan'#231'a, etc)'
          FocusControl = dedCONTA
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
        object dedCONTA: TcxDBTextEdit
          Left = 7
          Top = 63
          DataBinding.DataField = 'CONTA'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 369
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Width = 531
    ExplicitWidth = 531
  end
  inherited dxBarManagerCad: TdxBarManager
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
    CommandText = 'SELECT '#39'N'#39' AS SEL, CONTAS.* FROM CONTAS'
    ProviderName = 'pvContas'
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
    object cdsDadosCONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      FixedChar = True
      Size = 40
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.754783344910000000
      BuiltInReportLink = True
    end
  end
end
