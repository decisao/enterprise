inherited formEstados: TformEstados
  Left = 352
  Caption = 'Estados'
  ClientHeight = 354
  ClientWidth = 433
  ExplicitWidth = 441
  ExplicitHeight = 388
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 433
    Height = 334
    ExplicitWidth = 433
    ExplicitHeight = 334
    ClientRectBottom = 333
    ClientRectRight = 432
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 431
      ExplicitHeight = 332
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 431
        ExplicitWidth = 431
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 303
        Width = 431
        ExplicitTop = 303
        ExplicitWidth = 431
      end
      inherited pnlFundoGrade: TPanel
        Width = 431
        Height = 226
        ExplicitWidth = 431
        ExplicitHeight = 226
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 223
          Width = 431
          Height = 3
          ExplicitTop = 223
          ExplicitWidth = 431
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 431
          ExplicitWidth = 431
        end
        inherited grdDados: TcxGrid
          Width = 431
          Height = 201
          ExplicitWidth = 427
          ExplicitHeight = 201
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1SIGLA: TcxGridDBColumn
              Caption = 'Sigla'
              DataBinding.FieldName = 'SIGLA'
              FooterAlignmentHorz = taCenter
              Width = 70
            end
            object cxGrid1DBTableView1ESTADO: TcxGridDBColumn
              Caption = 'Estado'
              DataBinding.FieldName = 'ESTADO'
              SortIndex = 0
              SortOrder = soAscending
              Width = 325
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 431
      ExplicitHeight = 332
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 431
        ExplicitWidth = 431
      end
      inherited pnlEdicao: TPanel
        Width = 431
        Height = 255
        ExplicitWidth = 409
        ExplicitHeight = 262
        object lbSigla: TLabel
          Left = 8
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Sigla'
          FocusControl = dedSigla
        end
        object lbEstado: TLabel
          Left = 8
          Top = 48
          Width = 93
          Height = 13
          Caption = 'Nome do Estado'
          FocusControl = dedEstado
        end
        object dedSigla: TcxDBTextEdit
          Left = 7
          Top = 23
          DataBinding.DataField = 'SIGLA'
          DataBinding.DataSource = dsrDados
          TabOrder = 0
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 66
        end
        object dedEstado: TcxDBTextEdit
          Left = 7
          Top = 63
          DataBinding.DataField = 'ESTADO'
          DataBinding.DataSource = dsrDados
          TabOrder = 1
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 338
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 334
    Width = 433
    ExplicitTop = 334
    ExplicitWidth = 433
  end
  inherited dxBarManagerCad: TdxBarManager
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
      FloatLeft = 771
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnEmpresas'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnOcultos'
        end>
      OldName = 'Links'
      Visible = False
    end
    inherited dxBarManagerCadBar4: TdxBar
      FloatLeft = 743
      FloatClientWidth = 51
      FloatClientHeight = 16
      OldName = 'Where'
    end
    inherited dxBarManagerCadBar5: TdxBar
      FloatLeft = 706
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
    CommandText = 'SELECT '#39'N'#39' AS SEL, ESTADOS.* FROM ESTADOS'
    ProviderName = 'pvEstados'
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
    object cdsDadosESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 30
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.759061597220000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 312
  end
  inherited SaveDialog: TSaveDialog
    Left = 312
  end
end
