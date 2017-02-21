inherited formPlanosServico: TformPlanosServico
  Left = 446
  Top = 243
  Caption = 'Planos de Servi'#231'o'
  ClientHeight = 412
  ClientWidth = 501
  ExplicitWidth = 509
  ExplicitHeight = 446
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 501
    Height = 392
    ExplicitWidth = 501
    ExplicitHeight = 392
    ClientRectBottom = 391
    ClientRectRight = 500
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 499
      ExplicitHeight = 390
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 499
        ExplicitWidth = 499
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 361
        Width = 499
        ExplicitTop = 361
        ExplicitWidth = 499
      end
      inherited pnlFundoGrade: TPanel
        Width = 499
        Height = 284
        ExplicitWidth = 499
        ExplicitHeight = 284
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 281
          Width = 499
          Height = 3
          ExplicitTop = 281
          ExplicitWidth = 499
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 499
          ExplicitWidth = 499
        end
        inherited grdDados: TcxGrid
          Width = 499
          Height = 259
          ExplicitWidth = 499
          ExplicitHeight = 263
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
              Width = 84
            end
            object cxGrid1DBTableView1NOME: TcxGridDBColumn
              Caption = 'Plano de Servi'#231'o'
              DataBinding.FieldName = 'NOME'
              SortIndex = 0
              SortOrder = soAscending
              Width = 326
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 499
      ExplicitHeight = 390
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 499
        ExplicitWidth = 499
      end
      inherited pnlEdicao: TPanel
        Width = 499
        Height = 313
        ExplicitWidth = 499
        ExplicitHeight = 315
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
          Width = 96
          Height = 13
          Caption = 'Plano de Servi'#231'o'
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
          Width = 441
        end
        object cxDBRadioGroup1: TcxDBRadioGroup
          Left = 7
          Top = 95
          Caption = ' Tipo '
          DataBinding.DataField = 'TIPO'
          DataBinding.DataSource = dsrDados
          Properties.Items = <
            item
              Caption = 'Cr'#233'dito'
              Value = 'C'
            end
            item
              Caption = 'D'#233'bito'
              Value = 'D'
            end
            item
              Caption = 'Outro'
              Value = 'X'
            end>
          TabOrder = 2
          Height = 105
          Width = 202
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 392
    Width = 501
    ExplicitTop = 392
    ExplicitWidth = 501
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
  end
  inherited cdsDados: TClientDataSet
    CommandText = 'SELECT '#39'N'#39' AS SEL, PLANOS.* FROM PLANOS'
    ProviderName = 'pvPlanos'
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
    object cdsDadosCODOPERADORA: TIntegerField
      FieldName = 'CODOPERADORA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosNOME: TStringField
      FieldName = 'NOME'
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
      ReportDocument.CreationDate = 39476.760491898140000000
      BuiltInReportLink = True
    end
  end
  inherited tmrRelogio: TTimer
    Left = 216
    Top = 272
  end
end
