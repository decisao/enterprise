object dmoOS: TdmoOS
  OldCreateOrder = False
  Height = 202
  Width = 574
  object cdsItens: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'pcItens'
    RemoteServer = formPrincipal.SocketConnection
    Left = 304
    Top = 16
    object cdsItensBARRA: TStringField
      FieldName = 'BARRA'
      FixedChar = True
      Size = 13
    end
    object cdsItensDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      Size = 80
    end
    object cdsItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 20
      Size = 3
    end
    object cdsItensVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '#,##0.00'
      Precision = 20
      Size = 3
    end
    object cdsItensOPERADORA: TStringField
      FieldName = 'OPERADORA'
      Size = 40
    end
    object cdsItensPLANO: TStringField
      FieldName = 'PLANO'
      Size = 40
    end
    object cdsItensLINHA: TStringField
      FieldName = 'LINHA'
    end
    object cdsItensCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Size = 10
    end
    object cdsItensVOUCHER: TStringField
      FieldName = 'VOUCHER'
      Size = 10
    end
    object cdsItensTIPOATIVACAO: TStringField
      FieldName = 'TIPOATIVACAO'
      FixedChar = True
      Size = 1
    end
    object cdsItensDESCONTO_ADM: TFloatField
      DisplayLabel = 'Desconto ADM'
      FieldName = 'DESCONTO_ADM'
    end
  end
  object dsrItens: TDataSource
    DataSet = cdsItens
    Left = 304
    Top = 72
  end
  object cdsEstorno: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIOESTORNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RE_MOVIMENTO'
        ParamType = ptOutput
        Size = 4
      end>
    ProviderName = 'pmEstorno'
    RemoteServer = formPrincipal.SocketConnection
    Left = 384
    Top = 16
  end
  object cdsOSCorpo: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'prOScorpo'
    RemoteServer = formPrincipal.SocketConnection
    Left = 56
    Top = 16
  end
  object cdsOSItens: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'prOSitens'
    RemoteServer = formPrincipal.SocketConnection
    Left = 136
    Top = 16
  end
  object dsrOSCorpo: TDataSource
    AutoEdit = False
    DataSet = cdsOSCorpo
    Left = 56
    Top = 72
  end
  object dsrOSItens: TDataSource
    AutoEdit = False
    DataSet = cdsOSItens
    Left = 136
    Top = 72
  end
  object ppDBPipeCorpo: TppDBPipeline
    DataSource = dsrOSCorpo
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeCorpo'
    Left = 56
    Top = 128
    object ppDBPipeCorpoppField1: TppField
      FieldAlias = 'ES'
      FieldName = 'ES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField2: TppField
      FieldAlias = 'CODCLIENTE'
      FieldName = 'CODCLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField3: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField4: TppField
      FieldAlias = 'SERVICOS'
      FieldName = 'SERVICOS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField5: TppField
      FieldAlias = 'VALOR_SERVICOS'
      FieldName = 'VALOR_SERVICOS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField6: TppField
      FieldAlias = 'VALOR_ITENS'
      FieldName = 'VALOR_ITENS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField7: TppField
      FieldAlias = 'DESCONTO'
      FieldName = 'DESCONTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField8: TppField
      FieldAlias = 'VALOR_PRODUTOS'
      FieldName = 'VALOR_PRODUTOS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField9: TppField
      FieldAlias = 'VALOR_ICMS'
      FieldName = 'VALOR_ICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField10: TppField
      FieldAlias = 'VALOR_TOTAL'
      FieldName = 'VALOR_TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField11: TppField
      FieldAlias = 'OBSERVACOES'
      FieldName = 'OBSERVACOES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField12: TppField
      FieldAlias = 'NOTA_NUMERO'
      FieldName = 'NOTA_NUMERO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField13: TppField
      FieldAlias = 'NOTA_DATAEMISSAO'
      FieldName = 'NOTA_DATAEMISSAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField14: TppField
      FieldAlias = 'NOTA_CODNATUOPER'
      FieldName = 'NOTA_CODNATUOPER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField15: TppField
      FieldAlias = 'NOTA_CODTRANSPORTADOR'
      FieldName = 'NOTA_CODTRANSPORTADOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField16: TppField
      FieldAlias = 'NOTA_PLACAVEICULO'
      FieldName = 'NOTA_PLACAVEICULO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField17: TppField
      FieldAlias = 'NOTA_UFVEICULO'
      FieldName = 'NOTA_UFVEICULO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField18: TppField
      FieldAlias = 'NOTA_FRETE'
      FieldName = 'NOTA_FRETE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField19: TppField
      FieldAlias = 'NOTA_VALOR_FRETE'
      FieldName = 'NOTA_VALOR_FRETE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField20: TppField
      FieldAlias = 'NOTA_VALOR_SEGURO'
      FieldName = 'NOTA_VALOR_SEGURO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField21: TppField
      FieldAlias = 'NOTA_VALOR_OUTROS'
      FieldName = 'NOTA_VALOR_OUTROS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField22: TppField
      FieldAlias = 'NOTA_VALOR_TOTAL'
      FieldName = 'NOTA_VALOR_TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField23: TppField
      FieldAlias = 'NOTA_QUANTIDADE'
      FieldName = 'NOTA_QUANTIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField24: TppField
      FieldAlias = 'NOTA_ESPECIE'
      FieldName = 'NOTA_ESPECIE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField25: TppField
      FieldAlias = 'NOTA_MARCA'
      FieldName = 'NOTA_MARCA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField26: TppField
      FieldAlias = 'NOTA_VOLNUM'
      FieldName = 'NOTA_VOLNUM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField27: TppField
      FieldAlias = 'NOTA_PESOBRUTO'
      FieldName = 'NOTA_PESOBRUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField28: TppField
      FieldAlias = 'NOTA_PESOLIQUIDO'
      FieldName = 'NOTA_PESOLIQUIDO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField29: TppField
      FieldAlias = 'NOTA_DADOSADICIONAIS'
      FieldName = 'NOTA_DADOSADICIONAIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField30: TppField
      FieldAlias = 'CODVENDEDOR'
      FieldName = 'CODVENDEDOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField31: TppField
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField32: TppField
      FieldAlias = 'CONDICAO'
      FieldName = 'CONDICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField33: TppField
      FieldAlias = 'DATAINICIO'
      FieldName = 'DATAINICIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField34: TppField
      FieldAlias = 'DATATERMINO'
      FieldName = 'DATATERMINO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField35: TppField
      FieldAlias = 'ICMSSIMPLES'
      FieldName = 'ICMSSIMPLES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField36: TppField
      FieldAlias = 'ICMSSIMPALIQ'
      FieldName = 'ICMSSIMPALIQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField37: TppField
      FieldAlias = 'ISSALIQ'
      FieldName = 'ISSALIQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField38: TppField
      FieldAlias = 'VALOR_ISS'
      FieldName = 'VALOR_ISS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField39: TppField
      FieldAlias = 'NOTA_IESUBST'
      FieldName = 'NOTA_IESUBST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField40: TppField
      FieldAlias = 'NOTA_DATASAIDA'
      FieldName = 'NOTA_DATASAIDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField41: TppField
      FieldAlias = 'NOTA_BASEICMS'
      FieldName = 'NOTA_BASEICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField42: TppField
      FieldAlias = 'NOTA_BASEICMSSUBST'
      FieldName = 'NOTA_BASEICMSSUBST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField43: TppField
      FieldAlias = 'NOTA_VALORICMSSUBST'
      FieldName = 'NOTA_VALORICMSSUBST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField44: TppField
      FieldAlias = 'VALOR_IPI'
      FieldName = 'VALOR_IPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField45: TppField
      FieldAlias = 'CODVENDEDOR_ABRE'
      FieldName = 'CODVENDEDOR_ABRE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField46: TppField
      FieldAlias = 'DESCONTOTXT'
      FieldName = 'DESCONTOTXT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField47: TppField
      FieldAlias = 'CLI_NOME'
      FieldName = 'CLI_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField48: TppField
      FieldAlias = 'CLI_RAZAOSOCIAL'
      FieldName = 'CLI_RAZAOSOCIAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField49: TppField
      FieldAlias = 'CLI_LOGRADOURO'
      FieldName = 'CLI_LOGRADOURO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField50: TppField
      FieldAlias = 'CLI_NUMERO'
      FieldName = 'CLI_NUMERO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField51: TppField
      FieldAlias = 'CLI_COMPLEMENTO'
      FieldName = 'CLI_COMPLEMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField52: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField53: TppField
      FieldAlias = 'CLI_CEP'
      FieldName = 'CLI_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField54: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField55: TppField
      FieldAlias = 'CLI_ESTADO'
      FieldName = 'CLI_ESTADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField56: TppField
      FieldAlias = 'CLI_FONE'
      FieldName = 'CLI_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField57: TppField
      FieldAlias = 'CLI_FAX'
      FieldName = 'CLI_FAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField58: TppField
      FieldAlias = 'CLI_CELULAR'
      FieldName = 'CLI_CELULAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField59: TppField
      FieldAlias = 'CLI_EMAIL'
      FieldName = 'CLI_EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField60: TppField
      FieldAlias = 'CLI_RGIE'
      FieldName = 'CLI_RGIE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField61: TppField
      FieldAlias = 'CLI_CPFCGC'
      FieldName = 'CLI_CPFCGC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField62: TppField
      FieldAlias = 'CLI_MUNIBGE'
      FieldName = 'CLI_MUNIBGE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField63: TppField
      FieldAlias = 'TRA_NOME'
      FieldName = 'TRA_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField64: TppField
      FieldAlias = 'TRA_LOGRADOURO'
      FieldName = 'TRA_LOGRADOURO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField65: TppField
      FieldAlias = 'TRA_NUMERO'
      FieldName = 'TRA_NUMERO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField66: TppField
      FieldAlias = 'TRA_COMPLEMENTO'
      FieldName = 'TRA_COMPLEMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField67: TppField
      FieldAlias = 'TRA_BAIRRO'
      FieldName = 'TRA_BAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField68: TppField
      FieldAlias = 'TRA_CEP'
      FieldName = 'TRA_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField69: TppField
      FieldAlias = 'TRA_CIDADE'
      FieldName = 'TRA_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField70: TppField
      FieldAlias = 'TRA_ESTADO'
      FieldName = 'TRA_ESTADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField71: TppField
      FieldAlias = 'TRA_FONE'
      FieldName = 'TRA_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField72: TppField
      FieldAlias = 'TRA_FAX'
      FieldName = 'TRA_FAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField73: TppField
      FieldAlias = 'TRA_EMAIL'
      FieldName = 'TRA_EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField74: TppField
      FieldAlias = 'TRA_RGIE'
      FieldName = 'TRA_RGIE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField75: TppField
      FieldAlias = 'TRA_CPFCGC'
      FieldName = 'TRA_CPFCGC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField76: TppField
      FieldAlias = 'TRA_MUNIBGE'
      FieldName = 'TRA_MUNIBGE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField77: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField78: TppField
      FieldAlias = 'MARCA'
      FieldName = 'MARCA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 77
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField79: TppField
      FieldAlias = 'MODELO'
      FieldName = 'MODELO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 78
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField80: TppField
      FieldAlias = 'DEFEITO'
      FieldName = 'DEFEITO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 79
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField81: TppField
      FieldAlias = 'GARANTIA'
      FieldName = 'GARANTIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 80
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField82: TppField
      FieldAlias = 'SERIE'
      FieldName = 'SERIE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 81
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField83: TppField
      FieldAlias = 'ACESSORIOS'
      FieldName = 'ACESSORIOS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 82
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField84: TppField
      FieldAlias = 'CONDICAOEXTERNA'
      FieldName = 'CONDICAOEXTERNA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 83
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField85: TppField
      FieldAlias = 'SOLICITANTE'
      FieldName = 'SOLICITANTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 84
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField86: TppField
      FieldAlias = 'VENDEDORABRE'
      FieldName = 'VENDEDORABRE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 85
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField87: TppField
      FieldAlias = 'VENDEDOR'
      FieldName = 'VENDEDOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 86
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField88: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 87
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField89: TppField
      FieldAlias = 'CLI_CONTRATO'
      FieldName = 'CLI_CONTRATO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 88
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField90: TppField
      FieldAlias = 'CLI_KM'
      FieldName = 'CLI_KM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 89
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField91: TppField
      FieldAlias = 'NATUREZAOPERACAO'
      FieldName = 'NATUREZAOPERACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 90
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField92: TppField
      FieldAlias = 'CODEMPRESA'
      FieldName = 'CODEMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 91
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField93: TppField
      FieldAlias = 'EMPRESA_NOME'
      FieldName = 'EMPRESA_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 92
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField94: TppField
      FieldAlias = 'EMPRESA_RAZAOSOCIAL'
      FieldName = 'EMPRESA_RAZAOSOCIAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 93
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField95: TppField
      FieldAlias = 'EMPRESA_CNPJ'
      FieldName = 'EMPRESA_CNPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 94
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField96: TppField
      FieldAlias = 'EMPRESA_IE'
      FieldName = 'EMPRESA_IE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 95
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField97: TppField
      FieldAlias = 'EMPRESA_LOGRADOURO'
      FieldName = 'EMPRESA_LOGRADOURO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 96
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField98: TppField
      FieldAlias = 'EMPRESA_NUMERO'
      FieldName = 'EMPRESA_NUMERO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 97
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField99: TppField
      FieldAlias = 'EMPRESA_COMPLEMENTO'
      FieldName = 'EMPRESA_COMPLEMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 98
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField100: TppField
      FieldAlias = 'EMPRESA_BAIRRO'
      FieldName = 'EMPRESA_BAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 99
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField101: TppField
      FieldAlias = 'EMPRESA_CIDADE'
      FieldName = 'EMPRESA_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 100
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField102: TppField
      FieldAlias = 'EMPRESA_ESTADO'
      FieldName = 'EMPRESA_ESTADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 101
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField103: TppField
      FieldAlias = 'EMPRESA_CEP'
      FieldName = 'EMPRESA_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 102
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField104: TppField
      FieldAlias = 'EMPRESA_FONE'
      FieldName = 'EMPRESA_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 103
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField105: TppField
      FieldAlias = 'EMPRESA_MUNIBGE'
      FieldName = 'EMPRESA_MUNIBGE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 104
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField106: TppField
      FieldAlias = 'EMPRESA_CNAE'
      FieldName = 'EMPRESA_CNAE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 105
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField107: TppField
      FieldAlias = 'EMPRESA_IM'
      FieldName = 'EMPRESA_IM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 106
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField108: TppField
      FieldAlias = 'TIPOOS'
      FieldName = 'TIPOOS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 107
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField109: TppField
      FieldAlias = 'XX_ENTRADA'
      FieldName = 'XX_ENTRADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 108
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField110: TppField
      FieldAlias = 'XX_SAIDA'
      FieldName = 'XX_SAIDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 109
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField111: TppField
      FieldAlias = 'EXTENSO'
      FieldName = 'EXTENSO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 110
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField112: TppField
      FieldAlias = 'TECNICO'
      FieldName = 'TECNICO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 111
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField113: TppField
      FieldAlias = 'DEFEITO_DETECTADO'
      FieldName = 'DEFEITO_DETECTADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 112
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField114: TppField
      FieldAlias = 'SERVICO_REALIZAR'
      FieldName = 'SERVICO_REALIZAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 113
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField115: TppField
      FieldAlias = 'AUTORIZADO'
      FieldName = 'AUTORIZADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 114
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField116: TppField
      FieldAlias = 'DATA_AUTORIZADO'
      FieldName = 'DATA_AUTORIZADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 115
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField117: TppField
      FieldAlias = 'QUEM_AUTORIZOU'
      FieldName = 'QUEM_AUTORIZOU'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 116
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField118: TppField
      FieldAlias = 'DATA_ENTREGA'
      FieldName = 'DATA_ENTREGA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 117
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField119: TppField
      FieldAlias = 'QUEM_ENTREGOU'
      FieldName = 'QUEM_ENTREGOU'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 118
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField120: TppField
      FieldAlias = 'QUEM_RECEBEU'
      FieldName = 'QUEM_RECEBEU'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 119
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField121: TppField
      FieldAlias = 'NOTA_ENTRADA'
      FieldName = 'NOTA_ENTRADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 120
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField122: TppField
      FieldAlias = 'AUTORIZADO_SIM'
      FieldName = 'AUTORIZADO_SIM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 121
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField123: TppField
      FieldAlias = 'AUTORIZADO_NAO'
      FieldName = 'AUTORIZADO_NAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 122
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField124: TppField
      FieldAlias = 'PARCEIRO'
      FieldName = 'PARCEIRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 123
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField125: TppField
      FieldAlias = 'MENSAGEM_OS'
      FieldName = 'MENSAGEM_OS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 124
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField126: TppField
      FieldAlias = 'MENSAGEM_VENDA'
      FieldName = 'MENSAGEM_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 125
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField127: TppField
      FieldAlias = 'OPERADORA'
      FieldName = 'OPERADORA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 126
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField128: TppField
      FieldAlias = 'NO_IPI'
      FieldName = 'NO_IPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 127
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField129: TppField
      FieldAlias = 'TOTAL_TRIBUTADO'
      FieldName = 'TOTAL_TRIBUTADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 128
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField130: TppField
      FieldAlias = 'TOTAL_CREDITOICMS'
      FieldName = 'TOTAL_CREDITOICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 129
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField131: TppField
      FieldAlias = 'ALIQUOTA_ICMSSIMPLES'
      FieldName = 'ALIQUOTA_ICMSSIMPLES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 130
      Searchable = False
      Sortable = False
    end
    object ppDBPipeCorpoppField132: TppField
      FieldAlias = 'TIPODOC'
      FieldName = 'TIPODOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 131
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeItens: TppDBPipeline
    DataSource = dsrOSItens
    OpenDataSource = False
    UserName = 'DBPipeItens'
    Left = 136
    Top = 128
    object ppDBPipeItensppField1: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField2: TppField
      FieldAlias = 'BARRA'
      FieldName = 'BARRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField3: TppField
      FieldAlias = 'DESCRICAO1'
      FieldName = 'DESCRICAO1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField4: TppField
      FieldAlias = 'DESCRICAO2'
      FieldName = 'DESCRICAO2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField5: TppField
      FieldAlias = 'SERIE'
      FieldName = 'SERIE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField6: TppField
      FieldAlias = 'SERIE2'
      FieldName = 'SERIE2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField7: TppField
      FieldAlias = 'VALOR_VENDA'
      FieldName = 'VALOR_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField8: TppField
      FieldAlias = 'ICMS_VENDA'
      FieldName = 'ICMS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField9: TppField
      FieldAlias = 'DESCONTO'
      FieldName = 'DESCONTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField10: TppField
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField11: TppField
      FieldAlias = 'VALOR_PAGO'
      FieldName = 'VALOR_PAGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField12: TppField
      FieldAlias = 'VALOR_ICMS'
      FieldName = 'VALOR_ICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField13: TppField
      FieldAlias = 'SITTRIBU'
      FieldName = 'SITTRIBU'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField14: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField15: TppField
      FieldAlias = 'VALOR_ITEM'
      FieldName = 'VALOR_ITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField16: TppField
      FieldAlias = 'IPI'
      FieldName = 'IPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField17: TppField
      FieldAlias = 'LINHA'
      FieldName = 'LINHA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField18: TppField
      FieldAlias = 'OPERADORA'
      FieldName = 'OPERADORA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField19: TppField
      FieldAlias = 'PLANO'
      FieldName = 'PLANO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField20: TppField
      FieldAlias = 'ATIVACAO'
      FieldName = 'ATIVACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField21: TppField
      FieldAlias = 'CONTRATO'
      FieldName = 'CONTRATO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField22: TppField
      FieldAlias = 'VOUCHER'
      FieldName = 'VOUCHER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField23: TppField
      FieldAlias = 'TIPOATIVACAO'
      FieldName = 'TIPOATIVACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField24: TppField
      FieldAlias = 'VALOR_CUSTO'
      FieldName = 'VALOR_CUSTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField25: TppField
      FieldAlias = 'CLASSFISCAL'
      FieldName = 'CLASSFISCAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField26: TppField
      FieldAlias = 'PESO'
      FieldName = 'PESO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField27: TppField
      FieldAlias = 'DESCONTO_ADM'
      FieldName = 'DESCONTO_ADM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField28: TppField
      FieldAlias = 'NCM'
      FieldName = 'NCM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField29: TppField
      FieldAlias = 'PS'
      FieldName = 'PS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeEmpresa: TppDBPipeline
    DataSource = formPrincipal.dsrPerfil
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeEmpresa'
    Left = 216
    Top = 128
    object ppDBPipeEmpresappField1: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField2: TppField
      FieldAlias = 'CODCLIENTE'
      FieldName = 'CODCLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField3: TppField
      FieldAlias = 'CODCONTA_COMPRADEB'
      FieldName = 'CODCONTA_COMPRADEB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField4: TppField
      FieldAlias = 'CODCONTA_VENDACRE'
      FieldName = 'CODCONTA_VENDACRE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField5: TppField
      FieldAlias = 'CODCLIENTE_PADRAO'
      FieldName = 'CODCLIENTE_PADRAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField6: TppField
      FieldAlias = 'VALOR_LIMITE'
      FieldName = 'VALOR_LIMITE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField7: TppField
      FieldAlias = 'ALIQUOTA_ISS'
      FieldName = 'ALIQUOTA_ISS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField8: TppField
      FieldAlias = 'ALIQUOTA_ICMSSIMPLES'
      FieldName = 'ALIQUOTA_ICMSSIMPLES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField9: TppField
      FieldAlias = 'ICMSSIMPLES'
      FieldName = 'ICMSSIMPLES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField10: TppField
      FieldAlias = 'CODDOC_AVISTA'
      FieldName = 'CODDOC_AVISTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField11: TppField
      FieldAlias = 'CODDOC_PRAZO'
      FieldName = 'CODDOC_PRAZO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField12: TppField
      FieldAlias = 'MDI'
      FieldName = 'MDI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField13: TppField
      FieldAlias = 'AUTOLAUNCH'
      FieldName = 'AUTOLAUNCH'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField14: TppField
      FieldAlias = 'AUTOLAUNCH_TIME'
      FieldName = 'AUTOLAUNCH_TIME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField15: TppField
      FieldAlias = 'PADRAO'
      FieldName = 'PADRAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField16: TppField
      FieldAlias = 'PRINT_OS'
      FieldName = 'PRINT_OS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField17: TppField
      FieldAlias = 'PRINT_NOTA'
      FieldName = 'PRINT_NOTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField18: TppField
      FieldAlias = 'PRINT_BOLETO'
      FieldName = 'PRINT_BOLETO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField19: TppField
      FieldAlias = 'MOEDASINGULAR'
      FieldName = 'MOEDASINGULAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField20: TppField
      FieldAlias = 'MOEDAPLURAL'
      FieldName = 'MOEDAPLURAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField21: TppField
      FieldAlias = 'CENTAVOSINGULAR'
      FieldName = 'CENTAVOSINGULAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField22: TppField
      FieldAlias = 'CENTAVOPLURAL'
      FieldName = 'CENTAVOPLURAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField23: TppField
      FieldAlias = 'NOTA_PADRAO'
      FieldName = 'NOTA_PADRAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField24: TppField
      FieldAlias = 'OSABERTA_PADRAO'
      FieldName = 'OSABERTA_PADRAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField25: TppField
      FieldAlias = 'OSFECHADA_PADRAO'
      FieldName = 'OSFECHADA_PADRAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField26: TppField
      FieldAlias = 'MEDIDA_SER'
      FieldName = 'MEDIDA_SER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField27: TppField
      FieldAlias = 'GRUPO_SER'
      FieldName = 'GRUPO_SER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField28: TppField
      FieldAlias = 'LOGTIMEOFF'
      FieldName = 'LOGTIMEOFF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField29: TppField
      FieldAlias = 'PRINT_OS2'
      FieldName = 'PRINT_OS2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField30: TppField
      FieldAlias = 'PRINT_RECIBO'
      FieldName = 'PRINT_RECIBO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField31: TppField
      FieldAlias = 'JUROS_MES'
      FieldName = 'JUROS_MES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField32: TppField
      FieldAlias = 'COPIAS_OS'
      FieldName = 'COPIAS_OS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField33: TppField
      FieldAlias = 'COPIAS_OS2'
      FieldName = 'COPIAS_OS2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField34: TppField
      FieldAlias = 'COPIAS_RECIBO'
      FieldName = 'COPIAS_RECIBO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField35: TppField
      FieldAlias = 'RECIBO_PADRAO'
      FieldName = 'RECIBO_PADRAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField36: TppField
      FieldAlias = 'FISCAL_MAQ'
      FieldName = 'FISCAL_MAQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField37: TppField
      FieldAlias = 'FISCAL_CONF'
      FieldName = 'FISCAL_CONF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField38: TppField
      FieldAlias = 'BLOQUEIO_DIAS'
      FieldName = 'BLOQUEIO_DIAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField39: TppField
      FieldAlias = 'OSABERTA_PADRAO_2A'
      FieldName = 'OSABERTA_PADRAO_2A'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField40: TppField
      FieldAlias = 'COPIAS_OS_2A'
      FieldName = 'COPIAS_OS_2A'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField41: TppField
      FieldAlias = 'PRINT_OS_2A'
      FieldName = 'PRINT_OS_2A'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField42: TppField
      FieldAlias = 'NATUOPER_PADRAO'
      FieldName = 'NATUOPER_PADRAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField43: TppField
      FieldAlias = 'SENHA_CLIENTES'
      FieldName = 'SENHA_CLIENTES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField44: TppField
      FieldAlias = 'SENHA_PRODUTOS'
      FieldName = 'SENHA_PRODUTOS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField45: TppField
      FieldAlias = 'SENHA_FECHAMENTO'
      FieldName = 'SENHA_FECHAMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField46: TppField
      FieldAlias = 'SENHA_OS'
      FieldName = 'SENHA_OS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField47: TppField
      FieldAlias = 'SENHA_BAIXA'
      FieldName = 'SENHA_BAIXA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField48: TppField
      FieldAlias = 'TECNICOLOGIN_VENDEDOR'
      FieldName = 'TECNICOLOGIN_VENDEDOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField49: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField50: TppField
      FieldAlias = 'NATUOPER_COMPRA'
      FieldName = 'NATUOPER_COMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField51: TppField
      FieldAlias = 'MENSAGEM_OS'
      FieldName = 'MENSAGEM_OS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField52: TppField
      FieldAlias = 'MENSAGEM_VENDA'
      FieldName = 'MENSAGEM_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField53: TppField
      FieldAlias = 'OSCOND1'
      FieldName = 'OSCOND1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField54: TppField
      FieldAlias = 'OSCOND2'
      FieldName = 'OSCOND2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField55: TppField
      FieldAlias = 'CODHISTORICO_COMPRA'
      FieldName = 'CODHISTORICO_COMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField56: TppField
      FieldAlias = 'CODHISTORICO_VENDA'
      FieldName = 'CODHISTORICO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField57: TppField
      FieldAlias = 'VERIFICA_LIMITE'
      FieldName = 'VERIFICA_LIMITE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField58: TppField
      FieldAlias = 'PRECO_CLIENTE'
      FieldName = 'PRECO_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField59: TppField
      FieldAlias = 'EMP_NOME'
      FieldName = 'EMP_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField60: TppField
      FieldAlias = 'EMP_RAZAOSOCIAL'
      FieldName = 'EMP_RAZAOSOCIAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField61: TppField
      FieldAlias = 'EMP_CNPJ'
      FieldName = 'EMP_CNPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField62: TppField
      FieldAlias = 'EMP_IE'
      FieldName = 'EMP_IE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField63: TppField
      FieldAlias = 'EMP_CODLOGRADOURO'
      FieldName = 'EMP_CODLOGRADOURO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField64: TppField
      FieldAlias = 'EMP_LOGRADOURO'
      FieldName = 'EMP_LOGRADOURO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField65: TppField
      FieldAlias = 'EMP_NUMERO'
      FieldName = 'EMP_NUMERO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField66: TppField
      FieldAlias = 'EMP_COMPLEMENTO'
      FieldName = 'EMP_COMPLEMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField67: TppField
      FieldAlias = 'EMP_CODBAIRRO'
      FieldName = 'EMP_CODBAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField68: TppField
      FieldAlias = 'EMP_BAIRRO'
      FieldName = 'EMP_BAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField69: TppField
      FieldAlias = 'EMP_CODCIDADE'
      FieldName = 'EMP_CODCIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField70: TppField
      FieldAlias = 'EMP_CIDADE'
      FieldName = 'EMP_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField71: TppField
      FieldAlias = 'EMP_ESTADO'
      FieldName = 'EMP_ESTADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField72: TppField
      FieldAlias = 'EMP_CEP'
      FieldName = 'EMP_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField73: TppField
      FieldAlias = 'EMP_FONE'
      FieldName = 'EMP_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField74: TppField
      FieldAlias = 'EMP_FAX'
      FieldName = 'EMP_FAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField75: TppField
      FieldAlias = 'EMP_EMAIL'
      FieldName = 'EMP_EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField76: TppField
      FieldAlias = 'LOGOTIPO'
      FieldName = 'LOGOTIPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField77: TppField
      FieldAlias = 'CONSUMIDOR'
      FieldName = 'CONSUMIDOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField78: TppField
      FieldAlias = 'HISTORICOCOMPRA'
      FieldName = 'HISTORICOCOMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 77
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField79: TppField
      FieldAlias = 'HISTORICOVENDA'
      FieldName = 'HISTORICOVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 78
      Searchable = False
      Sortable = False
    end
  end
  object ppOS: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeItens
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 216
    Top = 16
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeItens'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 107421
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 50800
        mmLeft = 2117
        mmTop = 48683
        mmWidth = 192882
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 21960
        mmLeft = 2117
        mmTop = 25929
        mmWidth = 192882
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3704
        mmTop = 27252
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3704
        mmTop = 30427
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 33602
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'CNPJ/CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3704
        mmTop = 36777
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3704
        mmTop = 39952
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'FAX:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 94192
        mmTop = 43127
        mmWidth = 6879
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'CLI_LOGRADOURO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 30427
        mmWidth = 130969
        BandType = 0
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 33602
        mmWidth = 65617
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'CLI_CPFCGC'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 36777
        mmWidth = 65617
        BandType = 0
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'CLI_FONE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 39952
        mmWidth = 65617
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'CLI_FAX'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102394
        mmTop = 43127
        mmWidth = 51065
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'CLI_NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 27252
        mmWidth = 132292
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 89959
        mmTop = 39952
        mmWidth = 11113
        BandType = 0
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'CLI_CELULAR'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102394
        mmTop = 39952
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'I.E./RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 89429
        mmTop = 36777
        mmWidth = 11642
        BandType = 0
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'CLI_RGIE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102394
        mmTop = 36777
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 90223
        mmTop = 33602
        mmWidth = 10848
        BandType = 0
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102394
        mmTop = 33602
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 12171
        mmTop = 43127
        mmWidth = 8996
        BandType = 0
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'CLI_EMAIL'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 43127
        mmWidth = 68792
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'DATA'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 159015
        mmTop = 17992
        mmWidth = 33602
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'EMP_NOME'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 2117
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'EMP_RAZAOSOCIAL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 5292
        mmWidth = 102923
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'EMP_LOGRADOURO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 8467
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'EMP_BAIRRO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 11642
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'EMP_CIDADE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 14817
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'EMP_CNPJ'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 8467
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'EMP_IE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 11642
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'EMP_FONE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 14817
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'EMP_EMAIL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 17992
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'EMP_FAX'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 17992
        mmWidth = 40746
        BandType = 0
      end
      object ppDBImage1: TppDBImage
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = True
        Stretch = True
        DataField = 'LOGOTIPO'
        DataPipeline = ppDBPipeEmpresa
        GraphicType = 'JPEG'
        ParentDataPipeline = False
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 21431
        mmLeft = 2381
        mmTop = 2381
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 33867
        mmTop = 102923
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 21960
        mmTop = 102923
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 140494
        mmTop = 102923
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164307
        mmTop = 102923
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 188119
        mmTop = 102923
        mmWidth = 7938
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 1058
        mmTop = 106892
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Atendim.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 7408
        mmTop = 55033
        mmWidth = 14023
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'TIPOOS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 55033
        mmWidth = 96309
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'Marca:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 129117
        mmTop = 58208
        mmWidth = 9790
        BandType = 0
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'MARCA'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 140229
        mmTop = 58208
        mmWidth = 52652
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 10319
        mmTop = 61383
        mmWidth = 10848
        BandType = 0
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'CONDICAOEXTERNA'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 61383
        mmWidth = 96309
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Modelo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 127265
        mmTop = 61383
        mmWidth = 11377
        BandType = 0
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'MODELO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 139700
        mmTop = 61383
        mmWidth = 53181
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Acess'#243'rios:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 5027
        mmTop = 58208
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label20'
        Caption = 'Defeito:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 9790
        mmTop = 64558
        mmWidth = 11377
        BandType = 0
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        DataField = 'DEFEITO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 64558
        mmWidth = 96309
        BandType = 0
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'SERVICOS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 9790
        mmLeft = 22490
        mmTop = 67733
        mmWidth = 170392
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Notifica'#231#227'o do Servi'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 78846
        mmWidth = 41010
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'Defeito detectado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 84402
        mmWidth = 28575
        BandType = 0
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        DataField = 'DEFEITO_DETECTADO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 84402
        mmWidth = 161132
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Servi'#231'o a realizar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 89694
        mmWidth = 28575
        BandType = 0
      end
      object ppDBText39: TppDBText
        UserName = 'DBText34'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        DataField = 'SERVICO_REALIZAR'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 89694
        mmWidth = 161132
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label201'
        Caption = 'T'#233'cnico:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 18785
        mmTop = 94721
        mmWidth = 11906
        BandType = 0
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        DataField = 'TECNICO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 94721
        mmWidth = 78581
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'In'#237'cio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 112448
        mmTop = 94721
        mmWidth = 8996
        BandType = 0
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        DataField = 'DATAINICIO'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 122238
        mmTop = 94721
        mmWidth = 26988
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label26'
        Caption = 'T'#233'rmino:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 151871
        mmTop = 94721
        mmWidth = 12965
        BandType = 0
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        DataField = 'DATATERMINO'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 165894
        mmTop = 94721
        mmWidth = 26988
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 2117
        mmTop = 78052
        mmWidth = 192882
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label101'
        Caption = 'O.S.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 4233
        mmTop = 50006
        mmWidth = 7493
        BandType = 0
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        DataField = 'CODIGO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3387
        mmLeft = 12965
        mmTop = 50006
        mmWidth = 17463
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 2117
        mmTop = 53711
        mmWidth = 192882
        BandType = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText35'
        DataField = 'ACESSORIOS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 58208
        mmWidth = 96309
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Parceiro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 32988
        mmTop = 50006
        mmWidth = 12785
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'PARCEIRO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 47096
        mmTop = 50006
        mmWidth = 145786
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'Data da abertura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 167217
        mmTop = 14817
        mmWidth = 25665
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'CODIGO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 7662
        mmLeft = 152400
        mmTop = 5292
        mmWidth = 40481
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = 'Operadora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 122502
        mmTop = 55033
        mmWidth = 16341
        BandType = 0
      end
      object ppDBText60: TppDBText
        UserName = 'DBText60'
        DataField = 'OPERADORA'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 139965
        mmTop = 55033
        mmWidth = 52917
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label302'
        Caption = 'S'#233'rie:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 130175
        mmTop = 64558
        mmWidth = 8594
        BandType = 0
      end
      object ppDBText61: TppDBText
        UserName = 'DBText61'
        DataField = 'SERIE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 139700
        mmTop = 64558
        mmWidth = 53181
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CODPRODUTO'
        DisplayFormat = '00#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 0
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'BARRA'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3704
        mmLeft = 10583
        mmTop = 0
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'DESCRICAO2'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3704
        mmLeft = 35983
        mmTop = 0
        mmWidth = 103981
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'QUANTIDADE'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3704
        mmLeft = 141288
        mmTop = 0
        mmWidth = 9260
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'UNIDADE'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3704
        mmLeft = 152400
        mmTop = 0
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText183: TppDBText
        UserName = 'DBText51'
        DataField = 'VALOR_ITEM'
        DataPipeline = ppDBPipeItens
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3704
        mmLeft = 159015
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText184: TppDBText
        UserName = 'DBText52'
        DataField = 'VALOR_PAGO'
        DataPipeline = ppDBPipeItens
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3704
        mmLeft = 178859
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 91281
      mmPrintPosition = 0
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 18256
        mmLeft = 2117
        mmTop = 24871
        mmWidth = 192882
        BandType = 8
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'Observa'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 21167
        mmWidth = 20373
        BandType = 8
      end
      object ppDBMemo4: TppDBMemo
        UserName = 'DBMemo4'
        CharWrap = True
        DataField = 'OBSERVACOES'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 17198
        mmLeft = 2646
        mmTop = 25400
        mmWidth = 191823
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 17992
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 192882
        BandType = 8
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'PE'#199'AS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 154252
        mmTop = 3440
        mmWidth = 13229
        BandType = 8
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'M'#195'O-DE-OBRA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 139700
        mmTop = 8996
        mmWidth = 27781
        BandType = 8
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'T O T A L :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 147373
        mmTop = 14552
        mmWidth = 20108
        BandType = 8
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Cliente autorizou?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 5556
        mmTop = 3969
        mmWidth = 25665
        BandType = 8
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 4763
        mmLeft = 33073
        mmTop = 3175
        mmWidth = 5292
        BandType = 8
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 4763
        mmLeft = 49742
        mmTop = 3175
        mmWidth = 5292
        BandType = 8
      end
      object ppDBText35: TppDBText
        UserName = 'DBText39'
        DataField = 'AUTORIZADO_SIM'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 34396
        mmTop = 3969
        mmWidth = 3175
        BandType = 8
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        DataField = 'AUTORIZADO_NAO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 51329
        mmTop = 3969
        mmWidth = 3175
        BandType = 8
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'Sim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3440
        mmLeft = 39423
        mmTop = 3969
        mmWidth = 5556
        BandType = 8
      end
      object ppLabel26: TppLabel
        UserName = 'Label27'
        Caption = 'N'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3440
        mmLeft = 56356
        mmTop = 3969
        mmWidth = 5556
        BandType = 8
      end
      object ppLabel27: TppLabel
        UserName = 'Label31'
        Caption = 'Data autoriza'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 5821
        mmTop = 9260
        mmWidth = 25400
        BandType = 8
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'Quem autorizou:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 7144
        mmTop = 14023
        mmWidth = 24077
        BandType = 8
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        DataField = 'DATA_AUTORIZADO'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 33602
        mmTop = 9260
        mmWidth = 34396
        BandType = 8
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        DataField = 'QUEM_AUTORIZOU'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 33602
        mmTop = 14023
        mmWidth = 34396
        BandType = 8
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'Data entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 77523
        mmTop = 4233
        mmWidth = 19844
        BandType = 8
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        DataField = 'DATA_ENTREGA'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 99748
        mmTop = 4233
        mmWidth = 35983
        BandType = 8
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'Quem retirou:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 76994
        mmTop = 9260
        mmWidth = 20373
        BandType = 8
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        DataField = 'QUEM_RECEBEU'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 99748
        mmTop = 9260
        mmWidth = 35983
        BandType = 8
      end
      object ppLabel41: TppLabel
        UserName = 'Label401'
        Caption = 'Quem entregou:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 73819
        mmTop = 14023
        mmWidth = 23548
        BandType = 8
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        DataField = 'QUEM_ENTREGOU'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 99748
        mmTop = 14023
        mmWidth = 35983
        BandType = 8
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        DataField = 'VALOR_PRODUTOS'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 3440
        mmWidth = 24342
        BandType = 8
      end
      object ppDBText51: TppDBText
        UserName = 'DBText501'
        DataField = 'VALOR_SERVICOS'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 8996
        mmWidth = 24342
        BandType = 8
      end
      object ppDBText52: TppDBText
        UserName = 'DBText502'
        DataField = 'VALOR_TOTAL'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 14552
        mmWidth = 24342
        BandType = 8
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        DataField = 'CLI_NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 67733
        mmTop = 52917
        mmWidth = 64029
        BandType = 8
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 67733
        mmTop = 52917
        mmWidth = 70115
        BandType = 8
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 70115
        mmTop = 2117
        mmWidth = 529
        BandType = 8
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17463
        mmLeft = 137584
        mmTop = 2117
        mmWidth = 1058
        BandType = 8
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Pen.Style = psDashDot
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 59267
        mmWidth = 197115
        BandType = 8
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'EMP_RAZAOSOCIAL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 61383
        mmWidth = 93398
        BandType = 8
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        DataField = 'EMP_FONE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 99484
        mmTop = 61383
        mmWidth = 40481
        BandType = 8
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 'O.S.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 167217
        mmTop = 61383
        mmWidth = 7408
        BandType = 8
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        DataField = 'CODIGO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 175684
        mmTop = 61383
        mmWidth = 16140
        BandType = 8
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Caption = 'Data da abertura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 166159
        mmTop = 64558
        mmWidth = 25665
        BandType = 8
      end
      object ppDBText55: TppDBText
        UserName = 'DBText55'
        DataField = 'DATA'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 157957
        mmTop = 67733
        mmWidth = 33602
        BandType = 8
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 2381
        mmTop = 65617
        mmWidth = 17463
        BandType = 8
      end
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        DataField = 'CLI_NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 21167
        mmTop = 65617
        mmWidth = 65617
        BandType = 8
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        Caption = 'Marca:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 9790
        mmTop = 68792
        mmWidth = 9790
        BandType = 8
      end
      object ppDBText57: TppDBText
        UserName = 'DBText57'
        DataField = 'MARCA'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 20902
        mmTop = 68792
        mmWidth = 59267
        BandType = 8
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Caption = 'Modelo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 82550
        mmTop = 68792
        mmWidth = 11377
        BandType = 8
      end
      object ppDBText58: TppDBText
        UserName = 'DBText58'
        DataField = 'MODELO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 94986
        mmTop = 68792
        mmWidth = 50536
        BandType = 8
      end
      object ppLabel49: TppLabel
        UserName = 'Label301'
        Caption = 'Acess'#243'rios:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3175
        mmTop = 75142
        mmWidth = 16404
        BandType = 8
      end
      object ppDBText59: TppDBText
        UserName = 'DBText59'
        DataField = 'ACESSORIOS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 20902
        mmTop = 75142
        mmWidth = 174096
        BandType = 8
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = 'S'#233'rie:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 11113
        mmTop = 71967
        mmWidth = 8467
        BandType = 8
      end
      object ppDBText62: TppDBText
        UserName = 'DBText62'
        DataField = 'SERIE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 20902
        mmTop = 71967
        mmWidth = 53446
        BandType = 8
      end
      object ppDBText63: TppDBText
        UserName = 'DBText63'
        DataField = 'MENSAGEM_OS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 7673
        mmLeft = 0
        mmTop = 83608
        mmWidth = 192882
        BandType = 8
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'Atendim.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 79904
        mmTop = 71967
        mmWidth = 14023
        BandType = 8
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'TIPOOS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 94986
        mmTop = 71967
        mmWidth = 100013
        BandType = 8
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 8731
        mmTop = 78317
        mmWidth = 10848
        BandType = 8
      end
      object ppDBText64: TppDBText
        UserName = 'DBText301'
        DataField = 'CONDICAOEXTERNA'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 20902
        mmTop = 78317
        mmWidth = 174096
        BandType = 8
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060D54726156617250726F6772616D094368696C645479706502110B50726F
        6772616D4E616D6506095661726961626C65730B50726F6772616D5479706507
        0B747450726F63656475726506536F75726365065970726F6365647572652056
        61726961626C65733B0D0A7661720D0A202020646573636F6E746F3A20657874
        656E6465643B0D0A202020746F74616C3A20657874656E6465643B0D0A0D0A62
        6567696E0D0A0D0A656E643B0D0A084361726574506F73010200020000000106
        0F5472614576656E7448616E646C65720B50726F6772616D4E616D6506165265
        706F72744F6E53746172744669727374506173730B50726F6772616D54797065
        070B747450726F63656475726506536F75726365065170726F63656475726520
        5265706F72744F6E53746172744669727374506173733B0D0A626567696E0D0A
        2020746F74616C203A3D20303B0D0A2020646573636F6E746F203A3D20303B0D
        0A656E643B0D0A0D436F6D706F6E656E744E616D6506065265706F7274094576
        656E744E616D6506104F6E5374617274466972737450617373074576656E7449
        440214084361726574506F730102000200000001060F5472614576656E744861
        6E646C65720B50726F6772616D4E616D6506185265706F72744F6E5072696E74
        4469616C6F67436C6F73650B50726F6772616D54797065070B747450726F6365
        6475726506536F75726365065370726F636564757265205265706F72744F6E50
        72696E744469616C6F67436C6F73653B0D0A626567696E0D0A2020746F74616C
        203A3D20303B0D0A2020646573636F6E746F203A3D20303B0D0A656E643B0D0A
        0D436F6D706F6E656E744E616D6506065265706F7274094576656E744E616D65
        06124F6E5072696E744469616C6F67436C6F7365074576656E74494402080843
        61726574506F730102000200000001060F5472614576656E7448616E646C6572
        0B50726F6772616D4E616D650610444254657874334F6E476574546578740B50
        726F6772616D54797065070B747450726F63656475726506536F757263650698
        70726F63656475726520444254657874334F6E47657454657874287661722054
        6578743A20537472696E67293B0D0A626567696E0D0A0D0A202054657874203A
        3D205472696D28444250697065456D70726573615B27454D505F4C4F47524144
        4F55524F275D29202B20272C2027202B2020444250697065456D70726573615B
        27454D505F4E554D45524F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E65
        6E744E616D65060744425465787433094576656E744E616D6506094F6E476574
        54657874074576656E7449440235084361726574506F73010200020000000106
        0F5472614576656E7448616E646C65720B50726F6772616D4E616D6506114442
        5465787431354F6E476574546578740B50726F6772616D54797065070B747450
        726F63656475726506536F7572636506C170726F636564757265204442546578
        7431354F6E476574546578742876617220546578743A20537472696E67293B0D
        0A626567696E0D0A0D0A202054657874203A3D205472696D2844425069706543
        6F72706F5B27434C495F4C4F475241444F55524F275D29202B20272C2027202B
        20444250697065436F72706F5B27434C495F4E554D45524F275D202B20272027
        202B0D0A2020202020444250697065436F72706F5B27434C495F434F4D504C45
        4D454E544F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65
        06084442546578743135094576656E744E616D6506094F6E4765745465787407
        4576656E7449440235084361726574506F730102000200000001060F54726145
        76656E7448616E646C65720B50726F6772616D4E616D65061044425465787435
        4F6E476574546578740B50726F6772616D54797065070B747450726F63656475
        726506536F75726365069370726F63656475726520444254657874354F6E4765
        74546578742876617220546578743A20537472696E67293B0D0A626567696E0D
        0A0D0A202054657874203A3D205472696D28444250697065456D70726573615B
        27454D505F434944414445275D29202B20272C2027202B20444250697065456D
        70726573615B27454D505F45535441444F275D3B0D0A0D0A656E643B0D0A0D43
        6F6D706F6E656E744E616D65060744425465787435094576656E744E616D6506
        094F6E47657454657874074576656E7449440235084361726574506F73010200
        0200000001060F5472614576656E7448616E646C65720B50726F6772616D4E61
        6D65061144425465787432344F6E476574546578740B50726F6772616D547970
        65070B747450726F63656475726506536F7572636506B470726F636564757265
        2044425465787432344F6E476574546578742876617220546578743A20537472
        696E67293B0D0A626567696E0D0A0D0A202054657874203A3D205472696D2844
        4250697065436F72706F5B27434C495F434944414445275D29202B20272C2027
        202B20444250697065436F72706F5B27434C495F45535441444F275D202B0D0A
        20202020272027202B20444250697065436F72706F5B27434C495F434550275D
        3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506084442546578
        743234094576656E744E616D6506094F6E47657454657874074576656E744944
        0235084361726574506F730102000200000001060F5472614576656E7448616E
        646C65720B50726F6772616D4E616D650610444254657874374F6E4765745465
        78740B50726F6772616D54797065070B747450726F63656475726506536F7572
        6365067070726F63656475726520444254657874374F6E476574546578742876
        617220546578743A20537472696E67293B0D0A626567696E0D0A0D0A20205465
        7874203A3D2027434E504A2027202B20444250697065456D70726573615B2745
        4D505F434E504A275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E61
        6D65060744425465787437094576656E744E616D6506094F6E47657454657874
        074576656E7449440235084361726574506F730102000200000001060F547261
        4576656E7448616E646C65720B50726F6772616D4E616D650610444254657874
        384F6E476574546578740B50726F6772616D54797065070B747450726F636564
        75726506536F75726365066E70726F63656475726520444254657874384F6E47
        6574546578742876617220546578743A20537472696E67293B0D0A626567696E
        0D0A0D0A202054657874203A3D2027492E452E2027202B20444250697065456D
        70726573615B27454D505F4945275D3B0D0A0D0A656E643B0D0A0D436F6D706F
        6E656E744E616D65060744425465787438094576656E744E616D6506094F6E47
        657454657874074576656E7449440235084361726574506F7301020002000000
        00}
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppOS2: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeItens
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 216
    Top = 72
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeItens'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 118004
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape4'
        mmHeight = 50800
        mmLeft = 2117
        mmTop = 59267
        mmWidth = 192882
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape1'
        mmHeight = 25665
        mmLeft = 2117
        mmTop = 32279
        mmWidth = 192882
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label4'
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3704
        mmTop = 33602
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label5'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3704
        mmTop = 40481
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label6'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 43656
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label7'
        Caption = 'CNPJ/CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3704
        mmTop = 46831
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label8'
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3704
        mmTop = 50006
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label9'
        Caption = 'FAX:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 94192
        mmTop = 53181
        mmWidth = 6879
        BandType = 0
      end
      object ppDBText65: TppDBText
        UserName = 'DBText15'
        DataField = 'CLI_LOGRADOURO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 40481
        mmWidth = 130969
        BandType = 0
      end
      object ppDBText66: TppDBText
        UserName = 'DBText16'
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 43656
        mmWidth = 65617
        BandType = 0
      end
      object ppDBText67: TppDBText
        UserName = 'DBText17'
        DataField = 'CLI_CPFCGC'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 46831
        mmWidth = 65617
        BandType = 0
      end
      object ppDBText68: TppDBText
        UserName = 'DBText18'
        DataField = 'CLI_FONE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 50006
        mmWidth = 65617
        BandType = 0
      end
      object ppDBText69: TppDBText
        UserName = 'DBText19'
        DataField = 'CLI_FAX'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102394
        mmTop = 53181
        mmWidth = 51065
        BandType = 0
      end
      object ppDBText70: TppDBText
        UserName = 'DBText21'
        DataField = 'CLI_NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 33602
        mmWidth = 170127
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label11'
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 89959
        mmTop = 50006
        mmWidth = 11113
        BandType = 0
      end
      object ppDBText71: TppDBText
        UserName = 'DBText22'
        DataField = 'CLI_CELULAR'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102394
        mmTop = 50006
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label12'
        Caption = 'I.E./RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 89429
        mmTop = 46831
        mmWidth = 11642
        BandType = 0
      end
      object ppDBText72: TppDBText
        UserName = 'DBText23'
        DataField = 'CLI_RGIE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102394
        mmTop = 46831
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label13'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 90223
        mmTop = 43656
        mmWidth = 10848
        BandType = 0
      end
      object ppDBText73: TppDBText
        UserName = 'DBText24'
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102394
        mmTop = 43656
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label14'
        Caption = 'email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 12171
        mmTop = 53181
        mmWidth = 8996
        BandType = 0
      end
      object ppDBText74: TppDBText
        UserName = 'DBText25'
        DataField = 'CLI_EMAIL'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 53181
        mmWidth = 68792
        BandType = 0
      end
      object ppDBText75: TppDBText
        UserName = 'DBText11'
        DataField = 'DATA'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 159015
        mmTop = 17992
        mmWidth = 33602
        BandType = 0
      end
      object ppDBText76: TppDBText
        UserName = 'DBText1'
        DataField = 'EMP_NOME'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 2117
        mmWidth = 107686
        BandType = 0
      end
      object ppDBText77: TppDBText
        UserName = 'DBText2'
        DataField = 'EMP_RAZAOSOCIAL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 5292
        mmWidth = 107686
        BandType = 0
      end
      object ppDBText78: TppDBText
        UserName = 'DBText3'
        DataField = 'EMP_LOGRADOURO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 8467
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText79: TppDBText
        UserName = 'DBText4'
        DataField = 'EMP_BAIRRO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 11642
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText80: TppDBText
        UserName = 'DBText5'
        DataField = 'EMP_CIDADE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 14817
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText81: TppDBText
        UserName = 'DBText7'
        DataField = 'EMP_CNPJ'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 8467
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText82: TppDBText
        UserName = 'DBText8'
        DataField = 'EMP_IE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 11642
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText83: TppDBText
        UserName = 'DBText9'
        DataField = 'EMP_FONE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 14817
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText84: TppDBText
        UserName = 'DBText10'
        DataField = 'EMP_EMAIL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 17992
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText85: TppDBText
        UserName = 'DBText12'
        DataField = 'EMP_FAX'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 17992
        mmWidth = 40746
        BandType = 0
      end
      object ppDBImage2: TppDBImage
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = True
        Stretch = True
        DataField = 'LOGOTIPO'
        DataPipeline = ppDBPipeEmpresa
        GraphicType = 'JPEG'
        ParentDataPipeline = False
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 21431
        mmLeft = 2381
        mmTop = 2381
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label1'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 33867
        mmTop = 113506
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label2'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 21960
        mmTop = 113506
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label15'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 140494
        mmTop = 113506
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label16'
        Caption = 'Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164307
        mmTop = 113506
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label17'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 188119
        mmTop = 113506
        mmWidth = 7938
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 1058
        mmTop = 117475
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label10'
        Caption = 'Atendim.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 7408
        mmTop = 65617
        mmWidth = 14023
        BandType = 0
      end
      object ppDBText86: TppDBText
        UserName = 'DBText27'
        DataField = 'TIPOOS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 65617
        mmWidth = 96309
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label23'
        Caption = 'Marca:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 129117
        mmTop = 68792
        mmWidth = 9790
        BandType = 0
      end
      object ppDBText87: TppDBText
        UserName = 'DBText29'
        DataField = 'MARCA'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 140229
        mmTop = 68792
        mmWidth = 52652
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label28'
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 10319
        mmTop = 71967
        mmWidth = 10848
        BandType = 0
      end
      object ppDBText88: TppDBText
        UserName = 'DBText30'
        DataField = 'CONDICAOEXTERNA'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 71967
        mmWidth = 96309
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label29'
        Caption = 'Modelo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 127265
        mmTop = 71967
        mmWidth = 11377
        BandType = 0
      end
      object ppDBText89: TppDBText
        UserName = 'DBText33'
        DataField = 'MODELO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 139700
        mmTop = 71967
        mmWidth = 53181
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label30'
        Caption = 'Acess'#243'rios:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 5027
        mmTop = 68792
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label20'
        Caption = 'Defeito:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 9790
        mmTop = 75142
        mmWidth = 11377
        BandType = 0
      end
      object ppDBText90: TppDBText
        UserName = 'DBText37'
        DataField = 'DEFEITO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 75142
        mmWidth = 96309
        BandType = 0
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'SERVICOS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 9790
        mmLeft = 22490
        mmTop = 78317
        mmWidth = 170392
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label32'
        Caption = 'Notifica'#231#227'o do Servi'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 89429
        mmWidth = 41010
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label33'
        Caption = 'Defeito detectado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 94986
        mmWidth = 28575
        BandType = 0
      end
      object ppDBText91: TppDBText
        UserName = 'DBText38'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        DataField = 'DEFEITO_DETECTADO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 94986
        mmWidth = 161132
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label34'
        Caption = 'Servi'#231'o a realizar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 100277
        mmWidth = 28575
        BandType = 0
      end
      object ppDBText92: TppDBText
        UserName = 'DBText34'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        DataField = 'SERVICO_REALIZAR'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 100277
        mmWidth = 161132
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label201'
        Caption = 'T'#233'cnico:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 18785
        mmTop = 105304
        mmWidth = 11906
        BandType = 0
      end
      object ppDBText93: TppDBText
        UserName = 'DBText40'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        DataField = 'TECNICO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 105304
        mmWidth = 78581
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label36'
        Caption = 'In'#237'cio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 112448
        mmTop = 105304
        mmWidth = 8996
        BandType = 0
      end
      object ppDBText94: TppDBText
        UserName = 'DBText41'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        DataField = 'DATAINICIO'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 122238
        mmTop = 105304
        mmWidth = 26988
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label26'
        Caption = 'T'#233'rmino:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 151871
        mmTop = 105304
        mmWidth = 12965
        BandType = 0
      end
      object ppDBText95: TppDBText
        UserName = 'DBText42'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        DataField = 'DATATERMINO'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 165894
        mmTop = 105304
        mmWidth = 26988
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line8'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 2117
        mmTop = 88636
        mmWidth = 192882
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label101'
        Caption = 'O.S.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 4233
        mmTop = 60590
        mmWidth = 7493
        BandType = 0
      end
      object ppDBText96: TppDBText
        UserName = 'DBText43'
        DataField = 'CODIGO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3387
        mmLeft = 12965
        mmTop = 60590
        mmWidth = 17463
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 2117
        mmTop = 64294
        mmWidth = 192882
        BandType = 0
      end
      object ppDBText97: TppDBText
        UserName = 'DBText35'
        DataField = 'ACESSORIOS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 68792
        mmWidth = 96309
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label3'
        Caption = 'Parceiro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 32988
        mmTop = 60590
        mmWidth = 12785
        BandType = 0
      end
      object ppDBText98: TppDBText
        UserName = 'DBText6'
        DataField = 'PARCEIRO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 47096
        mmTop = 60590
        mmWidth = 145786
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label43'
        Caption = 'Data da abertura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 167217
        mmTop = 14817
        mmWidth = 25665
        BandType = 0
      end
      object ppDBText99: TppDBText
        UserName = 'DBText13'
        DataField = 'CODIGO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 7662
        mmLeft = 152400
        mmTop = 5292
        mmWidth = 40481
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label50'
        Caption = 'Operadora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 122502
        mmTop = 65617
        mmWidth = 16341
        BandType = 0
      end
      object ppDBText100: TppDBText
        UserName = 'DBText60'
        DataField = 'OPERADORA'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 139965
        mmTop = 65617
        mmWidth = 52917
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label302'
        Caption = 'S'#233'rie:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 130175
        mmTop = 75142
        mmWidth = 8594
        BandType = 0
      end
      object ppDBText101: TppDBText
        UserName = 'DBText61'
        DataField = 'SERIE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 139700
        mmTop = 75142
        mmWidth = 53181
        BandType = 0
      end
      object ppLabel107: TppLabel
        UserName = 'Label107'
        Caption = 'R. Social:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 7493
        mmTop = 36777
        mmWidth = 13674
        BandType = 0
      end
      object ppDBText129: TppDBText
        UserName = 'DBText129'
        DataField = 'CLI_RAZAOSOCIAL'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 36777
        mmWidth = 170127
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 27517
        mmWidth = 62971
        BandType = 0
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        Caption = 'ORDEM DE SERVI'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6816
        mmLeft = 66487
        mmTop = 24077
        mmWidth = 63839
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 133350
        mmTop = 27252
        mmWidth = 64029
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CODPRODUTO'
        DisplayFormat = '00#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 0
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText102: TppDBText
        UserName = 'DBText20'
        DataField = 'BARRA'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3704
        mmLeft = 10583
        mmTop = 0
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText103: TppDBText
        UserName = 'DBText26'
        DataField = 'DESCRICAO2'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3704
        mmLeft = 35983
        mmTop = 0
        mmWidth = 103981
        BandType = 4
      end
      object ppDBText104: TppDBText
        UserName = 'DBText28'
        DataField = 'QUANTIDADE'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3704
        mmLeft = 141288
        mmTop = 0
        mmWidth = 9260
        BandType = 4
      end
      object ppDBText105: TppDBText
        UserName = 'DBText32'
        DataField = 'UNIDADE'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3704
        mmLeft = 152400
        mmTop = 0
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText185: TppDBText
        UserName = 'DBText185'
        DataField = 'VALOR_ITEM'
        DataPipeline = ppDBPipeItens
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3704
        mmLeft = 160338
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText186: TppDBText
        UserName = 'DBText186'
        DataField = 'VALOR_PAGO'
        DataPipeline = ppDBPipeItens
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3704
        mmLeft = 178859
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 115094
      mmPrintPosition = 0
      object ppShape9: TppShape
        UserName = 'Shape7'
        mmHeight = 18256
        mmLeft = 2117
        mmTop = 24871
        mmWidth = 192882
        BandType = 8
      end
      object ppLabel86: TppLabel
        UserName = 'Label25'
        Caption = 'Observa'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 21167
        mmWidth = 20373
        BandType = 8
      end
      object ppDBMemo3: TppDBMemo
        UserName = 'DBMemo4'
        CharWrap = True
        DataField = 'OBSERVACOES'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 17198
        mmLeft = 2646
        mmTop = 25400
        mmWidth = 191823
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape3'
        mmHeight = 17992
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 192882
        BandType = 8
      end
      object ppLabel87: TppLabel
        UserName = 'Label19'
        Caption = 'PE'#199'AS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 154252
        mmTop = 3440
        mmWidth = 13229
        BandType = 8
      end
      object ppLabel88: TppLabel
        UserName = 'Label21'
        Caption = 'M'#195'O-DE-OBRA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 139700
        mmTop = 8996
        mmWidth = 27781
        BandType = 8
      end
      object ppLabel89: TppLabel
        UserName = 'Label22'
        Caption = 'T O T A L :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 147373
        mmTop = 14552
        mmWidth = 20108
        BandType = 8
      end
      object ppLabel90: TppLabel
        UserName = 'Label18'
        Caption = 'Cliente autorizou?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 5556
        mmTop = 3969
        mmWidth = 25665
        BandType = 8
      end
      object ppShape11: TppShape
        UserName = 'Shape5'
        mmHeight = 4763
        mmLeft = 33073
        mmTop = 3175
        mmWidth = 5292
        BandType = 8
      end
      object ppShape12: TppShape
        UserName = 'Shape6'
        mmHeight = 4763
        mmLeft = 49742
        mmTop = 3175
        mmWidth = 5292
        BandType = 8
      end
      object ppDBText106: TppDBText
        UserName = 'DBText39'
        DataField = 'AUTORIZADO_SIM'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 34396
        mmTop = 3969
        mmWidth = 3175
        BandType = 8
      end
      object ppDBText107: TppDBText
        UserName = 'DBText44'
        DataField = 'AUTORIZADO_NAO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 51329
        mmTop = 3969
        mmWidth = 3175
        BandType = 8
      end
      object ppLabel91: TppLabel
        UserName = 'Label24'
        Caption = 'Sim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3440
        mmLeft = 39423
        mmTop = 3969
        mmWidth = 5556
        BandType = 8
      end
      object ppLabel92: TppLabel
        UserName = 'Label27'
        Caption = 'N'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3440
        mmLeft = 56356
        mmTop = 3969
        mmWidth = 5556
        BandType = 8
      end
      object ppLabel93: TppLabel
        UserName = 'Label31'
        Caption = 'Data autoriza'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 5821
        mmTop = 9260
        mmWidth = 25400
        BandType = 8
      end
      object ppLabel94: TppLabel
        UserName = 'Label38'
        Caption = 'Quem autorizou:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 7144
        mmTop = 14023
        mmWidth = 24077
        BandType = 8
      end
      object ppDBText108: TppDBText
        UserName = 'DBText45'
        DataField = 'DATA_AUTORIZADO'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 33602
        mmTop = 9260
        mmWidth = 34396
        BandType = 8
      end
      object ppDBText109: TppDBText
        UserName = 'DBText46'
        DataField = 'QUEM_AUTORIZOU'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 33602
        mmTop = 14023
        mmWidth = 34396
        BandType = 8
      end
      object ppLabel95: TppLabel
        UserName = 'Label39'
        Caption = 'Data entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 77523
        mmTop = 4233
        mmWidth = 19844
        BandType = 8
      end
      object ppDBText110: TppDBText
        UserName = 'DBText47'
        DataField = 'DATA_ENTREGA'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 99748
        mmTop = 4233
        mmWidth = 35983
        BandType = 8
      end
      object ppLabel96: TppLabel
        UserName = 'Label40'
        Caption = 'Quem retirou:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 76994
        mmTop = 9260
        mmWidth = 20373
        BandType = 8
      end
      object ppDBText111: TppDBText
        UserName = 'DBText48'
        DataField = 'QUEM_RECEBEU'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 99748
        mmTop = 9260
        mmWidth = 35983
        BandType = 8
      end
      object ppLabel97: TppLabel
        UserName = 'Label401'
        Caption = 'Quem entregou:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 73819
        mmTop = 14023
        mmWidth = 23548
        BandType = 8
      end
      object ppDBText112: TppDBText
        UserName = 'DBText49'
        DataField = 'QUEM_ENTREGOU'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 99748
        mmTop = 14023
        mmWidth = 35983
        BandType = 8
      end
      object ppDBText113: TppDBText
        UserName = 'DBText50'
        DataField = 'VALOR_PRODUTOS'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 3440
        mmWidth = 24342
        BandType = 8
      end
      object ppDBText114: TppDBText
        UserName = 'DBText501'
        DataField = 'VALOR_SERVICOS'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 8996
        mmWidth = 24342
        BandType = 8
      end
      object ppDBText115: TppDBText
        UserName = 'DBText502'
        DataField = 'VALOR_TOTAL'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 14552
        mmWidth = 24342
        BandType = 8
      end
      object ppDBText116: TppDBText
        UserName = 'DBText36'
        DataField = 'CLI_NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 44186
        mmTop = 53181
        mmWidth = 111919
        BandType = 8
      end
      object ppLine11: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 44186
        mmTop = 53181
        mmWidth = 111919
        BandType = 8
      end
      object ppLine12: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 70115
        mmTop = 2117
        mmWidth = 529
        BandType = 8
      end
      object ppLine13: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17463
        mmLeft = 137584
        mmTop = 2117
        mmWidth = 1058
        BandType = 8
      end
      object ppLine14: TppLine
        UserName = 'Line5'
        Pen.Style = psDashDot
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 59267
        mmWidth = 197115
        BandType = 8
      end
      object ppDBText117: TppDBText
        UserName = 'DBText31'
        DataField = 'EMP_RAZAOSOCIAL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 61383
        mmWidth = 93398
        BandType = 8
      end
      object ppDBText118: TppDBText
        UserName = 'DBText53'
        DataField = 'EMP_FONE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 99484
        mmTop = 61383
        mmWidth = 40481
        BandType = 8
      end
      object ppLabel98: TppLabel
        UserName = 'Label44'
        Caption = 'O.S.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 167217
        mmTop = 61383
        mmWidth = 7408
        BandType = 8
      end
      object ppDBText119: TppDBText
        UserName = 'DBText54'
        DataField = 'CODIGO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 175684
        mmTop = 61383
        mmWidth = 16140
        BandType = 8
      end
      object ppLabel99: TppLabel
        UserName = 'Label45'
        Caption = 'Data da abertura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 166159
        mmTop = 64558
        mmWidth = 25665
        BandType = 8
      end
      object ppDBText120: TppDBText
        UserName = 'DBText55'
        DataField = 'DATA'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 157957
        mmTop = 67733
        mmWidth = 33602
        BandType = 8
      end
      object ppLabel100: TppLabel
        UserName = 'Label46'
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 2381
        mmTop = 65617
        mmWidth = 17463
        BandType = 8
      end
      object ppDBText121: TppDBText
        UserName = 'DBText56'
        DataField = 'CLI_NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 21167
        mmTop = 65617
        mmWidth = 65617
        BandType = 8
      end
      object ppLabel101: TppLabel
        UserName = 'Label47'
        Caption = 'Marca:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 9790
        mmTop = 68792
        mmWidth = 9790
        BandType = 8
      end
      object ppDBText122: TppDBText
        UserName = 'DBText57'
        DataField = 'MARCA'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 20902
        mmTop = 68792
        mmWidth = 59267
        BandType = 8
      end
      object ppLabel102: TppLabel
        UserName = 'Label48'
        Caption = 'Modelo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 82550
        mmTop = 68792
        mmWidth = 11377
        BandType = 8
      end
      object ppDBText123: TppDBText
        UserName = 'DBText58'
        DataField = 'MODELO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 94986
        mmTop = 68792
        mmWidth = 50536
        BandType = 8
      end
      object ppLabel103: TppLabel
        UserName = 'Label301'
        Caption = 'Acess'#243'rios:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3175
        mmTop = 75142
        mmWidth = 16404
        BandType = 8
      end
      object ppDBText124: TppDBText
        UserName = 'DBText59'
        DataField = 'ACESSORIOS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 20902
        mmTop = 75142
        mmWidth = 174096
        BandType = 8
      end
      object ppLabel104: TppLabel
        UserName = 'Label52'
        Caption = 'S'#233'rie:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 11113
        mmTop = 71967
        mmWidth = 8467
        BandType = 8
      end
      object ppDBText125: TppDBText
        UserName = 'DBText62'
        DataField = 'SERIE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 20902
        mmTop = 71967
        mmWidth = 53446
        BandType = 8
      end
      object ppDBText126: TppDBText
        UserName = 'DBText63'
        DataField = 'MENSAGEM_OS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 7673
        mmLeft = 0
        mmTop = 83608
        mmWidth = 192882
        BandType = 8
      end
      object ppLabel105: TppLabel
        UserName = 'Label53'
        Caption = 'Atendim.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 79904
        mmTop = 71967
        mmWidth = 14023
        BandType = 8
      end
      object ppDBText127: TppDBText
        UserName = 'DBText14'
        DataField = 'TIPOOS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 94986
        mmTop = 71967
        mmWidth = 100013
        BandType = 8
      end
      object ppLabel106: TppLabel
        UserName = 'Label42'
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 8731
        mmTop = 78317
        mmWidth = 10848
        BandType = 8
      end
      object ppDBText128: TppDBText
        UserName = 'DBText301'
        DataField = 'CONDICAOEXTERNA'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 20902
        mmTop = 78317
        mmWidth = 174096
        BandType = 8
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {
        01060D54726156617250726F6772616D094368696C645479706502110B50726F
        6772616D4E616D6506095661726961626C65730B50726F6772616D5479706507
        0B747450726F63656475726506536F75726365065970726F6365647572652056
        61726961626C65733B0D0A7661720D0A202020646573636F6E746F3A20657874
        656E6465643B0D0A202020746F74616C3A20657874656E6465643B0D0A0D0A62
        6567696E0D0A0D0A656E643B0D0A084361726574506F73010200020000000106
        0F5472614576656E7448616E646C65720B50726F6772616D4E616D6506165265
        706F72744F6E53746172744669727374506173730B50726F6772616D54797065
        070B747450726F63656475726506536F75726365065170726F63656475726520
        5265706F72744F6E53746172744669727374506173733B0D0A626567696E0D0A
        2020746F74616C203A3D20303B0D0A2020646573636F6E746F203A3D20303B0D
        0A656E643B0D0A0D436F6D706F6E656E744E616D6506065265706F7274094576
        656E744E616D6506104F6E5374617274466972737450617373074576656E7449
        440214084361726574506F730102000200000001060F5472614576656E744861
        6E646C65720B50726F6772616D4E616D6506185265706F72744F6E5072696E74
        4469616C6F67436C6F73650B50726F6772616D54797065070B747450726F6365
        6475726506536F75726365065370726F636564757265205265706F72744F6E50
        72696E744469616C6F67436C6F73653B0D0A626567696E0D0A2020746F74616C
        203A3D20303B0D0A2020646573636F6E746F203A3D20303B0D0A656E643B0D0A
        0D436F6D706F6E656E744E616D6506065265706F7274094576656E744E616D65
        06124F6E5072696E744469616C6F67436C6F7365074576656E74494402080843
        61726574506F730102000200000001060F5472614576656E7448616E646C6572
        0B50726F6772616D4E616D650610444254657874334F6E476574546578740B50
        726F6772616D54797065070B747450726F63656475726506536F757263650698
        70726F63656475726520444254657874334F6E47657454657874287661722054
        6578743A20537472696E67293B0D0A626567696E0D0A0D0A202054657874203A
        3D205472696D28444250697065456D70726573615B27454D505F4C4F47524144
        4F55524F275D29202B20272C2027202B2020444250697065456D70726573615B
        27454D505F4E554D45524F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E65
        6E744E616D65060744425465787433094576656E744E616D6506094F6E476574
        54657874074576656E7449440235084361726574506F73010200020000000106
        0F5472614576656E7448616E646C65720B50726F6772616D4E616D6506114442
        5465787431354F6E476574546578740B50726F6772616D54797065070B747450
        726F63656475726506536F7572636506C170726F636564757265204442546578
        7431354F6E476574546578742876617220546578743A20537472696E67293B0D
        0A626567696E0D0A0D0A202054657874203A3D205472696D2844425069706543
        6F72706F5B27434C495F4C4F475241444F55524F275D29202B20272C2027202B
        20444250697065436F72706F5B27434C495F4E554D45524F275D202B20272027
        202B0D0A2020202020444250697065436F72706F5B27434C495F434F4D504C45
        4D454E544F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65
        06084442546578743135094576656E744E616D6506094F6E4765745465787407
        4576656E7449440235084361726574506F730102000200000001060F54726145
        76656E7448616E646C65720B50726F6772616D4E616D65061044425465787435
        4F6E476574546578740B50726F6772616D54797065070B747450726F63656475
        726506536F75726365069370726F63656475726520444254657874354F6E4765
        74546578742876617220546578743A20537472696E67293B0D0A626567696E0D
        0A0D0A202054657874203A3D205472696D28444250697065456D70726573615B
        27454D505F434944414445275D29202B20272C2027202B20444250697065456D
        70726573615B27454D505F45535441444F275D3B0D0A0D0A656E643B0D0A0D43
        6F6D706F6E656E744E616D65060744425465787435094576656E744E616D6506
        094F6E47657454657874074576656E7449440235084361726574506F73010200
        0200000001060F5472614576656E7448616E646C65720B50726F6772616D4E61
        6D65061144425465787432344F6E476574546578740B50726F6772616D547970
        65070B747450726F63656475726506536F7572636506B470726F636564757265
        2044425465787432344F6E476574546578742876617220546578743A20537472
        696E67293B0D0A626567696E0D0A0D0A202054657874203A3D205472696D2844
        4250697065436F72706F5B27434C495F434944414445275D29202B20272C2027
        202B20444250697065436F72706F5B27434C495F45535441444F275D202B0D0A
        20202020272027202B20444250697065436F72706F5B27434C495F434550275D
        3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506084442546578
        743234094576656E744E616D6506094F6E47657454657874074576656E744944
        0235084361726574506F730102000200000001060F5472614576656E7448616E
        646C65720B50726F6772616D4E616D650610444254657874374F6E4765745465
        78740B50726F6772616D54797065070B747450726F63656475726506536F7572
        6365067070726F63656475726520444254657874374F6E476574546578742876
        617220546578743A20537472696E67293B0D0A626567696E0D0A0D0A20205465
        7874203A3D2027434E504A2027202B20444250697065456D70726573615B2745
        4D505F434E504A275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E61
        6D65060744425465787437094576656E744E616D6506094F6E47657454657874
        074576656E7449440235084361726574506F730102000200000001060F547261
        4576656E7448616E646C65720B50726F6772616D4E616D650610444254657874
        384F6E476574546578740B50726F6772616D54797065070B747450726F636564
        75726506536F75726365066E70726F63656475726520444254657874384F6E47
        6574546578742876617220546578743A20537472696E67293B0D0A626567696E
        0D0A0D0A202054657874203A3D2027492E452E2027202B20444250697065456D
        70726573615B27454D505F4945275D3B0D0A0D0A656E643B0D0A0D436F6D706F
        6E656E744E616D65060744425465787438094576656E744E616D6506094F6E47
        657454657874074576656E7449440235084361726574506F7301020002000000
        00}
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppOSF: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeItens
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 304
    Top = 128
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeItens'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 118004
      mmPrintPosition = 0
      object ppShape13: TppShape
        UserName = 'Shape4'
        mmHeight = 50800
        mmLeft = 2117
        mmTop = 59267
        mmWidth = 192882
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape1'
        mmHeight = 25665
        mmLeft = 2117
        mmTop = 32279
        mmWidth = 192882
        BandType = 0
      end
      object ppLabel109: TppLabel
        UserName = 'Label4'
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3704
        mmTop = 33602
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label5'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3704
        mmTop = 40481
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label6'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 43656
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label7'
        Caption = 'CNPJ/CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3704
        mmTop = 46831
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel113: TppLabel
        UserName = 'Label8'
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3704
        mmTop = 50006
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel114: TppLabel
        UserName = 'Label9'
        Caption = 'FAX:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 94192
        mmTop = 53181
        mmWidth = 6879
        BandType = 0
      end
      object ppDBText130: TppDBText
        UserName = 'DBText15'
        DataField = 'CLI_LOGRADOURO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 40481
        mmWidth = 130969
        BandType = 0
      end
      object ppDBText131: TppDBText
        UserName = 'DBText16'
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 43656
        mmWidth = 65617
        BandType = 0
      end
      object ppDBText132: TppDBText
        UserName = 'DBText17'
        DataField = 'CLI_CPFCGC'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 46831
        mmWidth = 65617
        BandType = 0
      end
      object ppDBText133: TppDBText
        UserName = 'DBText18'
        DataField = 'CLI_FONE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 50006
        mmWidth = 65617
        BandType = 0
      end
      object ppDBText134: TppDBText
        UserName = 'DBText19'
        DataField = 'CLI_FAX'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102394
        mmTop = 53181
        mmWidth = 51065
        BandType = 0
      end
      object ppDBText135: TppDBText
        UserName = 'DBText21'
        DataField = 'CLI_NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 33602
        mmWidth = 170127
        BandType = 0
      end
      object ppLabel115: TppLabel
        UserName = 'Label11'
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 89959
        mmTop = 50006
        mmWidth = 11113
        BandType = 0
      end
      object ppDBText136: TppDBText
        UserName = 'DBText22'
        DataField = 'CLI_CELULAR'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102394
        mmTop = 50006
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel116: TppLabel
        UserName = 'Label12'
        Caption = 'I.E./RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 89429
        mmTop = 46831
        mmWidth = 11642
        BandType = 0
      end
      object ppDBText137: TppDBText
        UserName = 'DBText23'
        DataField = 'CLI_RGIE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102394
        mmTop = 46831
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel117: TppLabel
        UserName = 'Label13'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 90223
        mmTop = 43656
        mmWidth = 10848
        BandType = 0
      end
      object ppDBText138: TppDBText
        UserName = 'DBText24'
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102394
        mmTop = 43656
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'Label14'
        Caption = 'email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 12171
        mmTop = 53181
        mmWidth = 8996
        BandType = 0
      end
      object ppDBText139: TppDBText
        UserName = 'DBText25'
        DataField = 'CLI_EMAIL'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 53181
        mmWidth = 68792
        BandType = 0
      end
      object ppDBText140: TppDBText
        UserName = 'DBText11'
        DataField = 'DATA'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 159015
        mmTop = 17992
        mmWidth = 33602
        BandType = 0
      end
      object ppDBText141: TppDBText
        UserName = 'DBText1'
        DataField = 'EMP_NOME'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 2117
        mmWidth = 107686
        BandType = 0
      end
      object ppDBText142: TppDBText
        UserName = 'DBText2'
        DataField = 'EMP_RAZAOSOCIAL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 5292
        mmWidth = 107686
        BandType = 0
      end
      object ppDBText143: TppDBText
        UserName = 'DBText3'
        DataField = 'EMP_LOGRADOURO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 8467
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText144: TppDBText
        UserName = 'DBText4'
        DataField = 'EMP_BAIRRO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 11642
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText145: TppDBText
        UserName = 'DBText5'
        DataField = 'EMP_CIDADE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 14817
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText146: TppDBText
        UserName = 'DBText7'
        DataField = 'EMP_CNPJ'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 8467
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText147: TppDBText
        UserName = 'DBText8'
        DataField = 'EMP_IE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 11642
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText148: TppDBText
        UserName = 'DBText9'
        DataField = 'EMP_FONE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 14817
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText149: TppDBText
        UserName = 'DBText10'
        DataField = 'EMP_EMAIL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 17992
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText150: TppDBText
        UserName = 'DBText12'
        DataField = 'EMP_FAX'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 17992
        mmWidth = 40746
        BandType = 0
      end
      object ppDBImage3: TppDBImage
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = True
        Stretch = True
        DataField = 'LOGOTIPO'
        DataPipeline = ppDBPipeEmpresa
        GraphicType = 'JPEG'
        ParentDataPipeline = False
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 21431
        mmLeft = 2381
        mmTop = 2381
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel119: TppLabel
        UserName = 'Label1'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 33867
        mmTop = 113506
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel120: TppLabel
        UserName = 'Label2'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 21960
        mmTop = 113506
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel121: TppLabel
        UserName = 'Label15'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 140494
        mmTop = 113506
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel122: TppLabel
        UserName = 'Label16'
        Caption = 'Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164307
        mmTop = 113506
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel123: TppLabel
        UserName = 'Label17'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 188119
        mmTop = 113506
        mmWidth = 7938
        BandType = 0
      end
      object ppLine17: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 1058
        mmTop = 117475
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel124: TppLabel
        UserName = 'Label10'
        Caption = 'Atendim.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 7408
        mmTop = 65617
        mmWidth = 14023
        BandType = 0
      end
      object ppDBText151: TppDBText
        UserName = 'DBText27'
        DataField = 'TIPOOS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 65617
        mmWidth = 96309
        BandType = 0
      end
      object ppLabel125: TppLabel
        UserName = 'Label23'
        Caption = 'Marca:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 129117
        mmTop = 68792
        mmWidth = 9790
        BandType = 0
      end
      object ppDBText152: TppDBText
        UserName = 'DBText29'
        DataField = 'MARCA'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 140229
        mmTop = 68792
        mmWidth = 52652
        BandType = 0
      end
      object ppLabel126: TppLabel
        UserName = 'Label28'
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 10319
        mmTop = 71967
        mmWidth = 10848
        BandType = 0
      end
      object ppDBText153: TppDBText
        UserName = 'DBText30'
        DataField = 'CONDICAOEXTERNA'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 71967
        mmWidth = 96309
        BandType = 0
      end
      object ppLabel127: TppLabel
        UserName = 'Label29'
        Caption = 'Modelo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 127265
        mmTop = 71967
        mmWidth = 11377
        BandType = 0
      end
      object ppDBText154: TppDBText
        UserName = 'DBText33'
        DataField = 'MODELO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 139700
        mmTop = 71967
        mmWidth = 53181
        BandType = 0
      end
      object ppLabel128: TppLabel
        UserName = 'Label30'
        Caption = 'Acess'#243'rios:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 5027
        mmTop = 68792
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel129: TppLabel
        UserName = 'Label20'
        Caption = 'Defeito:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 9790
        mmTop = 75142
        mmWidth = 11377
        BandType = 0
      end
      object ppDBText155: TppDBText
        UserName = 'DBText37'
        DataField = 'DEFEITO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 75142
        mmWidth = 96309
        BandType = 0
      end
      object ppDBMemo5: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'SERVICOS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 9790
        mmLeft = 22490
        mmTop = 78317
        mmWidth = 170392
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel130: TppLabel
        UserName = 'Label32'
        Caption = 'Notifica'#231#227'o do Servi'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 89429
        mmWidth = 41010
        BandType = 0
      end
      object ppLabel131: TppLabel
        UserName = 'Label33'
        Caption = 'Defeito detectado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 94986
        mmWidth = 28575
        BandType = 0
      end
      object ppDBText156: TppDBText
        UserName = 'DBText38'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        DataField = 'DEFEITO_DETECTADO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 94986
        mmWidth = 161132
        BandType = 0
      end
      object ppLabel132: TppLabel
        UserName = 'Label34'
        Caption = 'Servi'#231'o a realizar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 100277
        mmWidth = 28575
        BandType = 0
      end
      object ppDBText157: TppDBText
        UserName = 'DBText34'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        DataField = 'SERVICO_REALIZAR'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 100277
        mmWidth = 161132
        BandType = 0
      end
      object ppLabel133: TppLabel
        UserName = 'Label201'
        Caption = 'T'#233'cnico:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 18785
        mmTop = 105304
        mmWidth = 11906
        BandType = 0
      end
      object ppDBText158: TppDBText
        UserName = 'DBText40'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        DataField = 'TECNICO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 105304
        mmWidth = 78581
        BandType = 0
      end
      object ppLabel134: TppLabel
        UserName = 'Label36'
        Caption = 'In'#237'cio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 112448
        mmTop = 105304
        mmWidth = 8996
        BandType = 0
      end
      object ppDBText159: TppDBText
        UserName = 'DBText41'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        DataField = 'DATAINICIO'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 122238
        mmTop = 105304
        mmWidth = 26988
        BandType = 0
      end
      object ppLabel135: TppLabel
        UserName = 'Label26'
        Caption = 'T'#233'rmino:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 151871
        mmTop = 105304
        mmWidth = 12965
        BandType = 0
      end
      object ppDBText160: TppDBText
        UserName = 'DBText42'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        DataField = 'DATATERMINO'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 165894
        mmTop = 105304
        mmWidth = 26988
        BandType = 0
      end
      object ppLine18: TppLine
        UserName = 'Line8'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 2117
        mmTop = 88636
        mmWidth = 192882
        BandType = 0
      end
      object ppLabel136: TppLabel
        UserName = 'Label101'
        Caption = 'O.S.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 4233
        mmTop = 60590
        mmWidth = 7493
        BandType = 0
      end
      object ppDBText161: TppDBText
        UserName = 'DBText43'
        DataField = 'CODIGO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3387
        mmLeft = 12965
        mmTop = 60590
        mmWidth = 17463
        BandType = 0
      end
      object ppLine19: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 2117
        mmTop = 64294
        mmWidth = 192882
        BandType = 0
      end
      object ppDBText162: TppDBText
        UserName = 'DBText35'
        DataField = 'ACESSORIOS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 68792
        mmWidth = 96309
        BandType = 0
      end
      object ppLabel137: TppLabel
        UserName = 'Label3'
        Caption = 'Parceiro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 32988
        mmTop = 60590
        mmWidth = 12785
        BandType = 0
      end
      object ppDBText163: TppDBText
        UserName = 'DBText6'
        DataField = 'PARCEIRO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 47096
        mmTop = 60590
        mmWidth = 145786
        BandType = 0
      end
      object ppLabel138: TppLabel
        UserName = 'Label43'
        Caption = 'Data da abertura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 167217
        mmTop = 14817
        mmWidth = 25665
        BandType = 0
      end
      object ppDBText164: TppDBText
        UserName = 'DBText13'
        DataField = 'CODIGO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 7662
        mmLeft = 152400
        mmTop = 5292
        mmWidth = 40481
        BandType = 0
      end
      object ppLabel139: TppLabel
        UserName = 'Label50'
        Caption = 'Operadora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 122502
        mmTop = 65617
        mmWidth = 16341
        BandType = 0
      end
      object ppDBText165: TppDBText
        UserName = 'DBText60'
        DataField = 'OPERADORA'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 139965
        mmTop = 65617
        mmWidth = 52917
        BandType = 0
      end
      object ppLabel140: TppLabel
        UserName = 'Label302'
        Caption = 'S'#233'rie:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 130175
        mmTop = 75142
        mmWidth = 8594
        BandType = 0
      end
      object ppDBText166: TppDBText
        UserName = 'DBText61'
        DataField = 'SERIE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 139700
        mmTop = 75142
        mmWidth = 53181
        BandType = 0
      end
      object ppLabel141: TppLabel
        UserName = 'Label107'
        Caption = 'R. Social:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 7493
        mmTop = 36777
        mmWidth = 13674
        BandType = 0
      end
      object ppDBText167: TppDBText
        UserName = 'DBText129'
        DataField = 'CLI_RAZAOSOCIAL'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 36777
        mmWidth = 170127
        BandType = 0
      end
      object ppLine20: TppLine
        UserName = 'Line15'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 27517
        mmWidth = 62971
        BandType = 0
      end
      object ppLabel142: TppLabel
        UserName = 'Label108'
        Caption = 'ORDEM DE SERVI'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6816
        mmLeft = 66487
        mmTop = 24077
        mmWidth = 63839
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line16'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 133350
        mmTop = 27252
        mmWidth = 64029
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CODPRODUTO'
        DisplayFormat = '00#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 0
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText168: TppDBText
        UserName = 'DBText20'
        DataField = 'BARRA'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3704
        mmLeft = 10583
        mmTop = 0
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText169: TppDBText
        UserName = 'DBText26'
        DataField = 'DESCRICAO2'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3704
        mmLeft = 35983
        mmTop = 0
        mmWidth = 103981
        BandType = 4
      end
      object ppDBText170: TppDBText
        UserName = 'DBText28'
        DataField = 'QUANTIDADE'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3704
        mmLeft = 141288
        mmTop = 0
        mmWidth = 9260
        BandType = 4
      end
      object ppDBText171: TppDBText
        UserName = 'DBText32'
        DataField = 'UNIDADE'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3704
        mmLeft = 152400
        mmTop = 0
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText187: TppDBText
        UserName = 'DBText187'
        DataField = 'VALOR_ITEM'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3704
        mmLeft = 160338
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText188: TppDBText
        UserName = 'DBText188'
        DataField = 'VALOR_PAGO'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3704
        mmLeft = 178859
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 93663
      mmPrintPosition = 0
      object ppShape15: TppShape
        UserName = 'Shape7'
        mmHeight = 18256
        mmLeft = 2117
        mmTop = 24871
        mmWidth = 192882
        BandType = 8
      end
      object ppLabel143: TppLabel
        UserName = 'Label25'
        Caption = 'Observa'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 21167
        mmWidth = 20373
        BandType = 8
      end
      object ppDBMemo6: TppDBMemo
        UserName = 'DBMemo4'
        CharWrap = True
        DataField = 'OBSERVACOES'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 17198
        mmLeft = 2646
        mmTop = 25400
        mmWidth = 191823
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppShape16: TppShape
        UserName = 'Shape3'
        mmHeight = 17992
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 192882
        BandType = 8
      end
      object ppLabel144: TppLabel
        UserName = 'Label19'
        Caption = 'PE'#199'AS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 154252
        mmTop = 3440
        mmWidth = 13229
        BandType = 8
      end
      object ppLabel145: TppLabel
        UserName = 'Label21'
        Caption = 'M'#195'O-DE-OBRA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 139700
        mmTop = 8996
        mmWidth = 27781
        BandType = 8
      end
      object ppLabel146: TppLabel
        UserName = 'Label22'
        Caption = 'T O T A L :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 147373
        mmTop = 14552
        mmWidth = 20108
        BandType = 8
      end
      object ppLabel147: TppLabel
        UserName = 'Label18'
        Caption = 'Cliente autorizou?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 5556
        mmTop = 3969
        mmWidth = 25665
        BandType = 8
      end
      object ppShape17: TppShape
        UserName = 'Shape5'
        mmHeight = 4763
        mmLeft = 33073
        mmTop = 3175
        mmWidth = 5292
        BandType = 8
      end
      object ppShape18: TppShape
        UserName = 'Shape6'
        mmHeight = 4763
        mmLeft = 49742
        mmTop = 3175
        mmWidth = 5292
        BandType = 8
      end
      object ppDBText172: TppDBText
        UserName = 'DBText39'
        DataField = 'AUTORIZADO_SIM'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 34396
        mmTop = 3969
        mmWidth = 3175
        BandType = 8
      end
      object ppDBText173: TppDBText
        UserName = 'DBText44'
        DataField = 'AUTORIZADO_NAO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 51329
        mmTop = 3969
        mmWidth = 3175
        BandType = 8
      end
      object ppLabel148: TppLabel
        UserName = 'Label24'
        Caption = 'Sim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3440
        mmLeft = 39423
        mmTop = 3969
        mmWidth = 5556
        BandType = 8
      end
      object ppLabel149: TppLabel
        UserName = 'Label27'
        Caption = 'N'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3440
        mmLeft = 56356
        mmTop = 3969
        mmWidth = 5556
        BandType = 8
      end
      object ppLabel150: TppLabel
        UserName = 'Label31'
        Caption = 'Data autoriza'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 5821
        mmTop = 9260
        mmWidth = 25400
        BandType = 8
      end
      object ppLabel151: TppLabel
        UserName = 'Label38'
        Caption = 'Quem autorizou:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 7144
        mmTop = 14023
        mmWidth = 24077
        BandType = 8
      end
      object ppDBText174: TppDBText
        UserName = 'DBText45'
        DataField = 'DATA_AUTORIZADO'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 33602
        mmTop = 9260
        mmWidth = 34396
        BandType = 8
      end
      object ppDBText175: TppDBText
        UserName = 'DBText46'
        DataField = 'QUEM_AUTORIZOU'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 33602
        mmTop = 14023
        mmWidth = 34396
        BandType = 8
      end
      object ppLabel152: TppLabel
        UserName = 'Label39'
        Caption = 'Data entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 77523
        mmTop = 4233
        mmWidth = 19844
        BandType = 8
      end
      object ppDBText176: TppDBText
        UserName = 'DBText47'
        DataField = 'DATA_ENTREGA'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 99748
        mmTop = 4233
        mmWidth = 35983
        BandType = 8
      end
      object ppLabel153: TppLabel
        UserName = 'Label40'
        Caption = 'Quem retirou:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 76994
        mmTop = 9260
        mmWidth = 20373
        BandType = 8
      end
      object ppDBText177: TppDBText
        UserName = 'DBText48'
        DataField = 'QUEM_RECEBEU'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 99748
        mmTop = 9260
        mmWidth = 35983
        BandType = 8
      end
      object ppLabel154: TppLabel
        UserName = 'Label401'
        Caption = 'Quem entregou:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 73819
        mmTop = 14023
        mmWidth = 23548
        BandType = 8
      end
      object ppDBText178: TppDBText
        UserName = 'DBText49'
        DataField = 'QUEM_ENTREGOU'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 99748
        mmTop = 14023
        mmWidth = 35983
        BandType = 8
      end
      object ppDBText179: TppDBText
        UserName = 'DBText50'
        DataField = 'VALOR_PRODUTOS'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 3440
        mmWidth = 24342
        BandType = 8
      end
      object ppDBText180: TppDBText
        UserName = 'DBText501'
        DataField = 'VALOR_SERVICOS'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 8996
        mmWidth = 24342
        BandType = 8
      end
      object ppDBText181: TppDBText
        UserName = 'DBText502'
        DataField = 'VALOR_TOTAL'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 14552
        mmWidth = 24342
        BandType = 8
      end
      object ppDBText182: TppDBText
        UserName = 'DBText36'
        DataField = 'CLI_NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 44186
        mmTop = 53181
        mmWidth = 111919
        BandType = 8
      end
      object ppLine22: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 44186
        mmTop = 53181
        mmWidth = 111919
        BandType = 8
      end
      object ppLine23: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 70115
        mmTop = 2117
        mmWidth = 529
        BandType = 8
      end
      object ppLine24: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17463
        mmLeft = 137584
        mmTop = 2117
        mmWidth = 1058
        BandType = 8
      end
      object ppDBText192: TppDBText
        UserName = 'DBText63'
        DataField = 'MENSAGEM_OS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 7673
        mmLeft = 0
        mmTop = 65352
        mmWidth = 192882
        BandType = 8
      end
    end
    object raCodeModule3: TraCodeModule
      ProgramStream = {
        01060D54726156617250726F6772616D094368696C645479706502110B50726F
        6772616D4E616D6506095661726961626C65730B50726F6772616D5479706507
        0B747450726F63656475726506536F75726365065970726F6365647572652056
        61726961626C65733B0D0A7661720D0A202020646573636F6E746F3A20657874
        656E6465643B0D0A202020746F74616C3A20657874656E6465643B0D0A0D0A62
        6567696E0D0A0D0A656E643B0D0A084361726574506F73010200020000000106
        0F5472614576656E7448616E646C65720B50726F6772616D4E616D6506165265
        706F72744F6E53746172744669727374506173730B50726F6772616D54797065
        070B747450726F63656475726506536F75726365065170726F63656475726520
        5265706F72744F6E53746172744669727374506173733B0D0A626567696E0D0A
        2020746F74616C203A3D20303B0D0A2020646573636F6E746F203A3D20303B0D
        0A656E643B0D0A0D436F6D706F6E656E744E616D6506065265706F7274094576
        656E744E616D6506104F6E5374617274466972737450617373074576656E7449
        440214084361726574506F730102000200000001060F5472614576656E744861
        6E646C65720B50726F6772616D4E616D6506185265706F72744F6E5072696E74
        4469616C6F67436C6F73650B50726F6772616D54797065070B747450726F6365
        6475726506536F75726365065370726F636564757265205265706F72744F6E50
        72696E744469616C6F67436C6F73653B0D0A626567696E0D0A2020746F74616C
        203A3D20303B0D0A2020646573636F6E746F203A3D20303B0D0A656E643B0D0A
        0D436F6D706F6E656E744E616D6506065265706F7274094576656E744E616D65
        06124F6E5072696E744469616C6F67436C6F7365074576656E74494402080843
        61726574506F730102000200000001060F5472614576656E7448616E646C6572
        0B50726F6772616D4E616D650610444254657874334F6E476574546578740B50
        726F6772616D54797065070B747450726F63656475726506536F757263650698
        70726F63656475726520444254657874334F6E47657454657874287661722054
        6578743A20537472696E67293B0D0A626567696E0D0A0D0A202054657874203A
        3D205472696D28444250697065456D70726573615B27454D505F4C4F47524144
        4F55524F275D29202B20272C2027202B2020444250697065456D70726573615B
        27454D505F4E554D45524F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E65
        6E744E616D65060744425465787433094576656E744E616D6506094F6E476574
        54657874074576656E7449440235084361726574506F73010200020000000106
        0F5472614576656E7448616E646C65720B50726F6772616D4E616D6506114442
        5465787431354F6E476574546578740B50726F6772616D54797065070B747450
        726F63656475726506536F7572636506C170726F636564757265204442546578
        7431354F6E476574546578742876617220546578743A20537472696E67293B0D
        0A626567696E0D0A0D0A202054657874203A3D205472696D2844425069706543
        6F72706F5B27434C495F4C4F475241444F55524F275D29202B20272C2027202B
        20444250697065436F72706F5B27434C495F4E554D45524F275D202B20272027
        202B0D0A2020202020444250697065436F72706F5B27434C495F434F4D504C45
        4D454E544F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65
        06084442546578743135094576656E744E616D6506094F6E4765745465787407
        4576656E7449440235084361726574506F730102000200000001060F54726145
        76656E7448616E646C65720B50726F6772616D4E616D65061044425465787435
        4F6E476574546578740B50726F6772616D54797065070B747450726F63656475
        726506536F75726365069370726F63656475726520444254657874354F6E4765
        74546578742876617220546578743A20537472696E67293B0D0A626567696E0D
        0A0D0A202054657874203A3D205472696D28444250697065456D70726573615B
        27454D505F434944414445275D29202B20272C2027202B20444250697065456D
        70726573615B27454D505F45535441444F275D3B0D0A0D0A656E643B0D0A0D43
        6F6D706F6E656E744E616D65060744425465787435094576656E744E616D6506
        094F6E47657454657874074576656E7449440235084361726574506F73010200
        0200000001060F5472614576656E7448616E646C65720B50726F6772616D4E61
        6D65061144425465787432344F6E476574546578740B50726F6772616D547970
        65070B747450726F63656475726506536F7572636506B470726F636564757265
        2044425465787432344F6E476574546578742876617220546578743A20537472
        696E67293B0D0A626567696E0D0A0D0A202054657874203A3D205472696D2844
        4250697065436F72706F5B27434C495F434944414445275D29202B20272C2027
        202B20444250697065436F72706F5B27434C495F45535441444F275D202B0D0A
        20202020272027202B20444250697065436F72706F5B27434C495F434550275D
        3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506084442546578
        743234094576656E744E616D6506094F6E47657454657874074576656E744944
        0235084361726574506F730102000200000001060F5472614576656E7448616E
        646C65720B50726F6772616D4E616D650610444254657874374F6E4765745465
        78740B50726F6772616D54797065070B747450726F63656475726506536F7572
        6365067070726F63656475726520444254657874374F6E476574546578742876
        617220546578743A20537472696E67293B0D0A626567696E0D0A0D0A20205465
        7874203A3D2027434E504A2027202B20444250697065456D70726573615B2745
        4D505F434E504A275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E61
        6D65060744425465787437094576656E744E616D6506094F6E47657454657874
        074576656E7449440235084361726574506F730102000200000001060F547261
        4576656E7448616E646C65720B50726F6772616D4E616D650610444254657874
        384F6E476574546578740B50726F6772616D54797065070B747450726F636564
        75726506536F75726365066E70726F63656475726520444254657874384F6E47
        6574546578742876617220546578743A20537472696E67293B0D0A626567696E
        0D0A0D0A202054657874203A3D2027492E452E2027202B20444250697065456D
        70726573615B27454D505F4945275D3B0D0A0D0A656E643B0D0A0D436F6D706F
        6E656E744E616D65060744425465787438094576656E744E616D6506094F6E47
        657454657874074576656E7449440235084361726574506F7301020002000000
        00}
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object cdsAtend: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'pmAtend'
    RemoteServer = formPrincipal.SocketConnection
    Left = 464
    Top = 16
    object cdsAtendCODMOVIMENTO: TIntegerField
      DisplayLabel = 'C'#243'd.Movimento'
      FieldName = 'CODMOVIMENTO'
    end
    object cdsAtendDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      DisplayFormat = 'DD/MM/YY HH:NN'
    end
    object cdsAtendUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      FixedChar = True
      Size = 30
    end
    object cdsAtendCOMENTARIOS: TStringField
      DisplayLabel = 'Coment'#225'rios'
      FieldName = 'COMENTARIOS'
      Size = 254
    end
  end
  object dsrAtend: TDataSource
    DataSet = cdsAtend
    Left = 464
    Top = 72
  end
end
