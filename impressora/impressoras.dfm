inherited formImpressoras: TformImpressoras
  Caption = 'Impressoras'
  ClientHeight = 425
  ClientWidth = 490
  ExplicitWidth = 498
  ExplicitHeight = 459
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 490
    Height = 405
    ExplicitWidth = 490
    ExplicitHeight = 405
    ClientRectBottom = 404
    ClientRectRight = 489
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 488
      ExplicitHeight = 403
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 488
        ExplicitWidth = 488
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 374
        Width = 488
        ExplicitTop = 374
        ExplicitWidth = 488
      end
      inherited pnlFundoGrade: TPanel
        Width = 488
        Height = 297
        ExplicitWidth = 488
        ExplicitHeight = 297
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 294
          Width = 488
          Height = 3
          ExplicitTop = 294
          ExplicitWidth = 488
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 488
          ExplicitWidth = 488
        end
        inherited grdDados: TcxGrid
          Width = 488
          Height = 272
          ExplicitWidth = 488
          ExplicitHeight = 276
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1MAQUINA: TcxGridDBColumn
              Caption = 'M'#225'quina'
              DataBinding.FieldName = 'MAQUINA'
              SortIndex = 0
              SortOrder = soAscending
              Width = 396
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 488
      ExplicitHeight = 403
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 488
        ExplicitWidth = 488
      end
      inherited pnlEdicao: TPanel
        Width = 488
        Height = 326
        ExplicitWidth = 488
        ExplicitHeight = 328
        object lbMaquina: TLabel
          Left = 16
          Top = 8
          Width = 47
          Height = 13
          Caption = 'M'#225'quina'
          FocusControl = dedMAQUINA
        end
        object lbOS1: TLabel
          Left = 16
          Top = 48
          Width = 82
          Height = 13
          Caption = 'O.S. modelo 1'
          FocusControl = dedOS1
        end
        object lbOS2: TLabel
          Left = 16
          Top = 88
          Width = 82
          Height = 13
          Caption = 'O.S. modelo 2'
          FocusControl = dedOS2
        end
        object lbFECHAMENTO: TLabel
          Left = 16
          Top = 128
          Width = 163
          Height = 13
          Caption = 'Fechamento de O.S. e Sa'#237'da'
          FocusControl = dedFECHAMENTO
        end
        object lbNF: TLabel
          Left = 16
          Top = 168
          Width = 144
          Height = 13
          Caption = 'Nota Fiscal de Formul'#225'rio'
          FocusControl = dedNF
        end
        object lbRECIBO: TLabel
          Left = 16
          Top = 208
          Width = 38
          Height = 13
          Caption = 'Recibo'
          FocusControl = dedRECIBO
        end
        object lbBOLETO: TLabel
          Left = 16
          Top = 248
          Width = 36
          Height = 13
          Caption = 'Boleto'
          FocusControl = dedBOLETO
        end
        object lbECF: TLabel
          Left = 16
          Top = 288
          Width = 130
          Height = 13
          Caption = 'ECF fabricante/modelo'
          FocusControl = cxDBComboBox1
        end
        object Label1: TLabel
          Left = 136
          Top = 8
          Width = 96
          Height = 13
          Alignment = taRightJustify
          Caption = 'Este computador'
          FocusControl = dedMAQUINA
          OnClick = Label1Click
        end
        object dedMAQUINA: TcxDBTextEdit
          Left = 15
          Top = 23
          DataBinding.DataField = 'MAQUINA'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 217
        end
        object dedOS1: TcxDBTextEdit
          Left = 15
          Top = 63
          DataBinding.DataField = 'OS1'
          DataBinding.DataSource = dsrDados
          TabOrder = 1
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 345
        end
        object dedOS2: TcxDBTextEdit
          Left = 15
          Top = 103
          DataBinding.DataField = 'OS2'
          DataBinding.DataSource = dsrDados
          TabOrder = 2
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 345
        end
        object dedNF: TcxDBTextEdit
          Left = 15
          Top = 183
          DataBinding.DataField = 'NF'
          DataBinding.DataSource = dsrDados
          TabOrder = 4
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 345
        end
        object dedRECIBO: TcxDBTextEdit
          Left = 15
          Top = 223
          DataBinding.DataField = 'RECIBO'
          DataBinding.DataSource = dsrDados
          TabOrder = 5
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 345
        end
        object dedBOLETO: TcxDBTextEdit
          Left = 15
          Top = 263
          DataBinding.DataField = 'BOLETO'
          DataBinding.DataSource = dsrDados
          TabOrder = 6
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 345
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 208
          Top = 304
          Caption = 'N'#227'o Concomitante'
          DataBinding.DataField = 'ECF_NCC'
          DataBinding.DataSource = dsrDados
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          TabOrder = 8
          Width = 153
        end
        object dedFECHAMENTO: TcxDBTextEdit
          Left = 15
          Top = 143
          DataBinding.DataField = 'FECHAMENTO'
          DataBinding.DataSource = dsrDados
          TabOrder = 3
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 345
        end
        object cxDBComboBox1: TcxDBComboBox
          Left = 15
          Top = 303
          DataBinding.DataField = 'ECF'
          DataBinding.DataSource = dsrDados
          Properties.Items.Strings = (
            'BEMATECH20'
            'CUPOM'
            'DARUMA345'
            'DEBUG'
            'NFE'
            'SEM ECF')
          Properties.Sorted = True
          TabOrder = 7
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 177
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 405
    Width = 490
    ExplicitTop = 405
    ExplicitWidth = 490
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 288
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
    inherited btnAjuda: TdxBarLargeButton
      SyncImageIndex = False
      ImageIndex = 0
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 'SELECT '#39'N'#39' AS SEL, IMPRESSORAS.* FROM IMPRESSORAS '
    PacketRecords = 40
    ProviderName = 'pvImpressoras'
    Left = 368
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosMAQUINA: TStringField
      FieldName = 'MAQUINA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsDadosCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosOS1: TStringField
      FieldName = 'OS1'
      FixedChar = True
      Size = 60
    end
    object cdsDadosOS2: TStringField
      FieldName = 'OS2'
      FixedChar = True
      Size = 60
    end
    object cdsDadosFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      FixedChar = True
      Size = 60
    end
    object cdsDadosNF: TStringField
      FieldName = 'NF'
      FixedChar = True
      Size = 60
    end
    object cdsDadosRECIBO: TStringField
      FieldName = 'RECIBO'
      FixedChar = True
      Size = 60
    end
    object cdsDadosBOLETO: TStringField
      FieldName = 'BOLETO'
      FixedChar = True
      Size = 60
    end
    object cdsDadosECF: TStringField
      FieldName = 'ECF'
      FixedChar = True
      Size = 30
    end
    object cdsDadosECF_NCC: TStringField
      FieldName = 'ECF_NCC'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  inherited dsrDados: TDataSource
    Left = 368
  end
  inherited tmrFocus: TTimer
    Left = 368
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 464
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.753447048610000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 544
  end
  inherited actDetalhes: TActionList
    Left = 464
  end
  inherited tmrRelogio: TTimer
    Left = 368
  end
  inherited SaveDialog: TSaveDialog
    Left = 544
  end
end
