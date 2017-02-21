inherited formCidades: TformCidades
  Left = 287
  Top = 211
  Caption = 'Cidades'
  ClientHeight = 409
  ClientWidth = 482
  ExplicitWidth = 490
  ExplicitHeight = 443
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 482
    Height = 389
    ExplicitWidth = 482
    ExplicitHeight = 389
    ClientRectBottom = 388
    ClientRectRight = 481
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 480
      ExplicitHeight = 387
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 480
        ExplicitWidth = 480
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 358
        Width = 480
        ExplicitTop = 358
        ExplicitWidth = 480
      end
      inherited pnlFundoGrade: TPanel
        Width = 480
        Height = 281
        ExplicitWidth = 480
        ExplicitHeight = 281
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 278
          Width = 480
          Height = 3
          ExplicitTop = 278
          ExplicitWidth = 480
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 480
          ExplicitWidth = 480
        end
        inherited grdDados: TcxGrid
          Width = 480
          Height = 256
          ExplicitWidth = 480
          ExplicitHeight = 268
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
              Width = 72
            end
            object cxGrid1DBTableView1CIDADE: TcxGridDBColumn
              Caption = 'Nome da Cidade'
              DataBinding.FieldName = 'CIDADE'
              SortIndex = 0
              SortOrder = soAscending
              Width = 346
            end
            object cxGrid1DBTableView1ESTADO: TcxGridDBColumn
              Caption = 'UF'
              DataBinding.FieldName = 'ESTADO'
              Width = 47
            end
            object cxGrid1DBTableView1CEP: TcxGridDBColumn
              DataBinding.FieldName = 'CEP'
              Width = 96
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 480
      ExplicitHeight = 387
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 480
        ExplicitWidth = 480
      end
      inherited pnlEdicao: TPanel
        Width = 480
        Height = 310
        ExplicitWidth = 480
        ExplicitHeight = 316
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 40
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = dedCODIGO
        end
        object Label2: TLabel
          Left = 8
          Top = 48
          Width = 95
          Height = 13
          Caption = 'Nome da Cidade'
          FocusControl = dedCIDADE
        end
        object lbEstado: TLabel
          Left = 8
          Top = 88
          Width = 14
          Height = 13
          Cursor = crHandPoint
          Caption = 'UF'
          FocusControl = dedESTADO
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = lbEstadoClick
          OnMouseEnter = lbModeloMouseEnter
          OnMouseLeave = lbModeloMouseLeave
        end
        object Label4: TLabel
          Left = 224
          Top = 128
          Width = 22
          Height = 13
          Caption = 'SID'
          FocusControl = dedSID
        end
        object Label5: TLabel
          Left = 336
          Top = 128
          Width = 27
          Height = 13
          Caption = 'DDD'
          FocusControl = dedDDD
        end
        object Label6: TLabel
          Left = 8
          Top = 128
          Width = 23
          Height = 13
          Caption = 'CEP'
          FocusControl = dedCEP
        end
        object Label3: TLabel
          Left = 8
          Top = 168
          Width = 56
          Height = 13
          Caption = 'C'#243'd.IBGE'
          FocusControl = dedMUNIBGE
        end
        object dedCODIGO: TcxDBTextEdit
          Left = 7
          Top = 23
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 74
        end
        object dedCIDADE: TcxDBTextEdit
          Left = 7
          Top = 63
          DataBinding.DataField = 'CIDADE'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 409
        end
        object dedESTADO: TcxDBTextEdit
          Left = 7
          Top = 103
          DataBinding.DataField = 'ESTADO'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 74
        end
        object dedDDD: TcxDBTextEdit
          Left = 335
          Top = 143
          DataBinding.DataField = 'DDD'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecUpperCase
          TabOrder = 5
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 81
        end
        object dedCEP: TcxDBTextEdit
          Left = 7
          Top = 143
          DataBinding.DataField = 'CEP'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 97
        end
        object dedSID: TcxDBTextEdit
          Left = 223
          Top = 143
          DataBinding.DataField = 'SID'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecUpperCase
          TabOrder = 4
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 81
        end
        object dedMUNIBGE: TcxDBTextEdit
          Left = 7
          Top = 183
          DataBinding.DataField = 'MUNIBGE'
          DataBinding.DataSource = dsrDados
          TabOrder = 6
          Width = 97
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 389
    Width = 482
    ExplicitTop = 389
    ExplicitWidth = 482
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 48
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
      FloatClientWidth = 23
      FloatClientHeight = 22
      OldName = 'Links'
      Visible = False
    end
    inherited dxBarManagerCadBar4: TdxBar
      FloatClientWidth = 51
      FloatClientHeight = 16
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
    CommandText = 'SELECT '#39'N'#39' AS SEL, CIDADES.* FROM CIDADES'
    PacketRecords = 40
    ProviderName = 'pvCidades'
    Left = 128
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
    object cdsDadosCIDADE: TStringField
      FieldName = 'CIDADE'
      Required = True
      FixedChar = True
      Size = 60
    end
    object cdsDadosESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsDadosSID: TStringField
      FieldName = 'SID'
      FixedChar = True
      Size = 5
    end
    object cdsDadosDDD: TStringField
      FieldName = 'DDD'
      FixedChar = True
      Size = 3
    end
    object cdsDadosCEP: TStringField
      FieldName = 'CEP'
      Required = True
      FixedChar = True
      Size = 9
    end
    object cdsDadosMUNIBGE: TStringField
      DisplayLabel = 'C'#243'd.IBGE'
      FieldName = 'MUNIBGE'
      FixedChar = True
    end
  end
  inherited dsrDados: TDataSource
    Left = 128
  end
  inherited tmrFocus: TTimer
    Left = 128
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 224
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.759019756950000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 304
  end
  inherited actDetalhes: TActionList
    Left = 224
  end
  inherited tmrRelogio: TTimer
    Left = 128
  end
  inherited SaveDialog: TSaveDialog
    Left = 304
  end
  object dsrEstado: TDataSource
    AutoEdit = False
    Left = 200
    Top = 256
  end
end
