inherited formEstornoOS: TformEstornoOS
  Caption = 'Estornos de O.S.'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    inherited tabVisual: TcxTabSheet
      inherited pnlFundoGrade: TPanel
        inherited grdDados: TcxGrid
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              Tag = 1
              Caption = '**'
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ImmediatePost = True
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              MinWidth = 31
              Options.Filtering = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 31
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
              Options.Editing = False
              Width = 65
            end
            object cxGrid1DBTableView1DATAAB: TcxGridDBColumn
              Caption = 'Data abertura'
              DataBinding.FieldName = 'DATAAB'
              Options.Editing = False
              Width = 84
            end
            object cxGrid1DBTableView1HORAAB: TcxGridDBColumn
              Tag = 1
              Caption = 'Hora'
              DataBinding.FieldName = 'HORAAB'
              Options.Editing = False
              Width = 52
            end
            object cxGrid1DBTableView1DATA_ESTORNO: TcxGridDBColumn
              Caption = 'Data estorno'
              DataBinding.FieldName = 'DATA_ESTORNO'
              Options.Editing = False
              SortIndex = 0
              SortOrder = soDescending
              Width = 93
            end
            object cxGrid1DBTableView1USUARIOESTORNO: TcxGridDBColumn
              Caption = 'Quem estornou'
              DataBinding.FieldName = 'USUARIOESTORNO'
              Options.Editing = False
              Width = 119
            end
            object cxGrid1DBTableView1PRIORIDADE: TcxGridDBColumn
              Caption = 'P'
              DataBinding.FieldName = 'PRIORIDADE'
              Options.Editing = False
              Width = 35
            end
            object cxGrid1DBTableView1DATAPREVISAO: TcxGridDBColumn
              Tag = 1
              Caption = 'Previs'#227'o'
              DataBinding.FieldName = 'DATAPREVISAO'
              Options.Editing = False
              Width = 87
            end
            object cxGrid1DBTableView1OLD_STATUS: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'OLD_STATUS'
              Options.Editing = False
            end
            object cxGrid1DBTableView1CODCLIENTE: TcxGridDBColumn
              Caption = 'C'#243'd.Cliente'
              DataBinding.FieldName = 'CODCLIENTE'
              Options.Editing = False
            end
            object cxGrid1DBTableView1NOME: TcxGridDBColumn
              Caption = 'Cliente'
              DataBinding.FieldName = 'NOME'
              Options.Editing = False
            end
            object cxGrid1DBTableView1TIPOOS: TcxGridDBColumn
              Caption = 'Tipo O.S.'
              DataBinding.FieldName = 'TIPOOS'
              Options.Editing = False
            end
            object cxGrid1DBTableView1MARCA: TcxGridDBColumn
              Caption = 'Marca'
              DataBinding.FieldName = 'MARCA'
              Options.Editing = False
            end
            object cxGrid1DBTableView1MODELO: TcxGridDBColumn
              Caption = 'Modelo'
              DataBinding.FieldName = 'MODELO'
              Options.Editing = False
            end
            object cxGrid1DBTableView1SERIE: TcxGridDBColumn
              Caption = 'S'#233'rie/ESN/IMEI'
              DataBinding.FieldName = 'SERIE'
              Options.Editing = False
            end
            object cxGrid1DBTableView1OCORRENCIA: TcxGridDBColumn
              Caption = 'Ocorr'#234'ncia'
              DataBinding.FieldName = 'OCORRENCIA'
              Options.Editing = False
            end
            object cxGrid1DBTableView1PARCEIRO: TcxGridDBColumn
              Caption = 'Parceiro'
              DataBinding.FieldName = 'PARCEIRO'
              Options.Editing = False
            end
            object cxGrid1DBTableView1NOTA_VALOR_TOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'NOTA_VALOR_TOTAL'
              Options.Editing = False
            end
            object cxGrid1DBTableView1QUEMABRIU: TcxGridDBColumn
              Caption = 'Quem abriu'
              DataBinding.FieldName = 'QUEMABRIU'
              Options.Editing = False
            end
            object cxGrid1DBTableView1SOLICITANTE: TcxGridDBColumn
              Caption = 'Solicitante'
              DataBinding.FieldName = 'SOLICITANTE'
              Options.Editing = False
            end
            object cxGrid1DBTableView1QUEM_AUTORIZOU: TcxGridDBColumn
              Caption = 'Quem autorizou'
              DataBinding.FieldName = 'QUEM_AUTORIZOU'
              Options.Editing = False
            end
            object cxGrid1DBTableView1TECNICO: TcxGridDBColumn
              Caption = 'T'#233'cnico'
              DataBinding.FieldName = 'TECNICO'
              Options.Editing = False
            end
            object cxGrid1DBTableView1USUARIOFECHAMENTO: TcxGridDBColumn
              Caption = 'Quem fechou'
              DataBinding.FieldName = 'USUARIOFECHAMENTO'
              Options.Editing = False
            end
            object cxGrid1DBTableView1DATAFECHAMENTO: TcxGridDBColumn
              Caption = 'Data fechamento'
              DataBinding.FieldName = 'DATAFECHAMENTO'
              Options.Editing = False
            end
            object cxGrid1DBTableView1QUEM_RECEBEU: TcxGridDBColumn
              Caption = 'Quem recebeu'
              DataBinding.FieldName = 'QUEM_RECEBEU'
              Options.Editing = False
            end
            object cxGrid1DBTableView1QUEM_ENTREGOU: TcxGridDBColumn
              Caption = 'Quem entregou'
              DataBinding.FieldName = 'QUEM_ENTREGOU'
              Options.Editing = False
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 0
      ExplicitHeight = 0
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited pnlEdicao: TPanel
        inherited Panel2: TPanel
          inherited dedSTATUS: TcxDBTextEdit
            DataBinding.DataField = 'OLD_STATUS'
          end
        end
        inherited cxPageControl1: TcxPageControl
          Properties.ActivePage = cxTabSheet6
          inherited cxTabSheet1: TcxTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 899
            ExplicitHeight = 407
            inherited lbPRAZO: TLabel
              Width = 142
              Caption = 'Previs'#227'o de atendimento'
              ExplicitWidth = 142
            end
            inherited dedPRAZO: TcxDBTextEdit
              DataBinding.DataField = 'DATAPREVISAO'
            end
          end
          inherited cxTabSheet3: TcxTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 899
            ExplicitHeight = 407
          end
          inherited tabPagamentos: TcxTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 899
            ExplicitHeight = 407
          end
          inherited cxTabSheet4: TcxTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 899
            ExplicitHeight = 407
          end
          object cxTabSheet6: TcxTabSheet [5]
            Caption = 'Estorno'
            ImageIndex = 5
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label11: TLabel
              Left = 8
              Top = 8
              Width = 88
              Height = 13
              Caption = 'Quem Estornou'
            end
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 7
              Top = 23
              DataBinding.DataField = 'USUARIOESTORNO'
              DataBinding.DataSource = dsrDados
              Style.Color = clBtnFace
              TabOrder = 0
              Width = 146
            end
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 167
              Top = 23
              TabStop = False
              DataBinding.DataField = 'DATA_ESTORNO'
              DataBinding.DataSource = dsrDados
              Style.Color = clBtnFace
              TabOrder = 1
              Width = 121
            end
          end
          inherited cxTabSheet5: TcxTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 899
            ExplicitHeight = 407
          end
          inherited cxTabSheet7: TcxTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 899
            ExplicitHeight = 407
          end
          inherited cxTabSheet8: TcxTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 899
            ExplicitHeight = 407
          end
        end
      end
    end
  end
  inherited dxBarManagerCad: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManagerCadBar1: TdxBar
      FloatClientWidth = 182
      FloatClientHeight = 90
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmbSelecionar'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 124
          Visible = True
          ItemName = 'edtSelecionar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmbSelecionar2'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 115
          Visible = True
          ItemName = 'edtSelecionar2'
        end>
    end
    inherited dxBarManagerCadBar3: TdxBar
      FloatClientWidth = 85
    end
    inherited btnAdicionar: TdxBarLargeButton
      ImageIndex = 2
    end
    inherited cmbSelecionar: TdxBarCombo
      Tag = 8
    end
    inherited btnAjuda: TdxBarLargeButton
      ImageIndex = 0
    end
    inherited dxBarButton11: TdxBarButton
      Visible = ivNever
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 
      'SELECT CAST('#39'N'#39' AS CHAR(1)) AS SEL, MO.CODIGO, MO.DATA, CAST(MO.' +
      'DATA AS DATE) AS DATAAB, CAST(MO.DATA AS TIME) AS HORAAB, CAST(M' +
      'O.DATAESTORNO AS DATE) AS DATA_ESTORNO, MO.USUARIOESTORNO, MO.PR' +
      'IORIDADE, MO.DATAPREVISAO, MO.OLD_STATUS, MO.CODCLIENTE, CL.NOME' +
      ', MO.OSTIPO, OT.TIPO AS TIPOOS, MO.CODMARCA, MA.DESCRICAO AS MAR' +
      'CA, MO.CODMODELO, MD.DESCRICAO AS MODELO, MO.SERIE, MO.CODDEFEIT' +
      'O, DE.DESCRICAO AS OCORRENCIA, MO.CODPARCEIRO, PA.NOME AS PARCEI' +
      'RO, MO.NOTA_VALOR_TOTAL, MO.CODVENDEDOR_ABRE, QA.NOMEUSER AS QUE' +
      'MABRIU, MO.SOLICITANTE, MO.CONDICAOEXTERNA, MO.ACESSORIOS, MO.SE' +
      'RVICOS, MO.DEFEITO_DETECTADO, MO.SERVICO_REALIZAR, MO.AUTORIZADO' +
      ', MO.QUEM_AUTORIZOU, MO.DATA_AUTORIZADO, MO.OPCIONAIS, MO.CODVEN' +
      'DEDOR, VE.NOMEUSER AS TECNICO, MO.USUARIOFECHAMENTO, MO.DATAFECH' +
      'AMENTO, MO.DATA_ENTREGA, MO.QUEM_RECEBEU, MO.QUEM_ENTREGOU, MO.O' +
      'BSERVACOES, MO.CODEMPRESA, MO.ES, MO.TIPO, MO.VALOR_SERVICOS, MO' +
      '.VALOR_ITENS, MO.NOTA_VALOR_FRETE, MO.NOTA_VALOR_SEGURO, MO.NOTA' +
      '_VALOR_OUTROS, MO.VALOR_ICMS, MO.DESCONTO, MO.NOTA_QUANTIDADE, M' +
      'O.NOTA_FRETE, MO.CONDICAO, MO.NOTA_DATASAIDA, MO.NOTA_BASEICMS, ' +
      'MO.NOTA_BASEICMSSUBST, MO.NOTA_VALORICMSSUBST, MO.VALOR_IPI, MO.' +
      'GARANTIA, MO.EMPRESTIMO, MO.ICMSSIMPLES, MO.ICMSSIMPALIQ, MO.ISS' +
      'ALIQ, MO.NOTA_CODNATUOPER, MO.NOTA_PESOBRUTO, MO.NOTA_PESOLIQUID' +
      'O, MO.CODCENTRO, MO.LOG_USUARIO, MO.LOG_TIPO, MO.LOG_MAQUINA, MO' +
      '.LOG_DATAREMOTO, MO.LOCALIZACAO, MO.OPERADORA FROM MOVIMENTOS MO' +
      ' LEFT JOIN CLIENTES CL ON (CL.CODIGO = MO.CODCLIENTE) LEFT JOIN ' +
      'OSTIPOS OT ON (OT.CODIGO = MO.OSTIPO) LEFT JOIN MARCAS MA ON (MA' +
      '.CODIGO = MO.CODMARCA) LEFT JOIN MODELOS MD ON (MD.CODIGO = MO.C' +
      'ODMODELO AND MD.CODEQUIPAMENTO = MO.CODMARCA) LEFT JOIN DEFEITOS' +
      ' DE ON (DE.CODIGO = MO.CODDEFEITO) LEFT JOIN CLIENTES PA ON (PA.' +
      'CODIGO = MO.CODPARCEIRO) LEFT JOIN CLIENTES QA ON (QA.CODIGO = M' +
      'O.CODVENDEDOR_ABRE) LEFT JOIN CLIENTES VE ON (VE.CODIGO = MO.COD' +
      'TECNICO) WHERE MO.ES = 2 AND MO.TIPO = 9 AND MO.OLD_STATUS LIKE ' +
      #39'OS%'#39
    ProviderName = 'pmOSestornos'
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object cdsDadosDATAAB: TDateField
      FieldName = 'DATAAB'
      ProviderFlags = []
      Required = True
      DisplayFormat = 'dd/mm/yy'
    end
    object cdsDadosHORAAB: TTimeField
      FieldName = 'HORAAB'
      ProviderFlags = []
      Required = True
      DisplayFormat = 'hh:nn'
    end
    object cdsDadosDATA_ESTORNO: TDateField
      FieldName = 'DATA_ESTORNO'
      ProviderFlags = []
      DisplayFormat = 'dd/mm/yy'
    end
    object cdsDadosUSUARIOESTORNO: TStringField
      FieldName = 'USUARIOESTORNO'
      FixedChar = True
      Size = 40
    end
    object cdsDadosPRIORIDADE: TIntegerField
      FieldName = 'PRIORIDADE'
    end
    object cdsDadosDATAPREVISAO: TSQLTimeStampField
      FieldName = 'DATAPREVISAO'
    end
    object cdsDadosOLD_STATUS: TStringField
      FieldName = 'OLD_STATUS'
      FixedChar = True
    end
    object cdsDadosCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsDadosNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosOSTIPO: TIntegerField
      FieldName = 'OSTIPO'
      Required = True
    end
    object cdsDadosTIPOOS: TStringField
      FieldName = 'TIPOOS'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosCODMARCA: TIntegerField
      FieldName = 'CODMARCA'
    end
    object cdsDadosMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosCODMODELO: TIntegerField
      FieldName = 'CODMODELO'
    end
    object cdsDadosMODELO: TStringField
      FieldName = 'MODELO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosSERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
      Size = 30
    end
    object cdsDadosCODDEFEITO: TIntegerField
      FieldName = 'CODDEFEITO'
    end
    object cdsDadosOCORRENCIA: TStringField
      FieldName = 'OCORRENCIA'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosCODPARCEIRO: TIntegerField
      FieldName = 'CODPARCEIRO'
    end
    object cdsDadosPARCEIRO: TStringField
      FieldName = 'PARCEIRO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosNOTA_VALOR_TOTAL: TFMTBCDField
      FieldName = 'NOTA_VALOR_TOTAL'
      Precision = 20
      Size = 2
    end
    object cdsDadosCODVENDEDOR_ABRE: TIntegerField
      FieldName = 'CODVENDEDOR_ABRE'
    end
    object cdsDadosQUEMABRIU: TStringField
      FieldName = 'QUEMABRIU'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      FixedChar = True
      Size = 40
    end
    object cdsDadosCONDICAOEXTERNA: TStringField
      FieldName = 'CONDICAOEXTERNA'
      FixedChar = True
      Size = 40
    end
    object cdsDadosACESSORIOS: TStringField
      FieldName = 'ACESSORIOS'
      FixedChar = True
      Size = 50
    end
    object cdsDadosSERVICOS: TStringField
      FieldName = 'SERVICOS'
      Size = 1024
    end
    object cdsDadosDEFEITO_DETECTADO: TStringField
      FieldName = 'DEFEITO_DETECTADO'
      FixedChar = True
      Size = 60
    end
    object cdsDadosSERVICO_REALIZAR: TStringField
      FieldName = 'SERVICO_REALIZAR'
      FixedChar = True
      Size = 60
    end
    object cdsDadosAUTORIZADO: TStringField
      FieldName = 'AUTORIZADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosQUEM_AUTORIZOU: TStringField
      FieldName = 'QUEM_AUTORIZOU'
      FixedChar = True
      Size = 40
    end
    object cdsDadosDATA_AUTORIZADO: TSQLTimeStampField
      FieldName = 'DATA_AUTORIZADO'
    end
    object cdsDadosOPCIONAIS: TStringField
      FieldName = 'OPCIONAIS'
      Size = 1024
    end
    object cdsDadosCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object cdsDadosUSUARIOFECHAMENTO: TStringField
      FieldName = 'USUARIOFECHAMENTO'
      FixedChar = True
      Size = 40
    end
    object cdsDadosDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
    end
    object cdsDadosDATA_ENTREGA: TSQLTimeStampField
      FieldName = 'DATA_ENTREGA'
    end
    object cdsDadosQUEM_RECEBEU: TStringField
      FieldName = 'QUEM_RECEBEU'
      FixedChar = True
      Size = 40
    end
    object cdsDadosQUEM_ENTREGOU: TStringField
      FieldName = 'QUEM_ENTREGOU'
      FixedChar = True
      Size = 40
    end
    object cdsDadosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 2048
    end
    object cdsDadosCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
      Required = True
    end
    object cdsDadosES: TSmallintField
      FieldName = 'ES'
      Required = True
    end
    object cdsDadosTIPO: TSmallintField
      FieldName = 'TIPO'
      Required = True
    end
    object cdsDadosVALOR_SERVICOS: TFloatField
      FieldName = 'VALOR_SERVICOS'
    end
    object cdsDadosVALOR_ITENS: TFloatField
      FieldName = 'VALOR_ITENS'
    end
    object cdsDadosNOTA_VALOR_FRETE: TFloatField
      FieldName = 'NOTA_VALOR_FRETE'
    end
    object cdsDadosNOTA_VALOR_SEGURO: TFloatField
      FieldName = 'NOTA_VALOR_SEGURO'
    end
    object cdsDadosNOTA_VALOR_OUTROS: TFloatField
      FieldName = 'NOTA_VALOR_OUTROS'
    end
    object cdsDadosVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsDadosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsDadosNOTA_QUANTIDADE: TFloatField
      FieldName = 'NOTA_QUANTIDADE'
    end
    object cdsDadosNOTA_FRETE: TSmallintField
      FieldName = 'NOTA_FRETE'
      Required = True
    end
    object cdsDadosCONDICAO: TStringField
      FieldName = 'CONDICAO'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsDadosNOTA_DATASAIDA: TSQLTimeStampField
      FieldName = 'NOTA_DATASAIDA'
    end
    object cdsDadosNOTA_BASEICMS: TFloatField
      FieldName = 'NOTA_BASEICMS'
    end
    object cdsDadosNOTA_BASEICMSSUBST: TFloatField
      FieldName = 'NOTA_BASEICMSSUBST'
    end
    object cdsDadosNOTA_VALORICMSSUBST: TFloatField
      FieldName = 'NOTA_VALORICMSSUBST'
    end
    object cdsDadosVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object cdsDadosGARANTIA: TStringField
      FieldName = 'GARANTIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosEMPRESTIMO: TStringField
      FieldName = 'EMPRESTIMO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosICMSSIMPLES: TStringField
      FieldName = 'ICMSSIMPLES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosICMSSIMPALIQ: TFloatField
      FieldName = 'ICMSSIMPALIQ'
    end
    object cdsDadosISSALIQ: TFloatField
      FieldName = 'ISSALIQ'
    end
    object cdsDadosNOTA_CODNATUOPER: TStringField
      FieldName = 'NOTA_CODNATUOPER'
      FixedChar = True
      Size = 5
    end
    object cdsDadosNOTA_PESOBRUTO: TFloatField
      FieldName = 'NOTA_PESOBRUTO'
    end
    object cdsDadosNOTA_PESOLIQUIDO: TFloatField
      FieldName = 'NOTA_PESOLIQUIDO'
    end
    object cdsDadosCODCENTRO: TIntegerField
      FieldName = 'CODCENTRO'
    end
    object cdsDadosLOG_USUARIO: TStringField
      FieldName = 'LOG_USUARIO'
      FixedChar = True
      Size = 30
    end
    object cdsDadosLOG_TIPO: TStringField
      FieldName = 'LOG_TIPO'
      FixedChar = True
      Size = 10
    end
    object cdsDadosLOG_MAQUINA: TStringField
      FieldName = 'LOG_MAQUINA'
      FixedChar = True
      Size = 30
    end
    object cdsDadosLOG_DATAREMOTO: TSQLTimeStampField
      FieldName = 'LOG_DATAREMOTO'
    end
    object cdsDadosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      FixedChar = True
      Size = 40
    end
    object cdsDadosOPERADORA: TStringField
      FieldName = 'OPERADORA'
      FixedChar = True
      Size = 40
    end
    object cdsDadosTECNICO: TStringField
      FieldName = 'TECNICO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.758053900460000000
      BuiltInReportLink = True
    end
  end
end
