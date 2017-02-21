inherited formModelos: TformModelos
  Caption = 'Modelos'
  ClientWidth = 504
  ExplicitWidth = 512
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 504
    ExplicitWidth = 504
    ClientRectRight = 503
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 502
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 502
        ExplicitWidth = 502
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Width = 502
        ExplicitWidth = 502
      end
      inherited pnlFundoGrade: TPanel
        Width = 502
        ExplicitWidth = 502
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 323
          Width = 502
          Height = 3
          ExplicitTop = 323
          ExplicitWidth = 502
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 502
          ExplicitWidth = 502
        end
        inherited grdDados: TcxGrid
          Width = 502
          Height = 301
          ExplicitWidth = 498
          ExplicitHeight = 301
          inherited cxGrid1DBTableView1: TcxGridDBTableView
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
      ExplicitWidth = 502
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 502
        ExplicitWidth = 502
      end
      inherited pnlEdicao: TPanel
        Width = 502
        ExplicitWidth = 480
        object lbCODIGO: TLabel
          Left = 8
          Top = 8
          Width = 40
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = dedCODIGO
        end
        object lbMODELO: TLabel
          Left = 8
          Top = 48
          Width = 40
          Height = 13
          Caption = 'Modelo'
          FocusControl = dedMODELO
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
        object dedMODELO: TcxDBTextEdit
          Left = 7
          Top = 63
          DataBinding.DataField = 'DESCRICAO'
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
    Width = 504
    ExplicitWidth = 504
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
  end
  inherited cdsDados: TClientDataSet
    CommandText = 'SELECT '#39'N'#39' AS SEL, MODELOS.* FROM MODELOS'
    ProviderName = 'pvModelos'
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
    object cdsDadosCODEQUIPAMENTO: TIntegerField
      FieldName = 'CODEQUIPAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsDadosCODCARTA: TIntegerField
      FieldName = 'CODCARTA'
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.758273194440000000
      BuiltInReportLink = True
    end
  end
  inherited tmrRelogio: TTimer
    Left = 216
    Top = 216
  end
end
