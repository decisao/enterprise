inherited formOSStatus: TformOSStatus
  Caption = 'Status da O.S.'
  ClientWidth = 552
  ExplicitWidth = 568
  ExplicitHeight = 492
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 552
    ExplicitWidth = 552
    ClientRectRight = 551
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 550
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 550
        ExplicitWidth = 550
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Width = 550
        ExplicitWidth = 550
      end
      inherited pnlFundoGrade: TPanel
        Width = 550
        ExplicitWidth = 550
        inherited dxBarDockControl_Links: TdxBarDockControl
          Width = 550
          ExplicitWidth = 550
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 550
          ExplicitWidth = 550
        end
        inherited grdDados: TcxGrid
          Width = 550
          ExplicitWidth = 550
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              Width = 94
            end
            object cxGrid1DBTableView1STATUS: TcxGridDBColumn
              DataBinding.FieldName = 'STATUS'
              Width = 371
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 550
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 550
        ExplicitWidth = 550
      end
      inherited pnlEdicao: TPanel
        Width = 550
        ExplicitWidth = 550
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 63
          Height = 13
          Caption = 'C'#243'd.Status'
          FocusControl = cxDBTextEdit1
        end
        object Label2: TLabel
          Left = 8
          Top = 48
          Width = 36
          Height = 13
          Caption = 'Status'
          FocusControl = cxDBTextEdit2
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 7
          Top = 23
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = dsrDados
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 7
          Top = 63
          DataBinding.DataField = 'STATUS'
          DataBinding.DataSource = dsrDados
          TabOrder = 1
          Width = 362
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Width = 552
    ExplicitWidth = 552
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
    CommandText = 'SELECT '#39'N'#39' AS SEL, OS_STATUS.* FROM OS_STATUS'
    ProviderName = 'pvStatus'
    object cdsDadosSEL: TStringField
      DisplayLabel = '#'
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd.Status'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      FixedChar = True
      Size = 30
    end
    object cdsDadosSISTEMA: TStringField
      DisplayLabel = 'Sistema'
      FieldName = 'SISTEMA'
      FixedChar = True
      Size = 1
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 40883.081094560180000000
      BuiltInReportLink = True
    end
  end
  inherited tmrRelogio: TTimer
    Left = 104
    Top = 192
  end
end
