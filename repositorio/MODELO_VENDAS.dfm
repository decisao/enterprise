inherited formModeloVendas: TformModeloVendas
  Left = 215
  Caption = 'MODELO VENDAS'
  ClientHeight = 510
  ClientWidth = 740
  ExplicitWidth = 756
  ExplicitHeight = 548
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 740
    Height = 490
    ExplicitWidth = 740
    ExplicitHeight = 490
    ClientRectBottom = 489
    ClientRectRight = 739
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 738
      ExplicitHeight = 488
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 738
        ExplicitWidth = 738
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 457
        Width = 738
        ExplicitTop = 457
        ExplicitWidth = 738
      end
      inherited pnlFundoGrade: TPanel
        Width = 738
        Height = 378
        ExplicitWidth = 738
        ExplicitHeight = 378
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 356
          Width = 738
          ExplicitTop = 356
          ExplicitWidth = 738
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 738
          ExplicitWidth = 738
        end
        inherited grdDados: TcxGrid
          Width = 738
          Height = 334
          ExplicitWidth = 738
          ExplicitHeight = 345
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            OptionsCustomize.ColumnHiding = True
            OptionsSelection.UnselectFocusedRecordOnExit = False
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 738
      ExplicitHeight = 488
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 738
        ExplicitWidth = 738
      end
      inherited pnlEdicao: TPanel
        Width = 738
        Height = 409
        ExplicitWidth = 738
        ExplicitHeight = 414
        object pnlPainel: TPanel
          Left = 0
          Top = 0
          Width = 738
          Height = 96
          Align = alTop
          BevelOuter = bvNone
          Caption = '`'
          Color = clCream
          TabOrder = 0
          object Label1: TLabel
            Left = 8
            Top = 8
            Width = 40
            Height = 13
            Caption = 'C'#243'digo'
          end
          object Label2: TLabel
            Left = 112
            Top = 8
            Width = 62
            Height = 13
            Caption = 'Data In'#237'cio'
          end
          object Label3: TLabel
            Left = 200
            Top = 8
            Width = 27
            Height = 13
            Caption = 'Hora'
          end
          object Label4: TLabel
            Left = 296
            Top = 8
            Width = 36
            Height = 13
            Caption = 'Status'
          end
          object Label5: TLabel
            Left = 8
            Top = 48
            Width = 40
            Height = 13
            Caption = 'Cliente'
          end
          object Label6: TLabel
            Left = 456
            Top = 8
            Width = 100
            Height = 13
            Caption = 'Data Fechamento'
          end
          object Label7: TLabel
            Left = 568
            Top = 8
            Width = 78
            Height = 13
            Caption = 'Quem Fechou'
          end
          object Label8: TLabel
            Left = 456
            Top = 48
            Width = 54
            Height = 13
            Caption = 'Vendedor'
          end
          object Label9: TLabel
            Left = 568
            Top = 48
            Width = 60
            Height = 13
            Caption = 'Valor Total'
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 7
            Top = 22
            TabStop = False
            DataBinding.DataField = 'CODIGO'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 0
            Width = 73
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 111
            Top = 22
            TabStop = False
            DataBinding.DataField = 'DATA'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 1
            Width = 81
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 199
            Top = 22
            TabStop = False
            DataBinding.DataField = 'HORA'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 2
            Width = 73
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 295
            Top = 22
            TabStop = False
            DataBinding.DataField = 'STATUS'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 3
            Width = 137
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 7
            Top = 62
            TabStop = False
            DataBinding.DataField = 'NOME'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 4
            Width = 425
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 455
            Top = 22
            TabStop = False
            DataBinding.DataField = 'DATAFECHA'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 5
            Width = 106
          end
          object cxDBTextEdit7: TcxDBTextEdit
            Left = 567
            Top = 22
            TabStop = False
            DataBinding.DataField = 'USUARIOFECHAMENTO'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 6
            Width = 114
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 455
            Top = 62
            TabStop = False
            DataBinding.DataField = 'NOMEUSER'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 7
            Width = 106
          end
          object cxDBTextEdit9: TcxDBTextEdit
            Left = 567
            Top = 62
            TabStop = False
            DataBinding.DataField = 'NOTA_VALOR_TOTAL'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 8
            Width = 114
          end
        end
        object pgcDetalhes: TcxPageControl
          Left = 0
          Top = 96
          Width = 738
          Height = 313
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = tabFechamento
          LookAndFeel.NativeStyle = True
          OnChange = pgcDetalhesChange
          ExplicitHeight = 318
          ClientRectBottom = 309
          ClientRectLeft = 4
          ClientRectRight = 734
          ClientRectTop = 24
          object tabFechamento: TcxTabSheet
            Caption = '&Fechamento'
            ImageIndex = 0
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label10: TLabel
              Left = 11
              Top = 8
              Width = 74
              Height = 13
              Caption = 'Observa'#231#245'es'
              FocusControl = cxDBMemo1
            end
            object Label111: TLabel
              Left = 10
              Top = 96
              Width = 139
              Height = 13
              Caption = 'Condi'#231#227'o de pagamento'
            end
            object cxDBMemo1: TcxDBMemo
              Left = 9
              Top = 23
              DataBinding.DataField = 'OBSERVACOES'
              DataBinding.DataSource = dsrDados
              Style.Color = clBtnFace
              TabOrder = 0
              Height = 65
              Width = 416
            end
            object cxDBTextEdit100: TcxDBTextEdit
              Left = 9
              Top = 110
              DataBinding.DataField = 'CONDICAOPAGAMENTO'
              DataBinding.DataSource = dsrDados
              Style.Color = clBtnFace
              TabOrder = 1
              Width = 416
            end
          end
          object tabItens: TcxTabSheet
            Caption = '&Produtos && Servi'#231'os'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object pnlItens: TPanel
              Left = 0
              Top = 0
              Width = 730
              Height = 290
              Align = alClient
              BevelOuter = bvLowered
              Caption = 'Nenhum item vendido.'
              TabOrder = 0
              object grdItens: TcxGrid
                Left = 1
                Top = 1
                Width = 728
                Height = 288
                Align = alClient
                TabOrder = 0
                LookAndFeel.NativeStyle = True
                object grdItensDBTableView2: TcxGridDBTableView
                  DataController.DataSource = dmoOS.dsrItens
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  object grdItensDBTableView2BARRA: TcxGridDBColumn
                    Tag = 1
                    Caption = 'C'#243'd.Barras'
                    DataBinding.FieldName = 'BARRA'
                    Width = 114
                  end
                  object grdItensDBTableView2DESCRICAO: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Descri'#231#227'o'
                    DataBinding.FieldName = 'DESCRICAO2'
                    Width = 373
                  end
                  object grdItensDBTableView2QUANTIDADE: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Quant'
                    DataBinding.FieldName = 'QUANTIDADE'
                    Width = 64
                  end
                  object grdItensDBTableView2VALOR_PAGO: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Valor'
                    DataBinding.FieldName = 'VALOR_PAGO'
                  end
                end
                object grdItensLevel2: TcxGridLevel
                  GridView = grdItensDBTableView2
                end
              end
            end
          end
          object tabPagamentos: TcxTabSheet
            Caption = 'Pagamentos'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object pnlPagamentos: TPanel
              Left = 0
              Top = 0
              Width = 730
              Height = 290
              Align = alClient
              BevelOuter = bvLowered
              Caption = 'Nenhum pagamento lan'#231'ado.'
              TabOrder = 0
              object grdPagamentos: TcxGrid
                Left = 1
                Top = 1
                Width = 728
                Height = 288
                Align = alClient
                TabOrder = 0
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView1: TcxGridDBTableView
                  DataController.DataSource = dsrPagamentos
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsSelection.CellSelect = False
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  object cxGridDBTableView1NUMERO: TcxGridDBColumn
                    Tag = 1
                    Caption = '#'
                    DataBinding.FieldName = 'NUMERO'
                    HeaderAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Filtering = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Width = 23
                  end
                  object cxGridDBTableView1STATUS: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Situa'#231#227'o'
                    DataBinding.FieldName = 'STATUS'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Width = 90
                  end
                  object cxGridDBTableView1DATAVENCIMENTO: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Vencimento'
                    DataBinding.FieldName = 'DATAVENCIMENTO'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Width = 101
                  end
                  object cxGridDBTableView1DATAPAGO: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Pagamento'
                    DataBinding.FieldName = 'DATAPAGO'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Width = 104
                  end
                  object cxGridDBTableView1DOCUMENTO: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Documento'
                    DataBinding.FieldName = 'DOCUMENTO'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Width = 170
                  end
                  object cxGridDBTableView1VALOR: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Valor'
                    DataBinding.FieldName = 'VALOR'
                    HeaderAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Filtering = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                  end
                end
                object cxGridLevel1: TcxGridLevel
                  GridView = cxGridDBTableView1
                end
              end
            end
          end
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 490
    Width = 740
    ExplicitTop = 490
    ExplicitWidth = 740
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 136
    Top = 87
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
      FloatLeft = 598
      FloatTop = 177
      FloatClientHeight = 280
    end
    inherited dxBarManagerCadBar3: TdxBar
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbSEL'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnEmpresas'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnOcultos'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton14'
        end>
    end
    inherited dxBarManagerCadBar4: TdxBar
      FloatClientWidth = 69
      FloatClientHeight = 22
    end
    inherited dxBarManagerCadBar5: TdxBar
      FloatClientWidth = 88
      FloatClientHeight = 223
    end
    inherited btnAdicionar: TdxBarLargeButton
      ImageIndex = 2
    end
    inherited btnExcluir: TdxBarLargeButton
      Caption = 'Estorno'
      Hint = 'Estorno'
    end
    inherited btnAjuda: TdxBarLargeButton
      SyncImageIndex = False
      ImageIndex = 0
    end
    object dxBarButton6: TdxBarButton
      Tag = 11
      Caption = 'Imprimir Fechamento'
      Category = 0
      Hint = 'Imprimir Fechamento'
      Visible = ivAlways
      OnClick = dxBarButton6Click
    end
    object dxBarButton7: TdxBarButton
      Tag = 11
      Caption = 'Efetuar Lan'#231'amento'
      Category = 0
      Hint = 'Efetuar Lan'#231'amento'
      Visible = ivAlways
      ImageIndex = 91
      PaintStyle = psCaptionGlyph
    end
    object impnota: TdxBarButton
      Tag = 11
      Caption = 'Imprimir Nota Fiscal'
      Category = 0
      Hint = 'Imprimir Nota Fiscal'
      Visible = ivAlways
      OnClick = impnotaClick
    end
    object dxBarButton8: TdxBarButton
      Tag = 11
      Caption = 'Contas a receber'
      Category = 0
      Hint = 'Contas a receber'
      Visible = ivAlways
      ImageIndex = 25
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton8Click
    end
    object dxBarButton14: TdxBarButton
      Tag = 11
      Caption = 'Mov. Produtos'
      Category = 0
      Hint = 'Mov. Produtos'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton14Click
    end
    object dxBarButton99: TdxBarButton
      Tag = 11
      Caption = 'Imprimir Pedido Venda Bruto'
      Category = 0
      Hint = 'Imprimir Pedido Venda Bruto'
      Visible = ivAlways
      OnClick = dxBarButton99Click
    end
    object dxBarButton100: TdxBarButton
      Tag = 11
      Caption = 'Imprimir Pedido Venda Liquido'
      Category = 0
      Hint = 'Imprimir Pedido Venda Liquido'
      Visible = ivAlways
      OnClick = dxBarButton100Click
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 
      'SELECT '#39'N'#39' AS SEL, MO.CODIGO, CAST(MO.DATA AS DATE) AS DATA, CAS' +
      'T(MO.DATA AS TIME) AS HORA, MO.STATUS, MO.CODCLIENTE, CL.NOME, M' +
      'O.NOTA_VALOR_TOTAL, VE.NOMEUSER, MO.USUARIOFECHAMENTO, CAST(MO.D' +
      'ATAFECHAMENTO AS DATE) AS DATAFECHA, MO.OBSERVACOES, MO.FECHADO,' +
      ' CP.DESCRICAO AS CONDICAOPAGAMENTO, MO.NOTA_NUMERO, MO.CODCOMPRA' +
      ', (SELECT SUM(PA.VALOR) FROM PAGAMENTOS PA WHERE PA.CODMOVIMENTO' +
      ' = MO.CODIGO AND PA.PAGO = 0 AND PA.ES = 2) AS ABERTO FROM MOVIM' +
      'ENTOS MO JOIN CLIENTES CL ON (CL.CODIGO = MO.CODCLIENTE) LEFT JO' +
      'IN CLIENTES VE ON (VE.CODIGO = MO.CODVENDEDOR) LEFT JOIN CONDPAG' +
      ' CP ON (CP.CODIGO = MO.CODCONDPAG) WHERE MO.ES = 2 AND MO.TIPO I' +
      'N (5, 6)'
    ProviderName = 'pmSaidas'
    Left = 472
    Top = 312
  end
  inherited dsrDados: TDataSource
    Left = 472
    Top = 360
  end
  inherited tmrFocus: TTimer
    Left = 472
    Top = 264
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 568
    Top = 264
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.752401793980000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'menuGrafico'
      end
      item
        Visible = True
        ItemName = 'dxBarSubItem3'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton99'
      end
      item
        Visible = True
        ItemName = 'dxBarButton100'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        Visible = True
        ItemName = 'impnota'
      end>
    Left = 392
    Top = 128
  end
  inherited actDetalhes: TActionList
    Left = 568
    Top = 208
  end
  inherited tmrRelogio: TTimer
    Left = 296
    Top = 272
  end
  inherited tmrLabel: TTimer
    Left = 736
    Top = 208
  end
  inherited menuGrade: TPopupMenu
    Left = 728
    Top = 264
  end
  inherited dsrCampos: TDataSource
    Left = 688
    Top = 368
  end
  inherited memDataGraph: TdxMemData
    Left = 664
    Top = 304
  end
  inherited SaveDialog: TSaveDialog
    Left = 648
    Top = 208
  end
  object cdsPagamentos: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'pmPagamentos'
    RemoteServer = formPrincipal.SocketConnection
    Left = 546
    Top = 308
    object cdsPagamentosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsPagamentosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPagamentosNUMERO: TSmallintField
      FieldName = 'NUMERO'
    end
    object cdsPagamentosVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsPagamentosCODDOCUMENTO: TIntegerField
      FieldName = 'CODDOCUMENTO'
    end
    object cdsPagamentosDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object cdsPagamentosDATAPAGO: TSQLTimeStampField
      FieldName = 'DATAPAGO'
    end
    object cdsPagamentosSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsPagamentosDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsPagamentosTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
  end
  object dsrPagamentos: TDataSource
    DataSet = cdsPagamentos
    Left = 546
    Top = 364
  end
end
