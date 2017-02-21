inherited formHistoricoPag: TformHistoricoPag
  Left = 398
  Top = 160
  Caption = 'Hist'#243'rico de Pagamentos'
  ClientHeight = 456
  ClientWidth = 573
  ExplicitWidth = 581
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 573
    Height = 436
    ExplicitWidth = 573
    ExplicitHeight = 436
    ClientRectBottom = 435
    ClientRectRight = 572
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 571
      ExplicitHeight = 434
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 571
        ExplicitWidth = 571
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 405
        Width = 571
        ExplicitTop = 405
        ExplicitWidth = 571
      end
      inherited pnlFundoGrade: TPanel
        Width = 571
        Height = 328
        ExplicitWidth = 571
        ExplicitHeight = 328
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 325
          Width = 571
          Height = 3
          ExplicitTop = 325
          ExplicitWidth = 571
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 571
          ExplicitWidth = 571
        end
        inherited grdDados: TcxGrid
          Width = 571
          Height = 303
          ExplicitWidth = 571
          ExplicitHeight = 307
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
              Caption = 'Hist'#243'rico'
              DataBinding.FieldName = 'DESCRICAO'
              SortIndex = 0
              SortOrder = soAscending
            end
            object cxGrid1DBTableView1CENTRO: TcxGridDBColumn
              Caption = 'Centro'
              DataBinding.FieldName = 'CENTRO'
            end
            object cxGrid1DBTableView1PLANO: TcxGridDBColumn
              Caption = 'Plano de Contas'
              DataBinding.FieldName = 'PLANO'
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 571
      ExplicitHeight = 434
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 571
        ExplicitWidth = 571
      end
      inherited pnlEdicao: TPanel
        Width = 571
        Height = 357
        ExplicitWidth = 571
        ExplicitHeight = 359
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
          Width = 135
          Height = 13
          Caption = 'Hist'#243'rico do Pagamento'
          FocusControl = dedHISTORICO
        end
        object Label3: TLabel
          Left = 8
          Top = 88
          Width = 130
          Height = 13
          Cursor = crHandPoint
          Caption = 'Centro de Custo/Lucro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = Label3Click
          OnMouseEnter = lbModeloMouseEnter
          OnMouseLeave = lbModeloMouseLeave
        end
        object Label4: TLabel
          Left = 8
          Top = 128
          Width = 93
          Height = 13
          Cursor = crHandPoint
          Caption = 'Plano de Contas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = Label4Click
          OnMouseEnter = lbModeloMouseEnter
          OnMouseLeave = lbModeloMouseLeave
        end
        object Label5: TLabel
          Left = 8
          Top = 208
          Width = 74
          Height = 13
          Caption = 'Observa'#231#245'es'
          FocusControl = dedOBSERVACOES
        end
        object Label6: TLabel
          Left = 8
          Top = 168
          Width = 128
          Height = 13
          Cursor = crHandPoint
          Caption = 'Natureza de Opera'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = Label6Click
          OnMouseEnter = lbModeloMouseEnter
          OnMouseLeave = lbModeloMouseLeave
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
        object dedHISTORICO: TcxDBTextEdit
          Left = 7
          Top = 63
          DataBinding.DataField = 'DESCRICAO'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 434
        end
        object dedCENTRO: TcxDBTextEdit
          Left = 7
          Top = 103
          DataBinding.DataField = 'CENTRO'
          DataBinding.DataSource = dsrDados
          Style.Color = clBtnFace
          TabOrder = 2
          Width = 434
        end
        object dedPLANO: TcxDBTextEdit
          Left = 7
          Top = 143
          DataBinding.DataField = 'PLANO'
          DataBinding.DataSource = dsrDados
          Style.Color = clBtnFace
          TabOrder = 3
          Width = 434
        end
        object dedOBSERVACOES: TcxDBMemo
          Left = 7
          Top = 223
          DataBinding.DataField = 'OBSERVACOES'
          DataBinding.DataSource = dsrDados
          TabOrder = 4
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Height = 89
          Width = 434
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 7
          Top = 183
          DataBinding.DataField = 'NATUREZA'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          TabOrder = 5
          Width = 434
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 8
          Top = 320
          Caption = 'Faturar por Caixas'
          DataBinding.DataField = 'FATURA_CAIXAS'
          DataBinding.DataSource = dsrDados
          Properties.ImmediatePost = True
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          TabOrder = 6
          Width = 177
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 436
    Width = 573
    ExplicitTop = 436
    ExplicitWidth = 573
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 248
    Top = 295
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
    inherited btnAjuda: TdxBarLargeButton
      SyncImageIndex = False
      ImageIndex = 0
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 
      'SELECT '#39'N'#39' AS SEL, HI.*, CE.DESCRICAO AS CENTRO, UDF_TRIM(PL.COD' +
      'PLANO) || '#39' '#39' || PL.DESCRICAO AS PLANO, UDF_TRIM(NA.CODIGO) || '#39 +
      ' '#39' || NA.NATUREZA AS NATUREZA FROM HISTORICOPAG HI JOIN CENTROS ' +
      'CE ON (CE.CODIGO = HI.CODCENTRO) LEFT JOIN PLANCONTAS PL ON (PL.' +
      'CODIGO = HI.CODPLANO) LEFT JOIN NATUOPER NA ON (NA.CODIGO = HI.C' +
      'ODNATUOPER)'
    ProviderName = 'pvHistorico'
    Left = 328
    Top = 344
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
      Size = 60
    end
    object cdsDadosCODCENTRO: TIntegerField
      FieldName = 'CODCENTRO'
      Required = True
    end
    object cdsDadosCODPLANO: TIntegerField
      FieldName = 'CODPLANO'
    end
    object cdsDadosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 254
    end
    object cdsDadosCENTRO: TStringField
      FieldName = 'CENTRO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosPLANO: TStringField
      FieldName = 'PLANO'
      ProviderFlags = []
      Size = 295
    end
    object cdsDadosCODNATUOPER: TStringField
      FieldName = 'CODNATUOPER'
      FixedChar = True
      Size = 5
    end
    object cdsDadosNATUREZA: TStringField
      FieldName = 'NATUREZA'
      ProviderFlags = []
      Size = 285
    end
    object cdsDadosFATURA_CAIXAS: TStringField
      FieldName = 'FATURA_CAIXAS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  inherited dsrDados: TDataSource
    Left = 328
    Top = 392
  end
  inherited tmrFocus: TTimer
    Left = 328
    Top = 296
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 424
    Top = 296
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.755219502320000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 504
    Top = 296
  end
  inherited actDetalhes: TActionList
    Left = 424
    Top = 240
  end
  inherited tmrRelogio: TTimer
    Left = 328
    Top = 240
  end
  inherited tmrLabel: TTimer
    Left = 592
    Top = 240
  end
  inherited menuGrade: TPopupMenu
    Left = 584
    Top = 296
  end
  inherited tmrFocus2: TTimer
    Left = 424
    Top = 352
  end
  inherited SaveDialog: TSaveDialog
    Left = 504
    Top = 240
  end
end
