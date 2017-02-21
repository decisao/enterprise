inherited formNatuoper: TformNatuoper
  Caption = 'Natureza de Opera'#231#227'o'
  ClientWidth = 535
  ExplicitWidth = 543
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 535
    ExplicitWidth = 535
    ClientRectRight = 534
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 533
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 533
        ExplicitWidth = 533
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Width = 533
        ExplicitWidth = 533
      end
      inherited pnlFundoGrade: TPanel
        Width = 533
        ExplicitWidth = 533
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 323
          Width = 533
          Height = 3
          ExplicitTop = 323
          ExplicitWidth = 533
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 533
          ExplicitWidth = 533
        end
        inherited grdDados: TcxGrid
          Width = 533
          Height = 301
          ExplicitWidth = 529
          ExplicitHeight = 301
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
              Width = 65
            end
            object cxGrid1DBTableView1NATUREZA: TcxGridDBColumn
              Caption = 'Natureza'
              DataBinding.FieldName = 'NATUREZA'
              SortIndex = 0
              SortOrder = soAscending
              Width = 324
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 533
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 533
        ExplicitWidth = 533
      end
      inherited pnlEdicao: TPanel
        Width = 533
        ExplicitWidth = 511
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 40
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = cxDBTextEdit1
        end
        object Label2: TLabel
          Left = 8
          Top = 48
          Width = 128
          Height = 13
          Caption = 'Natureza de Opera'#231#227'o'
          FocusControl = cxDBTextEdit2
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Tag = 1
          Left = 7
          Top = 23
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = dsrDados
          TabOrder = 0
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 90
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 7
          Top = 63
          DataBinding.DataField = 'NATUREZA'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 338
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 7
          Top = 95
          Caption = 'Gerar Faturamento'
          DataBinding.DataField = 'VENDA'
          DataBinding.DataSource = dsrDados
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.Shadow = False
          TabOrder = 2
          Width = 258
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 7
          Top = 119
          Caption = 'Gerar Movimenta'#231#227'o de Estoque'
          DataBinding.DataField = 'ESTOQUE'
          DataBinding.DataSource = dsrDados
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.Shadow = False
          TabOrder = 3
          Width = 258
        end
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 7
          Top = 143
          Caption = 'Destacar ICMS'
          DataBinding.DataField = 'ICMS'
          DataBinding.DataSource = dsrDados
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.Shadow = False
          TabOrder = 4
          Width = 266
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 7
          Top = 167
          Caption = 'Destacar IPI'
          DataBinding.DataField = 'IPI'
          DataBinding.DataSource = dsrDados
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.Shadow = False
          TabOrder = 5
          Width = 258
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Width = 535
    ExplicitWidth = 535
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 200
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
    CommandText = 'SELECT '#39'N'#39' AS SEL, NA.* FROM NATUOPER NA '
    PacketRecords = 50
    ProviderName = 'pvNatuoper'
    Left = 280
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 6
    end
    object cdsDadosNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsDadosVENDA: TStringField
      FieldName = 'VENDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosICMS: TStringField
      FieldName = 'ICMS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosIPI: TStringField
      FieldName = 'IPI'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  inherited dsrDados: TDataSource
    Left = 280
  end
  inherited tmrFocus: TTimer
    Left = 280
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 376
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.757364375000000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 456
  end
  inherited actDetalhes: TActionList
    Left = 376
  end
  inherited tmrRelogio: TTimer
    Left = 280
  end
  inherited tmrLabel: TTimer
    Left = 376
    Top = 208
  end
  inherited tmrFocus2: TTimer
    Left = 200
    Top = 272
  end
  inherited tmrSemDireito: TTimer
    Left = 376
    Top = 272
  end
  inherited SaveDialog: TSaveDialog
    Left = 456
  end
end
