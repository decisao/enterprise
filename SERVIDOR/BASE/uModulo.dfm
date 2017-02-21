object ServerModule: TServerModule
  OldCreateOrder = False
  Height = 1237
  Width = 845
  object qcUsuarios: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  CODIGO, '#13#10'  NOMEUSER, '#13#10'  SENHAWEB, '#13#10'  CODEMPRESA, '#13 +
      #10'  FINANCEIRO, '#13#10'  ESTORNO, '#13#10'  TROCAVENDEDOR, '#13#10'  INTERNET, '#13#10' ' +
      ' MUDAEMPRESA, '#13#10'  RECEBIMENTO, '#13#10'  CUSTO, '#13#10'  SEQUENCIAS, '#13#10'  RE' +
      'CALCULO, '#13#10'  COMPRAS, '#13#10'  TRANSFERENCIA, '#13#10'  RELATORIOS, '#13#10'  VEN' +
      'DADIRETA, '#13#10'  TECNICOLOGIN, '#13#10'  FECHAMENTO, '#13#10'  DESCONTO, '#13#10'  CA' +
      'IXA, '#13#10'  OCULTOS, '#13#10'  ANALISES, '#13#10'  LOGS,'#13#10'  ESTORNO_PECA,'#13#10'  EM' +
      'AIL,'#13#10'  PRECO_CLIENTE,'#13#10'  PRECO_45,'#13#10'  LICENCIAMENTO'#13#10'FROM '#13#10'  C' +
      'LIENTES '#13#10'WHERE '#13#10'  TIPO = '#39'A'#39' AND '#13#10'  OCULTO = '#39'N'#39' AND '#13#10'  INTE' +
      'RNET = '#39'S'#39
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 32
    Top = 16
    object qcUsuariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qcUsuariosNOMEUSER: TStringField
      FieldName = 'NOMEUSER'
      FixedChar = True
      Size = 30
    end
    object qcUsuariosSENHAWEB: TStringField
      FieldName = 'SENHAWEB'
      FixedChar = True
      Size = 10
    end
    object qcUsuariosCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
    object qcUsuariosFINANCEIRO: TStringField
      FieldName = 'FINANCEIRO'
      FixedChar = True
      Size = 1
    end
    object qcUsuariosESTORNO: TStringField
      FieldName = 'ESTORNO'
      FixedChar = True
      Size = 1
    end
    object qcUsuariosTROCAVENDEDOR: TStringField
      FieldName = 'TROCAVENDEDOR'
      FixedChar = True
      Size = 1
    end
    object qcUsuariosINTERNET: TStringField
      FieldName = 'INTERNET'
      FixedChar = True
      Size = 1
    end
    object qcUsuariosMUDAEMPRESA: TStringField
      FieldName = 'MUDAEMPRESA'
      FixedChar = True
      Size = 1
    end
    object qcUsuariosRECEBIMENTO: TStringField
      FieldName = 'RECEBIMENTO'
      FixedChar = True
      Size = 1
    end
    object qcUsuariosCUSTO: TStringField
      FieldName = 'CUSTO'
      FixedChar = True
      Size = 1
    end
    object qcUsuariosSEQUENCIAS: TStringField
      FieldName = 'SEQUENCIAS'
      FixedChar = True
      Size = 1
    end
    object qcUsuariosRECALCULO: TStringField
      FieldName = 'RECALCULO'
      FixedChar = True
      Size = 1
    end
    object qcUsuariosCOMPRAS: TStringField
      FieldName = 'COMPRAS'
      FixedChar = True
      Size = 1
    end
    object qcUsuariosTRANSFERENCIA: TStringField
      FieldName = 'TRANSFERENCIA'
      FixedChar = True
      Size = 1
    end
    object qcUsuariosRELATORIOS: TStringField
      FieldName = 'RELATORIOS'
      FixedChar = True
      Size = 1
    end
    object qcUsuariosVENDADIRETA: TStringField
      FieldName = 'VENDADIRETA'
      FixedChar = True
      Size = 1
    end
    object qcUsuariosTECNICOLOGIN: TStringField
      FieldName = 'TECNICOLOGIN'
      FixedChar = True
      Size = 1
    end
    object qcUsuariosFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      FixedChar = True
      Size = 1
    end
    object qcUsuariosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qcUsuariosCAIXA: TStringField
      FieldName = 'CAIXA'
      FixedChar = True
      Size = 1
    end
    object qcUsuariosOCULTOS: TStringField
      FieldName = 'OCULTOS'
      FixedChar = True
      Size = 1
    end
    object qcUsuariosANALISES: TStringField
      FieldName = 'ANALISES'
      FixedChar = True
      Size = 1
    end
    object qcUsuariosLOGS: TStringField
      FieldName = 'LOGS'
      FixedChar = True
      Size = 1
    end
    object qcUsuariosESTORNO_PECA: TStringField
      FieldName = 'ESTORNO_PECA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qcUsuariosEMAIL: TStringField
      FieldName = 'EMAIL'
      FixedChar = True
      Size = 50
    end
    object qcUsuariosPRECO_CLIENTE: TStringField
      FieldName = 'PRECO_CLIENTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qcUsuariosPRECO_45: TStringField
      FieldName = 'PRECO_45'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qcUsuariosLICENCIAMENTO: TSmallintField
      FieldName = 'LICENCIAMENTO'
      Required = True
    end
  end
  object pcUsuarios: TDataSetProvider
    DataSet = qcUsuarios
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = pcUsuariosAfterUpdateRecord
    Left = 32
    Top = 64
  end
  object qcPerfil: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT'#13#10'  SI.*,'#13#10'  CL.NOME        AS EMP_NOME,'#13#10'  CL.RAZAOSOCIAL' +
      ' AS EMP_RAZAOSOCIAL,'#13#10'  CL.CGC         AS EMP_CNPJ,'#13#10'  CL.IE    ' +
      '      AS EMP_IE,'#13#10'  CL.LOGRADOURO  AS EMP_LOGRADOURO,'#13#10'  CL.NUME' +
      'RO      AS EMP_NUMERO,'#13#10'  CL.COMPLEMENTO AS EMP_COMPLEMENTO,'#13#10'  ' +
      'CL.BAIRRO      AS EMP_BAIRRO,'#13#10'  CL.CIDADE      AS EMP_CIDADE,'#13#10 +
      '  CL.ESTADO      AS EMP_ESTADO,'#13#10'  CL.CEP         AS EMP_CEP,'#13#10' ' +
      ' CL.MUNIBGE AS EMP_MUNIBGE,'#13#10'  CL.FONE        AS EMP_FONE,'#13#10'  CL' +
      '.FAX         AS EMP_FAX,'#13#10'  CL.EMAIL       AS EMP_EMAIL,'#13#10'  CF.I' +
      'MAGEM        AS LOGOTIPO,'#13#10'  CO.NOME        AS CONSUMIDOR,'#13#10'  H1' +
      '.DESCRICAO   AS HISTORICOCOMPRA,'#13#10'  H2.DESCRICAO   AS HISTORICOV' +
      'ENDA'#13#10'FROM'#13#10'  SISCONFIG SI'#13#10'  LEFT JOIN CLIENTES CL ON'#13#10'    (CL.' +
      'CODIGO = SI.CODCLIENTE)'#13#10'  LEFT JOIN CLIENTES CO ON'#13#10'    (CO.COD' +
      'IGO = SI.CODCLIENTE_PADRAO)'#13#10'  LEFT JOIN HISTORICOPAG H1 ON'#13#10'   ' +
      ' (H1.CODIGO = SI.CODHISTORICO_COMPRA)'#13#10'  LEFT JOIN HISTORICOPAG ' +
      'H2 ON'#13#10'    (H2.CODIGO = SI.CODHISTORICO_VENDA)'#13#10'  LEFT JOIN CLI_' +
      'IMAGENS CF ON'#13#10'    (CF.CODCLIENTE = SI.CODCLIENTE)'#13#10'WHERE'#13#10'  SI.' +
      'CODIGO = :CODEMPRESA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 104
    Top = 16
    object qcPerfilCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qcPerfilCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object qcPerfilCODCONTA_COMPRADEB: TIntegerField
      FieldName = 'CODCONTA_COMPRADEB'
    end
    object qcPerfilCODCONTA_VENDACRE: TIntegerField
      FieldName = 'CODCONTA_VENDACRE'
    end
    object qcPerfilCODCLIENTE_PADRAO: TIntegerField
      FieldName = 'CODCLIENTE_PADRAO'
    end
    object qcPerfilVALOR_LIMITE: TFloatField
      FieldName = 'VALOR_LIMITE'
    end
    object qcPerfilALIQUOTA_ISS: TFloatField
      FieldName = 'ALIQUOTA_ISS'
    end
    object qcPerfilALIQUOTA_ICMSSIMPLES: TFloatField
      FieldName = 'ALIQUOTA_ICMSSIMPLES'
    end
    object qcPerfilICMSSIMPLES: TStringField
      FieldName = 'ICMSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object qcPerfilCODDOC_AVISTA: TIntegerField
      FieldName = 'CODDOC_AVISTA'
    end
    object qcPerfilCODDOC_PRAZO: TIntegerField
      FieldName = 'CODDOC_PRAZO'
    end
    object qcPerfilMDI: TStringField
      FieldName = 'MDI'
      FixedChar = True
      Size = 1
    end
    object qcPerfilAUTOLAUNCH: TStringField
      FieldName = 'AUTOLAUNCH'
      FixedChar = True
      Size = 1
    end
    object qcPerfilAUTOLAUNCH_TIME: TIntegerField
      FieldName = 'AUTOLAUNCH_TIME'
    end
    object qcPerfilPADRAO: TStringField
      FieldName = 'PADRAO'
      FixedChar = True
      Size = 1
    end
    object qcPerfilPRINT_OS: TStringField
      FieldName = 'PRINT_OS'
      FixedChar = True
      Size = 60
    end
    object qcPerfilPRINT_NOTA: TStringField
      FieldName = 'PRINT_NOTA'
      FixedChar = True
      Size = 60
    end
    object qcPerfilMOEDASINGULAR: TStringField
      FieldName = 'MOEDASINGULAR'
      FixedChar = True
      Size = 40
    end
    object qcPerfilMOEDAPLURAL: TStringField
      FieldName = 'MOEDAPLURAL'
      FixedChar = True
      Size = 40
    end
    object qcPerfilCENTAVOSINGULAR: TStringField
      FieldName = 'CENTAVOSINGULAR'
      FixedChar = True
      Size = 40
    end
    object qcPerfilCENTAVOPLURAL: TStringField
      FieldName = 'CENTAVOPLURAL'
      FixedChar = True
      Size = 40
    end
    object qcPerfilNOTA_PADRAO: TIntegerField
      FieldName = 'NOTA_PADRAO'
    end
    object qcPerfilOSABERTA_PADRAO: TIntegerField
      FieldName = 'OSABERTA_PADRAO'
    end
    object qcPerfilOSFECHADA_PADRAO: TIntegerField
      FieldName = 'OSFECHADA_PADRAO'
    end
    object qcPerfilMEDIDA_SER: TStringField
      FieldName = 'MEDIDA_SER'
      FixedChar = True
      Size = 2
    end
    object qcPerfilGRUPO_SER: TIntegerField
      FieldName = 'GRUPO_SER'
    end
    object qcPerfilPRINT_BOLETO: TStringField
      FieldName = 'PRINT_BOLETO'
      FixedChar = True
      Size = 60
    end
    object qcPerfilLOGTIMEOFF: TIntegerField
      FieldName = 'LOGTIMEOFF'
    end
    object qcPerfilPRINT_OS2: TStringField
      FieldName = 'PRINT_OS2'
      FixedChar = True
      Size = 60
    end
    object qcPerfilPRINT_RECIBO: TStringField
      FieldName = 'PRINT_RECIBO'
      FixedChar = True
      Size = 60
    end
    object qcPerfilJUROS_MES: TFloatField
      FieldName = 'JUROS_MES'
    end
    object qcPerfilCOPIAS_OS: TIntegerField
      FieldName = 'COPIAS_OS'
    end
    object qcPerfilCOPIAS_OS2: TIntegerField
      FieldName = 'COPIAS_OS2'
    end
    object qcPerfilCOPIAS_RECIBO: TIntegerField
      FieldName = 'COPIAS_RECIBO'
    end
    object qcPerfilRECIBO_PADRAO: TIntegerField
      FieldName = 'RECIBO_PADRAO'
    end
    object qcPerfilFISCAL_MAQ: TStringField
      FieldName = 'FISCAL_MAQ'
      FixedChar = True
      Size = 30
    end
    object qcPerfilFISCAL_CONF: TStringField
      FieldName = 'FISCAL_CONF'
      FixedChar = True
      Size = 60
    end
    object qcPerfilBLOQUEIO_DIAS: TIntegerField
      FieldName = 'BLOQUEIO_DIAS'
    end
    object qcPerfilOSABERTA_PADRAO_2A: TIntegerField
      FieldName = 'OSABERTA_PADRAO_2A'
    end
    object qcPerfilCOPIAS_OS_2A: TIntegerField
      FieldName = 'COPIAS_OS_2A'
    end
    object qcPerfilPRINT_OS_2A: TStringField
      FieldName = 'PRINT_OS_2A'
      FixedChar = True
      Size = 60
    end
    object qcPerfilNATUOPER_PADRAO: TStringField
      FieldName = 'NATUOPER_PADRAO'
      FixedChar = True
      Size = 5
    end
    object qcPerfilSENHA_CLIENTES: TStringField
      FieldName = 'SENHA_CLIENTES'
      FixedChar = True
      Size = 1
    end
    object qcPerfilSENHA_PRODUTOS: TStringField
      FieldName = 'SENHA_PRODUTOS'
      FixedChar = True
      Size = 1
    end
    object qcPerfilSENHA_FECHAMENTO: TStringField
      FieldName = 'SENHA_FECHAMENTO'
      FixedChar = True
      Size = 1
    end
    object qcPerfilSENHA_OS: TStringField
      FieldName = 'SENHA_OS'
      FixedChar = True
      Size = 1
    end
    object qcPerfilSENHA_BAIXA: TStringField
      FieldName = 'SENHA_BAIXA'
      FixedChar = True
      Size = 1
    end
    object qcPerfilTECNICOLOGIN_VENDEDOR: TStringField
      FieldName = 'TECNICOLOGIN_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object qcPerfilID: TIntegerField
      FieldName = 'ID'
    end
    object qcPerfilNATUOPER_COMPRA: TStringField
      FieldName = 'NATUOPER_COMPRA'
      FixedChar = True
      Size = 5
    end
    object qcPerfilMENSAGEM_OS: TStringField
      FieldName = 'MENSAGEM_OS'
      Size = 254
    end
    object qcPerfilMENSAGEM_VENDA: TStringField
      FieldName = 'MENSAGEM_VENDA'
      Size = 254
    end
    object qcPerfilOSCOND1: TStringField
      FieldName = 'OSCOND1'
      Size = 254
    end
    object qcPerfilOSCOND2: TStringField
      FieldName = 'OSCOND2'
      Size = 254
    end
    object qcPerfilCODHISTORICO_COMPRA: TIntegerField
      FieldName = 'CODHISTORICO_COMPRA'
    end
    object qcPerfilCODHISTORICO_VENDA: TIntegerField
      FieldName = 'CODHISTORICO_VENDA'
    end
    object qcPerfilVERIFICA_LIMITE: TStringField
      FieldName = 'VERIFICA_LIMITE'
      FixedChar = True
      Size = 1
    end
    object qcPerfilPRECO_CLIENTE: TStringField
      FieldName = 'PRECO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qcPerfilEMP_NOME: TStringField
      FieldName = 'EMP_NOME'
      FixedChar = True
      Size = 40
    end
    object qcPerfilEMP_RAZAOSOCIAL: TStringField
      FieldName = 'EMP_RAZAOSOCIAL'
      FixedChar = True
      Size = 50
    end
    object qcPerfilEMP_CNPJ: TStringField
      FieldName = 'EMP_CNPJ'
      FixedChar = True
    end
    object qcPerfilEMP_IE: TStringField
      FieldName = 'EMP_IE'
      FixedChar = True
    end
    object qcPerfilEMP_LOGRADOURO: TStringField
      FieldName = 'EMP_LOGRADOURO'
      FixedChar = True
      Size = 60
    end
    object qcPerfilEMP_NUMERO: TIntegerField
      FieldName = 'EMP_NUMERO'
    end
    object qcPerfilEMP_COMPLEMENTO: TStringField
      FieldName = 'EMP_COMPLEMENTO'
      FixedChar = True
      Size = 40
    end
    object qcPerfilEMP_BAIRRO: TStringField
      FieldName = 'EMP_BAIRRO'
      FixedChar = True
      Size = 60
    end
    object qcPerfilEMP_CIDADE: TStringField
      FieldName = 'EMP_CIDADE'
      FixedChar = True
      Size = 60
    end
    object qcPerfilEMP_ESTADO: TStringField
      FieldName = 'EMP_ESTADO'
      FixedChar = True
      Size = 2
    end
    object qcPerfilEMP_CEP: TStringField
      FieldName = 'EMP_CEP'
      FixedChar = True
      Size = 10
    end
    object qcPerfilEMP_MUNIBGE: TStringField
      FieldName = 'EMP_MUNIBGE'
      FixedChar = True
      Size = 10
    end
    object qcPerfilEMP_FONE: TStringField
      FieldName = 'EMP_FONE'
      FixedChar = True
    end
    object qcPerfilEMP_FAX: TStringField
      FieldName = 'EMP_FAX'
      FixedChar = True
    end
    object qcPerfilEMP_EMAIL: TStringField
      FieldName = 'EMP_EMAIL'
      FixedChar = True
      Size = 50
    end
    object qcPerfilLOGOTIPO: TBlobField
      FieldName = 'LOGOTIPO'
    end
    object qcPerfilCONSUMIDOR: TStringField
      FieldName = 'CONSUMIDOR'
      FixedChar = True
      Size = 40
    end
    object qcPerfilHISTORICOCOMPRA: TStringField
      FieldName = 'HISTORICOCOMPRA'
      FixedChar = True
      Size = 60
    end
    object qcPerfilHISTORICOVENDA: TStringField
      FieldName = 'HISTORICOVENDA'
      FixedChar = True
      Size = 60
    end
  end
  object pcPerfil: TDataSetProvider
    DataSet = qcPerfil
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 64
  end
  object qcEmpresas: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  SISCONFIG.CODIGO,'#13#10'  CLIENTES.NOME'#13#10'FROM'#13#10'  SISCONFIG'#13 +
      #10'  JOIN CLIENTES ON'#13#10'    (CLIENTES.CODIGO = SISCONFIG.CODCLIENTE' +
      ')'#13#10'ORDER BY'#13#10'  SISCONFIG.CODIGO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 176
    Top = 16
    object qcEmpresasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qcEmpresasNOME: TStringField
      FieldName = 'NOME'
      FixedChar = True
      Size = 40
    end
  end
  object pcEmpresas: TDataSetProvider
    DataSet = qcEmpresas
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 176
    Top = 64
  end
  object qcImpressoras: TSQLDataSet
    CommandText = 
      'SELECT '#13#10'  IMPRESSORAS.* '#13#10'FROM '#13#10'  IMPRESSORAS'#13#10'WHERE'#13#10'  MAQUIN' +
      'A = :MAQUINA AND'#13#10'  CODEMPRESA = :CODEMPRESA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'MAQUINA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 248
    Top = 16
    object qcImpressorasMAQUINA: TStringField
      FieldName = 'MAQUINA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 40
    end
    object qcImpressorasCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qcImpressorasOS1: TStringField
      FieldName = 'OS1'
      FixedChar = True
      Size = 60
    end
    object qcImpressorasOS2: TStringField
      FieldName = 'OS2'
      FixedChar = True
      Size = 60
    end
    object qcImpressorasFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      FixedChar = True
      Size = 60
    end
    object qcImpressorasNF: TStringField
      FieldName = 'NF'
      FixedChar = True
      Size = 60
    end
    object qcImpressorasRECIBO: TStringField
      FieldName = 'RECIBO'
      FixedChar = True
      Size = 60
    end
    object qcImpressorasBOLETO: TStringField
      FieldName = 'BOLETO'
      FixedChar = True
      Size = 60
    end
    object qcImpressorasECF: TStringField
      FieldName = 'ECF'
      FixedChar = True
      Size = 30
    end
    object qcImpressorasECF_NCC: TStringField
      FieldName = 'ECF_NCC'
      FixedChar = True
      Size = 1
    end
  end
  object pcImpressoras: TDataSetProvider
    DataSet = qcImpressoras
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 248
    Top = 64
  end
  object qcEndereco: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  LOGRADOUROS.LOGRADOURO, '#13#10'  BAIRROS.BAIRRO, '#13#10'  CIDAD' +
      'ES.CIDADE, '#13#10'  LOGRADOUROS.ESTADO, '#13#10'  LOGRADOUROS.CEP '#13#10'FROM '#13#10 +
      '  LOGRADOUROS '#13#10'  JOIN BAIRROS ON '#13#10'    (BAIRROS.CODIGO = LOGRAD' +
      'OUROS.BAIRRO AND '#13#10'     BAIRROS.CIDADE = LOGRADOUROS.CIDADE AND ' +
      #13#10'     BAIRROS.ESTADO = LOGRADOUROS.ESTADO) '#13#10'  JOIN CIDADES ON ' +
      #13#10'    (CIDADES.CODIGO = LOGRADOUROS.CIDADE AND '#13#10'     CIDADES.ES' +
      'TADO = LOGRADOUROS.ESTADO) '#13#10'WHERE '#13#10'  LOGRADOUROS.CODIGO = :LOC' +
      'ALIZACAO AND '#13#10'  LOGRADOUROS.BAIRRO = :BAIRRO AND '#13#10'  LOGRADOURO' +
      'S.CIDADE = :CIDADE AND '#13#10'  LOGRADOUROS.ESTADO = :ESTADO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LOCALIZACAO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BAIRRO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ESTADO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 320
    Top = 16
    object qcEnderecoLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 60
    end
    object qcEnderecoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 60
    end
    object qcEnderecoCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 60
    end
    object qcEnderecoESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 2
    end
    object qcEnderecoCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 9
    end
  end
  object pcEndereco: TDataSetProvider
    DataSet = qcEndereco
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 320
    Top = 64
  end
  object qcEstoque: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  CL.NOME, '#13#10'  SUM(ID.QUANTIDADE) AS QUANTIDADE '#13#10'FROM ' +
      #13#10'  SISCONFIG SI '#13#10'  LEFT JOIN CLIENTES CL ON '#13#10'    (CL.CODIGO =' +
      ' SI.CODCLIENTE) '#13#10'  LEFT JOIN INDIVIDUAIS ID ON '#13#10'    (ID.CODEMP' +
      'RESA = SI.CODIGO) '#13#10'WHERE '#13#10'  ID.VENDIDO = '#39'N'#39' AND '#13#10'  ID.PS = '#39 +
      'P'#39' AND '#13#10'  ID.CODPRODUTO = :CODPRODUTO '#13#10'GROUP BY '#13#10'  CL.NOME'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODPRODUTO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 392
    Top = 16
    object qcEstoqueNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 40
    end
    object qcEstoqueQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 20
      Size = 3
    end
  end
  object pcEstoque: TDataSetProvider
    DataSet = qcEstoque
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 392
    Top = 64
  end
  object qcDocumentos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  CODIGO,'#13#10'  DOCUMENTO,'#13#10'  TIPO_PAG,'#13#10'  TIPO_DOC,'#13#10'  CO' +
      'DBANCO'#13#10'FROM'#13#10'  DOCUMENTOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 464
    Top = 16
    object qcDocumentosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qcDocumentosDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      FixedChar = True
      Size = 30
    end
    object qcDocumentosTIPO_PAG: TStringField
      FieldName = 'TIPO_PAG'
      FixedChar = True
      Size = 1
    end
    object qcDocumentosTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      FixedChar = True
      Size = 1
    end
    object qcDocumentosCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
  end
  object pcDocumentos: TDataSetProvider
    DataSet = qcDocumentos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 64
  end
  object qcCondicoes: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  CODIGO,'#13#10'  DESCRICAO'#13#10'FROM'#13#10'  CONDPAG'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 536
    Top = 16
    object qcCondicoesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qcCondicoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 40
    end
  end
  object pcCondicoes: TDataSetProvider
    DataSet = qcCondicoes
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 536
    Top = 64
  end
  object qcUnidades: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  * '#13#10'FROM '#13#10'  MEDIDAS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 608
    Top = 16
    object qcUnidadesSIGLA: TStringField
      FieldName = 'SIGLA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 2
    end
    object qcUnidadesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
    end
  end
  object pcUnidades: TDataSetProvider
    DataSet = qcUnidades
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 608
    Top = 64
  end
  object qcGrupos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  * '#13#10'FROM '#13#10'  GRUPOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 680
    Top = 16
    object qcGruposCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qcGruposGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 30
    end
  end
  object pcGrupos: TDataSetProvider
    DataSet = qcGrupos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 680
    Top = 64
  end
  object qcOperadoras: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT'#13#10'  CODIGO,'#13#10'  NOME'#13#10'FROM'#13#10'  OPERADORAS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 32
    Top = 120
    object qcOperadorasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qcOperadorasNOME: TStringField
      FieldName = 'NOME'
      FixedChar = True
      Size = 40
    end
  end
  object pcOperadoras: TDataSetProvider
    DataSet = qcOperadoras
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 168
  end
  object qcPlanos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT'#13#10'  *'#13#10'FROM'#13#10'  PLANOS'#13#10'WHERE'#13#10'  CODOPERADORA = :CODOPERADO' +
      'RA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODOPERADORA'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 104
    Top = 120
    object qcPlanosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qcPlanosCODOPERADORA: TIntegerField
      FieldName = 'CODOPERADORA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qcPlanosNOME: TStringField
      FieldName = 'NOME'
      FixedChar = True
      Size = 40
    end
    object qcPlanosTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object pcPlanos: TDataSetProvider
    DataSet = qcPlanos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 168
  end
  object qcTecnicos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  TE.CODIGO, '#13#10'  TE.NOMEUSER '#13#10'FROM '#13#10'  CLIENTES TE '#13#10'W' +
      'HERE '#13#10'  TE.TIPO = '#39'A'#39' AND '#13#10'  TE.OCULTO = '#39'N'#39' '#13#10'ORDER BY '#13#10'  TE' +
      '.NOMEUSER'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 176
    Top = 120
    object qcTecnicosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qcTecnicosNOMEUSER: TStringField
      FieldName = 'NOMEUSER'
      FixedChar = True
      Size = 30
    end
  end
  object pcTecnicos: TDataSetProvider
    DataSet = qcTecnicos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 176
    Top = 168
  end
  object qcLoadMov: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  MO.CODCLIENTE, '#13#10'  CL.NOME, '#13#10'  MO.CODHISTORICOPAG, '#13 +
      #10'  HI.DESCRICAO AS HISTORICOPAG, '#13#10'  MO.CODVENDEDOR, '#13#10'  VE.NOME' +
      'USER AS VENDEDOR, '#13#10'  MO.CODRESPONSAVEL, '#13#10'  MO.CONDICAO, '#13#10'  CP' +
      '.CODIGO AS CODCONDPAG, '#13#10'  MO.OBSERVACOES, '#13#10'  CL.CPF, '#13#10'  CL.CG' +
      'C, '#13#10'  CL.PESSOAFISICA, '#13#10'  MO.CONDICOES1, '#13#10'  MO.CONDICOES2, '#13#10 +
      '  MO.OPCIONAIS, '#13#10'  MO.SERVICOS,'#13#10'  CL.LOGRADOURO,'#13#10'  CL.NUMERO,' +
      #13#10'  CL.COMPLEMENTO,'#13#10'  CL.BAIRRO,'#13#10'  CL.CIDADE,'#13#10'  CL.ESTADO,'#13#10' ' +
      ' MO.TIPO'#13#10'FROM '#13#10'  MOVIMENTOS MO '#13#10'  JOIN CLIENTES CL ON '#13#10'    (' +
      'CL.CODIGO = MO.CODCLIENTE) '#13#10'  LEFT JOIN HISTORICOPAG HI ON '#13#10'  ' +
      '  (HI.CODIGO = MO.CODHISTORICOPAG) '#13#10'  LEFT JOIN CLIENTES VE ON ' +
      #13#10'    (VE.CODIGO = MO.CODVENDEDOR) '#13#10'  LEFT JOIN CONDPAG CP ON '#13 +
      #10'    (CP.CONDICAO = MO.CONDICAO) '#13#10'WHERE '#13#10'  MO.CODIGO = :CODMOV' +
      'IMENTO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 248
    Top = 120
    object qcLoadMovCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object qcLoadMovNOME: TStringField
      FieldName = 'NOME'
      FixedChar = True
      Size = 40
    end
    object qcLoadMovCODHISTORICOPAG: TIntegerField
      FieldName = 'CODHISTORICOPAG'
    end
    object qcLoadMovHISTORICOPAG: TStringField
      FieldName = 'HISTORICOPAG'
      FixedChar = True
      Size = 60
    end
    object qcLoadMovCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object qcLoadMovVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 30
    end
    object qcLoadMovCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object qcLoadMovCONDICAO: TStringField
      FieldName = 'CONDICAO'
      FixedChar = True
      Size = 40
    end
    object qcLoadMovCODCONDPAG: TIntegerField
      FieldName = 'CODCONDPAG'
    end
    object qcLoadMovOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 2048
    end
    object qcLoadMovCPF: TStringField
      FieldName = 'CPF'
      FixedChar = True
    end
    object qcLoadMovCGC: TStringField
      FieldName = 'CGC'
      FixedChar = True
    end
    object qcLoadMovPESSOAFISICA: TStringField
      FieldName = 'PESSOAFISICA'
      FixedChar = True
      Size = 1
    end
    object qcLoadMovCONDICOES1: TStringField
      FieldName = 'CONDICOES1'
      Size = 1024
    end
    object qcLoadMovCONDICOES2: TStringField
      FieldName = 'CONDICOES2'
      Size = 1024
    end
    object qcLoadMovOPCIONAIS: TStringField
      FieldName = 'OPCIONAIS'
      Size = 1024
    end
    object qcLoadMovSERVICOS: TStringField
      FieldName = 'SERVICOS'
      Size = 1024
    end
    object qcLoadMovLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      FixedChar = True
      Size = 60
    end
    object qcLoadMovNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object qcLoadMovCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      FixedChar = True
      Size = 40
    end
    object qcLoadMovBAIRRO: TStringField
      FieldName = 'BAIRRO'
      FixedChar = True
      Size = 60
    end
    object qcLoadMovCIDADE: TStringField
      FieldName = 'CIDADE'
      FixedChar = True
      Size = 60
    end
    object qcLoadMovESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object qcLoadMovTIPO: TSmallintField
      FieldName = 'TIPO'
      Required = True
    end
  end
  object pcLoadMov: TDataSetProvider
    DataSet = qcLoadMov
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 248
    Top = 168
  end
  object qcLoadItens: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  * '#13#10'FROM '#13#10'  REL_NOTAITENS(:CODMOVIMENTO)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 320
    Top = 120
  end
  object pcLoadItens: TDataSetProvider
    DataSet = qcLoadItens
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 320
    Top = 168
  end
  object qcItens: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  BARRA, '#13#10'  DESCRICAO2, '#13#10'  QUANTIDADE, '#13#10'  VALOR_PAGO' +
      ', '#13#10'  OPERADORA, '#13#10'  PLANO, '#13#10'  LINHA, '#13#10'  CONTRATO, '#13#10'  VOUCHER' +
      ', '#13#10'  TIPOATIVACAO,'#13#10'  DESCONTO_ADM '#13#10'FROM '#13#10'  REL_NOTAITENS(:CO' +
      'DMOVIMENTO)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 392
    Top = 120
    object qcItensBARRA: TStringField
      FieldName = 'BARRA'
      FixedChar = True
      Size = 13
    end
    object qcItensDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      Size = 80
    end
    object qcItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 20
      Size = 3
    end
    object qcItensVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 20
      Size = 3
    end
    object qcItensOPERADORA: TStringField
      FieldName = 'OPERADORA'
      Size = 40
    end
    object qcItensPLANO: TStringField
      FieldName = 'PLANO'
      Size = 40
    end
    object qcItensLINHA: TStringField
      FieldName = 'LINHA'
    end
    object qcItensCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Size = 10
    end
    object qcItensVOUCHER: TStringField
      FieldName = 'VOUCHER'
      Size = 10
    end
    object qcItensTIPOATIVACAO: TStringField
      FieldName = 'TIPOATIVACAO'
      FixedChar = True
      Size = 1
    end
    object qcItensDESCONTO_ADM: TFloatField
      FieldName = 'DESCONTO_ADM'
    end
  end
  object pcItens: TDataSetProvider
    DataSet = qcItens
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 392
    Top = 168
  end
  object qcExtrato: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  DATAHORA, '#13#10'  USUARIO, '#13#10'  DESCRICAO, '#13#10'  VALORCRE, '#13 +
      #10'  SALDO, '#13#10'  LETRA, '#13#10'  VALORDEB, '#13#10'  INFODOC, '#13#10'  DOCUMENTO, '#13 +
      #10'  CLIENTE, '#13#10'  '#39' '#39' as GRUPO '#13#10'FROM '#13#10'  EXTRATO(:CODCONTA, :DATA' +
      'INI, :DATAFIM, :CODEMPRESA)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODCONTA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftDate
        Name = 'DATAFIM'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftInteger
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 464
    Top = 120
    object qcExtratoDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
    end
    object qcExtratoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object qcExtratoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object qcExtratoVALORCRE: TFloatField
      FieldName = 'VALORCRE'
    end
    object qcExtratoSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object qcExtratoLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object qcExtratoVALORDEB: TFloatField
      FieldName = 'VALORDEB'
    end
    object qcExtratoINFODOC: TStringField
      FieldName = 'INFODOC'
      Size = 50
    end
    object qcExtratoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 40
    end
    object qcExtratoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 40
    end
    object qcExtratoGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
  end
  object pcExtrato: TDataSetProvider
    DataSet = qcExtrato
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 168
  end
  object qcExtratodoc: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  * '#13#10'FROM '#13#10'  EXTRATO_DOC(:DATAINI, :DATAFIM, :CODEMPR' +
      'ESA)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftDate
        Name = 'DATAFIM'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftInteger
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 536
    Top = 120
    object qcExtratodocDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
    end
    object qcExtratodocCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 40
    end
    object qcExtratodocDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object qcExtratodocVALORCRE: TFloatField
      FieldName = 'VALORCRE'
    end
    object qcExtratodocVALORDEB: TFloatField
      FieldName = 'VALORDEB'
    end
    object qcExtratodocLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object qcExtratodocINFODOC: TStringField
      FieldName = 'INFODOC'
      Size = 50
    end
    object qcExtratodocDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 40
    end
  end
  object pcExtratodoc: TDataSetProvider
    DataSet = qcExtratodoc
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 536
    Top = 168
  end
  object qcVerifica: TSQLDataSet
    CommandText = 'VERIFICA_PESSOA'
    CommandType = ctStoredProc
    DbxCommandType = 'Dbx.StoredProcedure'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODCLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 1
        Name = 'BLOQUEIO'
        ParamType = ptOutput
        Size = 2
      end
      item
        DataType = ftString
        Precision = 80
        Name = 'MENSAGEM'
        ParamType = ptOutput
        Size = 81
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 608
    Top = 120
  end
  object pcVerifica: TDataSetProvider
    DataSet = qcVerifica
    Left = 608
    Top = 168
  end
  object qcMovinfo: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  MO.STATUS, '#13#10'  MO.NOTA_NUMERO, '#13#10'  MO.NOTA_DATAEMISSA' +
      'O, '#13#10'  MO.NOTA_VALOR_TOTAL, '#13#10'  MO.NOME_VENDEDOR, '#13#10'  MO.NOTA_CO' +
      'DNATUOPER, '#13#10'  MO.TIPODOC '#13#10'FROM '#13#10'  MOVIMENTOS MO '#13#10'WHERE '#13#10'  M' +
      'O.CODIGO = :CODMOVIMENTO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 680
    Top = 120
    object qcMovinfoSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 30
    end
    object qcMovinfoNOTA_NUMERO: TIntegerField
      FieldName = 'NOTA_NUMERO'
    end
    object qcMovinfoNOTA_DATAEMISSAO: TSQLTimeStampField
      FieldName = 'NOTA_DATAEMISSAO'
    end
    object qcMovinfoNOTA_VALOR_TOTAL: TFMTBCDField
      FieldName = 'NOTA_VALOR_TOTAL'
      Precision = 20
      Size = 2
    end
    object qcMovinfoNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      FixedChar = True
      Size = 40
    end
    object qcMovinfoNOTA_CODNATUOPER: TStringField
      FieldName = 'NOTA_CODNATUOPER'
      FixedChar = True
      Size = 5
    end
    object qcMovinfoTIPODOC: TStringField
      FieldName = 'TIPODOC'
      FixedChar = True
      Size = 3
    end
  end
  object pcMovinfo: TDataSetProvider
    DataSet = qcMovinfo
    Left = 680
    Top = 168
  end
  object qcAtivacaoler: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  CODATIVACAO, '#13#10'  CODAPARELHO, '#13#10'  APARELHO, '#13#10'  SERIE' +
      ', '#13#10'  SERIE2, '#13#10'  NUMERO, '#13#10'  CODOPERADORA, '#13#10'  CODPLANO, '#13#10'  VA' +
      'LOR1, '#13#10'  VALOR2, '#13#10'  REBATE, '#13#10'  CONTRATO, '#13#10'  VOUCHER, '#13#10'  TIP' +
      'OATIVACAO,'#13#10'  DESCONTO_ADM'#13#10'FROM '#13#10'  ATIVACAO_LER (:CODMOVIMENTO' +
      ')'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 32
    Top = 224
    object qcAtivacaolerCODATIVACAO: TIntegerField
      FieldName = 'CODATIVACAO'
    end
    object qcAtivacaolerCODAPARELHO: TIntegerField
      FieldName = 'CODAPARELHO'
    end
    object qcAtivacaolerAPARELHO: TStringField
      FieldName = 'APARELHO'
      Size = 60
    end
    object qcAtivacaolerSERIE: TStringField
      FieldName = 'SERIE'
      Size = 30
    end
    object qcAtivacaolerSERIE2: TStringField
      FieldName = 'SERIE2'
      Size = 30
    end
    object qcAtivacaolerNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object qcAtivacaolerCODOPERADORA: TIntegerField
      FieldName = 'CODOPERADORA'
    end
    object qcAtivacaolerCODPLANO: TIntegerField
      FieldName = 'CODPLANO'
    end
    object qcAtivacaolerVALOR1: TFloatField
      FieldName = 'VALOR1'
    end
    object qcAtivacaolerVALOR2: TFloatField
      FieldName = 'VALOR2'
    end
    object qcAtivacaolerREBATE: TStringField
      FieldName = 'REBATE'
      FixedChar = True
      Size = 1
    end
    object qcAtivacaolerCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Size = 10
    end
    object qcAtivacaolerVOUCHER: TStringField
      FieldName = 'VOUCHER'
    end
    object qcAtivacaolerTIPOATIVACAO: TStringField
      FieldName = 'TIPOATIVACAO'
      FixedChar = True
      Size = 1
    end
    object qcAtivacaolerDESCONTO_ADM: TFloatField
      FieldName = 'DESCONTO_ADM'
    end
  end
  object pcAtivacaoler: TDataSetProvider
    DataSet = qcAtivacaoler
    Left = 32
    Top = 272
  end
  object qcCabNota: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT'#13#10'  IM.NUMIMPNOTA,'#13#10'  IM.DESCRICAO,'#13#10'  IM.LINHA18,'#13#10'  IM.D' +
      'UP_LINHAINI,'#13#10'  IM.DUP_COLUNAS,'#13#10'  IM.DUP_LINHAS,'#13#10'  IM.DUP_TAMA' +
      'NHOCOL,'#13#10'  IM.DUP_COLUNAINI,'#13#10'  IM.PRO_LINHAINI,'#13#10'  IM.PRO_LINHA' +
      'S,'#13#10'  IM.SER_LINHAINI,'#13#10'  IM.SER_LINHAS,'#13#10'  IM.ALTURA,'#13#10'  IM.EFE' +
      'ITOBASE'#13#10'FROM'#13#10'  IMPNOTA IM'#13#10'WHERE'#13#10'  IM.NUMIMPNOTA = :NUMIMPMOV'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUMIMPMOV'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 104
    Top = 224
    object qcCabNotaNUMIMPNOTA: TIntegerField
      FieldName = 'NUMIMPNOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qcCabNotaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 60
    end
    object qcCabNotaLINHA18: TStringField
      FieldName = 'LINHA18'
      FixedChar = True
      Size = 1
    end
    object qcCabNotaDUP_LINHAINI: TSmallintField
      FieldName = 'DUP_LINHAINI'
    end
    object qcCabNotaDUP_COLUNAS: TSmallintField
      FieldName = 'DUP_COLUNAS'
    end
    object qcCabNotaDUP_LINHAS: TSmallintField
      FieldName = 'DUP_LINHAS'
    end
    object qcCabNotaDUP_TAMANHOCOL: TSmallintField
      FieldName = 'DUP_TAMANHOCOL'
    end
    object qcCabNotaDUP_COLUNAINI: TSmallintField
      FieldName = 'DUP_COLUNAINI'
    end
    object qcCabNotaPRO_LINHAINI: TSmallintField
      FieldName = 'PRO_LINHAINI'
    end
    object qcCabNotaPRO_LINHAS: TSmallintField
      FieldName = 'PRO_LINHAS'
    end
    object qcCabNotaSER_LINHAINI: TSmallintField
      FieldName = 'SER_LINHAINI'
    end
    object qcCabNotaSER_LINHAS: TSmallintField
      FieldName = 'SER_LINHAS'
    end
    object qcCabNotaALTURA: TSmallintField
      FieldName = 'ALTURA'
    end
    object qcCabNotaEFEITOBASE: TStringField
      FieldName = 'EFEITOBASE'
      FixedChar = True
      Size = 10
    end
  end
  object pcCabNota: TDataSetProvider
    DataSet = qcCabNota
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 272
  end
  object qcNotaCorpo: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT * FROM REL_NOTACORPO(:CODMOVIMENTO)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 176
    Top = 224
  end
  object pcNotaCorpo: TDataSetProvider
    DataSet = qcNotaCorpo
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 176
    Top = 272
  end
  object qcImpNota: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT * FROM IMPNOTA_RESUMO(:NUMIMPNOTA) WHERE TIPO = :TIPO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUMIMPNOTA'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'TIPO'
        ParamType = ptInput
        Size = 1
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 248
    Top = 224
  end
  object pcImpNota: TDataSetProvider
    DataSet = qcImpNota
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 248
    Top = 272
  end
  object qcCabRecibo: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT'#13#10'  IM.NUMIMPNOTA,'#13#10'  IM.DESCRICAO,'#13#10'  IM.LINHA18,'#13#10'  IM.D' +
      'UP_LINHAINI,'#13#10'  IM.DUP_COLUNAS,'#13#10'  IM.DUP_LINHAS,'#13#10'  IM.DUP_TAMA' +
      'NHOCOL,'#13#10'  IM.DUP_COLUNAINI,'#13#10'  IM.PRO_LINHAINI,'#13#10'  IM.PRO_LINHA' +
      'S,'#13#10'  IM.SER_LINHAINI,'#13#10'  IM.SER_LINHAS,'#13#10'  IM.ALTURA,'#13#10'  IM.EFE' +
      'ITOBASE'#13#10'FROM'#13#10'  IMPNOTA IM'#13#10'WHERE'#13#10'  IM.NUMIMPNOTA = :NUMIMPMOV'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUMIMPMOV'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 320
    Top = 224
    object qcCabReciboNUMIMPNOTA: TIntegerField
      FieldName = 'NUMIMPNOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qcCabReciboDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 60
    end
    object qcCabReciboLINHA18: TStringField
      FieldName = 'LINHA18'
      FixedChar = True
      Size = 1
    end
    object qcCabReciboDUP_LINHAINI: TSmallintField
      FieldName = 'DUP_LINHAINI'
    end
    object qcCabReciboDUP_COLUNAS: TSmallintField
      FieldName = 'DUP_COLUNAS'
    end
    object qcCabReciboDUP_LINHAS: TSmallintField
      FieldName = 'DUP_LINHAS'
    end
    object qcCabReciboDUP_TAMANHOCOL: TSmallintField
      FieldName = 'DUP_TAMANHOCOL'
    end
    object qcCabReciboDUP_COLUNAINI: TSmallintField
      FieldName = 'DUP_COLUNAINI'
    end
    object qcCabReciboPRO_LINHAINI: TSmallintField
      FieldName = 'PRO_LINHAINI'
    end
    object qcCabReciboPRO_LINHAS: TSmallintField
      FieldName = 'PRO_LINHAS'
    end
    object qcCabReciboSER_LINHAINI: TSmallintField
      FieldName = 'SER_LINHAINI'
    end
    object qcCabReciboSER_LINHAS: TSmallintField
      FieldName = 'SER_LINHAS'
    end
    object qcCabReciboALTURA: TSmallintField
      FieldName = 'ALTURA'
    end
    object qcCabReciboEFEITOBASE: TStringField
      FieldName = 'EFEITOBASE'
      FixedChar = True
      Size = 10
    end
  end
  object pcCabRecibo: TDataSetProvider
    DataSet = qcCabRecibo
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 320
    Top = 272
  end
  object qcReciboCorpo: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT * FROM REL_NOTADUP (:CODMOVIMENTO) WHERE CODIGO = :CODIGO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 392
    Top = 224
    object IntegerField5: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object StringField5: TStringField
      FieldName = 'NOME'
      FixedChar = True
      Size = 40
    end
  end
  object pcReciboCorpo: TDataSetProvider
    DataSet = qcReciboCorpo
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 392
    Top = 272
  end
  object qcImpRecibo: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT * FROM IMPBOLETO_RESUMO(:NUMIMPBOLETO) WHERE TIPO = :TIPO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUMIMPBOLETO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'TIPO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 464
    Top = 224
  end
  object pcImpRecibo: TDataSetProvider
    DataSet = qcImpRecibo
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 272
  end
  object qyUserAccess: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  * '#13#10'FROM '#13#10'  USERACCESS '#13#10'WHERE '#13#10'  CODUSUARIO = :COD' +
      'USUARIO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODUSUARIO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 32
    Top = 344
    object qyUserAccessCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyUserAccessCODRESOURCE: TIntegerField
      FieldName = 'CODRESOURCE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyUserAccessDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 60
    end
    object qyUserAccessVISIVEL: TStringField
      FieldName = 'VISIVEL'
      FixedChar = True
      Size = 1
    end
    object qyUserAccessNOVO: TStringField
      FieldName = 'NOVO'
      FixedChar = True
      Size = 1
    end
    object qyUserAccessDETALHES: TStringField
      FieldName = 'DETALHES'
      FixedChar = True
      Size = 1
    end
    object qyUserAccessIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object qyUserAccessEXPORTAR: TStringField
      FieldName = 'EXPORTAR'
      FixedChar = True
      Size = 1
    end
    object qyUserAccessAJUDA: TStringField
      FieldName = 'AJUDA'
      FixedChar = True
      Size = 1
    end
    object qyUserAccessSALVAR: TStringField
      FieldName = 'SALVAR'
      FixedChar = True
      Size = 1
    end
    object qyUserAccessEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      FixedChar = True
      Size = 1
    end
  end
  object pvUserAccess: TDataSetProvider
    DataSet = qyUserAccess
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 392
  end
  object qyPessoas: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  CLIENTES.*,'#13#10'  (SELECT SUM(PA.VALOR) ' +
      'FROM PAGAMENTOS PA WHERE PA.CODCLIENTE = CLIENTES.CODIGO AND PA.' +
      'PAGO = 0 AND PA.ES = 2) AS ABERTO'#13#10'FROM '#13#10'  CLIENTES'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 104
    Top = 344
    object qyPessoasSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyPessoasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyPessoasPESSOAFISICA: TStringField
      FieldName = 'PESSOAFISICA'
      FixedChar = True
      Size = 1
    end
    object qyPessoasRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      FixedChar = True
      Size = 50
    end
    object qyPessoasNOME: TStringField
      FieldName = 'NOME'
      FixedChar = True
      Size = 40
    end
    object qyPessoasDATANASC: TSQLTimeStampField
      FieldName = 'DATANASC'
    end
    object qyPessoasNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      FixedChar = True
      Size = 40
    end
    object qyPessoasSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
    end
    object qyPessoasESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      FixedChar = True
    end
    object qyPessoasRG: TStringField
      FieldName = 'RG'
      FixedChar = True
    end
    object qyPessoasCPF: TStringField
      FieldName = 'CPF'
      FixedChar = True
    end
    object qyPessoasCGC: TStringField
      FieldName = 'CGC'
      FixedChar = True
    end
    object qyPessoasIE: TStringField
      FieldName = 'IE'
      FixedChar = True
    end
    object qyPessoasPAI: TStringField
      FieldName = 'PAI'
      FixedChar = True
      Size = 40
    end
    object qyPessoasMAE: TStringField
      FieldName = 'MAE'
      FixedChar = True
      Size = 40
    end
    object qyPessoasLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      FixedChar = True
      Size = 60
    end
    object qyPessoasNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object qyPessoasCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      FixedChar = True
      Size = 40
    end
    object qyPessoasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      FixedChar = True
      Size = 60
    end
    object qyPessoasCIDADE: TStringField
      FieldName = 'CIDADE'
      FixedChar = True
      Size = 60
    end
    object qyPessoasESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object qyPessoasCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object qyPessoasMUNIBGE: TStringField
      FieldName = 'MUNIBGE'
      FixedChar = True
      Size = 10
    end
    object qyPessoasFONE: TStringField
      FieldName = 'FONE'
      FixedChar = True
    end
    object qyPessoasFAX: TStringField
      FieldName = 'FAX'
      FixedChar = True
    end
    object qyPessoasEMAIL: TStringField
      FieldName = 'EMAIL'
      FixedChar = True
      Size = 50
    end
    object qyPessoasHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      FixedChar = True
      Size = 60
    end
    object qyPessoasCELULAR: TStringField
      FieldName = 'CELULAR'
      FixedChar = True
    end
    object qyPessoasDATACADAST: TSQLTimeStampField
      FieldName = 'DATACADAST'
    end
    object qyPessoasOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 2048
    end
    object qyPessoasCONTATO: TStringField
      FieldName = 'CONTATO'
      FixedChar = True
      Size = 40
    end
    object qyPessoasDATAFUND: TSQLTimeStampField
      FieldName = 'DATAFUND'
    end
    object qyPessoasPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      FixedChar = True
      Size = 30
    end
    object qyPessoasEQUIPAMENTO: TStringField
      FieldName = 'EQUIPAMENTO'
      Size = 1024
    end
    object qyPessoasSALARIO: TFloatField
      FieldName = 'SALARIO'
    end
    object qyPessoasORGAOEXP: TStringField
      FieldName = 'ORGAOEXP'
      FixedChar = True
      Size = 6
    end
    object qyPessoasSOUNDBYTES: TIntegerField
      FieldName = 'SOUNDBYTES'
    end
    object qyPessoasPROTESTO: TStringField
      FieldName = 'PROTESTO'
      FixedChar = True
      Size = 1
    end
    object qyPessoasSPC: TStringField
      FieldName = 'SPC'
      FixedChar = True
      Size = 1
    end
    object qyPessoasSERASA: TStringField
      FieldName = 'SERASA'
      FixedChar = True
      Size = 1
    end
    object qyPessoasIMOVEL: TStringField
      FieldName = 'IMOVEL'
      FixedChar = True
      Size = 1
    end
    object qyPessoasPROTESTO_DATA: TSQLTimeStampField
      FieldName = 'PROTESTO_DATA'
    end
    object qyPessoasSPC_DATA: TSQLTimeStampField
      FieldName = 'SPC_DATA'
    end
    object qyPessoasSERASA_DATA: TSQLTimeStampField
      FieldName = 'SERASA_DATA'
    end
    object qyPessoasPROTESTO_USER: TStringField
      FieldName = 'PROTESTO_USER'
      FixedChar = True
    end
    object qyPessoasSPC_USER: TStringField
      FieldName = 'SPC_USER'
      FixedChar = True
    end
    object qyPessoasSERASA_USER: TStringField
      FieldName = 'SERASA_USER'
      FixedChar = True
    end
    object qyPessoasIMOVEL_TIPO: TStringField
      FieldName = 'IMOVEL_TIPO'
      FixedChar = True
    end
    object qyPessoasCODEMPREEND: TIntegerField
      FieldName = 'CODEMPREEND'
    end
    object qyPessoasPROCESSO_OK: TStringField
      FieldName = 'PROCESSO_OK'
      FixedChar = True
      Size = 1
    end
    object qyPessoasFGTS: TStringField
      FieldName = 'FGTS'
      FixedChar = True
      Size = 1
    end
    object qyPessoasPIS: TStringField
      FieldName = 'PIS'
      FixedChar = True
    end
    object qyPessoasVALOR_FGTS: TFloatField
      FieldName = 'VALOR_FGTS'
    end
    object qyPessoasCONTRATO: TStringField
      FieldName = 'CONTRATO'
      FixedChar = True
      Size = 1
    end
    object qyPessoasKMS: TIntegerField
      FieldName = 'KMS'
    end
    object qyPessoasCOMISSIONADO: TStringField
      FieldName = 'COMISSIONADO'
      FixedChar = True
      Size = 1
    end
    object qyPessoasNOMEUSER: TStringField
      FieldName = 'NOMEUSER'
      FixedChar = True
      Size = 30
    end
    object qyPessoasDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qyPessoasFINANCEIRO: TStringField
      FieldName = 'FINANCEIRO'
      FixedChar = True
      Size = 1
    end
    object qyPessoasESTORNO: TStringField
      FieldName = 'ESTORNO'
      FixedChar = True
      Size = 1
    end
    object qyPessoasCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
    object qyPessoasTROCAVENDEDOR: TStringField
      FieldName = 'TROCAVENDEDOR'
      FixedChar = True
      Size = 1
    end
    object qyPessoasINTERNET: TStringField
      FieldName = 'INTERNET'
      FixedChar = True
      Size = 1
    end
    object qyPessoasMUDAEMPRESA: TStringField
      FieldName = 'MUDAEMPRESA'
      FixedChar = True
      Size = 1
    end
    object qyPessoasCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qyPessoasTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qyPessoasCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object qyPessoasCODTRANSPORTADOR: TIntegerField
      FieldName = 'CODTRANSPORTADOR'
    end
    object qyPessoasCODASSOCIADO: TIntegerField
      FieldName = 'CODASSOCIADO'
    end
    object qyPessoasNOME_FAMILIA: TStringField
      FieldName = 'NOME_FAMILIA'
      FixedChar = True
      Size = 50
    end
    object qyPessoasRECEBIMENTO: TStringField
      FieldName = 'RECEBIMENTO'
      FixedChar = True
      Size = 1
    end
    object qyPessoasCUSTO: TStringField
      FieldName = 'CUSTO'
      FixedChar = True
      Size = 1
    end
    object qyPessoasSEQUENCIAS: TStringField
      FieldName = 'SEQUENCIAS'
      FixedChar = True
      Size = 1
    end
    object qyPessoasRECALCULO: TStringField
      FieldName = 'RECALCULO'
      FixedChar = True
      Size = 1
    end
    object qyPessoasCOMPRAS: TStringField
      FieldName = 'COMPRAS'
      FixedChar = True
      Size = 1
    end
    object qyPessoasTRANSFERENCIA: TStringField
      FieldName = 'TRANSFERENCIA'
      FixedChar = True
      Size = 1
    end
    object qyPessoasRELATORIOS: TStringField
      FieldName = 'RELATORIOS'
      FixedChar = True
      Size = 1
    end
    object qyPessoasLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object qyPessoasTIPO_BLOQUEIO: TStringField
      FieldName = 'TIPO_BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object qyPessoasTIPO_IMPEDIMENTO: TStringField
      FieldName = 'TIPO_IMPEDIMENTO'
      FixedChar = True
      Size = 1
    end
    object qyPessoasOCULTO: TStringField
      FieldName = 'OCULTO'
      FixedChar = True
      Size = 1
    end
    object qyPessoasVENDADIRETA: TStringField
      FieldName = 'VENDADIRETA'
      FixedChar = True
      Size = 1
    end
    object qyPessoasTECNICOLOGIN: TStringField
      FieldName = 'TECNICOLOGIN'
      FixedChar = True
      Size = 1
    end
    object qyPessoasFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      FixedChar = True
      Size = 1
    end
    object qyPessoasLOG_USUARIO: TStringField
      FieldName = 'LOG_USUARIO'
      FixedChar = True
      Size = 30
    end
    object qyPessoasLOG_TIPO: TStringField
      FieldName = 'LOG_TIPO'
      FixedChar = True
      Size = 10
    end
    object qyPessoasLOG_MAQUINA: TStringField
      FieldName = 'LOG_MAQUINA'
      FixedChar = True
      Size = 30
    end
    object qyPessoasLOG_DATAREMOTO: TSQLTimeStampField
      FieldName = 'LOG_DATAREMOTO'
    end
    object qyPessoasSENHAWEB: TStringField
      FieldName = 'SENHAWEB'
      FixedChar = True
      Size = 10
    end
    object qyPessoasPERCCOMIS_PROD: TFloatField
      FieldName = 'PERCCOMIS_PROD'
    end
    object qyPessoasPERCCOMIS_PECA: TFloatField
      FieldName = 'PERCCOMIS_PECA'
    end
    object qyPessoasPERCCOMIS_SERV: TFloatField
      FieldName = 'PERCCOMIS_SERV'
    end
    object qyPessoasPERCCOMIS_CALCULO: TStringField
      FieldName = 'PERCCOMIS_CALCULO'
      FixedChar = True
      Size = 1
    end
    object qyPessoasCODLINHA: TIntegerField
      FieldName = 'CODLINHA'
    end
    object qyPessoasCODCENTRO: TIntegerField
      FieldName = 'CODCENTRO'
    end
    object qyPessoasCODPLANO: TIntegerField
      FieldName = 'CODPLANO'
    end
    object qyPessoasCALC_BASEICMS: TStringField
      FieldName = 'CALC_BASEICMS'
      FixedChar = True
      Size = 1
    end
    object qyPessoasCAIXA: TStringField
      FieldName = 'CAIXA'
      FixedChar = True
      Size = 1
    end
    object qyPessoasOCULTOS: TStringField
      FieldName = 'OCULTOS'
      FixedChar = True
      Size = 1
    end
    object qyPessoasANALISES: TStringField
      FieldName = 'ANALISES'
      FixedChar = True
      Size = 1
    end
    object qyPessoasLOGS: TStringField
      FieldName = 'LOGS'
      FixedChar = True
      Size = 1
    end
    object qyPessoasENTREGA1: TStringField
      FieldName = 'ENTREGA1'
      FixedChar = True
      Size = 60
    end
    object qyPessoasENTREGA2: TStringField
      FieldName = 'ENTREGA2'
      FixedChar = True
      Size = 60
    end
    object qyPessoasRESIDENCIA_TEMPO: TStringField
      FieldName = 'RESIDENCIA_TEMPO'
      FixedChar = True
    end
    object qyPessoasALUGUEL: TStringField
      FieldName = 'ALUGUEL'
      FixedChar = True
      Size = 1
    end
    object qyPessoasALUGUEL_VALOR: TFloatField
      FieldName = 'ALUGUEL_VALOR'
    end
    object qyPessoasTRAB_EMPRESA: TStringField
      FieldName = 'TRAB_EMPRESA'
      FixedChar = True
      Size = 60
    end
    object qyPessoasTRAB_ADMISSAO: TDateField
      FieldName = 'TRAB_ADMISSAO'
    end
    object qyPessoasTRAB_ENDERECO: TStringField
      FieldName = 'TRAB_ENDERECO'
      FixedChar = True
      Size = 60
    end
    object qyPessoasTRAB_CIDADE: TStringField
      FieldName = 'TRAB_CIDADE'
      FixedChar = True
      Size = 40
    end
    object qyPessoasTRAB_FONE: TStringField
      FieldName = 'TRAB_FONE'
      FixedChar = True
    end
    object qyPessoasTRAB_CARGO: TStringField
      FieldName = 'TRAB_CARGO'
      FixedChar = True
    end
    object qyPessoasTRAB_SALARIO: TFloatField
      FieldName = 'TRAB_SALARIO'
    end
    object qyPessoasCONJ_NOME: TStringField
      FieldName = 'CONJ_NOME'
      FixedChar = True
      Size = 60
    end
    object qyPessoasCONJ_DATANASC: TDateField
      FieldName = 'CONJ_DATANASC'
    end
    object qyPessoasCONJ_RG: TStringField
      FieldName = 'CONJ_RG'
      FixedChar = True
      Size = 30
    end
    object qyPessoasCONJ_CPF: TStringField
      FieldName = 'CONJ_CPF'
      FixedChar = True
    end
    object qyPessoasCONJ_CARTEIRA: TStringField
      FieldName = 'CONJ_CARTEIRA'
      FixedChar = True
    end
    object qyPessoasCONJ_EMPRESA: TStringField
      FieldName = 'CONJ_EMPRESA'
      FixedChar = True
      Size = 60
    end
    object qyPessoasCONJ_ADMISSAO: TDateField
      FieldName = 'CONJ_ADMISSAO'
    end
    object qyPessoasCONJ_CARGO: TStringField
      FieldName = 'CONJ_CARGO'
      FixedChar = True
    end
    object qyPessoasCONJ_ENDERECO: TStringField
      FieldName = 'CONJ_ENDERECO'
      FixedChar = True
      Size = 60
    end
    object qyPessoasCONJ_FONE: TStringField
      FieldName = 'CONJ_FONE'
      FixedChar = True
    end
    object qyPessoasCONJ_SALARIO: TFloatField
      FieldName = 'CONJ_SALARIO'
    end
    object qyPessoasCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
    end
    object qyPessoasREFERENCIA1: TStringField
      FieldName = 'REFERENCIA1'
      FixedChar = True
      Size = 60
    end
    object qyPessoasREFERENCIA2: TStringField
      FieldName = 'REFERENCIA2'
      FixedChar = True
      Size = 60
    end
    object qyPessoasREFERENCIA3: TStringField
      FieldName = 'REFERENCIA3'
      FixedChar = True
      Size = 60
    end
    object qyPessoasABERTO: TFMTBCDField
      FieldName = 'ABERTO'
      ProviderFlags = []
      Precision = 20
      Size = 2
    end
    object qyPessoasVALOR_CONTRATO: TFloatField
      FieldName = 'VALOR_CONTRATO'
    end
    object qyPessoasIM: TStringField
      FieldName = 'IM'
      FixedChar = True
    end
    object qyPessoasCNAE: TStringField
      FieldName = 'CNAE'
      FixedChar = True
      Size = 10
    end
    object qyPessoasESTORNO_PECA: TStringField
      FieldName = 'ESTORNO_PECA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyPessoasPRECO_CLIENTE: TStringField
      FieldName = 'PRECO_CLIENTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyPessoasPRECO_45: TStringField
      FieldName = 'PRECO_45'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyPessoasLICENCIAMENTO: TSmallintField
      FieldName = 'LICENCIAMENTO'
      Required = True
    end
  end
  object pvPessoas: TDataSetProvider
    DataSet = qyPessoas
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = pvPessoasBeforeUpdateRecord
    OnGetTableName = pvPessoasGetTableName
    Left = 104
    Top = 392
  end
  object qyEstados: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL,'#13#10'  ESTADOS.* '#13#10'FROM '#13#10'  ESTADOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 176
    Top = 344
    object qyEstadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyEstadosSIGLA: TStringField
      FieldName = 'SIGLA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 2
    end
    object qyEstadosESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 30
    end
  end
  object pvEstados: TDataSetProvider
    DataSet = qyEstados
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 176
    Top = 392
  end
  object qyCidades: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  CIDADES.* '#13#10'FROM '#13#10'  CIDADES'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 248
    Top = 344
    object qyCidadesSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyCidadesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyCidadesCIDADE: TStringField
      FieldName = 'CIDADE'
      FixedChar = True
      Size = 60
    end
    object qyCidadesESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object qyCidadesSID: TStringField
      FieldName = 'SID'
      FixedChar = True
      Size = 5
    end
    object qyCidadesDDD: TStringField
      FieldName = 'DDD'
      FixedChar = True
      Size = 3
    end
    object qyCidadesCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object qyCidadesMUNIBGE: TStringField
      FieldName = 'MUNIBGE'
      FixedChar = True
    end
  end
  object pvCidades: TDataSetProvider
    DataSet = qyCidades
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 248
    Top = 392
  end
  object qyBairros: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL,'#13#10'  BA.CODIGO, '#13#10'  BA.BAIRRO, '#13#10'  BA.CIDAD' +
      'E, '#13#10'  CI.CIDADE AS NOMECIDADE, '#13#10'  BA.ESTADO '#13#10'FROM '#13#10'  BAIRROS' +
      ' BA  '#13#10'  JOIN CIDADES CI ON '#13#10'    (CI.CODIGO = BA.CIDADE AND '#13#10' ' +
      '    CI.ESTADO = BA.ESTADO)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 320
    Top = 344
    object qyBairrosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyBairrosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyBairrosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      FixedChar = True
      Size = 60
    end
    object qyBairrosCIDADE: TIntegerField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyBairrosNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object qyBairrosESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 2
    end
  end
  object pvBairros: TDataSetProvider
    DataSet = qyBairros
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 320
    Top = 392
  end
  object qyLogradouros: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  LO.CODIGO, '#13#10'  LO.LOGRADOURO, '#13#10'  LO.' +
      'BAIRRO, '#13#10'  BA.BAIRRO AS NOMEBAIRRO, '#13#10'  LO.CEP, '#13#10'  LO.CIDADE, ' +
      #13#10'  CI.CIDADE AS NOMECIDADE, '#13#10'  LO.ESTADO, LO.EXTENSO '#13#10'FROM '#13#10 +
      '  LOGRADOUROS LO '#13#10'  LEFT JOIN BAIRROS BA ON '#13#10'    (BA.CODIGO = ' +
      'LO.BAIRRO AND '#13#10'     BA.CIDADE = LO.CIDADE AND '#13#10'     BA.ESTADO ' +
      '= LO.ESTADO) '#13#10'  LEFT JOIN CIDADES CI ON '#13#10'    (CI.CODIGO = LO.C' +
      'IDADE AND '#13#10'     CI.ESTADO = LO.ESTADO)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 392
    Top = 344
    object qyLogradourosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyLogradourosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyLogradourosLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      FixedChar = True
      Size = 60
    end
    object qyLogradourosBAIRRO: TIntegerField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyLogradourosNOMEBAIRRO: TStringField
      FieldName = 'NOMEBAIRRO'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object qyLogradourosCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object qyLogradourosCIDADE: TIntegerField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyLogradourosNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object qyLogradourosESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 2
    end
    object qyLogradourosEXTENSO: TStringField
      FieldName = 'EXTENSO'
      FixedChar = True
      Size = 60
    end
  end
  object pvLogradouros: TDataSetProvider
    DataSet = qyLogradouros
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 392
    Top = 392
  end
  object ppNovaloc: TDataSetProvider
    DataSet = spNovaloc
    Left = 464
    Top = 392
  end
  object spNovaloc: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 50
        Name = 'LOGRADOURO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 40
        Name = 'BAIRRO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 9
        Name = 'CEP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODCIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 2
        Name = 'CODESTADO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODLOGRADOURO'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODBAIRRO'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = formServidor.SQLConnection
    StoredProcName = 'NOVA_LOCALIDADE'
    Left = 464
    Top = 344
  end
  object qyProdutos: TSQLDataSet
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  PO.*, '#13#10'  (SELECT SUM(INDIVIDUAIS.QUA' +
      'NTIDADE) FROM INDIVIDUAIS WHERE INDIVIDUAIS.CODPRODUTO = PO.CODI' +
      'GO AND INDIVIDUAIS.VENDIDO = '#39'N'#39' AND INDIVIDUAIS.CODEMPRESA = 1)' +
      ' AS ESTOQUE, '#13#10'  (SELECT SUM(INDIVIDUAIS.QUANTIDADE) FROM INDIVI' +
      'DUAIS WHERE INDIVIDUAIS.CODPRODUTO = PO.CODIGO AND INDIVIDUAIS.V' +
      'ENDIDO = '#39'N'#39') AS ESTOQUETOTAL,'#13#10'  SE.DESCRICAO AS DESCRICAO_1, '#13 +
      #10'  MA.DESCRICAO AS MARCA, '#13#10'  MO.DESCRICAO AS MODELO, '#13#10'  CE.DES' +
      'CRICAO AS CENTRO '#13#10'FROM '#13#10'  PRODUTOS PO '#13#10'  LEFT JOIN PRODUTOS S' +
      'E ON '#13#10'    (SE.CODIGO = PO.CODSERVICO) '#13#10'  LEFT JOIN MARCAS MA O' +
      'N '#13#10'    (MA.CODIGO = PO.CODMARCA) '#13#10'  LEFT JOIN MODELOS MO ON '#13#10 +
      '    (MO.CODIGO = PO.CODMODELO AND '#13#10'     MO.CODEQUIPAMENTO = PO.' +
      'CODMARCA) '#13#10'  LEFT JOIN CENTROS CE ON '#13#10'    (CE.CODIGO = PO.CODC' +
      'ENTRO) '#13#10'WHERE '#13#10'  PO.PS= '#39'P'#39
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 536
    Top = 344
    object qyProdutosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 60
    end
    object qyProdutosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 2
    end
    object qyProdutosGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object qyProdutosPRECOCUSTO: TFMTBCDField
      FieldName = 'PRECOCUSTO'
      Precision = 20
      Size = 3
    end
    object qyProdutosPRECOVENDA: TFMTBCDField
      FieldName = 'PRECOVENDA'
      Precision = 20
      Size = 3
    end
    object qyProdutosICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qyProdutosMINIMO: TFloatField
      FieldName = 'MINIMO'
    end
    object qyProdutosDATACADAST: TSQLTimeStampField
      FieldName = 'DATACADAST'
    end
    object qyProdutosETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      FixedChar = True
      Size = 1
    end
    object qyProdutosNUMETIQ: TIntegerField
      FieldName = 'NUMETIQ'
    end
    object qyProdutosINDIVIDUAL: TStringField
      FieldName = 'INDIVIDUAL'
      FixedChar = True
      Size = 1
    end
    object qyProdutosSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object qyProdutosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 2048
    end
    object qyProdutosBARRA: TStringField
      FieldName = 'BARRA'
      FixedChar = True
      Size = 14
    end
    object qyProdutosPS: TStringField
      FieldName = 'PS'
      FixedChar = True
      Size = 1
    end
    object qyProdutosCODSERVICO: TIntegerField
      FieldName = 'CODSERVICO'
    end
    object qyProdutosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      FixedChar = True
      Size = 40
    end
    object qyProdutosCOMISSIONADO: TStringField
      FieldName = 'COMISSIONADO'
      FixedChar = True
      Size = 1
    end
    object qyProdutosOCULTO: TStringField
      FieldName = 'OCULTO'
      FixedChar = True
      Size = 1
    end
    object qyProdutosMARGEM: TFloatField
      FieldName = 'MARGEM'
    end
    object qyProdutosCODCENTRO: TIntegerField
      FieldName = 'CODCENTRO'
    end
    object qyProdutosPRECOSERVICO: TFloatField
      FieldName = 'PRECOSERVICO'
    end
    object qyProdutosPRECOTOTAL: TFloatField
      FieldName = 'PRECOTOTAL'
    end
    object qyProdutosATIVACAO: TStringField
      FieldName = 'ATIVACAO'
      FixedChar = True
      Size = 1
    end
    object qyProdutosCADEQUIPAMENTO: TStringField
      FieldName = 'CADEQUIPAMENTO'
      FixedChar = True
      Size = 1
    end
    object qyProdutosTIPOPRODUTO: TStringField
      FieldName = 'TIPOPRODUTO'
      FixedChar = True
      Size = 1
    end
    object qyProdutosCODMARCA: TIntegerField
      FieldName = 'CODMARCA'
    end
    object qyProdutosCODMODELO: TIntegerField
      FieldName = 'CODMODELO'
    end
    object qyProdutosGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
    end
    object qyProdutosLOG_USUARIO: TStringField
      FieldName = 'LOG_USUARIO'
      FixedChar = True
      Size = 30
    end
    object qyProdutosLOG_TIPO: TStringField
      FieldName = 'LOG_TIPO'
      FixedChar = True
      Size = 10
    end
    object qyProdutosLOG_MAQUINA: TStringField
      FieldName = 'LOG_MAQUINA'
      FixedChar = True
      Size = 30
    end
    object qyProdutosLOG_DATAREMOTO: TSQLTimeStampField
      FieldName = 'LOG_DATAREMOTO'
    end
    object qyProdutosMATPRIMA: TStringField
      FieldName = 'MATPRIMA'
      FixedChar = True
      Size = 1
    end
    object qyProdutosCLASSFISCAL: TStringField
      FieldName = 'CLASSFISCAL'
      FixedChar = True
    end
    object qyProdutosCAIXA_ITENS: TIntegerField
      FieldName = 'CAIXA_ITENS'
    end
    object qyProdutosICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object qyProdutosPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
    end
    object qyProdutosPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
    end
    object qyProdutosPESO: TFloatField
      FieldName = 'PESO'
    end
    object qyProdutosMARGEM2: TFloatField
      FieldName = 'MARGEM2'
    end
    object qyProdutosMARGEM3: TFloatField
      FieldName = 'MARGEM3'
    end
    object qyProdutosESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      ProviderFlags = []
      Precision = 20
      Size = 3
    end
    object qyProdutosESTOQUETOTAL: TFMTBCDField
      FieldName = 'ESTOQUETOTAL'
      ProviderFlags = []
      Precision = 20
      Size = 3
    end
    object qyProdutosDESCRICAO_1: TStringField
      FieldName = 'DESCRICAO_1'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object qyProdutosMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qyProdutosMODELO: TStringField
      FieldName = 'MODELO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qyProdutosCENTRO: TStringField
      FieldName = 'CENTRO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qyProdutosCODNCM: TIntegerField
      FieldName = 'CODNCM'
    end
    object qyProdutosSITTRIBU: TStringField
      FieldName = 'SITTRIBU'
      FixedChar = True
      Size = 3
    end
    object qyProdutosPARTNUMBER: TStringField
      FieldName = 'PARTNUMBER'
      FixedChar = True
      Size = 30
    end
    object qyProdutosTRIBUTOS: TFloatField
      FieldName = 'TRIBUTOS'
    end
    object qyProdutosPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
    end
    object qyProdutosPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
    end
  end
  object pvProdutos: TDataSetProvider
    DataSet = qyProdutos
    Options = [poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = pvProdutosGetTableName
    Left = 536
    Top = 392
  end
  object qyUnidades: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  MEDIDAS.* '#13#10'FROM '#13#10'  MEDIDAS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 608
    Top = 344
    object qyUnidadesSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyUnidadesSIGLA: TStringField
      FieldName = 'SIGLA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 2
    end
    object qyUnidadesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
    end
  end
  object pvUnidades: TDataSetProvider
    DataSet = qyUnidades
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 608
    Top = 392
  end
  object qyGrupos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  GRUPOS.* '#13#10'FROM '#13#10'  GRUPOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 680
    Top = 344
    object qyGruposSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyGruposCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyGruposGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 30
    end
  end
  object pvGrupos: TDataSetProvider
    DataSet = qyGrupos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 680
    Top = 392
  end
  object qyServicos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  PO.*,'#13#10'  CE.DESCRICAO AS CENTRO '#13#10'FRO' +
      'M '#13#10'  PRODUTOS PO '#13#10'  LEFT JOIN CENTROS CE ON '#13#10'    (CE.CODIGO =' +
      ' PO.CODCENTRO) '#13#10'WHERE '#13#10'  PO.PS= '#39'S'#39
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 104
    Top = 448
    object qyServicosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyServicosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyServicosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 60
    end
    object qyServicosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 2
    end
    object qyServicosGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object qyServicosPRECOCUSTO: TFMTBCDField
      FieldName = 'PRECOCUSTO'
      Precision = 20
      Size = 3
    end
    object qyServicosPRECOVENDA: TFMTBCDField
      FieldName = 'PRECOVENDA'
      Precision = 20
      Size = 3
    end
    object qyServicosICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qyServicosMINIMO: TFloatField
      FieldName = 'MINIMO'
    end
    object qyServicosDATACADAST: TSQLTimeStampField
      FieldName = 'DATACADAST'
    end
    object qyServicosETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      FixedChar = True
      Size = 1
    end
    object qyServicosNUMETIQ: TIntegerField
      FieldName = 'NUMETIQ'
    end
    object qyServicosINDIVIDUAL: TStringField
      FieldName = 'INDIVIDUAL'
      FixedChar = True
      Size = 1
    end
    object qyServicosSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object qyServicosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 2048
    end
    object qyServicosBARRA: TStringField
      FieldName = 'BARRA'
      FixedChar = True
      Size = 14
    end
    object qyServicosPS: TStringField
      FieldName = 'PS'
      FixedChar = True
      Size = 1
    end
    object qyServicosCODSERVICO: TIntegerField
      FieldName = 'CODSERVICO'
    end
    object qyServicosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      FixedChar = True
      Size = 40
    end
    object qyServicosCOMISSIONADO: TStringField
      FieldName = 'COMISSIONADO'
      FixedChar = True
      Size = 1
    end
    object qyServicosOCULTO: TStringField
      FieldName = 'OCULTO'
      FixedChar = True
      Size = 1
    end
    object qyServicosMARGEM: TFloatField
      FieldName = 'MARGEM'
    end
    object qyServicosCODCENTRO: TIntegerField
      FieldName = 'CODCENTRO'
    end
    object qyServicosPRECOSERVICO: TFloatField
      FieldName = 'PRECOSERVICO'
    end
    object qyServicosPRECOTOTAL: TFloatField
      FieldName = 'PRECOTOTAL'
    end
    object qyServicosATIVACAO: TStringField
      FieldName = 'ATIVACAO'
      FixedChar = True
      Size = 1
    end
    object qyServicosCADEQUIPAMENTO: TStringField
      FieldName = 'CADEQUIPAMENTO'
      FixedChar = True
      Size = 1
    end
    object qyServicosTIPOPRODUTO: TStringField
      FieldName = 'TIPOPRODUTO'
      FixedChar = True
      Size = 1
    end
    object qyServicosCODMARCA: TIntegerField
      FieldName = 'CODMARCA'
    end
    object qyServicosCODMODELO: TIntegerField
      FieldName = 'CODMODELO'
    end
    object qyServicosGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
    end
    object qyServicosLOG_USUARIO: TStringField
      FieldName = 'LOG_USUARIO'
      FixedChar = True
      Size = 30
    end
    object qyServicosLOG_TIPO: TStringField
      FieldName = 'LOG_TIPO'
      FixedChar = True
      Size = 10
    end
    object qyServicosLOG_MAQUINA: TStringField
      FieldName = 'LOG_MAQUINA'
      FixedChar = True
      Size = 30
    end
    object qyServicosLOG_DATAREMOTO: TSQLTimeStampField
      FieldName = 'LOG_DATAREMOTO'
    end
    object qyServicosMATPRIMA: TStringField
      FieldName = 'MATPRIMA'
      FixedChar = True
      Size = 1
    end
    object qyServicosCLASSFISCAL: TStringField
      FieldName = 'CLASSFISCAL'
      FixedChar = True
    end
    object qyServicosCAIXA_ITENS: TIntegerField
      FieldName = 'CAIXA_ITENS'
    end
    object qyServicosICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object qyServicosPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
    end
    object qyServicosPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
    end
    object qyServicosPESO: TFloatField
      FieldName = 'PESO'
    end
    object qyServicosMARGEM2: TFloatField
      FieldName = 'MARGEM2'
    end
    object qyServicosMARGEM3: TFloatField
      FieldName = 'MARGEM3'
    end
    object qyServicosCENTRO: TStringField
      FieldName = 'CENTRO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qyServicosCODNCM: TIntegerField
      FieldName = 'CODNCM'
    end
    object qyServicosSITTRIBU: TStringField
      FieldName = 'SITTRIBU'
      FixedChar = True
      Size = 3
    end
    object qyServicosPARTNUMBER: TStringField
      FieldName = 'PARTNUMBER'
      FixedChar = True
      Size = 30
    end
    object qyServicosTRIBUTOS: TFloatField
      FieldName = 'TRIBUTOS'
    end
  end
  object pvServicos: TDataSetProvider
    DataSet = qyServicos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 496
  end
  object qyCentros: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  CENTROS.* '#13#10'FROM '#13#10'  CENTROS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 32
    Top = 448
    object qyCentrosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyCentrosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyCentrosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 40
    end
    object qyCentrosTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object pvCentros: TDataSetProvider
    DataSet = qyCentros
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 496
  end
  object qyNatuoper: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  NA.* '#13#10'FROM '#13#10'  NATUOPER NA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 176
    Top = 448
    object qyNatuoperSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyNatuoperCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 6
    end
    object qyNatuoperNATUREZA: TStringField
      FieldName = 'NATUREZA'
      FixedChar = True
      Size = 30
    end
    object qyNatuoperVENDA: TStringField
      FieldName = 'VENDA'
      FixedChar = True
      Size = 1
    end
    object qyNatuoperESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object qyNatuoperICMS: TStringField
      FieldName = 'ICMS'
      FixedChar = True
      Size = 1
    end
    object qyNatuoperIPI: TStringField
      FieldName = 'IPI'
      FixedChar = True
      Size = 1
    end
  end
  object pvNatuoper: TDataSetProvider
    DataSet = qyNatuoper
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 176
    Top = 496
  end
  object pvOperadoras: TDataSetProvider
    DataSet = qyOperadoras
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 248
    Top = 496
  end
  object qyOperadoras: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  OPERADORAS.* '#13#10'FROM '#13#10'  OPERADORAS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 248
    Top = 448
    object qyOperadorasSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyOperadorasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyOperadorasNOME: TStringField
      FieldName = 'NOME'
      FixedChar = True
      Size = 40
    end
  end
  object qyPlanos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  PLANOS.* '#13#10'FROM '#13#10'  PLANOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 320
    Top = 448
    object qyPlanosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyPlanosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyPlanosCODOPERADORA: TIntegerField
      FieldName = 'CODOPERADORA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyPlanosNOME: TStringField
      FieldName = 'NOME'
      FixedChar = True
      Size = 40
    end
    object qyPlanosTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object pvPlanos: TDataSetProvider
    DataSet = qyPlanos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 320
    Top = 496
  end
  object qyMarcas: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  MARCAS.* '#13#10'FROM '#13#10'  MARCAS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 392
    Top = 448
    object qyMarcasSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyMarcasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyMarcasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 40
    end
  end
  object pvMarcas: TDataSetProvider
    DataSet = qyMarcas
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 392
    Top = 496
  end
  object qyModelos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  MODELOS.* '#13#10'FROM '#13#10'  MODELOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 464
    Top = 448
    object qyModelosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyModelosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyModelosCODEQUIPAMENTO: TIntegerField
      FieldName = 'CODEQUIPAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyModelosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 40
    end
    object qyModelosCODCARTA: TIntegerField
      FieldName = 'CODCARTA'
    end
  end
  object pvModelos: TDataSetProvider
    DataSet = qyModelos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 496
  end
  object qyOstipos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  OSTIPOS.* '#13#10'FROM '#13#10'  OSTIPOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 536
    Top = 448
    object qyOstiposSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyOstiposCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyOstiposTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 40
    end
    object qyOstiposDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object qyOstiposHORAS: TIntegerField
      FieldName = 'HORAS'
    end
  end
  object pvOstipos: TDataSetProvider
    DataSet = qyOstipos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 536
    Top = 496
  end
  object qyDefeitos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  DEFEITOS.* '#13#10'FROM '#13#10'  DEFEITOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 608
    Top = 448
    object qyDefeitosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyDefeitosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyDefeitosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 40
    end
  end
  object pvDefeitos: TDataSetProvider
    DataSet = qyDefeitos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 608
    Top = 496
  end
  object qyDocumentos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  DOC.*, '#13#10'  BCO.NOME AS NOMEBANCO, '#13#10' ' +
      ' CLI.NOME AS NOMECEDENTE, '#13#10'  IMP.DESCRICAO AS LAYOUT '#13#10'FROM '#13#10' ' +
      ' DOCUMENTOS DOC '#13#10'  LEFT JOIN BANCOS BCO ON '#13#10'    (BCO.CODIGO = ' +
      'DOC.CODBANCO) '#13#10'  LEFT JOIN CLIENTES CLI ON '#13#10'    (CLI.CODIGO = ' +
      'DOC.CODIGOCEDENTE) '#13#10'  LEFT JOIN IMPBOLETO IMP ON '#13#10'    (IMP.NUM' +
      'IMPBOLETO = DOC.NUMIMPBOLETO)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 680
    Top = 448
    object qyDocumentosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyDocumentosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyDocumentosDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      FixedChar = True
      Size = 30
    end
    object qyDocumentosINFORMACOES: TStringField
      FieldName = 'INFORMACOES'
      FixedChar = True
      Size = 30
    end
    object qyDocumentosSISTEMA: TStringField
      FieldName = 'SISTEMA'
      FixedChar = True
      Size = 1
    end
    object qyDocumentosNUMIMPBOLETO: TIntegerField
      FieldName = 'NUMIMPBOLETO'
    end
    object qyDocumentosTIPO_PAG: TStringField
      FieldName = 'TIPO_PAG'
      FixedChar = True
      Size = 1
    end
    object qyDocumentosTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      FixedChar = True
      Size = 1
    end
    object qyDocumentosCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object qyDocumentosNOSSONUMERO: TIntegerField
      FieldName = 'NOSSONUMERO'
    end
    object qyDocumentosNOSSONUMERO_DIGITO: TIntegerField
      FieldName = 'NOSSONUMERO_DIGITO'
    end
    object qyDocumentosACEITE: TStringField
      FieldName = 'ACEITE'
      FixedChar = True
      Size = 1
    end
    object qyDocumentosCODIGOCEDENTE: TIntegerField
      FieldName = 'CODIGOCEDENTE'
    end
    object qyDocumentosCODIGOCEDENTE_DIGITO: TIntegerField
      FieldName = 'CODIGOCEDENTE_DIGITO'
    end
    object qyDocumentosCODIGOAGENCIA: TIntegerField
      FieldName = 'CODIGOAGENCIA'
    end
    object qyDocumentosCODIGOAGENCIA_DIGITO: TIntegerField
      FieldName = 'CODIGOAGENCIA_DIGITO'
    end
    object qyDocumentosCODIGOCONTA: TIntegerField
      FieldName = 'CODIGOCONTA'
    end
    object qyDocumentosCODIGOCONTA_DIGITO: TIntegerField
      FieldName = 'CODIGOCONTA_DIGITO'
    end
    object qyDocumentosCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
    end
    object qyDocumentosLOCALPAGAMENTO: TStringField
      FieldName = 'LOCALPAGAMENTO'
      FixedChar = True
      Size = 50
    end
    object qyDocumentosINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 254
    end
    object qyDocumentosIMPRESSAO: TStringField
      FieldName = 'IMPRESSAO'
      FixedChar = True
      Size = 1
    end
    object qyDocumentosREMESSA_REGISTRO: TStringField
      FieldName = 'REMESSA_REGISTRO'
      FixedChar = True
      Size = 1
    end
    object qyDocumentosNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object qyDocumentosNOMECEDENTE: TStringField
      FieldName = 'NOMECEDENTE'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qyDocumentosLAYOUT: TStringField
      FieldName = 'LAYOUT'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
  end
  object pvDocumentos: TDataSetProvider
    DataSet = qyDocumentos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 680
    Top = 496
  end
  object qyCondpagtos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  CONDPAG.*, '#13#10'  DA.DOCUMENTO AS DOCVIS' +
      'TA, '#13#10'  DP.DOCUMENTO AS DOCPRAZO '#13#10'FROM '#13#10'  CONDPAG '#13#10'  JOIN DOC' +
      'UMENTOS DA ON '#13#10'    (DA.CODIGO = CONDPAG.CODDOC_AVISTA) '#13#10'  JOIN' +
      ' DOCUMENTOS DP ON '#13#10'    (DP.CODIGO = CONDPAG.CODDOC_PRAZO)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 32
    Top = 552
    object qyCondpagtosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyCondpagtosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyCondpagtosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 40
    end
    object qyCondpagtosCONDICAO: TStringField
      FieldName = 'CONDICAO'
      FixedChar = True
      Size = 40
    end
    object qyCondpagtosQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object qyCondpagtosPRAZOMEDIO: TIntegerField
      FieldName = 'PRAZOMEDIO'
    end
    object qyCondpagtosTAXAJUROS: TFloatField
      FieldName = 'TAXAJUROS'
    end
    object qyCondpagtosCODDOC_AVISTA: TIntegerField
      FieldName = 'CODDOC_AVISTA'
    end
    object qyCondpagtosCODDOC_PRAZO: TIntegerField
      FieldName = 'CODDOC_PRAZO'
    end
    object qyCondpagtosCADASTRAR_CLIENTES: TStringField
      FieldName = 'CADASTRAR_CLIENTES'
      FixedChar = True
      Size = 1
    end
    object qyCondpagtosDOCVISTA: TStringField
      FieldName = 'DOCVISTA'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object qyCondpagtosDOCPRAZO: TStringField
      FieldName = 'DOCPRAZO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
  end
  object pvCondpagtos: TDataSetProvider
    DataSet = qyCondpagtos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 600
  end
  object qyContas: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  CONTAS.* '#13#10'FROM '#13#10'  CONTAS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 104
    Top = 552
    object qyContasSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyContasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyContasCONTA: TStringField
      FieldName = 'CONTA'
      FixedChar = True
      Size = 40
    end
  end
  object pvContas: TDataSetProvider
    DataSet = qyContas
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 600
  end
  object qyPlancontas: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  PLANCONTAS.*, '#13#10'  UDF_TRIM(PLANCONTAS.CODPLANO) || '#39' ' +
      #39' || PLANCONTAS.DESCRICAO AS SINTETICO '#13#10'FROM '#13#10'  PLANCONTAS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 176
    Top = 552
    object qyPlancontasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyPlancontasCODPAI: TIntegerField
      FieldName = 'CODPAI'
    end
    object qyPlancontasCODPLANO: TStringField
      FieldName = 'CODPLANO'
      FixedChar = True
    end
    object qyPlancontasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 40
    end
    object qyPlancontasTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qyPlancontasOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 254
    end
    object qyPlancontasSINTETICO: TStringField
      FieldName = 'SINTETICO'
      ProviderFlags = []
      Size = 295
    end
    object qyPlancontasFINAL: TStringField
      FieldName = 'FINAL'
      FixedChar = True
      Size = 1
    end
  end
  object pvPlancontas: TDataSetProvider
    DataSet = qyPlancontas
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 176
    Top = 600
  end
  object qyHistorico: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  HI.*, '#13#10'  CE.DESCRICAO AS CENTRO, '#13#10' ' +
      ' UDF_TRIM(PL.CODPLANO) || '#39' '#39' || PL.DESCRICAO AS PLANO, '#13#10'  UDF_' +
      'TRIM(NA.CODIGO) || '#39' '#39' || NA.NATUREZA AS NATUREZA '#13#10'FROM '#13#10'  HIS' +
      'TORICOPAG HI '#13#10'  JOIN CENTROS CE ON '#13#10'    (CE.CODIGO = HI.CODCEN' +
      'TRO) '#13#10'  LEFT JOIN PLANCONTAS PL ON '#13#10'    (PL.CODIGO = HI.CODPLA' +
      'NO) '#13#10'  LEFT JOIN NATUOPER NA ON '#13#10'    (NA.CODIGO = HI.CODNATUOP' +
      'ER)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 248
    Top = 552
    object qyHistoricoSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyHistoricoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyHistoricoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 60
    end
    object qyHistoricoCODCENTRO: TIntegerField
      FieldName = 'CODCENTRO'
    end
    object qyHistoricoOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 254
    end
    object qyHistoricoCODPLANO: TIntegerField
      FieldName = 'CODPLANO'
    end
    object qyHistoricoCODNATUOPER: TStringField
      FieldName = 'CODNATUOPER'
      FixedChar = True
      Size = 5
    end
    object qyHistoricoFATURA_CAIXAS: TStringField
      FieldName = 'FATURA_CAIXAS'
      FixedChar = True
      Size = 1
    end
    object qyHistoricoCENTRO: TStringField
      FieldName = 'CENTRO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qyHistoricoPLANO: TStringField
      FieldName = 'PLANO'
      ProviderFlags = []
      Size = 295
    end
    object qyHistoricoNATUREZA: TStringField
      FieldName = 'NATUREZA'
      ProviderFlags = []
      Size = 285
    end
  end
  object pvHistorico: TDataSetProvider
    DataSet = qyHistorico
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 248
    Top = 600
  end
  object qyBancos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  BANCOS.* '#13#10'FROM '#13#10'  BANCOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 320
    Top = 552
    object qyBancosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyBancosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyBancosNOME: TStringField
      FieldName = 'NOME'
      FixedChar = True
      Size = 60
    end
  end
  object pvBancos: TDataSetProvider
    DataSet = qyBancos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 320
    Top = 600
  end
  object pyPerfil: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  SI.CODIGO, '#13#10'  SI.CODCLIENTE, '#13#10'  C1.' +
      'NOME AS EMPRESA, '#13#10'  SI.CODCLIENTE_PADRAO, '#13#10'  C2.NOME AS CONSUM' +
      'IDOR, '#13#10'  SI.VALOR_LIMITE, '#13#10'  SI.ALIQUOTA_ISS, '#13#10'  SI.ALIQUOTA_' +
      'ICMSSIMPLES, '#13#10'  SI.ICMSSIMPLES, '#13#10'  SI.PADRAO, '#13#10'  SI.MOEDASING' +
      'ULAR, '#13#10'  SI.MOEDAPLURAL, '#13#10'  SI.CENTAVOSINGULAR, '#13#10'  SI.CENTAVO' +
      'PLURAL, '#13#10'  SI.NOTA_PADRAO, '#13#10'  SI.OSABERTA_PADRAO, '#13#10'  SI.OSABE' +
      'RTA_PADRAO_2A, '#13#10'  SI.OSFECHADA_PADRAO, '#13#10'  SI.RECIBO_PADRAO, '#13#10 +
      '  SI.LOGTIMEOFF, '#13#10'  SI.OSCOND1, '#13#10'  SI.OSCOND2, '#13#10'  SI.BLOQUEIO' +
      '_DIAS, '#13#10'  SI.CODHISTORICO_COMPRA, '#13#10'  HC.DESCRICAO AS HISTORICO' +
      'COMPRA, '#13#10'  SI.CODHISTORICO_VENDA, '#13#10'  HV.DESCRICAO AS HISTORICO' +
      'VENDA, '#13#10'  SI.MENSAGEM_OS, '#13#10'  SI.MENSAGEM_VENDA, '#13#10'  SI.SENHA_C' +
      'LIENTES, '#13#10'  SI.SENHA_PRODUTOS, '#13#10'  SI.SENHA_OS, '#13#10'  SI.SENHA_FE' +
      'CHAMENTO, '#13#10'  SI.SENHA_BAIXA, '#13#10'  SI.VERIFICA_LIMITE, '#13#10'  SI.COP' +
      'IAS_OS, '#13#10'  SI.COPIAS_OS2, '#13#10'  SI.COPIAS_RECIBO, '#13#10'  SI.PRECO_CL' +
      'IENTE '#13#10'FROM '#13#10'  SISCONFIG SI '#13#10'  JOIN CLIENTES C1 ON '#13#10'    (C1.' +
      'CODIGO = SI.CODCLIENTE) '#13#10'  LEFT JOIN CLIENTES C2 ON '#13#10'    (C2.C' +
      'ODIGO = SI.CODCLIENTE_PADRAO) '#13#10'  LEFT JOIN HISTORICOPAG HC ON '#13 +
      #10'    (HC.CODIGO = SI.CODHISTORICO_COMPRA) '#13#10'  LEFT JOIN HISTORIC' +
      'OPAG HV ON '#13#10'    (HV.CODIGO = SI.CODHISTORICO_VENDA)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 392
    Top = 552
    object pyPerfilSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object pyPerfilCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object pyPerfilCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object pyPerfilEMPRESA: TStringField
      FieldName = 'EMPRESA'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object pyPerfilCODCLIENTE_PADRAO: TIntegerField
      FieldName = 'CODCLIENTE_PADRAO'
    end
    object pyPerfilCONSUMIDOR: TStringField
      FieldName = 'CONSUMIDOR'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object pyPerfilVALOR_LIMITE: TFloatField
      FieldName = 'VALOR_LIMITE'
    end
    object pyPerfilALIQUOTA_ISS: TFloatField
      FieldName = 'ALIQUOTA_ISS'
    end
    object pyPerfilALIQUOTA_ICMSSIMPLES: TFloatField
      FieldName = 'ALIQUOTA_ICMSSIMPLES'
    end
    object pyPerfilICMSSIMPLES: TStringField
      FieldName = 'ICMSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object pyPerfilPADRAO: TStringField
      FieldName = 'PADRAO'
      FixedChar = True
      Size = 1
    end
    object pyPerfilMOEDASINGULAR: TStringField
      FieldName = 'MOEDASINGULAR'
      FixedChar = True
      Size = 40
    end
    object pyPerfilMOEDAPLURAL: TStringField
      FieldName = 'MOEDAPLURAL'
      FixedChar = True
      Size = 40
    end
    object pyPerfilCENTAVOSINGULAR: TStringField
      FieldName = 'CENTAVOSINGULAR'
      FixedChar = True
      Size = 40
    end
    object pyPerfilCENTAVOPLURAL: TStringField
      FieldName = 'CENTAVOPLURAL'
      FixedChar = True
      Size = 40
    end
    object pyPerfilNOTA_PADRAO: TIntegerField
      FieldName = 'NOTA_PADRAO'
    end
    object pyPerfilOSABERTA_PADRAO: TIntegerField
      FieldName = 'OSABERTA_PADRAO'
    end
    object pyPerfilOSABERTA_PADRAO_2A: TIntegerField
      FieldName = 'OSABERTA_PADRAO_2A'
    end
    object pyPerfilOSFECHADA_PADRAO: TIntegerField
      FieldName = 'OSFECHADA_PADRAO'
    end
    object pyPerfilRECIBO_PADRAO: TIntegerField
      FieldName = 'RECIBO_PADRAO'
    end
    object pyPerfilLOGTIMEOFF: TIntegerField
      FieldName = 'LOGTIMEOFF'
    end
    object pyPerfilOSCOND1: TStringField
      FieldName = 'OSCOND1'
      Size = 254
    end
    object pyPerfilOSCOND2: TStringField
      FieldName = 'OSCOND2'
      Size = 254
    end
    object pyPerfilBLOQUEIO_DIAS: TIntegerField
      FieldName = 'BLOQUEIO_DIAS'
    end
    object pyPerfilCODHISTORICO_COMPRA: TIntegerField
      FieldName = 'CODHISTORICO_COMPRA'
    end
    object pyPerfilHISTORICOCOMPRA: TStringField
      FieldName = 'HISTORICOCOMPRA'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object pyPerfilCODHISTORICO_VENDA: TIntegerField
      FieldName = 'CODHISTORICO_VENDA'
    end
    object pyPerfilHISTORICOVENDA: TStringField
      FieldName = 'HISTORICOVENDA'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object pyPerfilMENSAGEM_OS: TStringField
      FieldName = 'MENSAGEM_OS'
      Size = 254
    end
    object pyPerfilMENSAGEM_VENDA: TStringField
      FieldName = 'MENSAGEM_VENDA'
      Size = 254
    end
    object pyPerfilSENHA_CLIENTES: TStringField
      FieldName = 'SENHA_CLIENTES'
      FixedChar = True
      Size = 1
    end
    object pyPerfilSENHA_PRODUTOS: TStringField
      FieldName = 'SENHA_PRODUTOS'
      FixedChar = True
      Size = 1
    end
    object pyPerfilSENHA_OS: TStringField
      FieldName = 'SENHA_OS'
      FixedChar = True
      Size = 1
    end
    object pyPerfilSENHA_FECHAMENTO: TStringField
      FieldName = 'SENHA_FECHAMENTO'
      FixedChar = True
      Size = 1
    end
    object pyPerfilSENHA_BAIXA: TStringField
      FieldName = 'SENHA_BAIXA'
      FixedChar = True
      Size = 1
    end
    object pyPerfilVERIFICA_LIMITE: TStringField
      FieldName = 'VERIFICA_LIMITE'
      FixedChar = True
      Size = 1
    end
    object pyPerfilCOPIAS_OS: TIntegerField
      FieldName = 'COPIAS_OS'
    end
    object pyPerfilCOPIAS_OS2: TIntegerField
      FieldName = 'COPIAS_OS2'
    end
    object pyPerfilCOPIAS_RECIBO: TIntegerField
      FieldName = 'COPIAS_RECIBO'
    end
    object pyPerfilPRECO_CLIENTE: TStringField
      FieldName = 'PRECO_CLIENTE'
      FixedChar = True
      Size = 1
    end
  end
  object pvPerfil: TDataSetProvider
    DataSet = pyPerfil
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 392
    Top = 600
  end
  object pySequencia: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  SEQUENCIA.* '#13#10'FROM '#13#10'  SEQUENCIA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 464
    Top = 552
    object pySequenciaSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object pySequenciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object pySequenciaTABELA: TStringField
      FieldName = 'TABELA'
      FixedChar = True
      Size = 30
    end
    object pySequenciaSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
  end
  object pvSequencia: TDataSetProvider
    DataSet = pySequencia
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 600
  end
  object qyPagamentos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  PAGAMENTOS.*, '#13#10'  CAST(PAGAMENTOS.DAT' +
      'ACADAST AS DATE) AS BUSCA_DATACAD, '#13#10'  CAST(PAGAMENTOS.DATAVENCI' +
      'MENTO AS DATE) AS BUSCA_DATAVEN, '#13#10'  CAST(PAGAMENTOS.DATAPAGO AS' +
      ' DATE) AS BUSCA_DATAPAG, '#13#10'  CLIENTES.NOME, '#13#10'  UDF_TRIM(PLANCON' +
      'TAS.CODPLANO) || '#39' '#39' || PLANCONTAS.DESCRICAO AS PLANO, '#13#10'  HISTO' +
      'RICOPAG.DESCRICAO AS HISTORICOPAGAMENTO,'#13#10'  DOCUMENTOS.DOCUMENTO' +
      #13#10'FROM '#13#10'  PAGAMENTOS '#13#10'  JOIN CLIENTES ON '#13#10'    (CLIENTES.CODIG' +
      'O = PAGAMENTOS.CODCLIENTE) '#13#10'  JOIN DOCUMENTOS ON'#13#10'    (DOCUMENT' +
      'OS.CODIGO = PAGAMENTOS.CODDOCUMENTO)'#13#10'  LEFT JOIN PLANCONTAS ON ' +
      #13#10'    (PLANCONTAS.CODIGO = PAGAMENTOS.CODPLANO) '#13#10'  LEFT JOIN HI' +
      'STORICOPAG ON '#13#10'    (HISTORICOPAG.CODIGO = PAGAMENTOS.CODHISTORI' +
      'CO)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 536
    Top = 552
    object qyPagamentosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyPagamentosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyPagamentosCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
    end
    object qyPagamentosNUMERO: TSmallintField
      FieldName = 'NUMERO'
    end
    object qyPagamentosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 40
    end
    object qyPagamentosES: TSmallintField
      FieldName = 'ES'
    end
    object qyPagamentosDATACADAST: TSQLTimeStampField
      FieldName = 'DATACADAST'
    end
    object qyPagamentosVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qyPagamentosCODDOCUMENTO: TIntegerField
      FieldName = 'CODDOCUMENTO'
    end
    object qyPagamentosINFODOC: TStringField
      FieldName = 'INFODOC'
      FixedChar = True
      Size = 50
    end
    object qyPagamentosEXTERNO: TStringField
      FieldName = 'EXTERNO'
      FixedChar = True
      Size = 1
    end
    object qyPagamentosARQUIVO: TStringField
      FieldName = 'ARQUIVO'
      FixedChar = True
      Size = 50
    end
    object qyPagamentosHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 1024
    end
    object qyPagamentosPAGO: TSmallintField
      FieldName = 'PAGO'
    end
    object qyPagamentosDATAPAGO: TSQLTimeStampField
      FieldName = 'DATAPAGO'
    end
    object qyPagamentosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qyPagamentosMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
    end
    object qyPagamentosTOTAL_PAGO: TFloatField
      FieldName = 'TOTAL_PAGO'
    end
    object qyPagamentosDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object qyPagamentosSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosSALDOANT: TFloatField
      FieldName = 'SALDOANT'
    end
    object qyPagamentosSALDOATU: TFloatField
      FieldName = 'SALDOATU'
    end
    object qyPagamentosCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
    end
    object qyPagamentosCODLANCTO: TIntegerField
      FieldName = 'CODLANCTO'
    end
    object qyPagamentosNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
    object qyPagamentosVALOR_COMISSAO: TFloatField
      FieldName = 'VALOR_COMISSAO'
    end
    object qyPagamentosTIPO_PAG: TStringField
      FieldName = 'TIPO_PAG'
      FixedChar = True
      Size = 1
    end
    object qyPagamentosTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      FixedChar = True
      Size = 1
    end
    object qyPagamentosCH_BANCO: TIntegerField
      FieldName = 'CH_BANCO'
    end
    object qyPagamentosCH_AGENCIA: TIntegerField
      FieldName = 'CH_AGENCIA'
    end
    object qyPagamentosCH_CONTA: TIntegerField
      FieldName = 'CH_CONTA'
    end
    object qyPagamentosCH_SERIE: TStringField
      FieldName = 'CH_SERIE'
      FixedChar = True
      Size = 10
    end
    object qyPagamentosCH_NUMERO: TIntegerField
      FieldName = 'CH_NUMERO'
    end
    object qyPagamentosCODCENTRO: TIntegerField
      FieldName = 'CODCENTRO'
    end
    object qyPagamentosCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object qyPagamentosCODPLANO: TIntegerField
      FieldName = 'CODPLANO'
    end
    object qyPagamentosESTORNO_CODUSUARIO: TIntegerField
      FieldName = 'ESTORNO_CODUSUARIO'
    end
    object qyPagamentosESTORNO_DATA: TSQLTimeStampField
      FieldName = 'ESTORNO_DATA'
    end
    object qyPagamentosESTORNO_CODESTORNO: TIntegerField
      FieldName = 'ESTORNO_CODESTORNO'
    end
    object qyPagamentosESTORNO_CODRELANC: TIntegerField
      FieldName = 'ESTORNO_CODRELANC'
    end
    object qyPagamentosESTORNO_NOMEUSER: TStringField
      FieldName = 'ESTORNO_NOMEUSER'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
    end
    object qyPagamentosLOG_USUARIO: TStringField
      FieldName = 'LOG_USUARIO'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosLOG_TIPO: TStringField
      FieldName = 'LOG_TIPO'
      FixedChar = True
      Size = 10
    end
    object qyPagamentosLOG_MAQUINA: TStringField
      FieldName = 'LOG_MAQUINA'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosLOG_DATAREMOTO: TSQLTimeStampField
      FieldName = 'LOG_DATAREMOTO'
    end
    object qyPagamentosCAD_DATA_FLUXO: TDateField
      FieldName = 'CAD_DATA_FLUXO'
    end
    object qyPagamentosCAD_SEMANA_FLUXO: TIntegerField
      FieldName = 'CAD_SEMANA_FLUXO'
    end
    object qyPagamentosCAD_MES_FLUXO: TIntegerField
      FieldName = 'CAD_MES_FLUXO'
    end
    object qyPagamentosCAD_TRIMESTRE_FLUXO: TIntegerField
      FieldName = 'CAD_TRIMESTRE_FLUXO'
    end
    object qyPagamentosCAD_QUADRIMESTRE_FLUXO: TIntegerField
      FieldName = 'CAD_QUADRIMESTRE_FLUXO'
    end
    object qyPagamentosCAD_SEMESTRE_FLUXO: TIntegerField
      FieldName = 'CAD_SEMESTRE_FLUXO'
    end
    object qyPagamentosCAD_ANO_FLUXO: TIntegerField
      FieldName = 'CAD_ANO_FLUXO'
    end
    object qyPagamentosCAD_STR_SEMANA_FLUXO: TStringField
      FieldName = 'CAD_STR_SEMANA_FLUXO'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosCAD_STR_MES_FLUXO: TStringField
      FieldName = 'CAD_STR_MES_FLUXO'
      FixedChar = True
    end
    object qyPagamentosCAD_STR_BIMESTRE_FLUXO: TStringField
      FieldName = 'CAD_STR_BIMESTRE_FLUXO'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosCAD_STR_TRIMESTRE_FLUXO: TStringField
      FieldName = 'CAD_STR_TRIMESTRE_FLUXO'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosCAD_STR_QUADRIMESTRE_FLUXO: TStringField
      FieldName = 'CAD_STR_QUADRIMESTRE_FLUXO'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosCAD_STR_SEMESTRE_FLUXO: TStringField
      FieldName = 'CAD_STR_SEMESTRE_FLUXO'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosCAD_BIMESTRE_FLUXO: TIntegerField
      FieldName = 'CAD_BIMESTRE_FLUXO'
    end
    object qyPagamentosVEN_DATA_FLUXO: TDateField
      FieldName = 'VEN_DATA_FLUXO'
    end
    object qyPagamentosVEN_SEMANA_FLUXO: TIntegerField
      FieldName = 'VEN_SEMANA_FLUXO'
    end
    object qyPagamentosVEN_MES_FLUXO: TIntegerField
      FieldName = 'VEN_MES_FLUXO'
    end
    object qyPagamentosVEN_TRIMESTRE_FLUXO: TIntegerField
      FieldName = 'VEN_TRIMESTRE_FLUXO'
    end
    object qyPagamentosVEN_QUADRIMESTRE_FLUXO: TIntegerField
      FieldName = 'VEN_QUADRIMESTRE_FLUXO'
    end
    object qyPagamentosVEN_SEMESTRE_FLUXO: TIntegerField
      FieldName = 'VEN_SEMESTRE_FLUXO'
    end
    object qyPagamentosVEN_ANO_FLUXO: TIntegerField
      FieldName = 'VEN_ANO_FLUXO'
    end
    object qyPagamentosVEN_STR_SEMANA_FLUXO: TStringField
      FieldName = 'VEN_STR_SEMANA_FLUXO'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosVEN_STR_MES_FLUXO: TStringField
      FieldName = 'VEN_STR_MES_FLUXO'
      FixedChar = True
    end
    object qyPagamentosVEN_STR_BIMESTRE_FLUXO: TStringField
      FieldName = 'VEN_STR_BIMESTRE_FLUXO'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosVEN_STR_TRIMESTRE_FLUXO: TStringField
      FieldName = 'VEN_STR_TRIMESTRE_FLUXO'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosVEN_STR_QUADRIMESTRE_FLUXO: TStringField
      FieldName = 'VEN_STR_QUADRIMESTRE_FLUXO'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosVEN_STR_SEMESTRE_FLUXO: TStringField
      FieldName = 'VEN_STR_SEMESTRE_FLUXO'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosVEN_BIMESTRE_FLUXO: TIntegerField
      FieldName = 'VEN_BIMESTRE_FLUXO'
    end
    object qyPagamentosPAG_DATA_FLUXO: TDateField
      FieldName = 'PAG_DATA_FLUXO'
    end
    object qyPagamentosPAG_SEMANA_FLUXO: TIntegerField
      FieldName = 'PAG_SEMANA_FLUXO'
    end
    object qyPagamentosPAG_MES_FLUXO: TIntegerField
      FieldName = 'PAG_MES_FLUXO'
    end
    object qyPagamentosPAG_TRIMESTRE_FLUXO: TIntegerField
      FieldName = 'PAG_TRIMESTRE_FLUXO'
    end
    object qyPagamentosPAG_QUADRIMESTRE_FLUXO: TIntegerField
      FieldName = 'PAG_QUADRIMESTRE_FLUXO'
    end
    object qyPagamentosPAG_SEMESTRE_FLUXO: TIntegerField
      FieldName = 'PAG_SEMESTRE_FLUXO'
    end
    object qyPagamentosPAG_ANO_FLUXO: TIntegerField
      FieldName = 'PAG_ANO_FLUXO'
    end
    object qyPagamentosPAG_STR_SEMANA_FLUXO: TStringField
      FieldName = 'PAG_STR_SEMANA_FLUXO'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosPAG_STR_MES_FLUXO: TStringField
      FieldName = 'PAG_STR_MES_FLUXO'
      FixedChar = True
    end
    object qyPagamentosPAG_STR_BIMESTRE_FLUXO: TStringField
      FieldName = 'PAG_STR_BIMESTRE_FLUXO'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosPAG_STR_TRIMESTRE_FLUXO: TStringField
      FieldName = 'PAG_STR_TRIMESTRE_FLUXO'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosPAG_STR_QUADRIMESTRE_FLUXO: TStringField
      FieldName = 'PAG_STR_QUADRIMESTRE_FLUXO'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosPAG_STR_SEMESTRE_FLUXO: TStringField
      FieldName = 'PAG_STR_SEMESTRE_FLUXO'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosPAG_BIMESTRE_FLUXO: TIntegerField
      FieldName = 'PAG_BIMESTRE_FLUXO'
    end
    object qyPagamentosCH_NOME: TStringField
      FieldName = 'CH_NOME'
      Size = 40
    end
    object qyPagamentosCH_DOC: TStringField
      FieldName = 'CH_DOC'
      Size = 10
    end
    object qyPagamentosCODHISTORICO: TIntegerField
      FieldName = 'CODHISTORICO'
    end
    object qyPagamentosCONDPAG: TStringField
      FieldName = 'CONDPAG'
      FixedChar = True
      Size = 60
    end
    object qyPagamentosVALOR_FLUXO: TFloatField
      FieldName = 'VALOR_FLUXO'
    end
    object qyPagamentosNUMDOC: TIntegerField
      FieldName = 'NUMDOC'
    end
    object qyPagamentosDATADOC: TDateField
      FieldName = 'DATADOC'
    end
    object qyPagamentosTIPODOC: TStringField
      FieldName = 'TIPODOC'
      FixedChar = True
      Size = 3
    end
    object qyPagamentosEXCLUSAO_NOMEUSER: TStringField
      FieldName = 'EXCLUSAO_NOMEUSER'
      FixedChar = True
      Size = 30
    end
    object qyPagamentosEXCLUSAO_DATAHORA: TSQLTimeStampField
      FieldName = 'EXCLUSAO_DATAHORA'
    end
    object qyPagamentosCODANTIGO: TIntegerField
      FieldName = 'CODANTIGO'
    end
    object qyPagamentosEXTENSO: TStringField
      FieldName = 'EXTENSO'
      Size = 254
    end
    object qyPagamentosBUSCA_DATACAD: TDateField
      FieldName = 'BUSCA_DATACAD'
      ProviderFlags = []
    end
    object qyPagamentosBUSCA_DATAVEN: TDateField
      FieldName = 'BUSCA_DATAVEN'
      ProviderFlags = []
    end
    object qyPagamentosBUSCA_DATAPAG: TDateField
      FieldName = 'BUSCA_DATAPAG'
      ProviderFlags = []
    end
    object qyPagamentosNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qyPagamentosPLANO: TStringField
      FieldName = 'PLANO'
      ProviderFlags = []
      Size = 295
    end
    object qyPagamentosHISTORICOPAGAMENTO: TStringField
      FieldName = 'HISTORICOPAGAMENTO'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object qyPagamentosDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
  end
  object pvPagamentos: TDataSetProvider
    DataSet = qyPagamentos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 536
    Top = 600
  end
  object qyLancont: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  CONTABIL.*, '#13#10'  PC1.CODPLANO || '#39' '#39' |' +
      '| PC1.DESCRICAO AS DEBITO, '#13#10'  PC2.CODPLANO || '#39' '#39' || PC2.DESCRI' +
      'CAO AS CREDITO '#13#10'FROM '#13#10'  CONTABIL '#13#10'  LEFT JOIN PLANCONTAS PC1 ' +
      'ON '#13#10'    (PC1.CODIGO = CONTABIL.CONTADEBITO) '#13#10'  LEFT JOIN PLANC' +
      'ONTAS PC2 ON '#13#10'    (PC2.CODIGO = CONTABIL.CONTACREDITO)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 608
    Top = 552
    object qyLancontSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyLancontCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyLancontDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qyLancontOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 254
    end
    object qyLancontCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
    end
    object qyLancontCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
    end
    object qyLancontDEBITO: TStringField
      FieldName = 'DEBITO'
      ProviderFlags = []
      Size = 61
    end
    object qyLancontCREDITO: TStringField
      FieldName = 'CREDITO'
      ProviderFlags = []
      Size = 61
    end
  end
  object pvLancont: TDataSetProvider
    DataSet = qyLancont
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 608
    Top = 600
  end
  object qyVeiculos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  VEICULOS.* '#13#10'FROM '#13#10'  VEICULOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 680
    Top = 552
    object qyVeiculosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyVeiculosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyVeiculosANO: TIntegerField
      FieldName = 'ANO'
    end
    object qyVeiculosKM_INICIAL: TIntegerField
      FieldName = 'KM_INICIAL'
    end
    object qyVeiculosCHASSI: TStringField
      FieldName = 'CHASSI'
      FixedChar = True
      Size = 60
    end
    object qyVeiculosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 40
    end
  end
  object pvVeiculos: TDataSetProvider
    DataSet = qyVeiculos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 680
    Top = 600
  end
  object qyImpressoras: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL,'#13#10'  IMPRESSORAS.* '#13#10'FROM '#13#10'  IMPRESSORAS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 32
    Top = 656
    object qyImpressorasSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyImpressorasMAQUINA: TStringField
      FieldName = 'MAQUINA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 40
    end
    object qyImpressorasCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyImpressorasOS1: TStringField
      FieldName = 'OS1'
      FixedChar = True
      Size = 60
    end
    object qyImpressorasOS2: TStringField
      FieldName = 'OS2'
      FixedChar = True
      Size = 60
    end
    object qyImpressorasFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      FixedChar = True
      Size = 60
    end
    object qyImpressorasNF: TStringField
      FieldName = 'NF'
      FixedChar = True
      Size = 60
    end
    object qyImpressorasRECIBO: TStringField
      FieldName = 'RECIBO'
      FixedChar = True
      Size = 60
    end
    object qyImpressorasBOLETO: TStringField
      FieldName = 'BOLETO'
      FixedChar = True
      Size = 60
    end
    object qyImpressorasECF: TStringField
      FieldName = 'ECF'
      FixedChar = True
      Size = 30
    end
    object qyImpressorasECF_NCC: TStringField
      FieldName = 'ECF_NCC'
      FixedChar = True
      Size = 1
    end
  end
  object pvImpressoras: TDataSetProvider
    DataSet = qyImpressoras
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 704
  end
  object qyImpnota: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  IMPNOTA.* '#13#10'FROM '#13#10'  IMPNOTA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 104
    Top = 656
    object qyImpnotaSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyImpnotaNUMIMPNOTA: TIntegerField
      FieldName = 'NUMIMPNOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyImpnotaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 60
    end
    object qyImpnotaLINHA18: TStringField
      FieldName = 'LINHA18'
      FixedChar = True
      Size = 1
    end
    object qyImpnotaALTURA: TSmallintField
      FieldName = 'ALTURA'
    end
    object qyImpnotaDUP_LINHAINI: TSmallintField
      FieldName = 'DUP_LINHAINI'
    end
    object qyImpnotaDUP_COLUNAS: TSmallintField
      FieldName = 'DUP_COLUNAS'
    end
    object qyImpnotaDUP_TAMANHOCOL: TSmallintField
      FieldName = 'DUP_TAMANHOCOL'
    end
    object qyImpnotaDUP_LINHAS: TSmallintField
      FieldName = 'DUP_LINHAS'
    end
    object qyImpnotaPRO_LINHAINI: TSmallintField
      FieldName = 'PRO_LINHAINI'
    end
    object qyImpnotaPRO_LINHAS: TSmallintField
      FieldName = 'PRO_LINHAS'
    end
    object qyImpnotaSER_LINHAINI: TSmallintField
      FieldName = 'SER_LINHAINI'
    end
    object qyImpnotaSER_LINHAS: TSmallintField
      FieldName = 'SER_LINHAS'
    end
    object qyImpnotaEFEITOBASE: TStringField
      FieldName = 'EFEITOBASE'
      FixedChar = True
      Size = 10
    end
    object qyImpnotaDUP_COLUNAINI: TSmallintField
      FieldName = 'DUP_COLUNAINI'
    end
  end
  object pvImpnota: TDataSetProvider
    DataSet = qyImpnota
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 704
  end
  object qyImpnotacorpo: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  ITIMPNOTA.* '#13#10'FROM '#13#10'  ITIMPNOTA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 176
    Top = 656
    object qyImpnotacorpoSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyImpnotacorpoNUMIMPNOTA: TIntegerField
      FieldName = 'NUMIMPNOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyImpnotacorpoLINHA: TSmallintField
      FieldName = 'LINHA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyImpnotacorpoCOLUNA: TSmallintField
      FieldName = 'COLUNA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyImpnotacorpoCAMPO: TStringField
      FieldName = 'CAMPO'
      FixedChar = True
      Size = 60
    end
    object qyImpnotacorpoTAMANHO: TSmallintField
      FieldName = 'TAMANHO'
    end
    object qyImpnotacorpoALTURA: TSmallintField
      FieldName = 'ALTURA'
    end
    object qyImpnotacorpoMASCARA: TStringField
      FieldName = 'MASCARA'
      FixedChar = True
      Size = 60
    end
    object qyImpnotacorpoALINHAMENTO: TStringField
      FieldName = 'ALINHAMENTO'
      FixedChar = True
      Size = 1
    end
    object qyImpnotacorpoEFEITO: TStringField
      FieldName = 'EFEITO'
      FixedChar = True
      Size = 10
    end
  end
  object pvImpnotacorpo: TDataSetProvider
    DataSet = qyImpnotacorpo
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 176
    Top = 704
  end
  object qyImpnotadup: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  ITIMPNOTADUP.* '#13#10'FROM '#13#10'  ITIMPNOTADU' +
      'P'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 248
    Top = 656
    object qyImpnotadupSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyImpnotadupNUMIMPNOTA: TIntegerField
      FieldName = 'NUMIMPNOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyImpnotadupCOLUNA: TSmallintField
      FieldName = 'COLUNA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyImpnotadupCAMPO: TStringField
      FieldName = 'CAMPO'
      FixedChar = True
      Size = 60
    end
    object qyImpnotadupTAMANHO: TSmallintField
      FieldName = 'TAMANHO'
    end
    object qyImpnotadupALTURA: TSmallintField
      FieldName = 'ALTURA'
    end
    object qyImpnotadupMASCARA: TStringField
      FieldName = 'MASCARA'
      FixedChar = True
      Size = 60
    end
    object qyImpnotadupALINHAMENTO: TStringField
      FieldName = 'ALINHAMENTO'
      FixedChar = True
      Size = 1
    end
    object qyImpnotadupEFEITO: TStringField
      FieldName = 'EFEITO'
      FixedChar = True
      Size = 10
    end
  end
  object pvImpnotadup: TDataSetProvider
    DataSet = qyImpnotadup
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 248
    Top = 704
  end
  object qyImpnotapro: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  ITIMPNOTAPRO.* '#13#10'FROM '#13#10'  ITIMPNOTAPR' +
      'O'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 320
    Top = 656
    object qyImpnotaproSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyImpnotaproNUMIMPNOTA: TIntegerField
      FieldName = 'NUMIMPNOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyImpnotaproCOLUNA: TSmallintField
      FieldName = 'COLUNA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyImpnotaproCAMPO: TStringField
      FieldName = 'CAMPO'
      FixedChar = True
      Size = 60
    end
    object qyImpnotaproTAMANHO: TSmallintField
      FieldName = 'TAMANHO'
    end
    object qyImpnotaproALTURA: TSmallintField
      FieldName = 'ALTURA'
    end
    object qyImpnotaproMASCARA: TStringField
      FieldName = 'MASCARA'
      FixedChar = True
      Size = 60
    end
    object qyImpnotaproALINHAMENTO: TStringField
      FieldName = 'ALINHAMENTO'
      FixedChar = True
      Size = 1
    end
    object qyImpnotaproEFEITO: TStringField
      FieldName = 'EFEITO'
      FixedChar = True
      Size = 10
    end
  end
  object pvImpnotapro: TDataSetProvider
    DataSet = qyImpnotapro
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 320
    Top = 704
  end
  object qyImpnotaser: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  ITIMPNOTASER.* '#13#10'FROM '#13#10'  ITIMPNOTASE' +
      'R'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 392
    Top = 656
    object qyImpnotaserSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyImpnotaserNUMIMPNOTA: TIntegerField
      FieldName = 'NUMIMPNOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyImpnotaserCOLUNA: TSmallintField
      FieldName = 'COLUNA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyImpnotaserCAMPO: TStringField
      FieldName = 'CAMPO'
      FixedChar = True
      Size = 60
    end
    object qyImpnotaserTAMANHO: TSmallintField
      FieldName = 'TAMANHO'
    end
    object qyImpnotaserALTURA: TSmallintField
      FieldName = 'ALTURA'
    end
    object qyImpnotaserMASCARA: TStringField
      FieldName = 'MASCARA'
      FixedChar = True
      Size = 60
    end
    object qyImpnotaserALINHAMENTO: TStringField
      FieldName = 'ALINHAMENTO'
      FixedChar = True
      Size = 1
    end
    object qyImpnotaserEFEITO: TStringField
      FieldName = 'EFEITO'
      FixedChar = True
      Size = 10
    end
  end
  object pvImpnotaser: TDataSetProvider
    DataSet = qyImpnotaser
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 392
    Top = 704
  end
  object qyCorpocampos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  PROC_PARAMS.* '#13#10'FROM '#13#10'  PROC_PARAMS(' +
      #39'REL_NOTACORPO'#39')'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 464
    Top = 656
    object qyCorpocamposSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyCorpocamposNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyCorpocamposNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 31
    end
    object qyCorpocamposTAMANHO: TIntegerField
      FieldName = 'TAMANHO'
    end
    object qyCorpocamposENTSAI: TStringField
      FieldName = 'ENTSAI'
      FixedChar = True
      Size = 1
    end
  end
  object pvCorpocampos: TDataSetProvider
    DataSet = qyCorpocampos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 704
  end
  object qyDupcampos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  PROC_PARAMS.* '#13#10'FROM '#13#10'  PROC_PARAMS(' +
      #39'REL_NOTADUP'#39')'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 536
    Top = 656
    object qyDupcamposSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyDupcamposNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyDupcamposNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 31
    end
    object qyDupcamposTAMANHO: TIntegerField
      FieldName = 'TAMANHO'
    end
    object qyDupcamposENTSAI: TStringField
      FieldName = 'ENTSAI'
      FixedChar = True
      Size = 1
    end
  end
  object pvDupcampos: TDataSetProvider
    DataSet = qyDupcampos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 536
    Top = 704
  end
  object qyProcampos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  PROC_PARAMS.* '#13#10'FROM '#13#10'  PROC_PARAMS(' +
      #39'REL_NOTAPRO'#39')'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 608
    Top = 656
    object qyProcamposSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyProcamposNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyProcamposNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 31
    end
    object qyProcamposTAMANHO: TIntegerField
      FieldName = 'TAMANHO'
    end
    object qyProcamposENTSAI: TStringField
      FieldName = 'ENTSAI'
      FixedChar = True
      Size = 1
    end
  end
  object pvProcampos: TDataSetProvider
    DataSet = qyProcampos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 608
    Top = 704
  end
  object qySercampos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  PROC_PARAMS.* '#13#10'FROM '#13#10'  PROC_PARAMS(' +
      #39'REL_NOTASER'#39')'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 680
    Top = 656
    object qySercamposSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qySercamposNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qySercamposNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 31
    end
    object qySercamposTAMANHO: TIntegerField
      FieldName = 'TAMANHO'
    end
    object qySercamposENTSAI: TStringField
      FieldName = 'ENTSAI'
      FixedChar = True
      Size = 1
    end
  end
  object pvSercampos: TDataSetProvider
    DataSet = qySercampos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 680
    Top = 704
  end
  object qyCliequip: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  CE.*, '#13#10'  MA.DESCRICAO AS MARCA, '#13#10'  ' +
      'MO.DESCRICAO AS MODELO '#13#10'FROM '#13#10'  CLI_EQUIP CE '#13#10'  JOIN MARCAS M' +
      'A ON '#13#10'    (MA.CODIGO = CE.CODMARCA) '#13#10'  JOIN MODELOS MO ON '#13#10'  ' +
      '  (MO.CODIGO = CE.CODMODELO AND '#13#10'     MO.CODEQUIPAMENTO = CE.CO' +
      'DMARCA)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 32
    Top = 760
    object qyCliequipSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyCliequipCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyCliequipCODEQUIPAMENTO: TIntegerField
      FieldName = 'CODEQUIPAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyCliequipCODMARCA: TIntegerField
      FieldName = 'CODMARCA'
    end
    object qyCliequipCODMODELO: TIntegerField
      FieldName = 'CODMODELO'
    end
    object qyCliequipSERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
      Size = 30
    end
    object qyCliequipGARANTIA: TStringField
      FieldName = 'GARANTIA'
      FixedChar = True
      Size = 1
    end
    object qyCliequipDATAINI: TDateField
      FieldName = 'DATAINI'
    end
    object qyCliequipDATAFIM: TDateField
      FieldName = 'DATAFIM'
    end
    object qyCliequipTIPOCONTRATO: TStringField
      FieldName = 'TIPOCONTRATO'
      FixedChar = True
      Size = 30
    end
    object qyCliequipNUMERADOR: TIntegerField
      FieldName = 'NUMERADOR'
    end
    object qyCliequipTERRITORIO: TStringField
      FieldName = 'TERRITORIO'
      FixedChar = True
      Size = 1
    end
    object qyCliequipMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qyCliequipMODELO: TStringField
      FieldName = 'MODELO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
  end
  object pvCliequip: TDataSetProvider
    DataSet = qyCliequip
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 808
  end
  object qyAgenda: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  * '#13#10'FROM '#13#10'  AGENDA '#13#10'WHERE '#13#10'  CODUSUARIO = :CODUSUA' +
      'RIO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODUSUARIO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 104
    Top = 760
    object qyAgendaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyAgendaPARENTID: TIntegerField
      FieldName = 'PARENTID'
    end
    object qyAgendaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
    object qyAgendaTYPEINT: TIntegerField
      FieldName = 'TYPEINT'
    end
    object qyAgendaSTART: TSQLTimeStampField
      FieldName = 'START'
    end
    object qyAgendaFINISH: TSQLTimeStampField
      FieldName = 'FINISH'
    end
    object qyAgendaOPTIONS: TIntegerField
      FieldName = 'OPTIONS'
    end
    object qyAgendaCAPTION: TStringField
      FieldName = 'CAPTION'
      Size = 254
    end
    object qyAgendaRECURRENCEINDEX: TIntegerField
      FieldName = 'RECURRENCEINDEX'
    end
    object qyAgendaRECURRENCEINFO: TBlobField
      FieldName = 'RECURRENCEINFO'
    end
    object qyAgendaRESOURCEID: TIntegerField
      FieldName = 'RESOURCEID'
    end
    object qyAgendaLOCATION: TStringField
      FieldName = 'LOCATION'
      Size = 254
    end
    object qyAgendaMESSAGESTR: TStringField
      FieldName = 'MESSAGESTR'
      Size = 254
    end
    object qyAgendaREMINDER: TIntegerField
      FieldName = 'REMINDER'
    end
    object qyAgendaSTATE: TIntegerField
      FieldName = 'STATE'
    end
    object qyAgendaLABELCOLOR: TIntegerField
      FieldName = 'LABELCOLOR'
    end
  end
  object pvAgenda: TDataSetProvider
    DataSet = qyAgenda
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 808
  end
  object qyTrocasenha: TSQLDataSet
    CommandText = 'TROCA_SENHAWEB'
    CommandType = ctStoredProc
    DbxCommandType = 'Dbx.StoredProcedure'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODUSUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 10
        Name = 'SENHAATUAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 10
        Name = 'SENHANOVA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 10
        Name = 'SENHACONFIRMACAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'MAQUINA'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Precision = 8
        Name = 'DATAHORAREMOTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RESULTADO'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 176
    Top = 760
  end
  object pvTrocaSenha: TDataSetProvider
    DataSet = qyTrocasenha
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 176
    Top = 808
  end
  object qyNFemissao: TSQLDataSet
    CommandText = 'NF_EMISSAO'
    CommandType = ctStoredProc
    DbxCommandType = 'Dbx.StoredProcedure'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'NOTA_NUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 3
        Name = 'NOTA_TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Precision = 8
        Name = 'DATA_EMISSAO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Precision = 8
        Name = 'DATA_SAIDA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 50
        Name = 'CHAVE_NFE'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 248
    Top = 760
  end
  object pvNFemissao: TDataSetProvider
    DataSet = qyNFemissao
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 248
    Top = 808
  end
  object qmIndividuais: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  ID.CODIGO,'#13#10'  ID.BARRA, '#13#10'  ID.SERIE,' +
      ' '#13#10'  ID.SERIE2,'#13#10'  ID.QUANTIDADE, '#13#10'  ID.VALOR_PAGO,'#13#10'  ID.CODMO' +
      'VENTRADA,'#13#10'  ID.CODMOVSAIDA, '#13#10'  ID.CODOPERADORA,'#13#10'  ID.CODPLANO' +
      ', '#13#10'  ID.NUMERO_FONE, '#13#10'  ID.REBATE,'#13#10'  ID.ATIVACAO, '#13#10'  ID.VEND' +
      'IDO,'#13#10'  CAST(ME.DATA AS DATE) AS DATAENTRADA,'#13#10'  CAST(MS.DATA AS' +
      ' DATE) AS DATASAIDA,'#13#10'  ID.TEMPOESTOQUE, '#13#10'  PO.CODIGO AS CODPRO' +
      'DUTO, '#13#10'  PO.DESCRICAO, '#13#10'  ME.CODIGO AS CODCOMPRA, '#13#10'  MS.CODIG' +
      'O AS CODVENDA, '#13#10'  CE.CODIGO AS CODFORNECEDOR, '#13#10'  CS.CODIGO AS ' +
      'CODCLIENTE, '#13#10'  CE.NOME AS FORNECEDOR, '#13#10'  CS.NOME AS CLIENTE, '#13 +
      #10'  OP.NOME AS OPERADORA, '#13#10'  PL.NOME AS PLANO,'#13#10'  ID.TOTAL_CUSTO' +
      ','#13#10'  (ID.VALOR_PAGO / ID.QUANTIDADE) AS VENDA_ITEM,'#13#10'  (ID.TOTAL' +
      '_CUSTO / ID.QUANTIDADE) AS COMPRA_ITEM,'#13#10'  ID.TOTAL_LUCRO,'#13#10'  ID' +
      '.CODEMPRESA'#13#10'FROM '#13#10'  INDIVIDUAIS ID '#13#10'  JOIN PRODUTOS PO ON '#13#10' ' +
      '   (PO.CODIGO = ID.CODPRODUTO) '#13#10'  LEFT JOIN MOVIMENTOS ME ON '#13#10 +
      '    (ME.CODIGO = ID.CODMOVENTRADA) '#13#10'  LEFT JOIN MOVIMENTOS MS O' +
      'N '#13#10'    (MS.CODIGO = ID.CODMOVSAIDA) '#13#10'  LEFT JOIN CLIENTES CE O' +
      'N '#13#10'    (CE.CODIGO = ME.CODCLIENTE) '#13#10'  LEFT JOIN CLIENTES CS ON' +
      ' '#13#10'    (CS.CODIGO = MS.CODCLIENTE) '#13#10'  LEFT JOIN OPERADORAS OP O' +
      'N '#13#10'    (OP.CODIGO = ID.CODOPERADORA) '#13#10'  LEFT JOIN PLANOS PL ON' +
      ' '#13#10'    (PL.CODIGO = ID.CODPLANO AND '#13#10'     PL.CODOPERADORA = ID.' +
      'CODOPERADORA) '#13#10'WHERE '#13#10'  ID.PS = '#39'P'#39
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 32
    Top = 880
    object qmIndividuaisSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qmIndividuaisCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qmIndividuaisBARRA: TStringField
      FieldName = 'BARRA'
      FixedChar = True
      Size = 14
    end
    object qmIndividuaisSERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
    end
    object qmIndividuaisSERIE2: TStringField
      FieldName = 'SERIE2'
      FixedChar = True
    end
    object qmIndividuaisQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 20
      Size = 3
    end
    object qmIndividuaisVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object qmIndividuaisCODMOVENTRADA: TIntegerField
      FieldName = 'CODMOVENTRADA'
    end
    object qmIndividuaisCODMOVSAIDA: TIntegerField
      FieldName = 'CODMOVSAIDA'
    end
    object qmIndividuaisCODOPERADORA: TIntegerField
      FieldName = 'CODOPERADORA'
    end
    object qmIndividuaisCODPLANO: TIntegerField
      FieldName = 'CODPLANO'
    end
    object qmIndividuaisNUMERO_FONE: TStringField
      FieldName = 'NUMERO_FONE'
      FixedChar = True
    end
    object qmIndividuaisREBATE: TStringField
      FieldName = 'REBATE'
      FixedChar = True
      Size = 1
    end
    object qmIndividuaisATIVACAO: TStringField
      FieldName = 'ATIVACAO'
      FixedChar = True
      Size = 1
    end
    object qmIndividuaisVENDIDO: TStringField
      FieldName = 'VENDIDO'
      FixedChar = True
      Size = 1
    end
    object qmIndividuaisTEMPOESTOQUE: TFloatField
      FieldName = 'TEMPOESTOQUE'
    end
    object qmIndividuaisCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = []
    end
    object qmIndividuaisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object qmIndividuaisCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      ProviderFlags = []
    end
    object qmIndividuaisCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = []
    end
    object qmIndividuaisCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = []
    end
    object qmIndividuaisCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = []
    end
    object qmIndividuaisFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmIndividuaisCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmIndividuaisOPERADORA: TStringField
      FieldName = 'OPERADORA'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmIndividuaisPLANO: TStringField
      FieldName = 'PLANO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmIndividuaisTOTAL_CUSTO: TFMTBCDField
      FieldName = 'TOTAL_CUSTO'
      ProviderFlags = []
      Precision = 20
      Size = 2
    end
    object qmIndividuaisVENDA_ITEM: TFMTBCDField
      FieldName = 'VENDA_ITEM'
      ProviderFlags = []
      Precision = 20
      Size = 5
    end
    object qmIndividuaisCOMPRA_ITEM: TFMTBCDField
      FieldName = 'COMPRA_ITEM'
      ProviderFlags = []
      Precision = 20
      Size = 5
    end
    object qmIndividuaisTOTAL_LUCRO: TFMTBCDField
      FieldName = 'TOTAL_LUCRO'
      ProviderFlags = []
      Precision = 20
      Size = 2
    end
    object qmIndividuaisDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
      ProviderFlags = []
    end
    object qmIndividuaisDATASAIDA: TDateField
      FieldName = 'DATASAIDA'
      ProviderFlags = []
    end
    object qmIndividuaisCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
  end
  object pmIndividuais: TDataSetProvider
    DataSet = qmIndividuais
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 928
  end
  object qmPagamentos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  PA.CODIGO, '#13#10'  PA.NUMERO, '#13#10'  PA.TOTA' +
      'L_PAGO AS VALOR, '#13#10'  PA.CODDOCUMENTO, '#13#10'  PA.DATAVENCIMENTO, '#13#10' ' +
      ' PA.DATAPAGO, '#13#10'  PA.STATUS, '#13#10'  DC.DOCUMENTO, '#13#10'  DC.TIPO_DOC '#13 +
      #10'FROM '#13#10'  PAGAMENTOS PA '#13#10'  JOIN DOCUMENTOS DC ON '#13#10'    (DC.CODI' +
      'GO = PA.CODDOCUMENTO) '#13#10'WHERE '#13#10'  CODMOVIMENTO = :CODMOVIMENTO '#13 +
      #10'ORDER BY '#13#10'  NUMERO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 104
    Top = 880
    object qmPagamentosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qmPagamentosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qmPagamentosNUMERO: TSmallintField
      FieldName = 'NUMERO'
    end
    object qmPagamentosVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qmPagamentosCODDOCUMENTO: TIntegerField
      FieldName = 'CODDOCUMENTO'
    end
    object qmPagamentosDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object qmPagamentosDATAPAGO: TSQLTimeStampField
      FieldName = 'DATAPAGO'
    end
    object qmPagamentosSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 30
    end
    object qmPagamentosDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object qmPagamentosTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
  end
  object pmPagamentos: TDataSetProvider
    DataSet = qmPagamentos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 928
  end
  object qmProdutos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  ID.BARRA, '#13#10'  PO.DESCRICAO, '#13#10'  PO.PR' +
      'ECOVENDA, '#13#10'  PO.PRECOVENDA2, '#13#10'  PO.PRECOVENDA3, '#13#10'  PO.PRECOVE' +
      'NDA4,'#13#10'  PO.PRECOVENDA5,'#13#10'  PO.PRECOTOTAL, '#13#10'  PO.PRECOSERVICO, ' +
      #13#10'  PO.CODSERVICO, '#13#10'  PO.CAIXA_ITENS, '#13#10'  PS.BARRA, '#13#10'  PS.DESC' +
      'RICAO, '#13#10'  PS.ATIVACAO, '#13#10'  ID.SERIE, '#13#10'  ID.SERIE2, '#13#10'  ID.UNIC' +
      'O, '#13#10'  ID.NUMERO_FONE, '#13#10'  OP.NOME AS OPERADORA, '#13#10'  PL.NOME AS ' +
      'PLANO, '#13#10'  MAX(ID.ICMSVENDA) AS ICMS, '#13#10'  SUM(ID.QUANTIDADE) AS ' +
      'QUANTIDADE, '#13#10'  ID.CONTRATO, '#13#10'  ID.VOUCHER, '#13#10'  ID.TIPOATIVACAO' +
      ', '#13#10'  MA.DESCRICAO AS MARCA,'#13#10'  PO.PRECOCUSTO,'#13#10'  PO.MARGEM,'#13#10'  ' +
      'PO.CODIGO'#13#10'FROM '#13#10'  INDIVIDUAIS ID '#13#10'  LEFT JOIN PRODUTOS PO ON ' +
      #13#10'    (PO.CODIGO = ID.CODPRODUTO) '#13#10'  LEFT JOIN PRODUTOS PS ON '#13 +
      #10'    (PS.CODIGO = PO.CODSERVICO) '#13#10'  LEFT JOIN OPERADORAS OP ON ' +
      #13#10'    (OP.CODIGO = ID.CODOPERADORA) '#13#10'  LEFT JOIN PLANOS PL ON '#13 +
      #10'    (PL.CODIGO = ID.CODPLANO AND '#13#10'     PL.CODOPERADORA = ID.CO' +
      'DOPERADORA) '#13#10'  LEFT JOIN MARCAS MA ON '#13#10'    (MA.CODIGO = PO.COD' +
      'MARCA) '#13#10'WHERE '#13#10'  ID.VENDIDO = '#39'N'#39' AND '#13#10'  ID.PS = '#39'P'#39' '#13#10'GROUP ' +
      'BY '#13#10'  ID.BARRA, '#13#10'  PO.DESCRICAO, '#13#10'  PO.PRECOVENDA, '#13#10'  PO.PRE' +
      'COVENDA2, '#13#10'  PO.PRECOVENDA3, '#13#10'  PO.PRECOVENDA4,'#13#10'  PO.PRECOVEN' +
      'DA5,'#13#10'  PO.PRECOTOTAL, '#13#10'  PO.PRECOSERVICO, '#13#10'  PO.CODSERVICO, '#13 +
      #10'  PO.CAIXA_ITENS, '#13#10'  PS.BARRA, '#13#10'  PS.DESCRICAO, '#13#10'  PS.ATIVAC' +
      'AO, '#13#10'  ID.SERIE, '#13#10'  ID.SERIE2, '#13#10'  ID.UNICO, '#13#10'  ID.NUMERO_FON' +
      'E, '#13#10'  OP.NOME, '#13#10'  PL.NOME, '#13#10'  ID.CONTRATO, '#13#10'  ID.VOUCHER, '#13#10 +
      '  ID.TIPOATIVACAO, '#13#10'  MA.DESCRICAO,'#13#10'  PO.PRECOCUSTO,'#13#10'  PO.MAR' +
      'GEM,'#13#10'  PO.CODIGO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 176
    Top = 880
    object qmProdutosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qmProdutosBARRA: TStringField
      FieldName = 'BARRA'
      FixedChar = True
      Size = 14
    end
    object qmProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object qmProdutosPRECOVENDA: TFMTBCDField
      FieldName = 'PRECOVENDA'
      ProviderFlags = []
      Precision = 20
      Size = 3
    end
    object qmProdutosPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
      ProviderFlags = []
    end
    object qmProdutosPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
      ProviderFlags = []
    end
    object qmProdutosPRECOTOTAL: TFloatField
      FieldName = 'PRECOTOTAL'
      ProviderFlags = []
    end
    object qmProdutosPRECOSERVICO: TFloatField
      FieldName = 'PRECOSERVICO'
      ProviderFlags = []
    end
    object qmProdutosCODSERVICO: TIntegerField
      FieldName = 'CODSERVICO'
      ProviderFlags = []
    end
    object qmProdutosCAIXA_ITENS: TIntegerField
      FieldName = 'CAIXA_ITENS'
      ProviderFlags = []
    end
    object qmProdutosBARRA_1: TStringField
      FieldName = 'BARRA_1'
      ProviderFlags = []
      FixedChar = True
      Size = 14
    end
    object qmProdutosDESCRICAO_1: TStringField
      FieldName = 'DESCRICAO_1'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object qmProdutosATIVACAO: TStringField
      FieldName = 'ATIVACAO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qmProdutosSERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
    end
    object qmProdutosSERIE2: TStringField
      FieldName = 'SERIE2'
      FixedChar = True
    end
    object qmProdutosUNICO: TIntegerField
      FieldName = 'UNICO'
    end
    object qmProdutosNUMERO_FONE: TStringField
      FieldName = 'NUMERO_FONE'
      FixedChar = True
    end
    object qmProdutosOPERADORA: TStringField
      FieldName = 'OPERADORA'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmProdutosPLANO: TStringField
      FieldName = 'PLANO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmProdutosICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = []
    end
    object qmProdutosQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      ProviderFlags = []
      Precision = 20
      Size = 3
    end
    object qmProdutosCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Size = 10
    end
    object qmProdutosVOUCHER: TStringField
      FieldName = 'VOUCHER'
      Size = 10
    end
    object qmProdutosTIPOATIVACAO: TStringField
      FieldName = 'TIPOATIVACAO'
      FixedChar = True
      Size = 1
    end
    object qmProdutosMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmProdutosPRECOCUSTO: TFMTBCDField
      FieldName = 'PRECOCUSTO'
      ProviderFlags = []
      Precision = 20
      Size = 3
    end
    object qmProdutosMARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = []
    end
    object qmProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qmProdutosPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
    end
    object qmProdutosPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
    end
  end
  object pmProdutos: TDataSetProvider
    DataSet = qmProdutos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 176
    Top = 928
  end
  object qmTecnicos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  OS_VENDER.CODMOVIMENTO, '#13#10'  OS_VENDER.CODVENDEDOR, '#13#10 +
      '  OS_VENDER.DATAINI, '#13#10'  OS_VENDER.DATAFIM, '#13#10'  OS_VENDER.PORCEN' +
      'TAGEM, '#13#10'  CLIENTES.NOMEUSER '#13#10'FROM '#13#10'  OS_VENDER '#13#10'  JOIN CLIEN' +
      'TES ON '#13#10'    (CLIENTES.CODIGO = OS_VENDER.CODVENDEDOR) '#13#10'WHERE '#13 +
      #10'  OS_VENDER.CODMOVIMENTO = :CODIGO '#13#10'ORDER BY '#13#10'  OS_VENDER.DAT' +
      'AINI'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 248
    Top = 880
    object qmTecnicosCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qmTecnicosCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qmTecnicosDATAINI: TSQLTimeStampField
      FieldName = 'DATAINI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qmTecnicosDATAFIM: TSQLTimeStampField
      FieldName = 'DATAFIM'
    end
    object qmTecnicosPORCENTAGEM: TFloatField
      FieldName = 'PORCENTAGEM'
    end
    object qmTecnicosNOMEUSER: TStringField
      FieldName = 'NOMEUSER'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
  end
  object pmTecnicos: TDataSetProvider
    DataSet = qmTecnicos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 248
    Top = 928
  end
  object qmSaidas: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  MO.CODIGO, '#13#10'  CAST(MO.DATA AS DATE) ' +
      'AS DATA, '#13#10'  CAST(MO.DATA AS TIME) AS HORA, '#13#10'  MO.STATUS, '#13#10'  M' +
      'O.CODCLIENTE, '#13#10'  CL.NOME, '#13#10'  MO.NOTA_VALOR_TOTAL, '#13#10'  VE.NOMEU' +
      'SER, '#13#10'  MO.USUARIOFECHAMENTO, '#13#10'  CAST(MO.DATAFECHAMENTO AS DAT' +
      'E) AS DATAFECHA, '#13#10'  MO.OBSERVACOES, '#13#10'  MO.FECHADO, '#13#10'  CP.DESC' +
      'RICAO AS CONDICAOPAGAMENTO, '#13#10'  MO.NOTA_NUMERO, '#13#10'  MO.CODCOMPRA' +
      ','#13#10'  MO.NOTA_CODTRANSPORTADOR,'#13#10'  MO.NOTA_PLACAVEICULO,'#13#10'  MO.NO' +
      'TA_UFVEICULO,'#13#10'  MO.NOTA_FRETE,'#13#10'  MO.NOTA_QUANTIDADE,'#13#10'  MO.NOT' +
      'A_PESOBRUTO,'#13#10'  MO.NOTA_PESOLIQUIDO,'#13#10'  MO.CHNFE,'#13#10'  (SELECT SUM' +
      '(PA.VALOR) FROM PAGAMENTOS PA WHERE PA.CODMOVIMENTO = MO.CODIGO ' +
      'AND PA.PAGO = 0 AND PA.ES = 2) AS ABERTO'#13#10'FROM '#13#10'  MOVIMENTOS MO' +
      ' LEFT JOIN CLIENTES CL ON '#13#10'    (CL.CODIGO = MO.CODCLIENTE) '#13#10'  ' +
      'LEFT JOIN CLIENTES VE ON '#13#10'    (VE.CODIGO = MO.CODVENDEDOR) '#13#10'  ' +
      'LEFT JOIN CONDPAG CP ON '#13#10'    (CP.CODIGO = MO.CODCONDPAG) '#13#10'WHER' +
      'E '#13#10'  MO.ES = 2 AND '#13#10'  MO.TIPO IN (5, 6)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 320
    Top = 880
    object qmSaidasSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qmSaidasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qmSaidasDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = []
    end
    object qmSaidasHORA: TTimeField
      FieldName = 'HORA'
      ProviderFlags = []
    end
    object qmSaidasSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 30
    end
    object qmSaidasCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object qmSaidasNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmSaidasNOTA_VALOR_TOTAL: TFMTBCDField
      FieldName = 'NOTA_VALOR_TOTAL'
      Precision = 20
      Size = 2
    end
    object qmSaidasNOMEUSER: TStringField
      FieldName = 'NOMEUSER'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object qmSaidasUSUARIOFECHAMENTO: TStringField
      FieldName = 'USUARIOFECHAMENTO'
      FixedChar = True
      Size = 40
    end
    object qmSaidasDATAFECHA: TDateField
      FieldName = 'DATAFECHA'
      ProviderFlags = []
    end
    object qmSaidasOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 2048
    end
    object qmSaidasFECHADO: TStringField
      FieldName = 'FECHADO'
      FixedChar = True
      Size = 1
    end
    object qmSaidasCONDICAOPAGAMENTO: TStringField
      FieldName = 'CONDICAOPAGAMENTO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmSaidasNOTA_NUMERO: TIntegerField
      FieldName = 'NOTA_NUMERO'
    end
    object qmSaidasCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
    end
    object qmSaidasABERTO: TFMTBCDField
      FieldName = 'ABERTO'
      ProviderFlags = []
      Precision = 20
      Size = 2
    end
    object qmSaidasNOTA_CODTRANSPORTADOR: TIntegerField
      FieldName = 'NOTA_CODTRANSPORTADOR'
    end
    object qmSaidasNOTA_PLACAVEICULO: TStringField
      FieldName = 'NOTA_PLACAVEICULO'
      FixedChar = True
      Size = 10
    end
    object qmSaidasNOTA_UFVEICULO: TStringField
      FieldName = 'NOTA_UFVEICULO'
      FixedChar = True
      Size = 2
    end
    object qmSaidasNOTA_FRETE: TSmallintField
      FieldName = 'NOTA_FRETE'
    end
    object qmSaidasNOTA_QUANTIDADE: TFloatField
      FieldName = 'NOTA_QUANTIDADE'
    end
    object qmSaidasNOTA_PESOBRUTO: TFloatField
      FieldName = 'NOTA_PESOBRUTO'
    end
    object qmSaidasNOTA_PESOLIQUIDO: TFloatField
      FieldName = 'NOTA_PESOLIQUIDO'
    end
    object qmSaidasCHNFE: TStringField
      FieldName = 'CHNFE'
      FixedChar = True
      Size = 50
    end
  end
  object pmSaidas: TDataSetProvider
    DataSet = qmSaidas
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = pmSaidasGetTableName
    Left = 320
    Top = 928
  end
  object qmSaidaestornos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  MO.CODIGO, '#13#10'  CAST(MO.DATAESTORNO AS' +
      ' DATE) AS DATA, '#13#10'  CAST(MO.DATAESTORNO AS TIME) AS HORA, '#13#10'  MO' +
      '.OLD_STATUS, '#13#10'  CL.NOME, '#13#10'  MO.NOTA_VALOR_TOTAL, '#13#10'  VE.NOMEUS' +
      'ER, '#13#10'  MO.USUARIOFECHAMENTO, '#13#10'  MO.USUARIOESTORNO, '#13#10'  CAST(MO' +
      '.DATAFECHAMENTO AS DATE) AS DATAFECHA, '#13#10'  MO.OBSERVACOES, '#13#10'  M' +
      'O.FECHADO,'#13#10'  MO.STATUS,'#13#10'  CP.DESCRICAO AS CONDICAOPAGAMENTO, '#13 +
      #10'  MO.NOTA_NUMERO, '#13#10'  MO.CODCOMPRA '#13#10'FROM '#13#10'  MOVIMENTOS MO '#13#10' ' +
      ' JOIN CLIENTES CL ON '#13#10'    (CL.CODIGO = MO.CODCLIENTE) '#13#10'  JOIN ' +
      'CLIENTES VE ON '#13#10'    (VE.CODIGO = MO.CODVENDEDOR) '#13#10'  LEFT JOIN ' +
      'CONDPAG CP ON '#13#10'    (CP.CODIGO = MO.CODCONDPAG) '#13#10'WHERE '#13#10'  MO.E' +
      'S = 2 AND '#13#10'  MO.TIPO = 9 AND '#13#10'  OLD_STATUS LIKE '#39'VENDA%'#39
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 392
    Top = 880
    object qmSaidaestornosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qmSaidaestornosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qmSaidaestornosDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = []
    end
    object qmSaidaestornosHORA: TTimeField
      FieldName = 'HORA'
      ProviderFlags = []
    end
    object qmSaidaestornosOLD_STATUS: TStringField
      FieldName = 'OLD_STATUS'
      FixedChar = True
    end
    object qmSaidaestornosNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmSaidaestornosNOTA_VALOR_TOTAL: TFMTBCDField
      FieldName = 'NOTA_VALOR_TOTAL'
      Precision = 20
      Size = 2
    end
    object qmSaidaestornosNOMEUSER: TStringField
      FieldName = 'NOMEUSER'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object qmSaidaestornosUSUARIOFECHAMENTO: TStringField
      FieldName = 'USUARIOFECHAMENTO'
      FixedChar = True
      Size = 40
    end
    object qmSaidaestornosUSUARIOESTORNO: TStringField
      FieldName = 'USUARIOESTORNO'
      FixedChar = True
      Size = 40
    end
    object qmSaidaestornosDATAFECHA: TDateField
      FieldName = 'DATAFECHA'
      ProviderFlags = []
    end
    object qmSaidaestornosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 2048
    end
    object qmSaidaestornosCONDICAOPAGAMENTO: TStringField
      FieldName = 'CONDICAOPAGAMENTO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmSaidaestornosNOTA_NUMERO: TIntegerField
      FieldName = 'NOTA_NUMERO'
    end
    object qmSaidaestornosCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
    end
    object qmSaidaestornosFECHADO: TStringField
      FieldName = 'FECHADO'
      FixedChar = True
      Size = 1
    end
    object qmSaidaestornosSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 30
    end
  end
  object pmSaidaestornos: TDataSetProvider
    DataSet = qmSaidaestornos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 392
    Top = 928
  end
  object qmOS: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  MO.CODIGO, '#13#10'  MO.DATA, '#13#10'  CAST(MO.D' +
      'ATA AS DATE) AS DATAAB, '#13#10'  CAST(MO.DATA AS TIME) AS HORAAB, '#13#10' ' +
      ' MO.PRIORIDADE, '#13#10'  MO.DATAPREVISAO, '#13#10'  CAST(((MO.DATAPREVISAO ' +
      '- CURRENT_TIMESTAMP) * 24) AS DOUBLE PRECISION) AS PRAZO, '#13#10'  MO' +
      '.STATUS, '#13#10'  MO.CODCLIENTE, '#13#10'  CL.NOME, '#13#10'  MO.OSTIPO, '#13#10'  OT.T' +
      'IPO AS TIPOOS, '#13#10'  MO.CODMARCA, '#13#10'  MA.DESCRICAO AS MARCA, '#13#10'  M' +
      'O.CODMODELO, '#13#10'  MD.DESCRICAO AS MODELO, '#13#10'  MO.SERIE, '#13#10'  MO.CO' +
      'DDEFEITO, '#13#10'  DE.DESCRICAO AS OCORRENCIA, '#13#10'  MO.CODPARCEIRO, '#13#10 +
      '  PA.NOME AS PARCEIRO, '#13#10'  MO.NOTA_VALOR_TOTAL, '#13#10'  MO.CODVENDED' +
      'OR_ABRE, '#13#10'  QA.NOMEUSER AS QUEMABRIU, '#13#10'  MO.SOLICITANTE, '#13#10'  M' +
      'O.CONDICAOEXTERNA, '#13#10'  MO.ACESSORIOS, '#13#10'  MO.SERVICOS, '#13#10'  MO.DE' +
      'FEITO_DETECTADO, '#13#10'  MO.SERVICO_REALIZAR, '#13#10'  MO.AUTORIZADO, '#13#10' ' +
      ' MO.QUEM_AUTORIZOU, '#13#10'  MO.DATA_AUTORIZADO, '#13#10'  MO.OPCIONAIS, '#13#10 +
      '  MO.CODVENDEDOR, '#13#10'  VE.NOMEUSER AS TECNICO, '#13#10'  MO.USUARIOFECH' +
      'AMENTO, '#13#10'  MO.DATAFECHAMENTO, '#13#10'  MO.DATA_ENTREGA, '#13#10'  MO.QUEM_' +
      'RECEBEU, '#13#10'  MO.QUEM_ENTREGOU, '#13#10'  MO.OBSERVACOES, '#13#10'  MO.CODEMP' +
      'RESA, '#13#10'  MO.ES, '#13#10'  MO.TIPO, '#13#10'  MO.VALOR_SERVICOS, '#13#10'  MO.VALO' +
      'R_ITENS, '#13#10'  MO.NOTA_VALOR_FRETE, '#13#10'  MO.NOTA_VALOR_SEGURO, '#13#10'  ' +
      'MO.NOTA_VALOR_OUTROS, '#13#10'  MO.VALOR_ICMS, '#13#10'  MO.DESCONTO, '#13#10'  MO' +
      '.NOTA_QUANTIDADE, '#13#10'  MO.NOTA_FRETE, '#13#10'  MO.CONDICAO, '#13#10'  MO.NOT' +
      'A_DATASAIDA, '#13#10'  MO.NOTA_BASEICMS, '#13#10'  MO.NOTA_BASEICMSSUBST, '#13#10 +
      '  MO.NOTA_VALORICMSSUBST, '#13#10'  MO.VALOR_IPI, '#13#10'  MO.GARANTIA, '#13#10' ' +
      ' MO.EMPRESTIMO, '#13#10'  MO.ICMSSIMPLES, '#13#10'  MO.ICMSSIMPALIQ, '#13#10'  MO.' +
      'ISSALIQ, '#13#10'  MO.NOTA_CODNATUOPER, '#13#10'  MO.NOTA_PESOBRUTO, '#13#10'  MO.' +
      'NOTA_PESOLIQUIDO, '#13#10'  MO.CODCENTRO, '#13#10'  MO.LOG_USUARIO, '#13#10'  MO.L' +
      'OG_TIPO, '#13#10'  MO.LOG_MAQUINA, '#13#10'  MO.LOG_DATAREMOTO, '#13#10'  MO.LOCAL' +
      'IZACAO, '#13#10'  MO.OPERADORA,'#13#10'  (SELECT SUM(PA.VALOR) FROM PAGAMENT' +
      'OS PA WHERE PA.CODMOVIMENTO = MO.CODIGO AND PA.PAGO = 0 AND PA.E' +
      'S = 2) AS ABERTO'#13#10'FROM '#13#10'  MOVIMENTOS MO '#13#10'  JOIN CLIENTES CL ON' +
      ' '#13#10'    (CL.CODIGO = MO.CODCLIENTE) '#13#10'  JOIN OSTIPOS OT ON '#13#10'    ' +
      '(OT.CODIGO = MO.OSTIPO) '#13#10'  LEFT JOIN MARCAS MA ON '#13#10'    (MA.COD' +
      'IGO = MO.CODMARCA) '#13#10'  LEFT JOIN MODELOS MD ON '#13#10'    (MD.CODIGO ' +
      '= MO.CODMODELO AND '#13#10'     MD.CODEQUIPAMENTO = MO.CODMARCA) '#13#10'  L' +
      'EFT JOIN DEFEITOS DE ON '#13#10'    (DE.CODIGO = MO.CODDEFEITO) '#13#10'  LE' +
      'FT JOIN CLIENTES PA ON '#13#10'    (PA.CODIGO = MO.CODPARCEIRO) '#13#10'  LE' +
      'FT JOIN CLIENTES QA ON '#13#10'    (QA.CODIGO = MO.CODVENDEDOR_ABRE) '#13 +
      #10'  LEFT JOIN CLIENTES VE ON '#13#10'    (VE.CODIGO = MO.CODTECNICO)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 464
    Top = 880
    object qmOSSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qmOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qmOSDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object qmOSDATAAB: TDateField
      FieldName = 'DATAAB'
      ProviderFlags = []
    end
    object qmOSHORAAB: TTimeField
      FieldName = 'HORAAB'
      ProviderFlags = []
    end
    object qmOSPRIORIDADE: TIntegerField
      FieldName = 'PRIORIDADE'
    end
    object qmOSDATAPREVISAO: TSQLTimeStampField
      FieldName = 'DATAPREVISAO'
    end
    object qmOSPRAZO: TFloatField
      FieldName = 'PRAZO'
      ProviderFlags = []
    end
    object qmOSSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 30
    end
    object qmOSCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object qmOSNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmOSOSTIPO: TIntegerField
      FieldName = 'OSTIPO'
    end
    object qmOSTIPOOS: TStringField
      FieldName = 'TIPOOS'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmOSCODMARCA: TIntegerField
      FieldName = 'CODMARCA'
    end
    object qmOSMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmOSCODMODELO: TIntegerField
      FieldName = 'CODMODELO'
    end
    object qmOSMODELO: TStringField
      FieldName = 'MODELO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmOSSERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
      Size = 30
    end
    object qmOSCODDEFEITO: TIntegerField
      FieldName = 'CODDEFEITO'
    end
    object qmOSOCORRENCIA: TStringField
      FieldName = 'OCORRENCIA'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmOSCODPARCEIRO: TIntegerField
      FieldName = 'CODPARCEIRO'
    end
    object qmOSPARCEIRO: TStringField
      FieldName = 'PARCEIRO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmOSNOTA_VALOR_TOTAL: TFMTBCDField
      FieldName = 'NOTA_VALOR_TOTAL'
      Precision = 20
      Size = 2
    end
    object qmOSCODVENDEDOR_ABRE: TIntegerField
      FieldName = 'CODVENDEDOR_ABRE'
    end
    object qmOSQUEMABRIU: TStringField
      FieldName = 'QUEMABRIU'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object qmOSSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      FixedChar = True
      Size = 40
    end
    object qmOSCONDICAOEXTERNA: TStringField
      FieldName = 'CONDICAOEXTERNA'
      FixedChar = True
      Size = 40
    end
    object qmOSACESSORIOS: TStringField
      FieldName = 'ACESSORIOS'
      FixedChar = True
      Size = 50
    end
    object qmOSSERVICOS: TStringField
      FieldName = 'SERVICOS'
      Size = 1024
    end
    object qmOSDEFEITO_DETECTADO: TStringField
      FieldName = 'DEFEITO_DETECTADO'
      FixedChar = True
      Size = 60
    end
    object qmOSSERVICO_REALIZAR: TStringField
      FieldName = 'SERVICO_REALIZAR'
      FixedChar = True
      Size = 60
    end
    object qmOSAUTORIZADO: TStringField
      FieldName = 'AUTORIZADO'
      FixedChar = True
      Size = 1
    end
    object qmOSQUEM_AUTORIZOU: TStringField
      FieldName = 'QUEM_AUTORIZOU'
      FixedChar = True
      Size = 40
    end
    object qmOSDATA_AUTORIZADO: TSQLTimeStampField
      FieldName = 'DATA_AUTORIZADO'
    end
    object qmOSOPCIONAIS: TStringField
      FieldName = 'OPCIONAIS'
      Size = 1024
    end
    object qmOSCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object qmOSTECNICO: TStringField
      FieldName = 'TECNICO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object qmOSUSUARIOFECHAMENTO: TStringField
      FieldName = 'USUARIOFECHAMENTO'
      FixedChar = True
      Size = 40
    end
    object qmOSDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
    end
    object qmOSDATA_ENTREGA: TSQLTimeStampField
      FieldName = 'DATA_ENTREGA'
    end
    object qmOSQUEM_RECEBEU: TStringField
      FieldName = 'QUEM_RECEBEU'
      FixedChar = True
      Size = 40
    end
    object qmOSQUEM_ENTREGOU: TStringField
      FieldName = 'QUEM_ENTREGOU'
      FixedChar = True
      Size = 40
    end
    object qmOSOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 2048
    end
    object qmOSCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
    object qmOSES: TSmallintField
      FieldName = 'ES'
    end
    object qmOSTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object qmOSVALOR_SERVICOS: TFloatField
      FieldName = 'VALOR_SERVICOS'
    end
    object qmOSVALOR_ITENS: TFloatField
      FieldName = 'VALOR_ITENS'
    end
    object qmOSNOTA_VALOR_FRETE: TFloatField
      FieldName = 'NOTA_VALOR_FRETE'
    end
    object qmOSNOTA_VALOR_SEGURO: TFloatField
      FieldName = 'NOTA_VALOR_SEGURO'
    end
    object qmOSNOTA_VALOR_OUTROS: TFloatField
      FieldName = 'NOTA_VALOR_OUTROS'
    end
    object qmOSVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qmOSDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qmOSNOTA_QUANTIDADE: TFloatField
      FieldName = 'NOTA_QUANTIDADE'
    end
    object qmOSNOTA_FRETE: TSmallintField
      FieldName = 'NOTA_FRETE'
    end
    object qmOSCONDICAO: TStringField
      FieldName = 'CONDICAO'
      FixedChar = True
      Size = 40
    end
    object qmOSNOTA_DATASAIDA: TSQLTimeStampField
      FieldName = 'NOTA_DATASAIDA'
    end
    object qmOSNOTA_BASEICMS: TFloatField
      FieldName = 'NOTA_BASEICMS'
    end
    object qmOSNOTA_BASEICMSSUBST: TFloatField
      FieldName = 'NOTA_BASEICMSSUBST'
    end
    object qmOSNOTA_VALORICMSSUBST: TFloatField
      FieldName = 'NOTA_VALORICMSSUBST'
    end
    object qmOSVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qmOSGARANTIA: TStringField
      FieldName = 'GARANTIA'
      FixedChar = True
      Size = 1
    end
    object qmOSEMPRESTIMO: TStringField
      FieldName = 'EMPRESTIMO'
      FixedChar = True
      Size = 1
    end
    object qmOSICMSSIMPLES: TStringField
      FieldName = 'ICMSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object qmOSICMSSIMPALIQ: TFloatField
      FieldName = 'ICMSSIMPALIQ'
    end
    object qmOSISSALIQ: TFloatField
      FieldName = 'ISSALIQ'
    end
    object qmOSNOTA_CODNATUOPER: TStringField
      FieldName = 'NOTA_CODNATUOPER'
      FixedChar = True
      Size = 5
    end
    object qmOSNOTA_PESOBRUTO: TFloatField
      FieldName = 'NOTA_PESOBRUTO'
    end
    object qmOSNOTA_PESOLIQUIDO: TFloatField
      FieldName = 'NOTA_PESOLIQUIDO'
    end
    object qmOSCODCENTRO: TIntegerField
      FieldName = 'CODCENTRO'
    end
    object qmOSLOG_USUARIO: TStringField
      FieldName = 'LOG_USUARIO'
      FixedChar = True
      Size = 30
    end
    object qmOSLOG_TIPO: TStringField
      FieldName = 'LOG_TIPO'
      FixedChar = True
      Size = 10
    end
    object qmOSLOG_MAQUINA: TStringField
      FieldName = 'LOG_MAQUINA'
      FixedChar = True
      Size = 30
    end
    object qmOSLOG_DATAREMOTO: TSQLTimeStampField
      FieldName = 'LOG_DATAREMOTO'
    end
    object qmOSLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      FixedChar = True
      Size = 40
    end
    object qmOSOPERADORA: TStringField
      FieldName = 'OPERADORA'
      FixedChar = True
      Size = 40
    end
    object qmOSABERTO: TFMTBCDField
      FieldName = 'ABERTO'
      ProviderFlags = []
      Precision = 20
      Size = 2
    end
  end
  object pmOS: TDataSetProvider
    DataSet = qmOS
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = pmOSGetTableName
    Left = 464
    Top = 928
  end
  object qmOSestornos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  MO.CODIGO, '#13#10'  MO.DATA, '#13#10'  CAST(MO.D' +
      'ATA AS DATE) AS DATAAB, '#13#10'  CAST(MO.DATA AS TIME) AS HORAAB, '#13#10' ' +
      ' CAST(MO.DATAESTORNO AS DATE) AS DATA_ESTORNO, '#13#10'  MO.USUARIOEST' +
      'ORNO, '#13#10'  MO.PRIORIDADE, '#13#10'  MO.DATAPREVISAO, '#13#10'  MO.OLD_STATUS,' +
      ' '#13#10'  MO.CODCLIENTE, '#13#10'  CL.NOME, '#13#10'  MO.OSTIPO, '#13#10'  OT.TIPO AS T' +
      'IPOOS, '#13#10'  MO.CODMARCA, '#13#10'  MA.DESCRICAO AS MARCA, '#13#10'  MO.CODMOD' +
      'ELO, '#13#10'  MD.DESCRICAO AS MODELO, '#13#10'  MO.SERIE, '#13#10'  MO.CODDEFEITO' +
      ', '#13#10'  DE.DESCRICAO AS OCORRENCIA, '#13#10'  MO.CODPARCEIRO, '#13#10'  PA.NOM' +
      'E AS PARCEIRO, '#13#10'  MO.NOTA_VALOR_TOTAL, '#13#10'  MO.CODVENDEDOR_ABRE,' +
      ' '#13#10'  QA.NOMEUSER AS QUEMABRIU, '#13#10'  MO.SOLICITANTE, '#13#10'  MO.CONDIC' +
      'AOEXTERNA, '#13#10'  MO.ACESSORIOS, '#13#10'  MO.SERVICOS, '#13#10'  MO.DEFEITO_DE' +
      'TECTADO, '#13#10'  MO.SERVICO_REALIZAR, '#13#10'  MO.AUTORIZADO, '#13#10'  MO.QUEM' +
      '_AUTORIZOU, '#13#10'  MO.DATA_AUTORIZADO, '#13#10'  MO.OPCIONAIS, '#13#10'  MO.COD' +
      'VENDEDOR, '#13#10'  VE.NOMEUSER AS TECNICO, '#13#10'  MO.USUARIOFECHAMENTO, ' +
      #13#10'  MO.DATAFECHAMENTO, '#13#10'  MO.DATA_ENTREGA, '#13#10'  MO.QUEM_RECEBEU,' +
      ' '#13#10'  MO.QUEM_ENTREGOU, '#13#10'  MO.OBSERVACOES, '#13#10'  MO.CODEMPRESA, '#13#10 +
      '  MO.ES, '#13#10'  MO.TIPO, '#13#10'  MO.VALOR_SERVICOS, '#13#10'  MO.VALOR_ITENS,' +
      ' '#13#10'  MO.NOTA_VALOR_FRETE, '#13#10'  MO.NOTA_VALOR_SEGURO, '#13#10'  MO.NOTA_' +
      'VALOR_OUTROS, '#13#10'  MO.VALOR_ICMS, '#13#10'  MO.DESCONTO, '#13#10'  MO.NOTA_QU' +
      'ANTIDADE, '#13#10'  MO.NOTA_FRETE, '#13#10'  MO.CONDICAO, '#13#10'  MO.NOTA_DATASA' +
      'IDA, '#13#10'  MO.NOTA_BASEICMS, '#13#10'  MO.NOTA_BASEICMSSUBST, '#13#10'  MO.NOT' +
      'A_VALORICMSSUBST, '#13#10'  MO.VALOR_IPI, '#13#10'  MO.GARANTIA, '#13#10'  MO.EMPR' +
      'ESTIMO, '#13#10'  MO.ICMSSIMPLES, '#13#10'  MO.ICMSSIMPALIQ, '#13#10'  MO.ISSALIQ,' +
      ' '#13#10'  MO.NOTA_CODNATUOPER, '#13#10'  MO.NOTA_PESOBRUTO, '#13#10'  MO.NOTA_PES' +
      'OLIQUIDO, '#13#10'  MO.CODCENTRO, '#13#10'  MO.LOG_USUARIO, '#13#10'  MO.LOG_TIPO,' +
      ' '#13#10'  MO.LOG_MAQUINA, '#13#10'  MO.LOG_DATAREMOTO, '#13#10'  MO.LOCALIZACAO, ' +
      #13#10'  MO.OPERADORA '#13#10'FROM '#13#10'  MOVIMENTOS MO '#13#10'  LEFT JOIN CLIENTES' +
      ' CL ON '#13#10'    (CL.CODIGO = MO.CODCLIENTE) '#13#10'  LEFT JOIN OSTIPOS O' +
      'T ON '#13#10'    (OT.CODIGO = MO.OSTIPO) '#13#10'  LEFT JOIN MARCAS MA ON '#13#10 +
      '    (MA.CODIGO = MO.CODMARCA) '#13#10'  LEFT JOIN MODELOS MD ON '#13#10'    ' +
      '(MD.CODIGO = MO.CODMODELO AND '#13#10'     MD.CODEQUIPAMENTO = MO.CODM' +
      'ARCA) '#13#10'  LEFT JOIN DEFEITOS DE ON '#13#10'    (DE.CODIGO = MO.CODDEFE' +
      'ITO) '#13#10'  LEFT JOIN CLIENTES PA ON '#13#10'    (PA.CODIGO = MO.CODPARCE' +
      'IRO) '#13#10'  LEFT JOIN CLIENTES QA ON '#13#10'    (QA.CODIGO = MO.CODVENDE' +
      'DOR_ABRE) '#13#10'  LEFT JOIN CLIENTES VE ON '#13#10'    (VE.CODIGO = MO.COD' +
      'TECNICO)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 536
    Top = 880
    object qmOSestornosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qmOSestornosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qmOSestornosDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object qmOSestornosDATAAB: TDateField
      FieldName = 'DATAAB'
      ProviderFlags = []
    end
    object qmOSestornosHORAAB: TTimeField
      FieldName = 'HORAAB'
      ProviderFlags = []
    end
    object qmOSestornosDATA_ESTORNO: TDateField
      FieldName = 'DATA_ESTORNO'
      ProviderFlags = []
    end
    object qmOSestornosUSUARIOESTORNO: TStringField
      FieldName = 'USUARIOESTORNO'
      FixedChar = True
      Size = 40
    end
    object qmOSestornosPRIORIDADE: TIntegerField
      FieldName = 'PRIORIDADE'
    end
    object qmOSestornosDATAPREVISAO: TSQLTimeStampField
      FieldName = 'DATAPREVISAO'
    end
    object qmOSestornosOLD_STATUS: TStringField
      FieldName = 'OLD_STATUS'
      FixedChar = True
    end
    object qmOSestornosCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object qmOSestornosNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmOSestornosOSTIPO: TIntegerField
      FieldName = 'OSTIPO'
    end
    object qmOSestornosTIPOOS: TStringField
      FieldName = 'TIPOOS'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmOSestornosCODMARCA: TIntegerField
      FieldName = 'CODMARCA'
    end
    object qmOSestornosMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmOSestornosCODMODELO: TIntegerField
      FieldName = 'CODMODELO'
    end
    object qmOSestornosMODELO: TStringField
      FieldName = 'MODELO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmOSestornosSERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
      Size = 30
    end
    object qmOSestornosCODDEFEITO: TIntegerField
      FieldName = 'CODDEFEITO'
    end
    object qmOSestornosOCORRENCIA: TStringField
      FieldName = 'OCORRENCIA'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmOSestornosCODPARCEIRO: TIntegerField
      FieldName = 'CODPARCEIRO'
    end
    object qmOSestornosPARCEIRO: TStringField
      FieldName = 'PARCEIRO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qmOSestornosNOTA_VALOR_TOTAL: TFMTBCDField
      FieldName = 'NOTA_VALOR_TOTAL'
      Precision = 20
      Size = 2
    end
    object qmOSestornosCODVENDEDOR_ABRE: TIntegerField
      FieldName = 'CODVENDEDOR_ABRE'
    end
    object qmOSestornosQUEMABRIU: TStringField
      FieldName = 'QUEMABRIU'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object qmOSestornosSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      FixedChar = True
      Size = 40
    end
    object qmOSestornosCONDICAOEXTERNA: TStringField
      FieldName = 'CONDICAOEXTERNA'
      FixedChar = True
      Size = 40
    end
    object qmOSestornosACESSORIOS: TStringField
      FieldName = 'ACESSORIOS'
      FixedChar = True
      Size = 50
    end
    object qmOSestornosSERVICOS: TStringField
      FieldName = 'SERVICOS'
      Size = 1024
    end
    object qmOSestornosDEFEITO_DETECTADO: TStringField
      FieldName = 'DEFEITO_DETECTADO'
      FixedChar = True
      Size = 60
    end
    object qmOSestornosSERVICO_REALIZAR: TStringField
      FieldName = 'SERVICO_REALIZAR'
      FixedChar = True
      Size = 60
    end
    object qmOSestornosAUTORIZADO: TStringField
      FieldName = 'AUTORIZADO'
      FixedChar = True
      Size = 1
    end
    object qmOSestornosQUEM_AUTORIZOU: TStringField
      FieldName = 'QUEM_AUTORIZOU'
      FixedChar = True
      Size = 40
    end
    object qmOSestornosDATA_AUTORIZADO: TSQLTimeStampField
      FieldName = 'DATA_AUTORIZADO'
    end
    object qmOSestornosOPCIONAIS: TStringField
      FieldName = 'OPCIONAIS'
      Size = 1024
    end
    object qmOSestornosCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object qmOSestornosTECNICO: TStringField
      FieldName = 'TECNICO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object qmOSestornosUSUARIOFECHAMENTO: TStringField
      FieldName = 'USUARIOFECHAMENTO'
      FixedChar = True
      Size = 40
    end
    object qmOSestornosDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
    end
    object qmOSestornosDATA_ENTREGA: TSQLTimeStampField
      FieldName = 'DATA_ENTREGA'
    end
    object qmOSestornosQUEM_RECEBEU: TStringField
      FieldName = 'QUEM_RECEBEU'
      FixedChar = True
      Size = 40
    end
    object qmOSestornosQUEM_ENTREGOU: TStringField
      FieldName = 'QUEM_ENTREGOU'
      FixedChar = True
      Size = 40
    end
    object qmOSestornosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 2048
    end
    object qmOSestornosCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
    object qmOSestornosES: TSmallintField
      FieldName = 'ES'
    end
    object qmOSestornosTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object qmOSestornosVALOR_SERVICOS: TFloatField
      FieldName = 'VALOR_SERVICOS'
    end
    object qmOSestornosVALOR_ITENS: TFloatField
      FieldName = 'VALOR_ITENS'
    end
    object qmOSestornosNOTA_VALOR_FRETE: TFloatField
      FieldName = 'NOTA_VALOR_FRETE'
    end
    object qmOSestornosNOTA_VALOR_SEGURO: TFloatField
      FieldName = 'NOTA_VALOR_SEGURO'
    end
    object qmOSestornosNOTA_VALOR_OUTROS: TFloatField
      FieldName = 'NOTA_VALOR_OUTROS'
    end
    object qmOSestornosVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qmOSestornosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qmOSestornosNOTA_QUANTIDADE: TFloatField
      FieldName = 'NOTA_QUANTIDADE'
    end
    object qmOSestornosNOTA_FRETE: TSmallintField
      FieldName = 'NOTA_FRETE'
    end
    object qmOSestornosCONDICAO: TStringField
      FieldName = 'CONDICAO'
      FixedChar = True
      Size = 40
    end
    object qmOSestornosNOTA_DATASAIDA: TSQLTimeStampField
      FieldName = 'NOTA_DATASAIDA'
    end
    object qmOSestornosNOTA_BASEICMS: TFloatField
      FieldName = 'NOTA_BASEICMS'
    end
    object qmOSestornosNOTA_BASEICMSSUBST: TFloatField
      FieldName = 'NOTA_BASEICMSSUBST'
    end
    object qmOSestornosNOTA_VALORICMSSUBST: TFloatField
      FieldName = 'NOTA_VALORICMSSUBST'
    end
    object qmOSestornosVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qmOSestornosGARANTIA: TStringField
      FieldName = 'GARANTIA'
      FixedChar = True
      Size = 1
    end
    object qmOSestornosEMPRESTIMO: TStringField
      FieldName = 'EMPRESTIMO'
      FixedChar = True
      Size = 1
    end
    object qmOSestornosICMSSIMPLES: TStringField
      FieldName = 'ICMSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object qmOSestornosICMSSIMPALIQ: TFloatField
      FieldName = 'ICMSSIMPALIQ'
    end
    object qmOSestornosISSALIQ: TFloatField
      FieldName = 'ISSALIQ'
    end
    object qmOSestornosNOTA_CODNATUOPER: TStringField
      FieldName = 'NOTA_CODNATUOPER'
      FixedChar = True
      Size = 5
    end
    object qmOSestornosNOTA_PESOBRUTO: TFloatField
      FieldName = 'NOTA_PESOBRUTO'
    end
    object qmOSestornosNOTA_PESOLIQUIDO: TFloatField
      FieldName = 'NOTA_PESOLIQUIDO'
    end
    object qmOSestornosCODCENTRO: TIntegerField
      FieldName = 'CODCENTRO'
    end
    object qmOSestornosLOG_USUARIO: TStringField
      FieldName = 'LOG_USUARIO'
      FixedChar = True
      Size = 30
    end
    object qmOSestornosLOG_TIPO: TStringField
      FieldName = 'LOG_TIPO'
      FixedChar = True
      Size = 10
    end
    object qmOSestornosLOG_MAQUINA: TStringField
      FieldName = 'LOG_MAQUINA'
      FixedChar = True
      Size = 30
    end
    object qmOSestornosLOG_DATAREMOTO: TSQLTimeStampField
      FieldName = 'LOG_DATAREMOTO'
    end
    object qmOSestornosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      FixedChar = True
      Size = 40
    end
    object qmOSestornosOPERADORA: TStringField
      FieldName = 'OPERADORA'
      FixedChar = True
      Size = 40
    end
  end
  object pmOSestornos: TDataSetProvider
    DataSet = qmOSestornos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 536
    Top = 928
  end
  object qmBaixa: TSQLDataSet
    CommandText = 'BAIXAMULT'
    CommandType = ctStoredProc
    DbxCommandType = 'Dbx.StoredProcedure'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODCLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 254
        Name = 'MOVCOM'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'ACRESCIMOS'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'DESCONTOS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODCONTA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'USUARIO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 608
    Top = 880
  end
  object pmBaixa: TDataSetProvider
    DataSet = qmBaixa
    Left = 608
    Top = 928
  end
  object qmEstornofin: TSQLDataSet
    CommandText = 'FINANC_ESTORNO'
    CommandType = ctStoredProc
    DbxCommandType = 'Dbx.StoredProcedure'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODUSUARIO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 680
    Top = 880
  end
  object pmEstornofin: TDataSetProvider
    DataSet = qmEstornofin
    Left = 680
    Top = 928
  end
  object qmVenda: TSQLDataSet
    CommandText = 'VENDA_ABRE'
    CommandType = ctStoredProc
    DbxCommandType = 'Dbx.StoredProcedure'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODCLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODRESPONSAVEL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODVENDEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODCONDPAG'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODHISTORICOPAG'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 3
        Name = 'PROCESSO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PASSAGEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'NUMDOC'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 3
        Name = 'TIPODOC'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'DATADOC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODCOMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'FRETE'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 14
        Name = 'I01_CODBARRA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I01_QUANTIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I01_VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I01_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I01_ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I01_ICMSCOMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I01_IPI'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 3
        Name = 'I01_SITTRIBU'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 14
        Name = 'I02_CODBARRA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I02_QUANTIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I02_VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I02_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 4
        Name = 'I02_ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I02_ICMSCOMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I02_IPI'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 3
        Name = 'I02_SITTRIBU'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 14
        Name = 'I03_CODBARRA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I03_QUANTIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I03_VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I03_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I03_ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I03_ICMSCOMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I03_IPI'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 3
        Name = 'I03_SITTRIBU'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RE_MOVIMENTO'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RE_01'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RE_02'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RE_03'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 32
    Top = 984
  end
  object pmVenda: TDataSetProvider
    DataSet = qmVenda
    Left = 32
    Top = 1032
  end
  object qmFecha: TSQLDataSet
    CommandText = 'VENDA_FECHA'
    CommandType = ctStoredProc
    DbxCommandType = 'Dbx.StoredProcedure'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'USUARIOFECHAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 254
        Name = 'OBSERVACOES'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 512
        Name = 'CONDICOES1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 512
        Name = 'CONDICOES2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 512
        Name = 'OPCIONAIS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RE_MOVIMENTO'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 104
    Top = 984
  end
  object pmFecha: TDataSetProvider
    DataSet = qmFecha
    Left = 104
    Top = 1032
  end
  object qmEstorno: TSQLDataSet
    CommandText = 'ESTORNO'
    CommandType = ctStoredProc
    DbxCommandType = 'Dbx.StoredProcedure'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'USUARIOESTORNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RE_MOVIMENTO'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 176
    Top = 984
  end
  object pmEstorno: TDataSetProvider
    DataSet = qmEstorno
    Left = 176
    Top = 1032
  end
  object qmAtivacaogravar: TSQLDataSet
    CommandText = 'ATIVACAO_GRAVAR'
    CommandType = ctStoredProc
    DbxCommandType = 'Dbx.StoredProcedure'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODATIVACAO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODAPARELHO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 60
        Name = 'APARELHO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'SERIE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'SERIE2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 20
        Name = 'NUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODOPERADORA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODPLANO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 10
        Name = 'CONTRATO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 20
        Name = 'VOUCHER'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 1
        Name = 'TIPOATIVACAO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 1
        Name = 'REBATE'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 9
        NumericScale = 2
        Name = 'DESCONTO_ADM'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 248
    Top = 984
  end
  object pmAtivacaogravar: TDataSetProvider
    DataSet = qmAtivacaogravar
    Left = 248
    Top = 1032
  end
  object qrEtiqcompras: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  INDIVIDUAIS.BARRA, '#13#10'  INDIVIDUAIS.SERIE, '#13#10'  INDIVID' +
      'UAIS.NUMERO_FONE, '#13#10'  INDIVIDUAIS.QUANTIDADE, '#13#10'  PRODUTOS.DESCR' +
      'ICAO, '#13#10'  PRODUTOS.NUMETIQ, '#13#10'  PRODUTOS.ETIQUETA, '#13#10'  PRODUTOS.' +
      'CODIGO, '#13#10'  PRODUTOS.PRECOVENDA'#13#10'FROM '#13#10'  MOVIMENTOS MOVIMENTOS'#13 +
      #10'  INNER JOIN TEMPITENS TEMPITENS ON  '#13#10'    (MOVIMENTOS.CODIGO =' +
      ' TEMPITENS.CODMOVIMENTO)  '#13#10'  INNER JOIN INDIVIDUAIS INDIVIDUAIS' +
      ' ON  '#13#10'    (TEMPITENS.CODIGO = INDIVIDUAIS.CODITEM AND '#13#10'     TE' +
      'MPITENS.CODMOVIMENTO = INDIVIDUAIS.CODMOVENTRADA)  '#13#10'  INNER JOI' +
      'N PRODUTOS PRODUTOS ON  '#13#10'    (INDIVIDUAIS.CODPRODUTO = PRODUTOS' +
      '.CODIGO)  '#13#10'WHERE  '#13#10'  MOVIMENTOS.CODIGO = :CODCOMPRA'#13#10'ORDER BY ' +
      #13#10'  INDIVIDUAIS.BARRA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODCOMPRA'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 32
    Top = 1104
  end
  object prEtiqcompras: TDataSetProvider
    DataSet = qrEtiqcompras
    Left = 32
    Top = 1152
  end
  object qrEtiqprodutos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  PRODUTOS.BARRA, '#13#10'  PRODUTOS.DESCRICAO, '#13#10'  PRODUTOS.' +
      'NUMETIQ, '#13#10'  PRODUTOS.ETIQUETA, '#13#10'  PRODUTOS.CODIGO, '#13#10'  PRODUTO' +
      'S.PRECOVENDA'#13#10'FROM '#13#10'  PRODUTOS PRODUTOS'#13#10'WHERE  '#13#10'  PRODUTOS.CO' +
      'DIGO = :CODPRODUTO'#13#10'ORDER BY '#13#10'  PRODUTOS.BARRA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODPRODUTO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 104
    Top = 1104
  end
  object prEtiqprodutos: TDataSetProvider
    DataSet = qrEtiqprodutos
    Left = 104
    Top = 1152
  end
  object qrORcorpo: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT'#13#10'  MOVIMENTOS.CODIGO,'#13#10'  MOVIMENTOS.CODEMPRESA,'#13#10'  MOVIME' +
      'NTOS.DATA,'#13#10'  MOVIMENTOS.CODCLIENTE,'#13#10'  CLIENTES.PESSOAFISICA AS' +
      ' TIPOPESSOA,'#13#10'  CLIENTES.NOME,'#13#10'  CLIENTES.RAZAOSOCIAL,'#13#10'  CLIEN' +
      'TES.RG,'#13#10'  CLIENTES.CPF,'#13#10'  CLIENTES.CGC,'#13#10'  CLIENTES.IE,'#13#10'  CLI' +
      'ENTES.LOGRADOURO,'#13#10'  CLIENTES.NUMERO,'#13#10'  CLIENTES.COMPLEMENTO,'#13#10 +
      '  CLIENTES.BAIRRO,'#13#10'  CLIENTES.CIDADE,'#13#10'  CLIENTES.ESTADO,'#13#10'  CL' +
      'IENTES.CEP,'#13#10'  CLIENTES.FONE,'#13#10'  CLIENTES.FAX,'#13#10'  CLIENTES.EMAIL' +
      ','#13#10'  CLIENTES.CELULAR,'#13#10'  MOVIMENTOS.SERVICOS,'#13#10'  MOVIMENTOS.OPC' +
      'IONAIS,'#13#10'  MOVIMENTOS.CONDICOES1,'#13#10'  MOVIMENTOS.CONDICOES2,'#13#10'  M' +
      'OVIMENTOS.DESCONTOTXT,'#13#10'  MOVIMENTOS.VALOR_SERVICOS,'#13#10'  MOVIMENT' +
      'OS.DESCONTO,'#13#10'  MOVIMENTOS.VALOR_TOTAL,'#13#10'  MOVIMENTOS.NOTA_VALOR' +
      '_TOTAL,'#13#10'  VE.NOMEUSER,'#13#10'  MOVIMENTOS.OBSERVACOES,'#13#10'  MOVIMENTOS' +
      '.DATAFECHAMENTO'#13#10'FROM'#13#10'  MOVIMENTOS'#13#10'  JOIN CLIENTES ON'#13#10'    (CL' +
      'IENTES.CODIGO = MOVIMENTOS.CODCLIENTE)'#13#10'  LEFT JOIN CLIENTES VE ' +
      'ON'#13#10'    (VE.CODIGO = MOVIMENTOS.CODVENDEDOR)'#13#10'WHERE'#13#10'  MOVIMENTO' +
      'S.CODIGO = :CODMOVIMENTO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 176
    Top = 1104
  end
  object prORcorpo: TDataSetProvider
    DataSet = qrORcorpo
    Left = 176
    Top = 1152
  end
  object qrORitens: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT'#13#10'  TEMPITENS.CODMOVIMENTO,'#13#10'  TEMPITENS.CODPRODUTO,'#13#10'  PR' +
      'ODUTOS.DESCRICAO,'#13#10'  TEMPITENS.QUANTIDADE,'#13#10'  TEMPITENS.VALOR_UN' +
      'ITARIO,'#13#10'  (TEMPITENS.DESCONTO * TEMPITENS.QUANTIDADE) AS DESCON' +
      'TO,'#13#10'  TEMPITENS.VALOR_TOTAL + (TEMPITENS.DESCONTO * TEMPITENS.Q' +
      'UANTIDADE) AS VALOR_TOTAL,'#13#10'  MARCAS.DESCRICAO AS MARCA,'#13#10'  PROD' +
      'UTOS.UNIDADE,'#13#10'  MOVIMENTOS.CODEMPRESA'#13#10'FROM'#13#10'  TEMPITENS'#13#10'  JOI' +
      'N PRODUTOS ON'#13#10'    (PRODUTOS.CODIGO = TEMPITENS.CODPRODUTO)'#13#10'  L' +
      'EFT JOIN MARCAS ON'#13#10'    (MARCAS.CODIGO = PRODUTOS.CODMARCA)'#13#10'  J' +
      'OIN MOVIMENTOS ON'#13#10'    (MOVIMENTOS.CODIGO = TEMPITENS.CODMOVIMEN' +
      'TO)'#13#10'WHERE'#13#10'  TEMPITENS.CODMOVIMENTO = :CODMOVIMENTO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 248
    Top = 1104
  end
  object prORitens: TDataSetProvider
    DataSet = qrORitens
    Left = 248
    Top = 1152
  end
  object qrOScorpo: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT'#13#10'  *'#13#10'FROM'#13#10'  REL_NOTACORPO(:CODMOVIMENTO)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 320
    Top = 1104
  end
  object prOScorpo: TDataSetProvider
    DataSet = qrOScorpo
    Left = 320
    Top = 1152
  end
  object qrOSitens: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT'#13#10'  *'#13#10'FROM'#13#10'  REL_NOTAITENS(:CODMOVIMENTO)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 392
    Top = 1104
  end
  object prOSitens: TDataSetProvider
    DataSet = qrOSitens
    Left = 392
    Top = 1152
  end
  object qrCurvaPro: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  PRODUTOS.CODIGO, '#13#10'  PRODUTOS.DESCRICAO, '#13#10'  SUM(INDI' +
      'VIDUAIS.QUANTIDADE) AS QUANTIDADE, '#13#10'  SUM(INDIVIDUAIS.VALOR_PAG' +
      'O) AS VALOR_PAGO, '#13#10'  SUM(INDIVIDUAIS.TOTAL_CUSTO) AS TOTAL_CUST' +
      'O, '#13#10'  SUM(INDIVIDUAIS.TOTAL_LUCRO) AS TOTAL_LUCRO '#13#10'FROM '#13#10'  MO' +
      'VIMENTOS '#13#10'  JOIN INDIVIDUAIS ON '#13#10'    (INDIVIDUAIS.CODMOVSAIDA ' +
      '= MOVIMENTOS.CODIGO) '#13#10'  JOIN PRODUTOS ON '#13#10'    (PRODUTOS.CODIGO' +
      ' = INDIVIDUAIS.CODPRODUTO) '#13#10'WHERE '#13#10'  MOVIMENTOS.ES = 2 AND '#13#10' ' +
      ' MOVIMENTOS.TIPO IN (3,6) AND '#13#10'  INDIVIDUAIS.PS = '#39'P'#39' AND '#13#10'  I' +
      'NDIVIDUAIS.VENDIDO = '#39'S'#39' AND '#13#10'  PRODUTOS.OCULTO = '#39'N'#39' AND '#13#10'  M' +
      'OVIMENTOS.NO_VENDA = '#39'S'#39' '#13#10'GROUP BY '#13#10'  PRODUTOS.CODIGO, '#13#10'  PRO' +
      'DUTOS.DESCRICAO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 464
    Top = 1104
  end
  object prCurvaPro: TDataSetProvider
    DataSet = qrCurvaPro
    Left = 464
    Top = 1152
  end
  object qrCurvaProGrupo: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  PRODUTOS.CODIGO, '#13#10'  PRODUTOS.DESCRICAO, '#13#10'  GRUPOS.G' +
      'RUPO, '#13#10'  SUM(INDIVIDUAIS.QUANTIDADE) AS QUANTIDADE, '#13#10'  SUM(IND' +
      'IVIDUAIS.VALOR_PAGO) AS VALOR_PAGO, '#13#10'  SUM(INDIVIDUAIS.TOTAL_CU' +
      'STO) AS TOTAL_CUSTO, '#13#10'  SUM(INDIVIDUAIS.TOTAL_LUCRO) AS TOTAL_L' +
      'UCRO '#13#10'FROM '#13#10'  MOVIMENTOS '#13#10'  JOIN INDIVIDUAIS ON '#13#10'    (INDIVI' +
      'DUAIS.CODMOVSAIDA = MOVIMENTOS.CODIGO) '#13#10'  JOIN PRODUTOS ON '#13#10'  ' +
      '  (PRODUTOS.CODIGO = INDIVIDUAIS.CODPRODUTO) '#13#10'  JOIN GRUPOS ON ' +
      #13#10'    (GRUPOS.CODIGO = PRODUTOS.GRUPO) '#13#10'WHERE '#13#10'  MOVIMENTOS.ES' +
      ' = 2 AND '#13#10'  MOVIMENTOS.TIPO IN (3,6) AND '#13#10'  INDIVIDUAIS.PS = '#39 +
      'P'#39' AND '#13#10'  INDIVIDUAIS.VENDIDO = '#39'S'#39' AND '#13#10'  PRODUTOS.OCULTO = '#39 +
      'N'#39' AND '#13#10'  MOVIMENTOS.NO_VENDA = '#39'S'#39' '#13#10'GROUP BY '#13#10'  PRODUTOS.COD' +
      'IGO, '#13#10'  PRODUTOS.DESCRICAO, '#13#10'  GRUPOS.GRUPO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 536
    Top = 1104
  end
  object prCurvaProGrupo: TDataSetProvider
    DataSet = qrCurvaProGrupo
    Left = 536
    Top = 1152
  end
  object qrORitens2: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT'#13#10'  TEMPITENS.CODMOVIMENTO,'#13#10'  TEMPITENS.CODPRODUTO,'#13#10'  PR' +
      'ODUTOS.DESCRICAO,'#13#10'  TEMPITENS.QUANTIDADE,'#13#10'  (TEMPITENS.VALOR_U' +
      'NITARIO - TEMPITENS.DESCONTO) AS VALOR_UNITARIO,'#13#10'  0 AS DESCONT' +
      'O,'#13#10'  TEMPITENS.VALOR_TOTAL,'#13#10'  MARCAS.DESCRICAO AS MARCA,'#13#10'  PR' +
      'ODUTOS.UNIDADE,'#13#10'  MOVIMENTOS.CODEMPRESA'#13#10'FROM'#13#10'  TEMPITENS'#13#10'  J' +
      'OIN PRODUTOS ON'#13#10'    (PRODUTOS.CODIGO = TEMPITENS.CODPRODUTO)'#13#10' ' +
      ' LEFT JOIN MARCAS ON'#13#10'    (MARCAS.CODIGO = PRODUTOS.CODMARCA)'#13#10' ' +
      ' JOIN MOVIMENTOS ON'#13#10'    (MOVIMENTOS.CODIGO = TEMPITENS.CODMOVIM' +
      'ENTO)'#13#10'WHERE'#13#10'  TEMPITENS.CODMOVIMENTO = :CODMOVIMENTO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 608
    Top = 1104
  end
  object prORitens2: TDataSetProvider
    DataSet = qrORitens2
    Left = 608
    Top = 1152
  end
  object qcOstipos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  OSTIPOS.* '#13#10'FROM '#13#10'  OSTIPOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 536
    Top = 224
    object qcOstiposCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qcOstiposTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 40
    end
    object qcOstiposDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object qcOstiposHORAS: TIntegerField
      FieldName = 'HORAS'
    end
  end
  object pcOstipos: TDataSetProvider
    DataSet = qcOstipos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 536
    Top = 272
  end
  object qcDefeitos: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  DEFEITOS.* '#13#10'FROM '#13#10'  DEFEITOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 608
    Top = 224
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object StringField2: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 40
    end
  end
  object pcDefeitos: TDataSetProvider
    DataSet = qcDefeitos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 608
    Top = 272
  end
  object qyClifoto: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT'#13#10'  *'#13#10'FROM'#13#10'  CLI_IMAGENS'#13#10'WHERE'#13#10'  CODCLIENTE = :CODCLIE' +
      'NTE'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODCLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 392
    Top = 760
    object qyClifotoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyClifotoIMAGEM: TBlobField
      FieldName = 'IMAGEM'
    end
  end
  object pvClifoto: TDataSetProvider
    DataSet = qyClifoto
    UpdateMode = upWhereKeyOnly
    Left = 392
    Top = 808
  end
  object qyProfoto: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT'#13#10'  *'#13#10'FROM'#13#10'  PRO_IMAGENS'#13#10'WHERE'#13#10'  CODPRODUTO = :CODPROD' +
      'UTO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODPRODUTO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 464
    Top = 760
    object qyProfotoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyProfotoIMAGEM: TBlobField
      FieldName = 'IMAGEM'
    end
  end
  object pvProfoto: TDataSetProvider
    DataSet = qyProfoto
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 808
  end
  object qyTransferencias: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT'#13#10'  '#39'N'#39' AS SEL,'#13#10'  TRANSFERENCIAS.*,'#13#10'  CAST(TRANSFERENCIA' +
      'S.DATA AS DATE) AS DATADIA,'#13#10'  CAST(TRANSFERENCIAS.DATA AS TIME)' +
      ' AS DATAHORA,'#13#10'  CLIENTES.NOME'#13#10'FROM'#13#10'  TRANSFERENCIAS'#13#10'  JOIN S' +
      'ISCONFIG ON'#13#10'    (SISCONFIG.CODIGO = TRANSFERENCIAS.CODEMPRESA2)' +
      #13#10'  JOIN CLIENTES ON'#13#10'    (CLIENTES.CODIGO = SISCONFIG.CODCLIENT' +
      'E)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 536
    Top = 760
    object qyTransferenciasSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyTransferenciasDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyTransferenciasCODBARRA: TStringField
      FieldName = 'CODBARRA'
      FixedChar = True
      Size = 14
    end
    object qyTransferenciasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 60
    end
    object qyTransferenciasQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object qyTransferenciasCODEMPRESA1: TIntegerField
      FieldName = 'CODEMPRESA1'
    end
    object qyTransferenciasCODEMPRESA2: TIntegerField
      FieldName = 'CODEMPRESA2'
    end
    object qyTransferenciasUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
      Size = 30
    end
    object qyTransferenciasICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qyTransferenciasDATADIA: TDateField
      FieldName = 'DATADIA'
      ProviderFlags = []
    end
    object qyTransferenciasDATAHORA: TTimeField
      FieldName = 'DATAHORA'
      ProviderFlags = []
    end
    object qyTransferenciasNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
  end
  object pvTransferencias: TDataSetProvider
    DataSet = qyTransferencias
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 536
    Top = 808
  end
  object qmTransf: TSQLDataSet
    CommandText = 'TRANSFERENCIA'
    CommandType = ctStoredProc
    DbxCommandType = 'Dbx.StoredProcedure'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFixedChar
        Precision = 14
        Name = 'BARRA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 9
        NumericScale = 2
        Name = 'QUANTIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 9
        NumericScale = 4
        Name = 'ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODEMPRESA1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODEMPRESA2'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 320
    Top = 984
  end
  object pmTransf: TDataSetProvider
    DataSet = qmTransf
    Left = 320
    Top = 1032
  end
  object spGetID: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFixedChar
        Precision = 30
        Name = 'TABELA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'SEQUENCIA'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = formServidor.SQLConnection
    StoredProcName = 'SEQ_OBTER'
    Left = 608
    Top = 760
  end
  object qmReajuste: TSQLDataSet
    CommandText = 'REAJUSTE'
    CommandType = ctStoredProc
    DbxCommandType = 'Dbx.StoredProcedure'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODMARCA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Precision = 9
        NumericScale = 4
        Name = 'PORCENTAGEM'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 392
    Top = 984
  end
  object pmReajuste: TDataSetProvider
    DataSet = qmReajuste
    Left = 392
    Top = 1032
  end
  object qmTributario: TSQLDataSet
    CommandText = 'SITTRIBUICMS'
    CommandType = ctStoredProc
    DbxCommandType = 'Dbx.StoredProcedure'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODPRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 3
        Name = 'SITTRIBUTARIA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Precision = 9
        NumericScale = 4
        Name = 'ICMSVENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 464
    Top = 984
  end
  object pmTributario: TDataSetProvider
    DataSet = qmTributario
    Left = 464
    Top = 1032
  end
  object qcAtivacao: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT'#13#10'  '#39'N'#39' AS SEL,'#13#10'  INDIVIDUAIS.BARRA, '#13#10'  PRODUTOS.DESCRIC' +
      'AO,'#13#10'  INDIVIDUAIS.SERIE,'#13#10'  INDIVIDUAIS.SERIE2,'#13#10'  INDIVIDUAIS.' +
      'QUANTIDADE,'#13#10'  MOVSAIDA.NOTA_NUMERO AS NOTA_SAIDA,'#13#10'  MOVSAIDA.D' +
      'ATAFECHAMENTO AS DATA_SAIDA,'#13#10'  CLIENTES.NOME AS CLIENTE,'#13#10'  CLI' +
      'ENTES.CPF,'#13#10'  INDIVIDUAIS.VALOR_PAGO,'#13#10'  MOVENTRADA.NOTA_NUMERO ' +
      'AS NOTA_ENTRADA,'#13#10'  MOVENTRADA.DATA AS DATA_ENTRADA,'#13#10'  FORNECED' +
      'ORES.NOME AS FORNECEDOR,'#13#10'  FORNECEDORES.CGC AS CNPJ,'#13#10'  INDIVID' +
      'UAIS.CUSTO_PRODUTO AS CUSTO,'#13#10'  INDIVIDUAIS.NUMERO_FONE,'#13#10'  PLAN' +
      'OS.NOME AS PLANO,'#13#10'  INDIVIDUAIS.CONTRATO,'#13#10'  INDIVIDUAIS.VOUCHE' +
      'R,'#13#10'  INDIVIDUAIS.TIPOATIVACAO,'#13#10'  MOVSAIDA.CODIGO AS CODVENDA,'#13 +
      #10'  VENDEDORES.NOMEUSER AS VENDEDOR,'#13#10'  INDIVIDUAIS.CODEMPRESA,'#13#10 +
      '  INDIVIDUAIS.DESCONTO_ADM'#13#10'FROM'#13#10'  INDIVIDUAIS INDIVIDUAIS'#13#10'  J' +
      'OIN PRODUTOS PRODUTOS ON'#13#10'    (PRODUTOS.CODIGO = INDIVIDUAIS.COD' +
      'PRODUTO)'#13#10'  JOIN MOVIMENTOS MOVSAIDA ON'#13#10'    (MOVSAIDA.CODIGO = ' +
      'INDIVIDUAIS.CODMOVSAIDA)'#13#10'  JOIN MOVIMENTOS MOVENTRADA ON'#13#10'    (' +
      'MOVENTRADA.CODIGO = INDIVIDUAIS.CODMOVENTRADA)'#13#10'  JOIN CLIENTES ' +
      'CLIENTES ON'#13#10'    (CLIENTES.CODIGO = MOVSAIDA.CODCLIENTE)'#13#10'  JOIN' +
      ' CLIENTES FORNECEDORES ON'#13#10'    (FORNECEDORES.CODIGO = MOVENTRADA' +
      '.CODCLIENTE)'#13#10'  LEFT JOIN PLANOS ON'#13#10'    (PLANOS.CODOPERADORA = ' +
      'INDIVIDUAIS.CODOPERADORA AND'#13#10'     PLANOS.CODIGO = INDIVIDUAIS.C' +
      'ODPLANO)'#13#10'  JOIN CLIENTES VENDEDORES ON'#13#10'    (VENDEDORES.CODIGO ' +
      '= MOVSAIDA.CODVENDEDOR)'#13#10'WHERE'#13#10'  INDIVIDUAIS.ATIVACAO = '#39'S'#39
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 680
    Top = 224
    object qcAtivacaoSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qcAtivacaoBARRA: TStringField
      FieldName = 'BARRA'
      FixedChar = True
      Size = 14
    end
    object qcAtivacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 60
    end
    object qcAtivacaoSERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
    end
    object qcAtivacaoSERIE2: TStringField
      FieldName = 'SERIE2'
      FixedChar = True
    end
    object qcAtivacaoQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 20
      Size = 3
    end
    object qcAtivacaoNOTA_SAIDA: TIntegerField
      FieldName = 'NOTA_SAIDA'
    end
    object qcAtivacaoDATA_SAIDA: TSQLTimeStampField
      FieldName = 'DATA_SAIDA'
    end
    object qcAtivacaoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 40
    end
    object qcAtivacaoCPF: TStringField
      FieldName = 'CPF'
      FixedChar = True
    end
    object qcAtivacaoVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object qcAtivacaoNOTA_ENTRADA: TIntegerField
      FieldName = 'NOTA_ENTRADA'
    end
    object qcAtivacaoDATA_ENTRADA: TSQLTimeStampField
      FieldName = 'DATA_ENTRADA'
    end
    object qcAtivacaoFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 40
    end
    object qcAtivacaoCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
    end
    object qcAtivacaoCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Precision = 20
      Size = 3
    end
    object qcAtivacaoNUMERO_FONE: TStringField
      FieldName = 'NUMERO_FONE'
      FixedChar = True
    end
    object qcAtivacaoPLANO: TStringField
      FieldName = 'PLANO'
      FixedChar = True
      Size = 40
    end
    object qcAtivacaoCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Size = 10
    end
    object qcAtivacaoVOUCHER: TStringField
      FieldName = 'VOUCHER'
      Size = 10
    end
    object qcAtivacaoTIPOATIVACAO: TStringField
      FieldName = 'TIPOATIVACAO'
      FixedChar = True
      Size = 1
    end
    object qcAtivacaoCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object qcAtivacaoVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 30
    end
    object qcAtivacaoCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
    object qcAtivacaoDESCONTO_ADM: TFloatField
      FieldName = 'DESCONTO_ADM'
    end
  end
  object pcAtivacao: TDataSetProvider
    DataSet = qcAtivacao
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 680
    Top = 272
  end
  object qmAtend: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT'#13#10'  CODMOVIMENTO,'#13#10'  DATA,'#13#10'  USUARIO,'#13#10'  COMENTARIOS'#13#10'FRO' +
      'M'#13#10'  OSATEND'#13#10'WHERE'#13#10'  CODMOVIMENTO = :CODMOVIMENTO'#13#10'ORDER BY'#13#10' ' +
      ' DATA DESC'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = formServidor.SQLConnection
    Left = 536
    Top = 984
    object qmAtendCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qmAtendDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qmAtendUSUARIO: TStringField
      FieldName = 'USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 30
    end
    object qmAtendCOMENTARIOS: TStringField
      FieldName = 'COMENTARIOS'
      Size = 254
    end
  end
  object pmAtend: TDataSetProvider
    DataSet = qmAtend
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 536
    Top = 1032
  end
  object qyOSGed: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT'#13#10'  '#39'N'#39' AS SEL,'#13#10'  OSGED.*'#13#10'FROM'#13#10'  OSGED'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 320
    Top = 760
    object qyOSGedSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyOSGedCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyOSGedNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 60
    end
    object qyOSGedEXTENSAO: TStringField
      FieldName = 'EXTENSAO'
      FixedChar = True
      Size = 3
    end
    object qyOSGedTAMANHO: TFMTBCDField
      FieldName = 'TAMANHO'
      Precision = 20
      Size = 3
    end
    object qyOSGedDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 60
    end
    object qyOSGedDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyOSGedARQUIVO: TBlobField
      FieldName = 'ARQUIVO'
    end
  end
  object pvOSGed: TDataSetProvider
    DataSet = qyOSGed
    Options = [poFetchBlobsOnDemand, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 320
    Top = 808
  end
  object qyNCM: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  NCM.* '#13#10'FROM '#13#10'  NCM'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 680
    Top = 760
    object qyNCMSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyNCMCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyNCMNCM: TStringField
      FieldName = 'NCM'
      Required = True
      FixedChar = True
      Size = 60
    end
  end
  object pvNCM: TDataSetProvider
    DataSet = qyNCM
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 680
    Top = 808
  end
  object qrReport: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT CURRENT_DATE FROM SISCONFIG'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 680
    Top = 1104
  end
  object prReport: TDataSetProvider
    DataSet = qrReport
    Options = [poReadOnly, poAllowCommandText, poUseQuoteChar]
    Left = 680
    Top = 1152
  end
  object qmFiscal: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT'#13#10'  MOVIMENTOS.CODIGO,'#13#10'  MOVIMENTOS.NOTA_DATAEMISSAO,'#13#10'  ' +
      'MOVIMENTOS.CODEMPRESA,'#13#10'  MOVIMENTOS.VALOR_SERVICOS,'#13#10'  MOVIMENT' +
      'OS.VALOR_PRODUTOS,'#13#10'  MOVIMENTOS.NOTA_VALOR_TOTAL,'#13#10'  MOVIMENTOS' +
      '.NOTA_NUMERO,'#13#10'  MOVIMENTOS.TIPODOC,'#13#10'  MOVIMENTOS.CODCLIENTE,'#13#10 +
      '  MOVIMENTOS.ES,'#13#10'  MOVIMENTOS.STATUS,'#13#10'  MOVIMENTOS.DATAFECHAME' +
      'NTO,'#13#10'  CLIENTES.NOME'#13#10'FROM'#13#10'  MOVIMENTOS'#13#10'  JOIN CLIENTES ON'#13#10' ' +
      '   (CLIENTES.CODIGO = MOVIMENTOS.CODCLIENTE)'#13#10'WHERE'#13#10'  MOVIMENTO' +
      'S.ES IN (1, 2) AND'#13#10'  MOVIMENTOS.TIPO IN (1, 3, 6) AND'#13#10'  MOVIME' +
      'NTOS.NOTA_NUMERO > 0'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 608
    Top = 984
  end
  object pmFiscal: TDataSetProvider
    DataSet = qmFiscal
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 608
    Top = 1032
  end
  object qyStatus: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  OS_STATUS.* '#13#10'FROM '#13#10'  OS_STATUS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 752
    Top = 760
    object qyStatusSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyStatusCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyStatusSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 30
    end
    object qyStatusSISTEMA: TStringField
      FieldName = 'SISTEMA'
      FixedChar = True
      Size = 1
    end
  end
  object pvStatus: TDataSetProvider
    DataSet = qyStatus
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 752
    Top = 808
  end
  object qyLocaliza: TSQLDataSet
    SchemaName = 'REMOTO'
    CommandText = 
      'SELECT '#13#10'  '#39'N'#39' AS SEL, '#13#10'  OS_LOCALIZACAO.* '#13#10'FROM '#13#10'  OS_LOCALI' +
      'ZACAO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = formServidor.SQLConnection
    Left = 752
    Top = 656
    object qyLocalizaSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qyLocalizaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qyLocalizaLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      FixedChar = True
      Size = 40
    end
    object qyLocalizaSISTEMA: TStringField
      FieldName = 'SISTEMA'
      FixedChar = True
      Size = 1
    end
  end
  object pvLocaliza: TDataSetProvider
    DataSet = qyLocaliza
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 752
    Top = 704
  end
  object qrAuditoria: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'SELECT * FROM AUDITORIA WHERE ID IS NULL'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 760
    Top = 1104
    object qrAuditoriaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qrAuditoriaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrAuditoriaTABELA: TStringField
      FieldName = 'TABELA'
      Required = True
      FixedChar = True
      Size = 30
    end
    object qrAuditoriaCAMPO: TStringField
      FieldName = 'CAMPO'
      Required = True
      FixedChar = True
      Size = 30
    end
    object qrAuditoriaANTERIOR: TStringField
      FieldName = 'ANTERIOR'
      FixedChar = True
      Size = 60
    end
    object qrAuditoriaNOVO: TStringField
      FieldName = 'NOVO'
      FixedChar = True
      Size = 60
    end
    object qrAuditoriaUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
      Size = 60
    end
    object qrAuditoriaCOMPUTADOR: TStringField
      FieldName = 'COMPUTADOR'
      FixedChar = True
      Size = 60
    end
    object qrAuditoriaDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
  end
end
