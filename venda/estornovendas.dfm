inherited formEstornoVendas: TformEstornoVendas
  Left = 208
  Top = 110
  Caption = 'Estornos de Vendas'
  ExplicitWidth = 756
  ExplicitHeight = 548
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    inherited tabVisual: TcxTabSheet
      inherited pnlFundoGrade: TPanel
        inherited grdDados: TcxGrid
          ExplicitHeight = 338
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
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
              SortIndex = 0
              SortOrder = soDescending
            end
            object cxGrid1DBTableView1DATA: TcxGridDBColumn
              Caption = 'Data estorno'
              DataBinding.FieldName = 'DATA'
              Options.Editing = False
            end
            object cxGrid1DBTableView1HORA: TcxGridDBColumn
              Caption = 'Hora'
              DataBinding.FieldName = 'HORA'
              Options.Editing = False
            end
            object cxGrid1DBTableView1OLD_STATUS: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'OLD_STATUS'
              Options.Editing = False
            end
            object cxGrid1DBTableView1NOME: TcxGridDBColumn
              Caption = 'Cliente'
              DataBinding.FieldName = 'NOME'
              Options.Editing = False
            end
            object cxGrid1DBTableView1NOTA_VALOR_TOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'NOTA_VALOR_TOTAL'
              Options.Editing = False
            end
            object cxGrid1DBTableView1CONDICAOPAGAMENTO: TcxGridDBColumn
              Caption = 'Cond.Pagamento'
              DataBinding.FieldName = 'CONDICAOPAGAMENTO'
            end
            object cxGrid1DBTableView1NOMEUSER: TcxGridDBColumn
              Caption = 'Vendedor'
              DataBinding.FieldName = 'NOMEUSER'
              Options.Editing = False
            end
            object cxGrid1DBTableView1USUARIOFECHAMENTO: TcxGridDBColumn
              Caption = 'Quem fechou'
              DataBinding.FieldName = 'USUARIOFECHAMENTO'
              Options.Editing = False
            end
            object cxGrid1DBTableView1USUARIOESTORNO: TcxGridDBColumn
              Caption = 'Quem estornou'
              DataBinding.FieldName = 'USUARIOESTORNO'
              Options.Editing = False
            end
            object cxGrid1DBTableView1DATAFECHA: TcxGridDBColumn
              Caption = 'Data fechamento'
              DataBinding.FieldName = 'DATAFECHA'
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
        ExplicitHeight = 411
        inherited pnlPainel: TPanel
          inherited Label2: TLabel
            Width = 74
            Caption = 'Data Estorno'
            ExplicitWidth = 74
          end
          inherited cxDBTextEdit4: TcxDBTextEdit
            DataBinding.DataField = 'OLD_STATUS'
          end
        end
        inherited pgcDetalhes: TcxPageControl
          ExplicitHeight = 315
          inherited tabFechamento: TcxTabSheet
            Caption = '&Estorno'
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 730
            ExplicitHeight = 287
            inherited Label10: TLabel
              Left = 8
              ExplicitLeft = 8
            end
            object Label11: TLabel [1]
              Left = 8
              Top = 96
              Width = 88
              Height = 13
              Caption = 'Quem Estornou'
              Transparent = True
            end
            inherited Label111: TLabel
              Left = 9
              Top = 144
              ExplicitLeft = 9
              ExplicitTop = 144
            end
            inherited cxDBMemo1: TcxDBMemo
              Left = 7
              ExplicitLeft = 7
            end
            inherited cxDBTextEdit100: TcxDBTextEdit
              Left = 8
              Top = 158
              TabOrder = 2
              ExplicitLeft = 8
              ExplicitTop = 158
            end
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 7
              Top = 111
              DataBinding.DataField = 'USUARIOESTORNO'
              DataBinding.DataSource = dsrDados
              Style.Color = clBtnFace
              TabOrder = 1
              Width = 146
            end
          end
          inherited tabItens: TcxTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 730
            ExplicitHeight = 287
            inherited pnlItens: TPanel
              Width = 730
              Height = 287
              ExplicitWidth = 730
              ExplicitHeight = 287
              inherited grdItens: TcxGrid
                Width = 728
                Height = 285
                ExplicitWidth = 728
                ExplicitHeight = 285
              end
            end
          end
          inherited tabPagamentos: TcxTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 730
            ExplicitHeight = 287
            inherited pnlPagamentos: TPanel
              Width = 730
              Height = 287
              ExplicitWidth = 730
              ExplicitHeight = 287
              inherited grdPagamentos: TcxGrid
                Width = 728
                Height = 285
                ExplicitWidth = 728
                ExplicitHeight = 285
              end
            end
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
    inherited dxBarManagerCadBar3: TdxBar
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
        end>
    end
    inherited btnAdicionar: TdxBarLargeButton
      ImageIndex = 2
    end
    inherited cmbSelecionar: TdxBarCombo
      Tag = 5
    end
    inherited btnAjuda: TdxBarLargeButton
      ImageIndex = 0
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 
      'SELECT '#39'N'#39' AS SEL, MO.CODIGO, CAST(MO.DATAESTORNO AS DATE) AS DA' +
      'TA, CAST(MO.DATAESTORNO AS TIME) AS HORA, MO.OLD_STATUS, CL.NOME' +
      ', MO.NOTA_VALOR_TOTAL, VE.NOMEUSER, MO.USUARIOFECHAMENTO, MO.USU' +
      'ARIOESTORNO, CAST(MO.DATAFECHAMENTO AS DATE) AS DATAFECHA, MO.OB' +
      'SERVACOES, MO.FECHADO, MO.STATUS, CP.DESCRICAO AS CONDICAOPAGAME' +
      'NTO, MO.NOTA_NUMERO, MO.CODCOMPRA FROM MOVIMENTOS MO JOIN CLIENT' +
      'ES CL ON (CL.CODIGO = MO.CODCLIENTE) JOIN CLIENTES VE ON (VE.COD' +
      'IGO = MO.CODVENDEDOR) LEFT JOIN CONDPAG CP ON (CP.CODIGO = MO.CO' +
      'DCONDPAG) WHERE MO.ES = 2 AND MO.TIPO = 9 AND OLD_STATUS LIKE '#39'V' +
      'ENDA%'#39
    ProviderName = 'pmSaidaestornos'
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
    end
    object cdsDadosHORA: TTimeField
      FieldName = 'HORA'
      ProviderFlags = []
    end
    object cdsDadosOLD_STATUS: TStringField
      FieldName = 'OLD_STATUS'
      FixedChar = True
    end
    object cdsDadosNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosNOTA_VALOR_TOTAL: TFMTBCDField
      FieldName = 'NOTA_VALOR_TOTAL'
      Precision = 20
      Size = 2
    end
    object cdsDadosNOMEUSER: TStringField
      FieldName = 'NOMEUSER'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosUSUARIOFECHAMENTO: TStringField
      FieldName = 'USUARIOFECHAMENTO'
      FixedChar = True
      Size = 40
    end
    object cdsDadosUSUARIOESTORNO: TStringField
      FieldName = 'USUARIOESTORNO'
      FixedChar = True
      Size = 40
    end
    object cdsDadosDATAFECHA: TDateField
      FieldName = 'DATAFECHA'
      ProviderFlags = []
    end
    object cdsDadosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 2048
    end
    object cdsDadosCONDICAOPAGAMENTO: TStringField
      FieldName = 'CONDICAOPAGAMENTO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosNOTA_NUMERO: TIntegerField
      FieldName = 'NOTA_NUMERO'
    end
    object cdsDadosCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
    end
    object cdsDadosFECHADO: TStringField
      FieldName = 'FECHADO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 30
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.760731944440000000
      BuiltInReportLink = True
    end
  end
  inherited cdsPagamentos: TClientDataSet
    inherited cdsPagamentosNUMERO: TSmallintField
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
end
