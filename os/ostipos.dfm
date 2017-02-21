inherited formOSTipos: TformOSTipos
  Caption = 'Tipos de O.S.'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    inherited tabVisual: TcxTabSheet
      inherited pnlFundoGrade: TPanel
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 323
          Height = 3
          ExplicitTop = 323
          ExplicitHeight = 3
        end
        inherited grdDados: TcxGrid
          Height = 301
          ExplicitHeight = 301
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
            end
            object cxGrid1DBTableView1TIPO: TcxGridDBColumn
              DataBinding.FieldName = 'TIPO'
              SortIndex = 0
              SortOrder = soAscending
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited pnlEdicao: TPanel
        object lbCODIGO: TLabel
          Left = 8
          Top = 8
          Width = 40
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = dedCODIGO
        end
        object lbTIPO: TLabel
          Left = 8
          Top = 48
          Width = 24
          Height = 13
          Caption = 'Tipo'
          FocusControl = dedTIPO
        end
        object dedCODIGO: TcxDBTextEdit
          Left = 7
          Top = 23
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = dsrDados
          TabOrder = 0
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 74
        end
        object dedTIPO: TcxDBTextEdit
          Left = 7
          Top = 63
          DataBinding.DataField = 'TIPO'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 362
        end
        object cxGroupBox1: TcxGroupBox
          Left = 8
          Top = 96
          Caption = ' Prazo de atendimento '
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = True
          TabOrder = 2
          Height = 81
          Width = 193
          object lbDIAS: TLabel
            Left = 16
            Top = 24
            Width = 25
            Height = 13
            Caption = 'Dias'
            FocusControl = dedDIAS
          end
          object lbHORAS: TLabel
            Left = 104
            Top = 24
            Width = 33
            Height = 13
            Caption = 'Horas'
            FocusControl = dedHORAS
          end
          object dedDIAS: TcxDBTextEdit
            Left = 15
            Top = 39
            DataBinding.DataField = 'DIAS'
            DataBinding.DataSource = dsrDados
            TabOrder = 0
            OnEnter = edtPesquisar2Enter
            OnExit = edtPesquisar2Exit
            Width = 74
          end
          object dedHORAS: TcxDBTextEdit
            Left = 103
            Top = 39
            DataBinding.DataField = 'HORAS'
            DataBinding.DataSource = dsrDados
            TabOrder = 1
            OnEnter = edtPesquisar2Enter
            OnExit = edtPesquisar2Exit
            Width = 74
          end
        end
      end
    end
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 240
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
    CommandText = 'SELECT '#39'N'#39' AS SEL, OSTIPOS.* FROM OSTIPOS'
    ProviderName = 'pvOstipos'
    Left = 320
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
    object cdsDadosTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsDadosDIAS: TIntegerField
      DisplayLabel = 'Dias'
      FieldName = 'DIAS'
      Required = True
    end
    object cdsDadosHORAS: TIntegerField
      DisplayLabel = 'Horas'
      FieldName = 'HORAS'
      Required = True
    end
  end
  inherited dsrDados: TDataSource
    Left = 320
  end
  inherited tmrFocus: TTimer
    Left = 320
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 416
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.758418310190000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 496
  end
  inherited actDetalhes: TActionList
    Left = 416
  end
  inherited tmrRelogio: TTimer
    Left = 416
    Top = 216
  end
  inherited tmrSemDireito: TTimer
    Left = 216
    Top = 272
  end
end
