inherited formNCM: TformNCM
  Caption = 'NCM'
  ClientWidth = 607
  ExplicitWidth = 615
  ExplicitHeight = 488
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 607
    ExplicitWidth = 607
    ClientRectRight = 606
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 605
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 605
        ExplicitWidth = 605
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Width = 605
        ExplicitWidth = 605
      end
      inherited pnlFundoGrade: TPanel
        Width = 605
        ExplicitWidth = 605
        inherited dxBarDockControl_Links: TdxBarDockControl
          Width = 605
          ExplicitWidth = 605
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 605
          ExplicitWidth = 605
        end
        inherited grdDados: TcxGrid
          Width = 605
          ExplicitWidth = 605
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              SortIndex = 0
              SortOrder = soAscending
              Width = 99
            end
            object cxGrid1DBTableView1NCM: TcxGridDBColumn
              DataBinding.FieldName = 'NCM'
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 605
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 605
        ExplicitWidth = 605
      end
      inherited pnlEdicao: TPanel
        Width = 605
        ExplicitWidth = 605
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 53
          Height = 13
          Caption = 'C'#243'd.NCM'
          FocusControl = dedCODIGO
        end
        object Label2: TLabel
          Left = 8
          Top = 48
          Width = 26
          Height = 13
          Caption = 'NCM'
          FocusControl = dedNCM
        end
        object dedCODIGO: TcxDBTextEdit
          Tag = 1
          Left = 7
          Top = 23
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = dsrDados
          TabOrder = 0
          Width = 121
        end
        object dedNCM: TcxDBTextEdit
          Left = 7
          Top = 63
          DataBinding.DataField = 'NCM'
          DataBinding.DataSource = dsrDados
          TabOrder = 1
          Width = 465
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Width = 607
    ExplicitWidth = 607
  end
  inherited dxBarManagerCad: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited btnAdicionar: TdxBarLargeButton
      ImageIndex = 96
    end
    inherited cmbSelecionar: TdxBarCombo
      Tag = 1
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 'SELECT '#39'N'#39' AS SEL, NCM.* FROM NCM'
    ProviderName = 'pvNCM'
    object cdsDadosSEL: TStringField
      DisplayLabel = '**'
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd.NCM'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosNCM: TStringField
      FieldName = 'NCM'
      Required = True
      FixedChar = True
      Size = 60
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 40290.741800729160000000
      BuiltInReportLink = True
    end
  end
end
