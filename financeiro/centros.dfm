inherited formCentros: TformCentros
  Left = 327
  Top = 184
  Caption = 'Centros de Custo/Lucro'
  ClientHeight = 462
  ClientWidth = 621
  ExplicitWidth = 629
  ExplicitHeight = 496
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 621
    Height = 442
    ExplicitWidth = 621
    ExplicitHeight = 442
    ClientRectBottom = 441
    ClientRectRight = 620
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 619
      ExplicitHeight = 440
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 619
        ExplicitWidth = 619
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 411
        Width = 619
        ExplicitTop = 411
        ExplicitWidth = 619
      end
      inherited pnlFundoGrade: TPanel
        Width = 619
        Height = 334
        ExplicitWidth = 619
        ExplicitHeight = 334
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 331
          Width = 619
          Height = 3
          ExplicitTop = 331
          ExplicitWidth = 619
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 619
          ExplicitWidth = 619
        end
        inherited grdDados: TcxGrid
          Width = 619
          Height = 309
          ExplicitWidth = 619
          ExplicitHeight = 313
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
      ExplicitWidth = 619
      ExplicitHeight = 440
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 619
        ExplicitWidth = 619
      end
      inherited pnlEdicao: TPanel
        Width = 619
        Height = 363
        ExplicitWidth = 619
        ExplicitHeight = 365
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
          Width = 56
          Height = 13
          Caption = 'Descri'#231#227'o'
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
          Width = 121
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
          Width = 401
        end
        object cxDBRadioGroup1: TcxDBRadioGroup
          Left = 7
          Top = 87
          Caption = ' Tipo de Centro '
          DataBinding.DataField = 'TIPO'
          DataBinding.DataSource = dsrDados
          Properties.Items = <
            item
              Caption = 'Lucro'
              Value = 'L'
            end
            item
              Caption = 'Custo'
              Value = 'C'
            end>
          TabOrder = 2
          Height = 73
          Width = 185
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 442
    Width = 621
    ExplicitTop = 442
    ExplicitWidth = 621
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
    CommandText = 'SELECT '#39'N'#39' AS SEL, CENTROS.* FROM CENTROS'
    PacketRecords = 50
    ProviderName = 'pvCentros'
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
    object cdsDadosTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.754233020830000000
      BuiltInReportLink = True
    end
  end
  inherited tmrRelogio: TTimer
    Left = 152
    Top = 72
  end
end
