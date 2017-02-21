inherited formVeiculos: TformVeiculos
  Caption = 'Veiculos'
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
            object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAO'
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
          Width = 56
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = cxDBTextEdit2
        end
        object Label3: TLabel
          Left = 8
          Top = 88
          Width = 22
          Height = 13
          Caption = 'Ano'
          FocusControl = cxDBTextEdit3
        end
        object Label4: TLabel
          Left = 120
          Top = 88
          Width = 55
          Height = 13
          Caption = 'KM Inicial'
          FocusControl = cxDBTextEdit4
        end
        object Label5: TLabel
          Left = 8
          Top = 128
          Width = 38
          Height = 13
          Caption = 'Chassi'
          FocusControl = cxDBTextEdit5
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 7
          Top = 23
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = dsrDados
          TabOrder = 0
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 73
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 7
          Top = 63
          DataBinding.DataField = 'DESCRICAO'
          DataBinding.DataSource = dsrDados
          TabOrder = 1
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 393
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 7
          Top = 103
          DataBinding.DataField = 'ANO'
          DataBinding.DataSource = dsrDados
          TabOrder = 2
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 89
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 119
          Top = 103
          DataBinding.DataField = 'KM_INICIAL'
          DataBinding.DataSource = dsrDados
          TabOrder = 3
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 89
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 7
          Top = 143
          DataBinding.DataField = 'CHASSI'
          DataBinding.DataSource = dsrDados
          TabOrder = 4
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 393
        end
      end
    end
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 280
    Top = 175
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
      FloatLeft = 675
      FloatTop = 156
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
    CommandText = 'SELECT '#39'N'#39' AS SEL, VEICULOS.* FROM VEICULOS'
    ProviderName = 'pvVeiculos'
    Left = 360
    Top = 224
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
    object cdsDadosANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Required = True
    end
    object cdsDadosKM_INICIAL: TIntegerField
      DisplayLabel = 'KM Inicial'
      FieldName = 'KM_INICIAL'
      Required = True
    end
    object cdsDadosCHASSI: TStringField
      DisplayLabel = 'Chassi'
      FieldName = 'CHASSI'
      Required = True
      FixedChar = True
      Size = 60
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 40
    end
  end
  inherited dsrDados: TDataSource
    Left = 360
  end
  inherited tmrFocus: TTimer
    Left = 360
    Top = 176
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 456
    Top = 176
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.758469548610000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 536
    Top = 176
  end
  inherited actDetalhes: TActionList
    Left = 456
    Top = 120
  end
  inherited tmrRelogio: TTimer
    Left = 360
    Top = 120
  end
  inherited tmrLabel: TTimer
    Left = 624
    Top = 120
  end
  inherited menuGrade: TPopupMenu
    Left = 616
    Top = 176
  end
  inherited SaveDialog: TSaveDialog
    Left = 536
    Top = 120
  end
end
