inherited formOS: TformOS
  Left = 242
  Top = 111
  Caption = 'Ordens de Servi'#231'o'
  ClientHeight = 617
  ClientWidth = 807
  ExplicitTop = -78
  ExplicitWidth = 823
  ExplicitHeight = 655
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 807
    Height = 597
    ExplicitWidth = 807
    ExplicitHeight = 597
    ClientRectBottom = 596
    ClientRectRight = 806
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 805
      ExplicitHeight = 595
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 805
        ExplicitWidth = 805
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 566
        Width = 805
        ExplicitTop = 566
        ExplicitWidth = 805
      end
      inherited pnlFundoGrade: TPanel
        Width = 805
        Height = 489
        ExplicitWidth = 805
        ExplicitHeight = 489
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 467
          Width = 805
          ExplicitTop = 467
          ExplicitWidth = 805
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 805
          ExplicitWidth = 805
        end
        inherited grdDados: TcxGrid
          Width = 805
          Height = 445
          ExplicitWidth = 805
          ExplicitHeight = 445
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              Tag = 1
              Caption = '**'
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ImmediatePost = True
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              MinWidth = 30
              Options.Filtering = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 30
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
              Options.Editing = False
              Width = 67
            end
            object cxGrid1DBTableView1DATAAB: TcxGridDBColumn
              Caption = 'Data abertura'
              DataBinding.FieldName = 'DATAAB'
              Options.Editing = False
              SortIndex = 0
              SortOrder = soDescending
              Width = 80
            end
            object cxGrid1DBTableView1HORAAB: TcxGridDBColumn
              Tag = 1
              Caption = 'Hora'
              DataBinding.FieldName = 'HORAAB'
              Options.Editing = False
              Width = 58
            end
            object cxGrid1DBTableView1PRIORIDADE: TcxGridDBColumn
              Caption = 'P'
              DataBinding.FieldName = 'PRIORIDADE'
              Options.Editing = False
              Width = 32
            end
            object cxGrid1DBTableView1PRAZO: TcxGridDBColumn
              Tag = 1
              Caption = 'Prazo'
              DataBinding.FieldName = 'PRAZO'
              Options.Editing = False
              Width = 102
            end
            object cxGrid1DBTableView1STATUS: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'STATUS'
              Options.Editing = False
              Width = 195
            end
            object cxGrid1DBTableView1CODCLIENTE: TcxGridDBColumn
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
              Width = 100
            end
            object cxGrid1DBTableView1ABERTO: TcxGridDBColumn
              Caption = 'Valor Aberto'
              DataBinding.FieldName = 'ABERTO'
              Styles.Content = formPrincipal.HeaderNegrito
              Width = 100
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
            object cxGrid1DBTableView1DEFEITO_DETECTADO: TcxGridDBColumn
              Caption = 'Defeito Detectado'
              DataBinding.FieldName = 'DEFEITO_DETECTADO'
            end
            object cxGrid1DBTableView1SERVICO_REALIZAR: TcxGridDBColumn
              Caption = 'Servi'#231'o a Realizar'
              DataBinding.FieldName = 'SERVICO_REALIZAR'
            end
            object cxGrid1DBTableView1LOCALIZACAO: TcxGridDBColumn
              Caption = 'Localiza'#231#227'o'
              DataBinding.FieldName = 'LOCALIZACAO'
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 805
      ExplicitHeight = 595
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 805
        ExplicitWidth = 805
      end
      inherited pnlEdicao: TPanel
        Width = 805
        Height = 518
        ExplicitWidth = 805
        ExplicitHeight = 518
        inherited Panel2: TPanel
          Width = 805
          ExplicitWidth = 805
        end
        inherited cxPageControl1: TcxPageControl
          Width = 805
          Height = 382
          ExplicitWidth = 805
          ExplicitHeight = 382
          ClientRectBottom = 378
          ClientRectRight = 801
          inherited cxTabSheet1: TcxTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 797
            ExplicitHeight = 354
          end
          inherited cxTabSheet2: TcxTabSheet
            ExplicitWidth = 797
            ExplicitHeight = 354
            inherited Panel3: TPanel
              Width = 797
              ExplicitWidth = 797
            end
            inherited pnlTecnicos: TPanel
              Width = 797
              Height = 260
              ExplicitWidth = 797
              ExplicitHeight = 260
              inherited grdTecnicos: TcxGrid
                Width = 795
                Height = 258
                ExplicitWidth = 795
                ExplicitHeight = 258
              end
            end
          end
          object cxTabSheet6: TcxTabSheet [2]
            Caption = 'Fechamento Venda'
            ImageIndex = 8
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label8: TLabel
              Left = 5
              Top = 12
              Width = 139
              Height = 13
              Caption = 'Detalhes de fechamento'
              FocusControl = cxDBMemo3
            end
            object Label9: TLabel
              Left = 5
              Top = 92
              Width = 98
              Height = 13
              Caption = 'Data fechamento'
            end
            object Label10: TLabel
              Left = 141
              Top = 92
              Width = 110
              Height = 13
              Caption = 'Usu'#225'rio que fechou'
            end
            object cxDBMemo3: TcxDBMemo
              Left = 4
              Top = 27
              DataBinding.DataField = 'OBSERVACOES'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Height = 57
              Width = 665
            end
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 4
              Top = 107
              DataBinding.DataField = 'DATAFECHAMENTO'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 1
              Width = 121
            end
            object cxDBTextEdit4: TcxDBTextEdit
              Left = 140
              Top = 107
              DataBinding.DataField = 'USUARIOFECHAMENTO'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 2
              Width = 121
            end
          end
          inherited cxTabSheet3: TcxTabSheet
            ExplicitWidth = 797
            ExplicitHeight = 354
            inherited pnlItens: TPanel
              Width = 797
              Height = 354
              ExplicitWidth = 797
              ExplicitHeight = 354
              inherited grdItens: TcxGrid
                Width = 795
                Height = 352
                ExplicitWidth = 795
                ExplicitHeight = 352
              end
            end
          end
          inherited tabPagamentos: TcxTabSheet
            ExplicitWidth = 797
            ExplicitHeight = 354
            inherited pnlPagamentos: TPanel
              Width = 797
              Height = 354
              ExplicitWidth = 797
              ExplicitHeight = 354
              inherited grdPagamentos: TcxGrid
                Width = 795
                Height = 352
                ExplicitWidth = 795
                ExplicitHeight = 352
              end
            end
          end
          inherited cxTabSheet4: TcxTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 797
            ExplicitHeight = 354
          end
          inherited cxTabSheet5: TcxTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 797
            ExplicitHeight = 354
          end
          inherited cxTabSheet7: TcxTabSheet
            ExplicitWidth = 797
            ExplicitHeight = 354
          end
          inherited cxTabSheet8: TcxTabSheet
            ExplicitWidth = 797
            ExplicitHeight = 354
            inherited pnlLog: TPanel
              Width = 797
              Height = 354
              ExplicitWidth = 797
              ExplicitHeight = 354
              inherited Splitter1: TSplitter
                Width = 797
                ExplicitWidth = 712
              end
              inherited cxGridLog1: TcxGrid
                Width = 797
                ExplicitWidth = 797
              end
              inherited cxGridLog2: TcxGrid
                Width = 797
                Height = 246
                ExplicitWidth = 797
                ExplicitHeight = 246
              end
            end
          end
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 597
    Width = 807
    ExplicitTop = 597
    ExplicitWidth = 807
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
          UserWidth = 119
          Visible = True
          ItemName = 'edtSelecionar2'
        end>
    end
    inherited btnAdicionar: TdxBarLargeButton
      ImageIndex = 2
    end
    inherited edtSelecionar: TdxBarEdit
      Tag = 7
    end
    inherited btnAjuda: TdxBarLargeButton
      ImageIndex = 0
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 
      'SELECT '#39'N'#39' AS SEL, MO.CODIGO, MO.DATA, CAST(MO.DATA AS DATE) AS ' +
      'DATAAB, CAST(MO.DATA AS TIME) AS HORAAB, MO.PRIORIDADE, MO.DATAP' +
      'REVISAO, CAST(((MO.DATAPREVISAO - CURRENT_TIMESTAMP) * 24) AS DO' +
      'UBLE PRECISION) AS PRAZO, MO.STATUS, MO.CODCLIENTE, CL.NOME, MO.' +
      'OSTIPO, OT.TIPO AS TIPOOS, MO.CODMARCA, MA.DESCRICAO AS MARCA, M' +
      'O.CODMODELO, MD.DESCRICAO AS MODELO, MO.SERIE, MO.CODDEFEITO, DE' +
      '.DESCRICAO AS OCORRENCIA, MO.CODPARCEIRO, PA.NOME AS PARCEIRO, M' +
      'O.NOTA_VALOR_TOTAL, MO.CODVENDEDOR_ABRE, QA.NOMEUSER AS QUEMABRI' +
      'U, MO.SOLICITANTE, MO.CONDICAOEXTERNA, MO.ACESSORIOS, MO.SERVICO' +
      'S, MO.DEFEITO_DETECTADO, MO.SERVICO_REALIZAR, MO.AUTORIZADO, MO.' +
      'QUEM_AUTORIZOU, MO.DATA_AUTORIZADO, MO.OPCIONAIS, MO.CODVENDEDOR' +
      ', VE.NOMEUSER AS TECNICO, MO.USUARIOFECHAMENTO, MO.DATAFECHAMENT' +
      'O, MO.DATA_ENTREGA, MO.QUEM_RECEBEU, MO.QUEM_ENTREGOU, MO.OBSERV' +
      'ACOES, MO.CODEMPRESA, MO.ES, MO.TIPO, MO.VALOR_SERVICOS, MO.VALO' +
      'R_ITENS, MO.NOTA_VALOR_FRETE, MO.NOTA_VALOR_SEGURO, MO.NOTA_VALO' +
      'R_OUTROS, MO.VALOR_ICMS, MO.DESCONTO, MO.NOTA_QUANTIDADE, MO.NOT' +
      'A_FRETE, MO.CONDICAO, MO.NOTA_DATASAIDA, MO.NOTA_BASEICMS, MO.NO' +
      'TA_BASEICMSSUBST, MO.NOTA_VALORICMSSUBST, MO.VALOR_IPI, MO.GARAN' +
      'TIA, MO.EMPRESTIMO, MO.ICMSSIMPLES, MO.ICMSSIMPALIQ, MO.ISSALIQ,' +
      ' MO.NOTA_CODNATUOPER, MO.NOTA_PESOBRUTO, MO.NOTA_PESOLIQUIDO, MO' +
      '.CODCENTRO, MO.LOG_USUARIO, MO.LOG_TIPO, MO.LOG_MAQUINA, MO.LOG_' +
      'DATAREMOTO, MO.LOCALIZACAO, MO.OPERADORA, (SELECT SUM(PA.VALOR) ' +
      'FROM PAGAMENTOS PA WHERE PA.CODMOVIMENTO = MO.CODIGO AND PA.PAGO' +
      ' = 0 AND PA.ES = 2) AS ABERTO FROM MOVIMENTOS MO JOIN CLIENTES C' +
      'L ON (CL.CODIGO = MO.CODCLIENTE) LEFT JOIN OSTIPOS OT ON (OT.COD' +
      'IGO = MO.OSTIPO) LEFT JOIN MARCAS MA ON (MA.CODIGO = MO.CODMARCA' +
      ') LEFT JOIN MODELOS MD ON (MD.CODIGO = MO.CODMODELO AND MD.CODEQ' +
      'UIPAMENTO = MO.CODMARCA) LEFT JOIN DEFEITOS DE ON (DE.CODIGO = M' +
      'O.CODDEFEITO) LEFT JOIN CLIENTES PA ON (PA.CODIGO = MO.CODPARCEI' +
      'RO) LEFT JOIN CLIENTES QA ON (QA.CODIGO = MO.CODVENDEDOR_ABRE) L' +
      'EFT JOIN CLIENTES VE ON (VE.CODIGO = MO.CODTECNICO) WHERE MO.ES ' +
      '= 2 AND MO.TIPO IN (2, 3, 5, 6)'
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
    object cdsDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object cdsDadosDATAAB: TDateField
      FieldName = 'DATAAB'
      ProviderFlags = []
      DisplayFormat = 'DD/MM/YY'
    end
    object cdsDadosHORAAB: TTimeField
      FieldName = 'HORAAB'
      ProviderFlags = []
      DisplayFormat = 'HH:NN'
    end
    object cdsDadosPRIORIDADE: TIntegerField
      FieldName = 'PRIORIDADE'
    end
    object cdsDadosDATAPREVISAO: TSQLTimeStampField
      FieldName = 'DATAPREVISAO'
    end
    object cdsDadosPRAZO: TFloatField
      FieldName = 'PRAZO'
      ProviderFlags = []
      OnGetText = cdsDadosPRAZOGetText
    end
    object cdsDadosSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 30
    end
    object cdsDadosCODCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd.Cliente'
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
      DisplayLabel = 'Tipo de O.S.'
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
    end
    object cdsDadosES: TSmallintField
      FieldName = 'ES'
    end
    object cdsDadosTIPO: TSmallintField
      FieldName = 'TIPO'
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
    end
    object cdsDadosCONDICAO: TStringField
      FieldName = 'CONDICAO'
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
      FixedChar = True
      Size = 1
    end
    object cdsDadosEMPRESTIMO: TStringField
      FieldName = 'EMPRESTIMO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosICMSSIMPLES: TStringField
      FieldName = 'ICMSSIMPLES'
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
    object cdsDadosABERTO: TFMTBCDField
      FieldName = 'ABERTO'
      ProviderFlags = []
      Precision = 20
      Size = 2
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.758312141200000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
  inherited dsrDataEntre: TDataSource
    Left = 496
    Top = 160
  end
  inherited cdsTecnicos: TClientDataSet
    Left = 408
    Top = 120
  end
end
