inherited formGrupos: TformGrupos
  Left = -4
  Top = -4
  Caption = 'Grupos'
  ClientHeight = 477
  ClientWidth = 565
  ExplicitWidth = 573
  ExplicitHeight = 511
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 565
    Height = 457
    ExplicitWidth = 565
    ExplicitHeight = 457
    ClientRectBottom = 456
    ClientRectRight = 564
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 563
      ExplicitHeight = 455
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 563
        ExplicitWidth = 563
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 426
        Width = 563
        ExplicitTop = 426
        ExplicitWidth = 563
      end
      inherited pnlFundoGrade: TPanel
        Width = 563
        Height = 349
        ExplicitWidth = 563
        ExplicitHeight = 349
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 346
          Width = 563
          Height = 3
          ExplicitTop = 346
          ExplicitWidth = 563
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 563
          ExplicitWidth = 563
        end
        inherited grdDados: TcxGrid
          Width = 563
          Height = 324
          ExplicitWidth = 563
          ExplicitHeight = 328
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
            end
            object cxGrid1DBTableView1GRUPO: TcxGridDBColumn
              Caption = 'Grupo'
              DataBinding.FieldName = 'GRUPO'
              SortIndex = 0
              SortOrder = soAscending
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 563
      ExplicitHeight = 455
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 563
        ExplicitWidth = 563
      end
      inherited pnlEdicao: TPanel
        Width = 563
        Height = 378
        ExplicitWidth = 563
        ExplicitHeight = 380
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
          Width = 35
          Height = 13
          Caption = 'Grupo'
          FocusControl = dedGRUPO
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
          Width = 81
        end
        object dedGRUPO: TcxDBTextEdit
          Left = 7
          Top = 63
          DataBinding.DataField = 'GRUPO'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 337
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 457
    Width = 565
    ExplicitTop = 457
    ExplicitWidth = 565
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
    CommandText = 'SELECT '#39'N'#39' AS SEL, GRUPOS.* FROM GRUPOS'
    PacketRecords = 40
    ProviderName = 'pvGrupos'
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
    object cdsDadosGRUPO: TStringField
      FieldName = 'GRUPO'
      Required = True
      FixedChar = True
      Size = 30
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.759702685190000000
      BuiltInReportLink = True
    end
  end
  inherited SaveDialog: TSaveDialog
    Top = 112
  end
end
