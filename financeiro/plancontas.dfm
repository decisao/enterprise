inherited formPlancontas: TformPlancontas
  Left = 276
  Top = 170
  Caption = 'Planos de Contas'
  ClientHeight = 463
  ClientWidth = 536
  ExplicitWidth = 544
  ExplicitHeight = 497
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 536
    Height = 443
    ExplicitWidth = 536
    ExplicitHeight = 443
    ClientRectBottom = 442
    ClientRectRight = 535
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 534
      ExplicitHeight = 441
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 534
        ExplicitWidth = 534
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 412
        Width = 534
        ExplicitTop = 412
        ExplicitWidth = 534
      end
      inherited pnlFundoGrade: TPanel
        Width = 534
        Height = 335
        ExplicitWidth = 534
        ExplicitHeight = 335
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 332
          Width = 534
          Height = 3
          ExplicitTop = 332
          ExplicitWidth = 534
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 534
          ExplicitWidth = 534
        end
        inherited grdDados: TcxGrid
          Width = 534
          Height = 310
          ExplicitWidth = 534
          ExplicitHeight = 314
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            OptionsSelection.CellSelect = False
            object cxGrid1DBTableView1CODPLANO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODPLANO'
            end
            object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'DESCRICAO'
            end
          end
        end
        object cxDBTreeList1: TcxDBTreeList
          Left = 0
          Top = 22
          Width = 534
          Height = 310
          Align = alClient
          Bands = <
            item
            end>
          DataController.DataSource = dsrDados
          DataController.ParentField = 'CODPAI'
          DataController.KeyField = 'CODIGO'
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = True
          OptionsData.Editing = False
          OptionsData.Deleting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GridLines = tlglVert
          OptionsView.Headers = False
          OptionsView.Indicator = True
          OptionsView.TreeLineStyle = tllsSolid
          RootValue = '-1'
          TabOrder = 3
          Visible = False
          ExplicitHeight = 314
          object cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn
            DataBinding.FieldName = 'SINTETICO'
            Width = 250
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 534
      ExplicitHeight = 441
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 534
        ExplicitWidth = 534
      end
      inherited pnlEdicao: TPanel
        Width = 534
        Height = 364
        ExplicitWidth = 534
        ExplicitHeight = 366
        object Label1: TLabel
          Left = 8
          Top = 72
          Width = 44
          Height = 13
          Caption = 'C'#243'd.Pai'
        end
        object Label2: TLabel
          Left = 152
          Top = 112
          Width = 89
          Height = 13
          Caption = 'Nome da Conta'
          FocusControl = dedDESCRICAO
        end
        object Label3: TLabel
          Left = 8
          Top = 168
          Width = 74
          Height = 13
          Caption = 'Observa'#231#245'es'
          FocusControl = cxDBMemo1
        end
        object Label4: TLabel
          Left = 8
          Top = 112
          Width = 49
          Height = 13
          Caption = 'Tradutor'
          FocusControl = cxDBTextEdit2
        end
        object rgPAI: TcxDBRadioGroup
          Left = 215
          Top = 7
          Caption = ' Localiza'#231#227'o no Plano '
          DataBinding.DataField = 'CODPAI'
          DataBinding.DataSource = dsrDados
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'Raiz'
              Value = '-1'
            end
            item
              Caption = 'Descendente'
            end>
          TabOrder = 0
          Height = 49
          Width = 209
        end
        object cxDBRadioGroup2: TcxDBRadioGroup
          Left = 7
          Top = 7
          Caption = ' Tipo da Conta '
          DataBinding.DataField = 'TIPO'
          DataBinding.DataSource = dsrDados
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'Normal'
              Value = 'C'
            end
            item
              Caption = 'Redutora'
              Value = 'D'
            end>
          TabOrder = 1
          Height = 49
          Width = 194
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 7
          Top = 87
          DataBinding.DataField = 'CODPLANO'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          TabOrder = 2
          Width = 130
        end
        object dedDESCRICAO: TcxDBTextEdit
          Left = 151
          Top = 127
          DataBinding.DataField = 'DESCRICAO'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecUpperCase
          TabOrder = 4
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 274
        end
        object cxDBMemo1: TcxDBMemo
          Left = 7
          Top = 183
          DataBinding.DataField = 'OBSERVACOES'
          DataBinding.DataSource = dsrDados
          TabOrder = 5
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Height = 89
          Width = 418
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 7
          Top = 127
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          TabOrder = 3
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 130
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 443
    Width = 536
    ExplicitTop = 443
    ExplicitWidth = 536
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 400
    Top = 295
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
    CommandText = 
      'SELECT PLANCONTAS.*, UDF_TRIM(PLANCONTAS.CODPLANO) || '#39' '#39' || PLA' +
      'NCONTAS.DESCRICAO AS SINTETICO FROM PLANCONTAS'
    ProviderName = 'pvPlancontas'
    Left = 480
    Top = 344
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosCODPAI: TIntegerField
      FieldName = 'CODPAI'
      Required = True
    end
    object cdsDadosCODPLANO: TStringField
      FieldName = 'CODPLANO'
      Required = True
      FixedChar = True
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
    object cdsDadosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 254
    end
    object cdsDadosSINTETICO: TStringField
      FieldName = 'SINTETICO'
      ProviderFlags = []
      Size = 295
    end
    object cdsDadosFINAL: TStringField
      FieldName = 'FINAL'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  inherited dsrDados: TDataSource
    Left = 480
    Top = 392
  end
  inherited tmrFocus: TTimer
    Left = 480
    Top = 296
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 576
    Top = 296
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.755260995370000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 656
    Top = 296
  end
  inherited actDetalhes: TActionList
    Left = 576
    Top = 240
  end
  inherited tmrRelogio: TTimer
    Left = 480
    Top = 240
  end
  inherited tmrLabel: TTimer
    Left = 736
    Top = 240
  end
  inherited menuGrade: TPopupMenu
    Left = 736
    Top = 296
  end
  inherited tmrFocus2: TTimer
    Left = 576
    Top = 352
  end
  inherited SaveDialog: TSaveDialog
    Left = 656
    Top = 240
  end
end
