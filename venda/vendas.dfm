inherited formVendas: TformVendas
  Left = 257
  Top = 134
  Caption = 'Vendas'
  ClientHeight = 497
  ClientWidth = 706
  ExplicitWidth = 722
  ExplicitHeight = 535
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 706
    Height = 477
    ExplicitWidth = 706
    ExplicitHeight = 477
    ClientRectBottom = 476
    ClientRectRight = 705
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 704
      ExplicitHeight = 475
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 704
        ExplicitWidth = 704
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 446
        Width = 704
        ExplicitTop = 446
        ExplicitWidth = 704
      end
      inherited pnlFundoGrade: TPanel
        Width = 704
        Height = 369
        ExplicitWidth = 704
        ExplicitHeight = 369
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 347
          Width = 704
          ExplicitTop = 347
          ExplicitWidth = 704
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 704
          ExplicitWidth = 704
        end
        inherited grdDados: TcxGrid
          Width = 704
          Height = 325
          ExplicitWidth = 704
          ExplicitHeight = 325
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              Tag = 1
              Caption = '**'
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ImmediatePost = True
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              MinWidth = 24
              Options.Filtering = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 24
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
              SortIndex = 0
              SortOrder = soDescending
            end
            object cxGrid1DBTableView1DATA: TcxGridDBColumn
              Caption = 'Data in'#237'cio'
              DataBinding.FieldName = 'DATA'
            end
            object cxGrid1DBTableView1HORA: TcxGridDBColumn
              Caption = 'Hora'
              DataBinding.FieldName = 'HORA'
            end
            object cxGrid1DBTableView1STATUS: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'STATUS'
            end
            object cxGrid1DBTableView1NOME: TcxGridDBColumn
              Caption = 'Cliente'
              DataBinding.FieldName = 'NOME'
            end
            object cxGrid1DBTableView1NOTA_VALOR_TOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'NOTA_VALOR_TOTAL'
              Width = 100
            end
            object cxGrid1DBTableView1ABERTO: TcxGridDBColumn
              Caption = 'Valor Aberto'
              DataBinding.FieldName = 'ABERTO'
              Styles.Content = formPrincipal.HeaderNegrito
              Width = 100
            end
            object cxGrid1DBTableView1CONDICAOPAGAMENTO: TcxGridDBColumn
              Caption = 'Cond.Pagamento'
              DataBinding.FieldName = 'CONDICAOPAGAMENTO'
            end
            object cxGrid1DBTableView1NOMEUSER: TcxGridDBColumn
              Caption = 'Vendedor'
              DataBinding.FieldName = 'NOMEUSER'
            end
            object cxGrid1DBTableView1USUARIOFECHAMENTO: TcxGridDBColumn
              Caption = 'Quem fechou'
              DataBinding.FieldName = 'USUARIOFECHAMENTO'
            end
            object cxGrid1DBTableView1DATAFECHA: TcxGridDBColumn
              Caption = 'Data fechamento'
              DataBinding.FieldName = 'DATAFECHA'
            end
            object cxGrid1DBTableView1NOTA_NUMERO: TcxGridDBColumn
              Caption = 'Nota Fiscal'
              DataBinding.FieldName = 'NOTA_NUMERO'
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 704
      ExplicitHeight = 475
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 704
        ExplicitWidth = 704
      end
      inherited pnlEdicao: TPanel
        Width = 704
        Height = 398
        ExplicitWidth = 704
        ExplicitHeight = 398
        inherited pnlPainel: TPanel
          Width = 704
          ExplicitWidth = 704
        end
        inherited pgcDetalhes: TcxPageControl
          Width = 704
          Height = 302
          ExplicitWidth = 704
          ExplicitHeight = 302
          ClientRectBottom = 298
          ClientRectRight = 700
          inherited tabFechamento: TcxTabSheet
            ExplicitWidth = 696
            ExplicitHeight = 274
            object lbQUEM_RECEBEU: TLabel [2]
              Left = 11
              Top = 146
              Width = 63
              Height = 13
              Caption = 'N'#250'mero NF'
              FocusControl = dedQUEM_RECEBEU
            end
            object lbCHNFE: TLabel [3]
              Left = 11
              Top = 186
              Width = 62
              Height = 13
              Caption = 'Chave NFe'
              FocusControl = dedCHNFE
            end
            object dedQUEM_RECEBEU: TcxDBTextEdit
              Left = 10
              Top = 161
              DataBinding.DataField = 'NOTA_NUMERO'
              DataBinding.DataSource = dsrDados
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              TabOrder = 2
              Width = 104
            end
            object dedCHNFE: TcxDBTextEdit
              Left = 10
              Top = 201
              DataBinding.DataField = 'CHNFE'
              DataBinding.DataSource = dsrDados
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              TabOrder = 3
              Width = 415
            end
          end
          inherited tabItens: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 698
            ExplicitHeight = 278
            inherited pnlItens: TPanel
              Width = 698
              Height = 278
              ExplicitWidth = 698
              ExplicitHeight = 278
              inherited grdItens: TcxGrid
                Width = 696
                Height = 276
                LookAndFeel.NativeStyle = False
                ExplicitWidth = 696
                ExplicitHeight = 276
                inherited grdItensDBTableView2: TcxGridDBTableView
                  inherited grdItensDBTableView2BARRA: TcxGridDBColumn
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Moving = False
                  end
                  inherited grdItensDBTableView2DESCRICAO: TcxGridDBColumn
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Moving = False
                    Width = 410
                  end
                  inherited grdItensDBTableView2QUANTIDADE: TcxGridDBColumn
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Moving = False
                  end
                  inherited grdItensDBTableView2VALOR_PAGO: TcxGridDBColumn
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Moving = False
                  end
                  object grdItensDBTableView2OPERADORA: TcxGridDBColumn
                    Caption = 'Operadora'
                    DataBinding.FieldName = 'OPERADORA'
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Moving = False
                    Width = 134
                  end
                  object grdItensDBTableView2PLANO: TcxGridDBColumn
                    Caption = 'Plano'
                    DataBinding.FieldName = 'PLANO'
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Moving = False
                    Width = 165
                  end
                  object grdItensDBTableView2LINHA: TcxGridDBColumn
                    Caption = 'Linha'
                    DataBinding.FieldName = 'LINHA'
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Moving = False
                  end
                  object grdItensDBTableView2CONTRATO: TcxGridDBColumn
                    Caption = 'Contrato'
                    DataBinding.FieldName = 'CONTRATO'
                  end
                  object grdItensDBTableView2VOUCHER: TcxGridDBColumn
                    Caption = 'C'#243'd.HDC'
                    DataBinding.FieldName = 'VOUCHER'
                  end
                  object grdItensDBTableView2TIPOATIVACAO: TcxGridDBColumn
                    Caption = 'Tipo'
                    DataBinding.FieldName = 'TIPOATIVACAO'
                    OnGetDisplayText = grdItensDBTableView2TIPOATIVACAOGetDisplayText
                    Width = 150
                  end
                  object grdItensDBTableView2DESCONTO_ADM: TcxGridDBColumn
                    DataBinding.FieldName = 'DESCONTO_ADM'
                  end
                end
              end
            end
          end
          inherited tabPagamentos: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 698
            ExplicitHeight = 278
            inherited pnlPagamentos: TPanel
              Width = 698
              Height = 278
              ExplicitWidth = 698
              ExplicitHeight = 278
              inherited grdPagamentos: TcxGrid
                Width = 696
                Height = 276
                LookAndFeel.NativeStyle = False
                ExplicitWidth = 696
                ExplicitHeight = 276
              end
            end
          end
          object cxTabSheet1: TcxTabSheet
            Caption = 'Transportador'
            ImageIndex = 3
            object lbTransportador: TLabel
              Left = 8
              Top = 8
              Width = 81
              Height = 13
              Caption = 'Transportador'
              FocusControl = dedTransportador
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = lbTransportadorClick
            end
            object lbPlaca: TLabel
              Left = 129
              Top = 8
              Width = 30
              Height = 13
              Caption = 'Placa'
              FocusControl = dedPlaca
            end
            object lbPlacaUF: TLabel
              Left = 240
              Top = 8
              Width = 14
              Height = 13
              Caption = 'UF'
              FocusControl = dedPlacaUF
            end
            object lbVolumes: TLabel
              Left = 8
              Top = 48
              Width = 49
              Height = 13
              Caption = 'Volumes'
              FocusControl = dedVolumes
            end
            object lbPesoBruto: TLabel
              Left = 8
              Top = 89
              Width = 62
              Height = 13
              Caption = 'Peso Bruto'
              FocusControl = dedPesoBruto
            end
            object lbPesoLiquido: TLabel
              Left = 8
              Top = 128
              Width = 71
              Height = 13
              Caption = 'Peso Liquido'
              FocusControl = dedPesoLiquido
            end
            object dedTransportador: TcxDBTextEdit
              Left = 7
              Top = 23
              DataBinding.DataField = 'NOTA_CODTRANSPORTADOR'
              DataBinding.DataSource = dsrDados
              TabOrder = 0
              Width = 97
            end
            object dedPlaca: TcxDBTextEdit
              Left = 128
              Top = 23
              DataBinding.DataField = 'NOTA_PLACAVEICULO'
              DataBinding.DataSource = dsrDados
              TabOrder = 1
              Width = 97
            end
            object dedPlacaUF: TcxDBTextEdit
              Left = 239
              Top = 23
              DataBinding.DataField = 'NOTA_UFVEICULO'
              DataBinding.DataSource = dsrDados
              TabOrder = 2
              Width = 39
            end
            object rbFrete: TcxDBRadioGroup
              Left = 158
              Top = 72
              Caption = 'Frete por conta'
              DataBinding.DataField = 'NOTA_FRETE'
              DataBinding.DataSource = dsrDados
              Properties.Items = <
                item
                  Caption = 'Emitente'
                  Value = '0'
                end
                item
                  Caption = 'Destinat'#225'rio'
                  Value = '1'
                end>
              TabOrder = 3
              Height = 89
              Width = 120
            end
            object dedVolumes: TcxDBTextEdit
              Left = 7
              Top = 63
              DataBinding.DataField = 'NOTA_QUANTIDADE'
              DataBinding.DataSource = dsrDados
              TabOrder = 4
              Width = 97
            end
            object dedPesoBruto: TcxDBTextEdit
              Left = 7
              Top = 104
              DataBinding.DataField = 'NOTA_PESOBRUTO'
              DataBinding.DataSource = dsrDados
              TabOrder = 5
              Width = 97
            end
            object dedPesoLiquido: TcxDBTextEdit
              Left = 7
              Top = 143
              DataBinding.DataField = 'NOTA_PESOLIQUIDO'
              DataBinding.DataSource = dsrDados
              TabOrder = 6
              Width = 97
            end
          end
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 477
    Width = 706
    ExplicitTop = 477
    ExplicitWidth = 706
  end
  inherited dxBarManagerCad: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManagerCadBar3: TdxBar
      FloatClientWidth = 124
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
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnCancelarNFe'
        end>
      OldName = 'Links'
    end
    inherited dxBarManagerCadBar4: TdxBar
      OldName = 'Where'
    end
    inherited dxBarManagerCadBar5: TdxBar
      OldName = 'BotoesDetalhes'
    end
    inherited btnAdicionar: TdxBarLargeButton
      ImageIndex = 2
    end
    inherited cmbSelecionar: TdxBarCombo
      Tag = 4
    end
    inherited btnAjuda: TdxBarLargeButton
      ImageIndex = 0
    end
    object btnCancelarNFe: TdxBarButton
      Tag = 11
      Caption = 'Cancelar NFe'
      Category = 0
      Hint = 'Cancelar NFe'
      Visible = ivAlways
      ImageIndex = 114
      PaintStyle = psCaptionGlyph
      OnClick = btnCancelarNFeClick
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 
      'SELECT '#39'N'#39' AS SEL, MO.CODIGO, CAST(MO.DATA AS DATE) AS DATA, CAS' +
      'T(MO.DATA AS TIME) AS HORA, MO.STATUS, MO.CODCLIENTE, CL.NOME, M' +
      'O.NOTA_VALOR_TOTAL, VE.NOMEUSER, MO.USUARIOFECHAMENTO, CAST(MO.D' +
      'ATAFECHAMENTO AS DATE) AS DATAFECHA, MO.OBSERVACOES, MO.FECHADO,' +
      ' CP.DESCRICAO AS CONDICAOPAGAMENTO, MO.NOTA_NUMERO, MO.CODCOMPRA' +
      ', MO.NOTA_CODTRANSPORTADOR, MO.NOTA_PLACAVEICULO, MO.NOTA_UFVEIC' +
      'ULO, MO.NOTA_FRETE, MO.NOTA_QUANTIDADE, MO.NOTA_PESOBRUTO, MO.NO' +
      'TA_PESOLIQUIDO, MO.CHNFE, (SELECT SUM(PA.VALOR) FROM PAGAMENTOS ' +
      'PA WHERE PA.CODMOVIMENTO = MO.CODIGO AND PA.PAGO = 0 AND PA.ES =' +
      ' 2) AS ABERTO FROM MOVIMENTOS MO JOIN CLIENTES CL ON (CL.CODIGO ' +
      '= MO.CODCLIENTE) LEFT JOIN CLIENTES VE ON (VE.CODIGO = MO.CODVEN' +
      'DEDOR) LEFT JOIN CONDPAG CP ON (CP.CODIGO = MO.CODCONDPAG) WHERE' +
      ' MO.ES = 2 AND MO.TIPO IN (5, 6)'
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
    object cdsDadosDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = []
      Required = True
      DisplayFormat = 'dd/mm/yy'
    end
    object cdsDadosHORA: TTimeField
      FieldName = 'HORA'
      ProviderFlags = []
      Required = True
      DisplayFormat = 'hh:nn'
    end
    object cdsDadosSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = []
      Required = True
      FixedChar = True
    end
    object cdsDadosCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = []
      Required = True
    end
    object cdsDadosNOTA_VALOR_TOTAL: TFMTBCDField
      FieldName = 'NOTA_VALOR_TOTAL'
      Precision = 20
      Size = 2
    end
    object cdsDadosNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosNOMEUSER: TStringField
      FieldName = 'NOMEUSER'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosUSUARIOFECHAMENTO: TStringField
      FieldName = 'USUARIOFECHAMENTO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosDATAFECHA: TDateField
      FieldName = 'DATAFECHA'
      ProviderFlags = []
      DisplayFormat = 'dd/mm/yy'
    end
    object cdsDadosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      ProviderFlags = []
      Size = 2048
    end
    object cdsDadosFECHADO: TStringField
      FieldName = 'FECHADO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosCONDICAOPAGAMENTO: TStringField
      FieldName = 'CONDICAOPAGAMENTO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosNOTA_NUMERO: TIntegerField
      FieldName = 'NOTA_NUMERO'
      ProviderFlags = []
    end
    object cdsDadosCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      ProviderFlags = []
    end
    object cdsDadosABERTO: TFMTBCDField
      FieldName = 'ABERTO'
      ProviderFlags = []
      Precision = 20
      Size = 2
    end
    object cdsDadosNOTA_CODTRANSPORTADOR: TIntegerField
      DisplayLabel = 'Transportador'
      FieldName = 'NOTA_CODTRANSPORTADOR'
    end
    object cdsDadosNOTA_PLACAVEICULO: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'NOTA_PLACAVEICULO'
      FixedChar = True
      Size = 10
    end
    object cdsDadosNOTA_UFVEICULO: TStringField
      DisplayLabel = 'UF'
      FieldName = 'NOTA_UFVEICULO'
      FixedChar = True
      Size = 2
    end
    object cdsDadosNOTA_FRETE: TSmallintField
      DisplayLabel = 'Por conta'
      FieldName = 'NOTA_FRETE'
    end
    object cdsDadosNOTA_QUANTIDADE: TFloatField
      DisplayLabel = 'Volumes'
      FieldName = 'NOTA_QUANTIDADE'
    end
    object cdsDadosNOTA_PESOBRUTO: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'NOTA_PESOBRUTO'
    end
    object cdsDadosNOTA_PESOLIQUIDO: TFloatField
      DisplayLabel = 'Peso Liquido'
      FieldName = 'NOTA_PESOLIQUIDO'
    end
    object cdsDadosCHNFE: TStringField
      DisplayLabel = 'Chave NFe'
      FieldName = 'CHNFE'
      FixedChar = True
      Size = 50
    end
  end
  inherited dsrDados: TDataSource
    Top = 368
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.753286168990000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 368
  end
  inherited tmrFocus2: TTimer
    Left = 192
    Top = 224
  end
end
