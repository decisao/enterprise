inherited formMarcas: TformMarcas
  Caption = 'Marcas'
  ClientWidth = 508
  ExplicitWidth = 516
  ExplicitHeight = 488
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 508
    ExplicitWidth = 508
    ClientRectRight = 507
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 506
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 506
        ExplicitWidth = 506
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Width = 506
        ExplicitWidth = 506
      end
      inherited pnlFundoGrade: TPanel
        Width = 506
        ExplicitWidth = 506
        inherited dxBarDockControl_Links: TdxBarDockControl
          Width = 506
          ExplicitWidth = 506
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 506
          ExplicitWidth = 506
        end
        inherited grdDados: TcxGrid
          Width = 506
          ExplicitWidth = 506
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            OptionsSelection.CellSelect = False
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
            end
            object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'DESCRICAO'
              SortIndex = 0
              SortOrder = soAscending
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 506
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 506
        ExplicitWidth = 506
      end
      inherited pnlEdicao: TPanel
        Width = 506
        ExplicitWidth = 484
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
          Width = 34
          Height = 13
          Caption = 'Marca'
          FocusControl = dedDESCRICAO
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
          Width = 361
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Width = 508
    ExplicitWidth = 508
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
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbSEL'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnEmpresas'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnOcultos'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton6'
        end>
      OldName = 'Links'
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
      ImageIndex = 2
    end
    inherited cmbSelecionar: TdxBarCombo
      Tag = 1
    end
    inherited btnAjuda: TdxBarLargeButton
      SyncImageIndex = False
      ImageIndex = 0
    end
    object dxBarButton6: TdxBarButton
      Tag = 11
      Caption = 'Mo&delos'
      Category = 0
      Hint = 'Modelos'
      Visible = ivAlways
      ImageIndex = 100
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton6Click
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 'SELECT '#39'N'#39' AS SEL, MARCAS.* FROM MARCAS'
    ProviderName = 'pvMarcas'
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
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.758238888890000000
      BuiltInReportLink = True
    end
  end
  inherited tmrRelogio: TTimer
    Left = 192
    Top = 224
  end
end
