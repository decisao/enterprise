inherited formAtivacoes: TformAtivacoes
  Caption = 'Ativa'#231#245'es'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    inherited tabVisual: TcxTabSheet
      inherited pnlFundoGrade: TPanel
        inherited grdDados: TcxGrid
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1BARRA: TcxGridDBColumn
              Caption = 'C'#243'd.Barras'
              DataBinding.FieldName = 'BARRA'
            end
            object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
              Caption = 'Produto'
              DataBinding.FieldName = 'DESCRICAO'
            end
            object cxGrid1DBTableView1SERIE: TcxGridDBColumn
              Caption = 'IMEI/ESN'
              DataBinding.FieldName = 'SERIE'
            end
            object cxGrid1DBTableView1SERIE2: TcxGridDBColumn
              Caption = 'ICCID'
              DataBinding.FieldName = 'SERIE2'
            end
            object cxGrid1DBTableView1QUANTIDADE: TcxGridDBColumn
              Caption = 'Quant'
              DataBinding.FieldName = 'QUANTIDADE'
            end
            object cxGrid1DBTableView1CODVENDA: TcxGridDBColumn
              DataBinding.FieldName = 'CODVENDA'
            end
            object cxGrid1DBTableView1NOTA_SAIDA: TcxGridDBColumn
              Caption = 'NF Venda'
              DataBinding.FieldName = 'NOTA_SAIDA'
            end
            object cxGrid1DBTableView1DATA_SAIDA: TcxGridDBColumn
              Caption = 'Data Venda'
              DataBinding.FieldName = 'DATA_SAIDA'
            end
            object cxGrid1DBTableView1DESCONTO_ADM: TcxGridDBColumn
              DataBinding.FieldName = 'DESCONTO_ADM'
            end
            object cxGrid1DBTableView1CLIENTE: TcxGridDBColumn
              Caption = 'Cliente'
              DataBinding.FieldName = 'CLIENTE'
            end
            object cxGrid1DBTableView1CPF: TcxGridDBColumn
              DataBinding.FieldName = 'CPF'
            end
            object cxGrid1DBTableView1VALOR_PAGO: TcxGridDBColumn
              Caption = 'Valor Venda'
              DataBinding.FieldName = 'VALOR_PAGO'
            end
            object cxGrid1DBTableView1VENDEDOR: TcxGridDBColumn
              DataBinding.FieldName = 'VENDEDOR'
            end
            object cxGrid1DBTableView1CODEMPRESA: TcxGridDBColumn
              DataBinding.FieldName = 'CODEMPRESA'
            end
            object cxGrid1DBTableView1NOTA_ENTRADA: TcxGridDBColumn
              Caption = 'NF Entrada'
              DataBinding.FieldName = 'NOTA_ENTRADA'
            end
            object cxGrid1DBTableView1DATA_ENTRADA: TcxGridDBColumn
              Caption = 'Data Entrada'
              DataBinding.FieldName = 'DATA_ENTRADA'
            end
            object cxGrid1DBTableView1FORNECEDOR: TcxGridDBColumn
              Caption = 'Fornecedor'
              DataBinding.FieldName = 'FORNECEDOR'
            end
            object cxGrid1DBTableView1CNPJ: TcxGridDBColumn
              DataBinding.FieldName = 'CNPJ'
            end
            object cxGrid1DBTableView1CUSTO: TcxGridDBColumn
              Caption = 'Valor Entrada'
              DataBinding.FieldName = 'CUSTO'
            end
            object cxGrid1DBTableView1NUMERO_FONE: TcxGridDBColumn
              Caption = 'N'#250'mero Linha'
              DataBinding.FieldName = 'NUMERO_FONE'
            end
            object cxGrid1DBTableView1PLANO: TcxGridDBColumn
              Caption = 'Plano '
              DataBinding.FieldName = 'PLANO'
            end
            object cxGrid1DBTableView1CONTRATO: TcxGridDBColumn
              Caption = 'Contrato'
              DataBinding.FieldName = 'CONTRATO'
            end
            object cxGrid1DBTableView1VOUCHER: TcxGridDBColumn
              Caption = 'HDC'
              DataBinding.FieldName = 'VOUCHER'
            end
            object cxGrid1DBTableView1TIPOATIVACAO: TcxGridDBColumn
              Caption = 'Tipo da Ativa'#231#227'o'
              DataBinding.FieldName = 'TIPOATIVACAO'
              OnGetDisplayText = cxGrid1DBTableView1TIPOATIVACAOGetDisplayText
              MinWidth = 150
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited pnlEdicao: TPanel
        ExplicitTop = 74
        ExplicitHeight = 358
      end
    end
  end
  inherited dxBarManagerCad: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited btnAdicionar: TdxBarLargeButton
      Visible = ivNever
      ImageIndex = 96
    end
    inherited btnModificar: TdxBarLargeButton
      Visible = ivNever
    end
    inherited cmbSelecionar: TdxBarCombo
      Tag = 1
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 
      'SELECT '#39'N'#39' AS SEL, INDIVIDUAIS.BARRA, PRODUTOS.DESCRICAO, INDIVI' +
      'DUAIS.SERIE, INDIVIDUAIS.SERIE2, INDIVIDUAIS.QUANTIDADE, MOVSAID' +
      'A.NOTA_NUMERO AS NOTA_SAIDA, MOVSAIDA.DATAFECHAMENTO AS DATA_SAI' +
      'DA, CLIENTES.NOME AS CLIENTE, CLIENTES.CPF, INDIVIDUAIS.VALOR_PA' +
      'GO, MOVENTRADA.NOTA_NUMERO AS NOTA_ENTRADA, MOVENTRADA.DATA AS D' +
      'ATA_ENTRADA, FORNECEDORES.NOME AS FORNECEDOR, FORNECEDORES.CGC A' +
      'S CNPJ, INDIVIDUAIS.CUSTO_PRODUTO AS CUSTO, INDIVIDUAIS.NUMERO_F' +
      'ONE, PLANOS.NOME AS PLANO, INDIVIDUAIS.CONTRATO, INDIVIDUAIS.VOU' +
      'CHER, INDIVIDUAIS.TIPOATIVACAO, MOVSAIDA.CODIGO AS CODVENDA, VEN' +
      'DEDORES.NOMEUSER AS VENDEDOR, INDIVIDUAIS.CODEMPRESA, INDIVIDUAI' +
      'S.DESCONTO_ADM FROM INDIVIDUAIS INDIVIDUAIS JOIN PRODUTOS PRODUT' +
      'OS ON (PRODUTOS.CODIGO = INDIVIDUAIS.CODPRODUTO) JOIN MOVIMENTOS' +
      ' MOVSAIDA ON (MOVSAIDA.CODIGO = INDIVIDUAIS.CODMOVSAIDA) JOIN MO' +
      'VIMENTOS MOVENTRADA ON (MOVENTRADA.CODIGO = INDIVIDUAIS.CODMOVEN' +
      'TRADA) JOIN CLIENTES CLIENTES ON (CLIENTES.CODIGO = MOVSAIDA.COD' +
      'CLIENTE) JOIN CLIENTES FORNECEDORES ON (FORNECEDORES.CODIGO = MO' +
      'VENTRADA.CODCLIENTE) LEFT JOIN PLANOS ON (PLANOS.CODOPERADORA = ' +
      'INDIVIDUAIS.CODOPERADORA AND PLANOS.CODIGO = INDIVIDUAIS.CODPLAN' +
      'O) JOIN CLIENTES VENDEDORES ON (VENDEDORES.CODIGO = MOVSAIDA.COD' +
      'VENDEDOR) WHERE INDIVIDUAIS.ATIVACAO = '#39'S'#39' AND INDIVIDUAIS.VENDI' +
      'DO = '#39'S'#39' '
    ProviderName = 'pcAtivacao'
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosBARRA: TStringField
      FieldName = 'BARRA'
      FixedChar = True
      Size = 14
    end
    object cdsDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 60
    end
    object cdsDadosSERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
    end
    object cdsDadosSERIE2: TStringField
      FieldName = 'SERIE2'
      FixedChar = True
    end
    object cdsDadosQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 20
      Size = 3
    end
    object cdsDadosNOTA_SAIDA: TIntegerField
      FieldName = 'NOTA_SAIDA'
    end
    object cdsDadosDATA_SAIDA: TSQLTimeStampField
      FieldName = 'DATA_SAIDA'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object cdsDadosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 40
    end
    object cdsDadosCPF: TStringField
      FieldName = 'CPF'
      FixedChar = True
    end
    object cdsDadosVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object cdsDadosNOTA_ENTRADA: TIntegerField
      FieldName = 'NOTA_ENTRADA'
    end
    object cdsDadosDATA_ENTRADA: TSQLTimeStampField
      FieldName = 'DATA_ENTRADA'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object cdsDadosFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 40
    end
    object cdsDadosCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
    end
    object cdsDadosCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Precision = 20
      Size = 3
    end
    object cdsDadosNUMERO_FONE: TStringField
      FieldName = 'NUMERO_FONE'
      FixedChar = True
    end
    object cdsDadosPLANO: TStringField
      FieldName = 'PLANO'
      FixedChar = True
      Size = 40
    end
    object cdsDadosCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Size = 10
    end
    object cdsDadosVOUCHER: TStringField
      FieldName = 'VOUCHER'
      Size = 10
    end
    object cdsDadosTIPOATIVACAO: TStringField
      FieldName = 'TIPOATIVACAO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODVENDA: TIntegerField
      DisplayLabel = 'C'#243'd.Venda'
      FieldName = 'CODVENDA'
    end
    object cdsDadosVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 30
    end
    object cdsDadosCODEMPRESA: TIntegerField
      DisplayLabel = 'C'#243'd.Empresa'
      FieldName = 'CODEMPRESA'
    end
    object cdsDadosDESCONTO_ADM: TFloatField
      DisplayLabel = 'Desconto ADM'
      FieldName = 'DESCONTO_ADM'
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39715.879606655090000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
