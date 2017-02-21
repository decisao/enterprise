inherited formIndividuais: TformIndividuais
  Caption = 'Produtos Individuais'
  ClientHeight = 476
  ClientWidth = 664
  ExplicitWidth = 680
  ExplicitHeight = 515
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 664
    Height = 456
    ExplicitWidth = 664
    ExplicitHeight = 456
    ClientRectBottom = 455
    ClientRectRight = 663
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 662
      ExplicitHeight = 454
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 662
        ExplicitWidth = 662
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 423
        Width = 662
        ExplicitTop = 423
        ExplicitWidth = 662
      end
      inherited pnlFundoGrade: TPanel
        Width = 662
        Height = 344
        ExplicitWidth = 662
        ExplicitHeight = 344
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 341
          Width = 662
          Height = 3
          ExplicitTop = 341
          ExplicitWidth = 662
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 662
          ExplicitWidth = 662
        end
        inherited grdDados: TcxGrid
          Width = 662
          Height = 319
          ExplicitWidth = 662
          ExplicitHeight = 319
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              Tag = 1
              Caption = '**'
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              MinWidth = 30
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 30
            end
            object cxGrid1DBTableView1BARRA: TcxGridDBColumn
              Caption = 'C'#243'd.Barras'
              DataBinding.FieldName = 'BARRA'
              Options.Editing = False
              Width = 120
            end
            object cxGrid1DBTableView1SERIE: TcxGridDBColumn
              Caption = 'S'#233'rie/ESN/IMEI'
              DataBinding.FieldName = 'SERIE'
              Options.Editing = False
              Width = 160
            end
            object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
              Caption = 'Produto'
              DataBinding.FieldName = 'DESCRICAO'
              Options.Editing = False
              SortIndex = 0
              SortOrder = soAscending
            end
            object cxGrid1DBTableView1QUANTIDADE: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QUANTIDADE'
              Options.Editing = False
              Width = 100
            end
            object cxGrid1DBTableView1VALOR_PAGO: TcxGridDBColumn
              Caption = 'Total Venda'
              DataBinding.FieldName = 'VALOR_PAGO'
              Options.Editing = False
              Width = 100
            end
            object cxGrid1DBTableView1TOTAL_CUSTO: TcxGridDBColumn
              Caption = 'Total Custo'
              DataBinding.FieldName = 'TOTAL_CUSTO'
              Width = 100
            end
            object cxGrid1DBTableView1TOTAL_LUCRO: TcxGridDBColumn
              Caption = 'Total Lucro'
              DataBinding.FieldName = 'TOTAL_LUCRO'
              Width = 100
            end
            object cxGrid1DBTableView1CODEMPRESA: TcxGridDBColumn
              DataBinding.FieldName = 'CODEMPRESA'
            end
            object cxGrid1DBTableView1SERIE2: TcxGridDBColumn
              Caption = 'ICCID'
              DataBinding.FieldName = 'SERIE2'
              Options.Editing = False
            end
            object cxGrid1DBTableView1CODMOVENTRADA: TcxGridDBColumn
              Caption = 'C'#243'd.Compra'
              DataBinding.FieldName = 'CODMOVENTRADA'
              Options.Editing = False
            end
            object cxGrid1DBTableView1DATAENTRADA: TcxGridDBColumn
              Caption = 'Data Compra'
              DataBinding.FieldName = 'DATAENTRADA'
              Options.Editing = False
              Width = 100
            end
            object cxGrid1DBTableView1CODFORNECEDOR: TcxGridDBColumn
              Caption = 'C'#243'd.Fornecedor'
              DataBinding.FieldName = 'CODFORNECEDOR'
              Options.Editing = False
            end
            object cxGrid1DBTableView1FORNECEDOR: TcxGridDBColumn
              Caption = 'Fornecedor'
              DataBinding.FieldName = 'FORNECEDOR'
              Options.Editing = False
            end
            object cxGrid1DBTableView1VENDIDO: TcxGridDBColumn
              Caption = 'Vendido?'
              DataBinding.FieldName = 'VENDIDO'
              Options.Editing = False
            end
            object cxGrid1DBTableView1CODMOVSAIDA: TcxGridDBColumn
              Caption = 'C'#243'd.Sa'#237'da'
              DataBinding.FieldName = 'CODMOVSAIDA'
              Options.Editing = False
            end
            object cxGrid1DBTableView1DATASAIDA: TcxGridDBColumn
              Caption = 'Data Sa'#237'da'
              DataBinding.FieldName = 'DATASAIDA'
              Options.Editing = False
              Width = 100
            end
            object cxGrid1DBTableView1CODCLIENTE: TcxGridDBColumn
              Caption = 'C'#243'd.Cliente'
              DataBinding.FieldName = 'CODCLIENTE'
              Options.Editing = False
            end
            object cxGrid1DBTableView1CLIENTE: TcxGridDBColumn
              Caption = 'Cliente'
              DataBinding.FieldName = 'CLIENTE'
              Options.Editing = False
            end
            object cxGrid1DBTableView1TEMPOESTOQUE: TcxGridDBColumn
              Caption = 'Tempo Estoque'
              DataBinding.FieldName = 'TEMPOESTOQUE'
              Options.Editing = False
            end
            object cxGrid1DBTableView1OPERADORA: TcxGridDBColumn
              Caption = 'Operadora'
              DataBinding.FieldName = 'OPERADORA'
              Options.Editing = False
            end
            object cxGrid1DBTableView1PLANO: TcxGridDBColumn
              Caption = 'Plano'
              DataBinding.FieldName = 'PLANO'
              Options.Editing = False
            end
            object cxGrid1DBTableView1NUMERO_FONE: TcxGridDBColumn
              Caption = 'Linha'
              DataBinding.FieldName = 'NUMERO_FONE'
              Options.Editing = False
            end
            object cxGrid1DBTableView1REBATE: TcxGridDBColumn
              Caption = 'Rebate?'
              DataBinding.FieldName = 'REBATE'
              Options.Editing = False
              Width = 71
            end
            object cxGrid1DBTableView1ATIVACAO: TcxGridDBColumn
              Caption = 'Ativa'#231#227'o?'
              DataBinding.FieldName = 'ATIVACAO'
              Options.Editing = False
              Width = 76
            end
            object cxGrid1DBTableView1CODPRODUTO: TcxGridDBColumn
              Caption = 'C'#243'd.Produto'
              DataBinding.FieldName = 'CODPRODUTO'
              Options.Editing = False
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 662
      ExplicitHeight = 454
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 662
        ExplicitWidth = 662
      end
      inherited pnlEdicao: TPanel
        Width = 662
        Height = 375
        ExplicitWidth = 680
        ExplicitHeight = 382
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 662
          Height = 97
          Align = alTop
          BevelOuter = bvNone
          Color = clCream
          TabOrder = 0
          ExplicitWidth = 680
          object Label1: TLabel
            Left = 8
            Top = 8
            Width = 100
            Height = 13
            Caption = 'C'#243'digo de Barras'
          end
          object Label2: TLabel
            Left = 168
            Top = 8
            Width = 75
            Height = 13
            Caption = 'C'#243'd. Produto'
          end
          object Label3: TLabel
            Left = 8
            Top = 48
            Width = 44
            Height = 13
            Caption = 'Produto'
          end
          object Label4: TLabel
            Left = 288
            Top = 8
            Width = 65
            Height = 13
            Caption = 'Quantidade'
          end
          object Label5: TLabel
            Left = 536
            Top = 8
            Width = 29
            Height = 13
            Caption = 'Valor'
          end
          object Label6: TLabel
            Left = 464
            Top = 48
            Width = 97
            Height = 13
            Caption = 'N'#250'mero de S'#233'rie'
            FocusControl = dedSerie
          end
          object Label7: TLabel
            Left = 392
            Top = 8
            Width = 51
            Height = 13
            Caption = 'Vendido?'
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 7
            Top = 23
            TabStop = False
            DataBinding.DataField = 'BARRA'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 0
            Width = 137
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 167
            Top = 23
            TabStop = False
            DataBinding.DataField = 'CODPRODUTO'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 1
            Width = 89
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 287
            Top = 23
            TabStop = False
            DataBinding.DataField = 'QUANTIDADE'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 2
            Width = 81
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 391
            Top = 23
            TabStop = False
            DataBinding.DataField = 'VENDIDO'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 3
            Width = 57
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 535
            Top = 23
            TabStop = False
            DataBinding.DataField = 'VALOR_PAGO'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 4
            Width = 121
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 7
            Top = 63
            TabStop = False
            DataBinding.DataField = 'DESCRICAO'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 5
            Width = 441
          end
          object dedSerie: TcxDBTextEdit
            Left = 463
            Top = 63
            DataBinding.DataField = 'SERIE'
            DataBinding.DataSource = dsrDados
            TabOrder = 6
            OnEnter = edtPesquisar2Enter
            OnExit = edtPesquisar2Exit
            Width = 193
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 97
          Width = 662
          Height = 278
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = cxTabSheet1
          LookAndFeel.NativeStyle = True
          ExplicitWidth = 680
          ExplicitHeight = 285
          ClientRectBottom = 274
          ClientRectLeft = 4
          ClientRectRight = 658
          ClientRectTop = 24
          object cxTabSheet1: TcxTabSheet
            Caption = 'Compra'
            ImageIndex = 0
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 672
            ExplicitHeight = 257
            object Label8: TLabel
              Left = 8
              Top = 8
              Width = 73
              Height = 13
              Caption = 'C'#243'd.Compra'
            end
            object Label9: TLabel
              Left = 112
              Top = 8
              Width = 75
              Height = 13
              Caption = 'Data Entrada'
            end
            object Label10: TLabel
              Left = 8
              Top = 48
              Width = 91
              Height = 13
              Caption = 'C'#243'd.Fornecedor'
            end
            object Label11: TLabel
              Left = 112
              Top = 48
              Width = 64
              Height = 13
              Caption = 'Fornecedor'
            end
            object Label20: TLabel
              Left = 112
              Top = 87
              Width = 83
              Height = 13
              Caption = 'Custo Compra'
            end
            object Label21: TLabel
              Left = 8
              Top = 87
              Width = 65
              Height = 13
              Caption = 'Quantidade'
            end
            object Label22: TLabel
              Left = 112
              Top = 127
              Width = 81
              Height = 13
              Caption = 'Custo Unit'#225'rio'
            end
            object cxDBTextEdit7: TcxDBTextEdit
              Left = 7
              Top = 23
              TabStop = False
              DataBinding.DataField = 'CODMOVENTRADA'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 0
              Width = 89
            end
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 111
              Top = 23
              TabStop = False
              DataBinding.DataField = 'DATAENTRADA'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 1
              Width = 137
            end
            object cxDBTextEdit9: TcxDBTextEdit
              Left = 7
              Top = 63
              TabStop = False
              DataBinding.DataField = 'CODFORNECEDOR'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 2
              Width = 89
            end
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 111
              Top = 63
              TabStop = False
              DataBinding.DataField = 'FORNECEDOR'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 3
              Width = 538
            end
            object cxDBTextEdit16: TcxDBTextEdit
              Left = 111
              Top = 102
              TabStop = False
              DataBinding.DataField = 'TOTAL_CUSTO'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 4
              Width = 137
            end
            object cxDBTextEdit17: TcxDBTextEdit
              Left = 7
              Top = 102
              TabStop = False
              DataBinding.DataField = 'QUANTIDADE'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 5
              Width = 89
            end
            object cxDBTextEdit18: TcxDBTextEdit
              Left = 111
              Top = 142
              TabStop = False
              DataBinding.DataField = 'COMPRA_ITEM'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 6
              Width = 137
            end
          end
          object cxTabSheet2: TcxTabSheet
            Caption = 'Venda/Estorno'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 672
            ExplicitHeight = 257
            object Label16: TLabel
              Left = 263
              Top = 8
              Width = 87
              Height = 13
              Caption = 'Tempo Estoque'
            end
            object Label12: TLabel
              Left = 8
              Top = 8
              Width = 84
              Height = 13
              Caption = 'C'#243'd.Venda/OS'
            end
            object Label13: TLabel
              Left = 112
              Top = 8
              Width = 63
              Height = 13
              Caption = 'Data Sa'#237'da'
            end
            object Label14: TLabel
              Left = 8
              Top = 48
              Width = 67
              Height = 13
              Caption = 'C'#243'd.Cliente'
            end
            object Label15: TLabel
              Left = 112
              Top = 48
              Width = 40
              Height = 13
              Caption = 'Cliente'
            end
            object Label23: TLabel
              Left = 8
              Top = 87
              Width = 65
              Height = 13
              Caption = 'Quantidade'
            end
            object Label24: TLabel
              Left = 112
              Top = 87
              Width = 66
              Height = 13
              Caption = 'Total Venda'
            end
            object Label25: TLabel
              Left = 112
              Top = 127
              Width = 77
              Height = 13
              Caption = 'Valor Unit'#225'rio'
            end
            object Label26: TLabel
              Left = 112
              Top = 167
              Width = 105
              Height = 13
              Caption = 'Valor Contribui'#231#227'o'
            end
            object cxDBTextEdit11: TcxDBTextEdit
              Left = 7
              Top = 23
              TabStop = False
              DataBinding.DataField = 'CODMOVSAIDA'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 0
              Width = 89
            end
            object cxDBTextEdit12: TcxDBTextEdit
              Left = 111
              Top = 23
              TabStop = False
              DataBinding.DataField = 'DATASAIDA'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 1
              Width = 137
            end
            object cxDBTextEdit13: TcxDBTextEdit
              Left = 7
              Top = 63
              TabStop = False
              DataBinding.DataField = 'CODCLIENTE'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 2
              Width = 89
            end
            object cxDBTextEdit14: TcxDBTextEdit
              Left = 111
              Top = 63
              TabStop = False
              DataBinding.DataField = 'CLIENTE'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 3
              Width = 538
            end
            object cxDBTextEdit15: TcxDBTextEdit
              Left = 262
              Top = 23
              TabStop = False
              DataBinding.DataField = 'TEMPOESTOQUE'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 4
              Width = 89
            end
            object cxDBTextEdit19: TcxDBTextEdit
              Left = 7
              Top = 102
              TabStop = False
              DataBinding.DataField = 'QUANTIDADE'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 5
              Width = 89
            end
            object cxDBTextEdit20: TcxDBTextEdit
              Left = 111
              Top = 102
              TabStop = False
              DataBinding.DataField = 'VALOR_PAGO'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 6
              Width = 137
            end
            object cxDBTextEdit21: TcxDBTextEdit
              Left = 111
              Top = 142
              TabStop = False
              DataBinding.DataField = 'VENDA_ITEM'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 7
              Width = 137
            end
            object cxDBTextEdit22: TcxDBTextEdit
              Left = 111
              Top = 182
              TabStop = False
              DataBinding.DataField = 'TOTAL_LUCRO'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 8
              Width = 137
            end
            object radVenda: TcxDBRadioGroup
              Left = 263
              Top = 87
              Caption = ' Tipo '
              DataBinding.DataField = 'VENDIDO'
              DataBinding.DataSource = dsrDados
              Properties.Items = <
                item
                  Caption = 'Venda'
                  Value = 'S'
                end
                item
                  Caption = 'Estorno'
                  Value = 'N'
                end>
              TabOrder = 9
              Height = 116
              Width = 88
            end
          end
          object cxTabSheet3: TcxTabSheet
            Caption = 'Telecom'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 672
            ExplicitHeight = 257
            object Label17: TLabel
              Left = 8
              Top = 8
              Width = 119
              Height = 13
              Caption = 'N'#250'm.S'#233'rie/ESN/IMEI'
              FocusControl = dedNUMSERIE
            end
            object Label18: TLabel
              Left = 288
              Top = 8
              Width = 37
              Height = 13
              Caption = 'ICCID'
              FocusControl = dedSERIE2
            end
            object Label19: TLabel
              Left = 9
              Top = 48
              Width = 97
              Height = 13
              Caption = 'N'#250'mero da Linha'
            end
            object lbOPERADORA: TLabel
              Left = 8
              Top = 87
              Width = 61
              Height = 13
              Caption = 'Operadora'
              FocusControl = dedOPERADORA
            end
            object lbPLANO: TLabel
              Left = 288
              Top = 87
              Width = 96
              Height = 13
              Caption = 'Plano de Servi'#231'o'
              FocusControl = dedPLANO
            end
            object dedNUMSERIE: TcxDBTextEdit
              Left = 7
              Top = 23
              DataBinding.DataField = 'SERIE'
              DataBinding.DataSource = dsrDados
              TabOrder = 0
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 265
            end
            object dedSERIE2: TcxDBTextEdit
              Left = 287
              Top = 23
              DataBinding.DataField = 'SERIE2'
              DataBinding.DataSource = dsrDados
              TabOrder = 1
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 369
            end
            object cxDBMaskEdit1: TcxDBMaskEdit
              Left = 7
              Top = 63
              DataBinding.DataField = 'NUMERO_FONE'
              DataBinding.DataSource = dsrDados
              Properties.EditMask = '\(99\)9999-9999;1;_'
              Properties.MaxLength = 0
              TabOrder = 2
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 146
            end
            object dedOPERADORA: TcxDBLookupComboBox
              Left = 7
              Top = 102
              DataBinding.DataField = 'CODOPERADORA'
              DataBinding.DataSource = dsrDados
              Properties.KeyFieldNames = 'CODIGO'
              Properties.ListColumns = <
                item
                  FieldName = 'NOME'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = formPrincipal.dsrOperadoras
              TabOrder = 3
              Width = 264
            end
            object dedPLANO: TcxDBLookupComboBox
              Left = 287
              Top = 102
              DataBinding.DataField = 'CODPLANO'
              DataBinding.DataSource = dsrDados
              Properties.KeyFieldNames = 'CODIGO'
              Properties.ListColumns = <
                item
                  FieldName = 'NOME'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsrPlanos
              TabOrder = 4
              Width = 368
            end
          end
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 456
    Width = 664
    ExplicitTop = 456
    ExplicitWidth = 664
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 576
    Top = 311
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
      Visible = ivNever
      ImageIndex = 2
    end
    inherited btnExcluir: TdxBarLargeButton
      Visible = ivNever
    end
    inherited cmbSelecionar: TdxBarCombo
      Tag = 2
    end
    inherited btnAjuda: TdxBarLargeButton
      SyncImageIndex = False
      ImageIndex = 0
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 
      'SELECT '#39'N'#39' AS SEL, ID.CODIGO, ID.BARRA, ID.SERIE, ID.SERIE2, ID.' +
      'QUANTIDADE, ID.VALOR_PAGO, ID.CODMOVENTRADA, ID.CODMOVSAIDA, ID.' +
      'CODOPERADORA, ID.CODPLANO, ID.NUMERO_FONE, ID.REBATE, ID.ATIVACA' +
      'O, ID.VENDIDO, CAST(ME.DATA AS DATE) AS DATAENTRADA, CAST(MS.DAT' +
      'A AS DATE) AS DATASAIDA, ID.TEMPOESTOQUE, PO.CODIGO AS CODPRODUT' +
      'O, PO.DESCRICAO, ME.CODIGO AS CODCOMPRA, MS.CODIGO AS CODVENDA, ' +
      'CE.CODIGO AS CODFORNECEDOR, CS.CODIGO AS CODCLIENTE, CE.NOME AS ' +
      'FORNECEDOR, CS.NOME AS CLIENTE, OP.NOME AS OPERADORA, PL.NOME AS' +
      ' PLANO, ID.TOTAL_CUSTO, (ID.VALOR_PAGO / ID.QUANTIDADE) AS VENDA' +
      '_ITEM, (ID.TOTAL_CUSTO / ID.QUANTIDADE) AS COMPRA_ITEM, ID.TOTAL' +
      '_LUCRO, ID.CODEMPRESA FROM INDIVIDUAIS ID JOIN PRODUTOS PO ON (P' +
      'O.CODIGO = ID.CODPRODUTO) LEFT JOIN MOVIMENTOS ME ON (ME.CODIGO ' +
      '= ID.CODMOVENTRADA) LEFT JOIN MOVIMENTOS MS ON (MS.CODIGO = ID.C' +
      'ODMOVSAIDA) LEFT JOIN CLIENTES CE ON (CE.CODIGO = ME.CODCLIENTE)' +
      ' LEFT JOIN CLIENTES CS ON (CS.CODIGO = MS.CODCLIENTE) LEFT JOIN ' +
      'OPERADORAS OP ON (OP.CODIGO = ID.CODOPERADORA) LEFT JOIN PLANOS ' +
      'PL ON (PL.CODIGO = ID.CODPLANO AND PL.CODOPERADORA = ID.CODOPERA' +
      'DORA) WHERE ID.PS = '#39'P'#39
    ProviderName = 'pmIndividuais'
    Left = 656
    Top = 360
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
    object cdsDadosBARRA: TStringField
      FieldName = 'BARRA'
      FixedChar = True
      Size = 14
    end
    object cdsDadosSERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
    end
    object cdsDadosSERIE2: TStringField
      FieldName = 'SERIE2'
      FixedChar = True
    end
    object cdsDadosVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object cdsDadosCODMOVENTRADA: TIntegerField
      FieldName = 'CODMOVENTRADA'
    end
    object cdsDadosCODMOVSAIDA: TIntegerField
      FieldName = 'CODMOVSAIDA'
    end
    object cdsDadosCODOPERADORA: TIntegerField
      FieldName = 'CODOPERADORA'
      OnChange = cdsDadosCODOPERADORAChange
    end
    object cdsDadosCODPLANO: TIntegerField
      FieldName = 'CODPLANO'
    end
    object cdsDadosNUMERO_FONE: TStringField
      FieldName = 'NUMERO_FONE'
      FixedChar = True
    end
    object cdsDadosREBATE: TStringField
      FieldName = 'REBATE'
      FixedChar = True
      Size = 1
    end
    object cdsDadosATIVACAO: TStringField
      FieldName = 'ATIVACAO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosVENDIDO: TStringField
      FieldName = 'VENDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosTEMPOESTOQUE: TFloatField
      FieldName = 'TEMPOESTOQUE'
    end
    object cdsDadosCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = []
    end
    object cdsDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object cdsDadosCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      ProviderFlags = []
    end
    object cdsDadosCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = []
    end
    object cdsDadosCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = []
    end
    object cdsDadosCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = []
    end
    object cdsDadosFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosOPERADORA: TStringField
      FieldName = 'OPERADORA'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosPLANO: TStringField
      FieldName = 'PLANO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      ProviderFlags = []
      DisplayFormat = '####.##'
      Precision = 20
      Size = 3
    end
    object cdsDadosTOTAL_CUSTO: TFMTBCDField
      FieldName = 'TOTAL_CUSTO'
      ProviderFlags = []
      Precision = 20
      Size = 2
    end
    object cdsDadosVENDA_ITEM: TFMTBCDField
      FieldName = 'VENDA_ITEM'
      ProviderFlags = []
      Precision = 20
      Size = 5
    end
    object cdsDadosCOMPRA_ITEM: TFMTBCDField
      FieldName = 'COMPRA_ITEM'
      ProviderFlags = []
      Precision = 20
      Size = 5
    end
    object cdsDadosTOTAL_LUCRO: TFMTBCDField
      FieldName = 'TOTAL_LUCRO'
      ProviderFlags = []
      Precision = 20
      Size = 2
    end
    object cdsDadosDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
      ProviderFlags = []
    end
    object cdsDadosDATASAIDA: TDateField
      FieldName = 'DATASAIDA'
      ProviderFlags = []
    end
    object cdsDadosCODEMPRESA: TIntegerField
      DisplayLabel = 'C'#243'd.Empresa'
      FieldName = 'CODEMPRESA'
    end
  end
  inherited dsrDados: TDataSource
    Left = 656
    Top = 408
  end
  inherited tmrFocus: TTimer
    Left = 656
    Top = 312
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 752
    Top = 312
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.759748587960000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 832
    Top = 312
  end
  inherited actDetalhes: TActionList
    Left = 752
    Top = 256
  end
  inherited tmrRelogio: TTimer
    Left = 688
    Top = 232
  end
  inherited tmrLabel: TTimer
    Left = 920
    Top = 256
  end
  inherited menuGrade: TPopupMenu
    Left = 912
    Top = 312
  end
  inherited tmrFocus2: TTimer
    Left = 752
    Top = 368
  end
  inherited tmrSemDireito: TTimer
    Left = 240
    Top = 192
  end
  inherited memCampos: TdxMemData
    Left = 448
    Top = 200
  end
  inherited SaveDialog: TSaveDialog
    Left = 832
    Top = 256
  end
  inherited tmrShift: TTimer
    Left = 352
    Top = 280
  end
  object cdsPlanos: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftInteger
        Name = 'CODOPERADORA'
        ParamType = ptInput
      end>
    ProviderName = 'pcPlanos'
    RemoteServer = formPrincipal.SocketConnection
    Left = 24
    Top = 328
    object cdsPlanosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPlanosCODOPERADORA: TIntegerField
      FieldName = 'CODOPERADORA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPlanosNOME: TStringField
      FieldName = 'NOME'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsPlanosTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsrPlanos: TDataSource
    DataSet = cdsPlanos
    Left = 24
    Top = 376
  end
end
