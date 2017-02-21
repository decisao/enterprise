inherited formUnidades: TformUnidades
  Caption = 'Unidades'
  ClientWidth = 561
  ExplicitWidth = 569
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 561
    ExplicitWidth = 561
    ClientRectRight = 560
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 559
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 559
        ExplicitWidth = 559
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Width = 559
        ExplicitWidth = 559
      end
      inherited pnlFundoGrade: TPanel
        Width = 559
        ExplicitWidth = 559
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 323
          Width = 559
          Height = 3
          ExplicitTop = 323
          ExplicitWidth = 559
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 559
          ExplicitWidth = 559
        end
        inherited grdDados: TcxGrid
          Width = 559
          Height = 301
          ExplicitWidth = 559
          ExplicitHeight = 305
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1SIGLA: TcxGridDBColumn
              Caption = 'Sigla'
              DataBinding.FieldName = 'SIGLA'
              Width = 58
            end
            object cxGrid1DBTableView1UNIDADE: TcxGridDBColumn
              Caption = 'Unidade'
              DataBinding.FieldName = 'UNIDADE'
              SortIndex = 0
              SortOrder = soAscending
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 559
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 559
        ExplicitWidth = 559
      end
      inherited pnlEdicao: TPanel
        Width = 559
        ExplicitWidth = 559
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Sigla'
          FocusControl = dedSIGLA
        end
        object Label2: TLabel
          Left = 8
          Top = 48
          Width = 46
          Height = 13
          Caption = 'Unidade'
          FocusControl = dedUNIDADE
        end
        object dedSIGLA: TcxDBTextEdit
          Left = 7
          Top = 23
          DataBinding.DataField = 'SIGLA'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 57
        end
        object dedUNIDADE: TcxDBTextEdit
          Left = 7
          Top = 63
          DataBinding.DataField = 'UNIDADE'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 345
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Width = 561
    ExplicitWidth = 561
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
    CommandText = 'SELECT '#39'N'#39' AS SEL, MEDIDAS.* FROM MEDIDAS'
    PacketRecords = 40
    ProviderName = 'pvUnidades'
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosSIGLA: TStringField
      FieldName = 'SIGLA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsDadosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      FixedChar = True
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.759993032410000000
      BuiltInReportLink = True
    end
  end
  inherited actDetalhes: TActionList
    Left = 272
    Top = 128
  end
  inherited tmrRelogio: TTimer
    Left = 136
    Top = 120
  end
end
