inherited formOperadoras: TformOperadoras
  Caption = 'Operadoras'
  ClientHeight = 415
  ClientWidth = 474
  ExplicitWidth = 482
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 474
    Height = 395
    ExplicitWidth = 474
    ExplicitHeight = 395
    ClientRectBottom = 394
    ClientRectRight = 473
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 472
      ExplicitHeight = 393
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 472
        ExplicitWidth = 472
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 364
        Width = 472
        ExplicitTop = 364
        ExplicitWidth = 472
      end
      inherited pnlFundoGrade: TPanel
        Width = 472
        Height = 287
        ExplicitWidth = 472
        ExplicitHeight = 287
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 265
          Width = 472
          ExplicitTop = 265
          ExplicitWidth = 472
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 472
          ExplicitWidth = 472
        end
        inherited grdDados: TcxGrid
          Width = 472
          Height = 243
          ExplicitWidth = 472
          ExplicitHeight = 247
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
            end
            object cxGrid1DBTableView1NOME: TcxGridDBColumn
              DataBinding.FieldName = 'NOME'
              SortIndex = 0
              SortOrder = soAscending
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 472
      ExplicitHeight = 393
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 472
        ExplicitWidth = 472
      end
      inherited pnlEdicao: TPanel
        Width = 472
        Height = 316
        ExplicitWidth = 472
        ExplicitHeight = 318
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
          Width = 61
          Height = 13
          Caption = 'Operadora'
          FocusControl = cxDBTextEdit2
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 7
          Top = 23
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = dsrDados
          TabOrder = 0
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 98
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 7
          Top = 63
          DataBinding.DataField = 'NOME'
          DataBinding.DataSource = dsrDados
          TabOrder = 1
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 354
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 395
    Width = 474
    ExplicitTop = 395
    ExplicitWidth = 474
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
    object dxBarButton6: TdxBarButton
      Tag = 11
      Caption = 'Planos de Servi'#231'o'
      Category = 0
      Hint = 'Planos de Servi'#231'o'
      Visible = ivAlways
      ImageIndex = 102
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton6Click
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 'SELECT '#39'N'#39' AS SEL, OPERADORAS.* FROM OPERADORAS'
    ProviderName = 'pvOperadoras'
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosNOME: TStringField
      DisplayLabel = 'Operadora'
      FieldName = 'NOME'
      Required = True
      FixedChar = True
      Size = 40
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.760455393520000000
      BuiltInReportLink = True
    end
  end
  inherited tmrRelogio: TTimer
    Left = 152
    Top = 96
  end
end
