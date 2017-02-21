inherited formSaidaProdutos: TformSaidaProdutos
  Left = 254
  Top = 119
  Caption = 'Produtos'
  ClientHeight = 533
  ClientWidth = 762
  ExplicitWidth = 778
  ExplicitHeight = 571
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 762
    Height = 513
    ExplicitWidth = 762
    ExplicitHeight = 513
    ClientRectBottom = 512
    ClientRectRight = 761
    inherited tabVisual: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 760
      ExplicitHeight = 511
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 760
        ExplicitWidth = 760
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 482
        Width = 760
        ExplicitTop = 482
        ExplicitWidth = 760
      end
      inherited pnlFundoGrade: TPanel
        Width = 760
        Height = 405
        ExplicitWidth = 760
        ExplicitHeight = 405
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 402
          Width = 760
          ExplicitTop = 402
          ExplicitWidth = 760
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 760
          ExplicitWidth = 760
        end
        inherited grdDados: TcxGrid
          Width = 760
          Height = 380
          ExplicitWidth = 760
          ExplicitHeight = 380
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            OptionsBehavior.IncSearch = True
            OptionsBehavior.IncSearchItem = cxGrid1DBTableView1DESCRICAO
            OptionsCustomize.ColumnHiding = True
            OptionsData.CancelOnExit = False
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              Caption = '*'
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ReadOnly = False
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              MinWidth = 30
              Options.Filtering = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.HorzSizing = False
              Options.Moving = False
              Width = 30
            end
            object cxGrid1DBTableView1BARRA: TcxGridDBColumn
              Caption = 'C'#243'd.Barras'
              DataBinding.FieldName = 'BARRA'
            end
            object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'DESCRICAO'
              SortIndex = 0
              SortOrder = soAscending
              Width = 376
            end
            object cxGrid1DBTableView1QUANTIDADE: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QUANTIDADE'
              Width = 62
            end
            object cxGrid1DBTableView1PRECOVENDA: TcxGridDBColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'PRECOVENDA'
              Width = 90
            end
            object cxGrid1DBTableView1MARCA: TcxGridDBColumn
              DataBinding.FieldName = 'MARCA'
            end
            object cxGrid1DBTableView1PRECOVENDA2: TcxGridDBColumn
              Caption = 'Valor 2'
              DataBinding.FieldName = 'PRECOVENDA2'
            end
            object cxGrid1DBTableView1PRECOVENDA3: TcxGridDBColumn
              Caption = 'Valor 3'
              DataBinding.FieldName = 'PRECOVENDA3'
            end
            object cxGrid1DBTableView1PRECOTOTAL: TcxGridDBColumn
              Caption = 'Valor c/Servi'#231'o'
              DataBinding.FieldName = 'PRECOTOTAL'
            end
            object cxGrid1DBTableView1SERIE: TcxGridDBColumn
              Caption = 'S'#233'rie/ESN/IMEI'
              DataBinding.FieldName = 'SERIE'
            end
            object cxGrid1DBTableView1SERIE2: TcxGridDBColumn
              Caption = 'ICCID'
              DataBinding.FieldName = 'SERIE2'
            end
            object cxGrid1DBTableView1NUMERO_FONE: TcxGridDBColumn
              Caption = 'Linha'
              DataBinding.FieldName = 'NUMERO_FONE'
            end
            object cxGrid1DBTableView1OPERADORA: TcxGridDBColumn
              Caption = 'Operadora'
              DataBinding.FieldName = 'OPERADORA'
              Width = 111
            end
            object cxGrid1DBTableView1LINHA: TcxGridDBColumn
              Caption = 'Plano'
              DataBinding.FieldName = 'PLANO'
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 760
      ExplicitHeight = 511
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 760
        ExplicitWidth = 760
      end
      inherited pnlEdicao: TPanel
        Width = 760
        Height = 434
        ExplicitWidth = 760
        ExplicitHeight = 434
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 59
          Height = 13
          Caption = 'C'#243'd.Barra'
        end
        object Label2: TLabel
          Left = 144
          Top = 8
          Width = 44
          Height = 13
          Caption = 'Produto'
        end
        object Label3: TLabel
          Left = 280
          Top = 49
          Width = 70
          Height = 13
          Caption = 'Valor Venda'
        end
        object Label4: TLabel
          Left = 488
          Top = 49
          Width = 146
          Height = 13
          Caption = 'Total (Produto + Servi'#231'o)'
        end
        object Label5: TLabel
          Left = 280
          Top = 248
          Width = 77
          Height = 13
          Caption = 'Valor Servi'#231'o'
        end
        object Label6: TLabel
          Left = 8
          Top = 208
          Width = 70
          Height = 13
          Caption = 'C'#243'd.Servi'#231'o'
        end
        object Label7: TLabel
          Left = 144
          Top = 205
          Width = 43
          Height = 13
          Caption = 'Servi'#231'o'
        end
        object Label8: TLabel
          Left = 144
          Top = 248
          Width = 55
          Height = 13
          Caption = 'Ativa'#231#227'o?'
        end
        object Label9: TLabel
          Left = 416
          Top = 88
          Width = 89
          Height = 13
          Caption = 'S'#233'rie/ESN/IMEI'
        end
        object Label10: TLabel
          Left = 144
          Top = 320
          Width = 37
          Height = 13
          Caption = 'ICCID'
        end
        object Label11: TLabel
          Left = 280
          Top = 88
          Width = 31
          Height = 13
          Caption = 'ICMS'
        end
        object Label12: TLabel
          Left = 144
          Top = 88
          Width = 65
          Height = 13
          Caption = 'Quantidade'
        end
        object Label13: TLabel
          Left = 488
          Top = 320
          Width = 30
          Height = 13
          Caption = 'Linha'
        end
        object Label14: TLabel
          Left = 144
          Top = 360
          Width = 61
          Height = 13
          Caption = 'Operadora'
        end
        object Label15: TLabel
          Left = 360
          Top = 360
          Width = 31
          Height = 13
          Caption = 'Plano'
        end
        object Label16: TLabel
          Left = 144
          Top = 131
          Width = 34
          Height = 13
          Caption = 'Marca'
        end
        object Label17: TLabel
          Left = 8
          Top = 49
          Width = 33
          Height = 13
          Caption = 'Custo'
        end
        object Label18: TLabel
          Left = 144
          Top = 49
          Width = 46
          Height = 13
          Caption = 'Margem'
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 7
          Top = 23
          DataBinding.DataField = 'BARRA'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 143
          Top = 23
          DataBinding.DataField = 'DESCRICAO'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 1
          Width = 465
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 279
          Top = 64
          DataBinding.DataField = 'PRECOVENDA'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 2
          Width = 121
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 487
          Top = 64
          DataBinding.DataField = 'PRECOTOTAL'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 3
          Width = 121
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 279
          Top = 263
          DataBinding.DataField = 'PRECOSERVICO'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 7
          Top = 223
          DataBinding.DataField = 'BARRA_1'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 5
          Width = 121
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 143
          Top = 220
          DataBinding.DataField = 'DESCRICAO_1'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 6
          Width = 465
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 143
          Top = 263
          DataBinding.DataField = 'ATIVACAO'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 7
          Width = 121
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 415
          Top = 103
          DataBinding.DataField = 'SERIE'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 8
          Width = 193
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 143
          Top = 335
          DataBinding.DataField = 'SERIE2'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 9
          Width = 257
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 279
          Top = 103
          DataBinding.DataField = 'ICMS'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 10
          Width = 121
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 143
          Top = 103
          DataBinding.DataField = 'QUANTIDADE'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 11
          Width = 121
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 487
          Top = 335
          DataBinding.DataField = 'NUMERO_FONE'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 12
          Width = 121
        end
        object cxDBTextEdit14: TcxDBTextEdit
          Left = 143
          Top = 375
          DataBinding.DataField = 'OPERADORA'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 13
          Width = 201
        end
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 359
          Top = 375
          DataBinding.DataField = 'PLANO'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 14
          Width = 249
        end
        object cxDBTextEdit16: TcxDBTextEdit
          Left = 143
          Top = 146
          DataBinding.DataField = 'MARCA'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 15
          Width = 121
        end
        object cxDBTextEdit17: TcxDBTextEdit
          Left = 7
          Top = 64
          DataBinding.DataField = 'PRECOCUSTO'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 16
          Width = 121
        end
        object cxDBTextEdit18: TcxDBTextEdit
          Left = 143
          Top = 64
          DataBinding.DataField = 'MARGEM'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 17
          Width = 121
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 513
    Width = 762
    ExplicitTop = 513
    ExplicitWidth = 762
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 160
    Top = 143
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
      Visible = ivNever
      ImageIndex = 96
    end
    inherited cmbSelecionar: TdxBarCombo
      Tag = 1
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 
      'SELECT '#39'N'#39' AS SEL, ID.BARRA, PO.DESCRICAO, PO.PRECOVENDA, PO.PRE' +
      'COVENDA2, PO.PRECOVENDA3, PO.PRECOVENDA4, PO.PRECOVENDA5, PO.PRE' +
      'COTOTAL, PO.PRECOSERVICO, PO.CODSERVICO, PO.CAIXA_ITENS, PS.BARR' +
      'A, PS.DESCRICAO, PS.ATIVACAO, ID.SERIE, ID.SERIE2, ID.UNICO, ID.' +
      'NUMERO_FONE, OP.NOME AS OPERADORA, PL.NOME AS PLANO, MAX(ID.ICMS' +
      'VENDA) AS ICMS, SUM(ID.QUANTIDADE) AS QUANTIDADE, ID.CONTRATO, I' +
      'D.VOUCHER, ID.TIPOATIVACAO, MA.DESCRICAO AS MARCA, PO.PRECOCUSTO' +
      ', PO.MARGEM, PO.CODIGO FROM INDIVIDUAIS ID LEFT JOIN PRODUTOS PO' +
      ' ON (PO.CODIGO = ID.CODPRODUTO) LEFT JOIN PRODUTOS PS ON (PS.COD' +
      'IGO = PO.CODSERVICO) LEFT JOIN OPERADORAS OP ON (OP.CODIGO = ID.' +
      'CODOPERADORA) LEFT JOIN PLANOS PL ON (PL.CODIGO = ID.CODPLANO AN' +
      'D PL.CODOPERADORA = ID.CODOPERADORA) LEFT JOIN MARCAS MA ON (MA.' +
      'CODIGO = PO.CODMARCA) WHERE ID.VENDIDO = '#39'N'#39' AND ID.PS = '#39'P'#39' GRO' +
      'UP BY ID.BARRA, PO.DESCRICAO, PO.PRECOVENDA, PO.PRECOVENDA2, PO.' +
      'PRECOVENDA3, PO.PRECOVENDA4, PO.PRECOVENDA5, PO.PRECOTOTAL, PO.P' +
      'RECOSERVICO, PO.CODSERVICO, PO.CAIXA_ITENS, PS.BARRA, PS.DESCRIC' +
      'AO, PS.ATIVACAO, ID.SERIE, ID.SERIE2, ID.UNICO, ID.NUMERO_FONE, ' +
      'OP.NOME, PL.NOME, ID.CONTRATO, ID.VOUCHER, ID.TIPOATIVACAO, MA.D' +
      'ESCRICAO, PO.PRECOCUSTO, PO.MARGEM, PO.CODIGO'
    PacketRecords = 40
    ProviderName = 'pmProdutos'
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosBARRA: TStringField
      FieldName = 'BARRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 14
    end
    object cdsDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object cdsDadosPRECOVENDA: TFMTBCDField
      FieldName = 'PRECOVENDA'
      ProviderFlags = []
      Precision = 20
      Size = 3
    end
    object cdsDadosPRECOTOTAL: TFloatField
      FieldName = 'PRECOTOTAL'
      ProviderFlags = []
    end
    object cdsDadosPRECOSERVICO: TFloatField
      FieldName = 'PRECOSERVICO'
      ProviderFlags = []
    end
    object cdsDadosCODSERVICO: TIntegerField
      FieldName = 'CODSERVICO'
      ProviderFlags = []
    end
    object cdsDadosBARRA_1: TStringField
      FieldName = 'BARRA_1'
      ProviderFlags = []
      FixedChar = True
      Size = 14
    end
    object cdsDadosDESCRICAO_1: TStringField
      FieldName = 'DESCRICAO_1'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object cdsDadosATIVACAO: TStringField
      FieldName = 'ATIVACAO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
    end
    object cdsDadosSERIE2: TStringField
      FieldName = 'SERIE2'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
    end
    object cdsDadosUNICO: TIntegerField
      FieldName = 'UNICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = []
      DisplayFormat = '##0.00%'
    end
    object cdsDadosQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      ProviderFlags = []
      DisplayFormat = '####.##'
      Precision = 20
      Size = 3
    end
    object cdsDadosNUMERO_FONE: TStringField
      FieldName = 'NUMERO_FONE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
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
    object cdsDadosCONTRATO: TStringField
      FieldName = 'CONTRATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object cdsDadosVOUCHER: TStringField
      FieldName = 'VOUCHER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object cdsDadosTIPOATIVACAO: TStringField
      FieldName = 'TIPOATIVACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsDadosCAIXA_ITENS: TIntegerField
      FieldName = 'CAIXA_ITENS'
      ProviderFlags = []
    end
    object cdsDadosPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
      ProviderFlags = []
    end
    object cdsDadosPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
      ProviderFlags = []
    end
    object cdsDadosMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosPRECOCUSTO: TFMTBCDField
      FieldName = 'PRECOCUSTO'
      ProviderFlags = []
      Precision = 20
      Size = 3
    end
    object cdsDadosMARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = []
      DisplayFormat = '###0.00%'
    end
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'CODIGO'
    end
    object cdsDadosPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
    end
    object cdsDadosPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.760951585640000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
  inherited tmrSel: TTimer
    Top = 40
  end
end
