inherited formOrcamentos: TformOrcamentos
  Caption = 'Or'#231'amentos'
  ClientHeight = 558
  ClientWidth = 726
  ExplicitWidth = 734
  ExplicitHeight = 592
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 726
    Height = 538
    ExplicitWidth = 726
    ExplicitHeight = 538
    ClientRectBottom = 537
    ClientRectRight = 725
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 724
      ExplicitHeight = 536
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 724
        ExplicitWidth = 724
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 505
        Width = 724
        ExplicitTop = 505
        ExplicitWidth = 724
      end
      inherited pnlFundoGrade: TPanel
        Width = 724
        Height = 426
        ExplicitWidth = 724
        ExplicitHeight = 426
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 404
          Width = 724
          ExplicitTop = 404
          ExplicitWidth = 724
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 724
          ExplicitWidth = 724
        end
        inherited grdDados: TcxGrid
          Width = 724
          Height = 382
          ExplicitWidth = 724
          ExplicitHeight = 390
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Width = 31
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGrid1DBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
              Options.Editing = False
              Options.Focusing = False
              SortIndex = 0
              SortOrder = soDescending
            end
            object cxGrid1DBTableView1HORA: TcxGridDBColumn
              DataBinding.FieldName = 'HORA'
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGrid1DBTableView1STATUS: TcxGridDBColumn
              DataBinding.FieldName = 'STATUS'
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGrid1DBTableView1NOME: TcxGridDBColumn
              DataBinding.FieldName = 'NOME'
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGrid1DBTableView1NOTA_VALOR_TOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'NOTA_VALOR_TOTAL'
              Options.Editing = False
              Options.Focusing = False
              Width = 100
            end
            object cxGrid1DBTableView1ABERTO: TcxGridDBColumn
              Caption = 'Valor Aberto'
              DataBinding.FieldName = 'ABERTO'
              Styles.Content = formPrincipal.HeaderNegrito
              Width = 100
            end
            object cxGrid1DBTableView1NOMEUSER: TcxGridDBColumn
              DataBinding.FieldName = 'NOMEUSER'
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGrid1DBTableView1USUARIOFECHAMENTO: TcxGridDBColumn
              DataBinding.FieldName = 'USUARIOFECHAMENTO'
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGrid1DBTableView1DATAFECHA: TcxGridDBColumn
              DataBinding.FieldName = 'DATAFECHA'
              Options.Editing = False
              Options.Focusing = False
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 724
      ExplicitHeight = 536
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 724
        ExplicitWidth = 724
      end
      inherited pnlEdicao: TPanel
        Width = 724
        Height = 457
        ExplicitWidth = 724
        ExplicitHeight = 465
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 538
    Width = 726
    ExplicitTop = 538
    ExplicitWidth = 726
  end
  inherited dxBarManagerCad: TdxBarManager
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
      FloatLeft = 646
      FloatTop = 298
      FloatClientWidth = 157
      FloatClientHeight = 151
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
          ItemName = 'dxBarButton9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton6'
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
        end>
      OldName = 'Links'
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
      ImageIndex = 96
    end
    inherited cmbSelecionar: TdxBarCombo
      Tag = 4
    end
    inherited btnAjuda: TdxBarLargeButton
      SyncImageIndex = False
      ImageIndex = 0
    end
    object btnImpOrcamento: TdxBarButton
      Tag = 11
      Caption = 'Imprimir Or'#231'amento Bruto'
      Category = 0
      Hint = 'Imprimir Or'#231'amento Bruto'
      Visible = ivAlways
      OnClick = btnImpOrcamentoClick
    end
    object dxBarButton6: TdxBarButton
      Tag = 11
      Caption = 'Clonar'
      Category = 0
      Hint = 'Clonar'
      Visible = ivAlways
      ImageIndex = 98
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton6Click
    end
    object dxBarButton7: TdxBarButton
      Tag = 11
      Caption = 'Abrir Ordem de Servi'#231'o'
      Category = 0
      Hint = 'Abrir Ordem de Servi'#231'o'
      Visible = ivAlways
      ImageIndex = 72
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton7Click
    end
    object dxBarButton8: TdxBarButton
      Tag = 11
      Caption = 'Iniciar Venda'
      Category = 0
      Hint = 'Iniciar Venda'
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Tag = 11
      Caption = 'Excluir'
      Category = 0
      Hint = 'Excluir'
      Visible = ivAlways
      ImageIndex = 114
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton9Click
    end
    object dxBarButton10: TdxBarButton
      Tag = 11
      Caption = 'Imprimir Or'#231'amento L'#237'quido'
      Category = 0
      Hint = 'Imprimir Or'#231'amento L'#237'quido'
      Visible = ivAlways
      OnClick = dxBarButton10Click
    end
    object dxBarButton11: TdxBarButton
      Tag = 11
      Caption = 'Imprimir Or'#231'amento Paisagem Bruto'
      Category = 0
      Hint = 'Imprimir Or'#231'amento Paisagem Bruto'
      Visible = ivAlways
      OnClick = dxBarButton11Click
    end
    object dxBarButton12: TdxBarButton
      Tag = 11
      Caption = 'Imprimir Or'#231'amento Paisagem Liquido'
      Category = 0
      Hint = 'Imprimir Or'#231'amento Paisagem Liquido'
      Visible = ivAlways
      OnClick = dxBarButton12Click
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
      'PA WHERE PA.CODCLIENTE = MO.CODCLIENTE AND PA.PAGO = 0 AND ES = ' +
      '2) AS ABERTO FROM MOVIMENTOS MO LEFT JOIN CLIENTES CL ON (CL.COD' +
      'IGO = MO.CODCLIENTE) LEFT JOIN CLIENTES VE ON (VE.CODIGO = MO.CO' +
      'DVENDEDOR) LEFT JOIN CONDPAG CP ON (CP.CODIGO = MO.CODCONDPAG) W' +
      'HERE MO.ES = 0 AND MO.TIPO = 1'
    ProviderName = 'pmSaidas'
    object cdsDadosSEL: TStringField
      DisplayLabel = '**'
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      ProviderFlags = []
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsDadosHORA: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HORA'
      ProviderFlags = []
      Required = True
      DisplayFormat = 'hh:nn'
    end
    object cdsDadosSTATUS: TStringField
      DisplayLabel = 'Status'
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
    object cdsDadosNOME: TStringField
      DisplayLabel = 'Cliente'
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
      DisplayLabel = 'Vendedor'
      FieldName = 'NOMEUSER'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosUSUARIOFECHAMENTO: TStringField
      DisplayLabel = 'Quem Fechou'
      FieldName = 'USUARIOFECHAMENTO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosDATAFECHA: TDateField
      DisplayLabel = 'Data Fechamento'
      FieldName = 'DATAFECHA'
      ProviderFlags = []
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsDadosOBSERVACOES: TStringField
      DisplayLabel = 'Observa'#231#245'es'
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
      FieldName = 'NOTA_CODTRANSPORTADOR'
    end
    object cdsDadosNOTA_PLACAVEICULO: TStringField
      FieldName = 'NOTA_PLACAVEICULO'
      FixedChar = True
      Size = 10
    end
    object cdsDadosNOTA_UFVEICULO: TStringField
      FieldName = 'NOTA_UFVEICULO'
      FixedChar = True
      Size = 2
    end
    object cdsDadosNOTA_FRETE: TSmallintField
      FieldName = 'NOTA_FRETE'
    end
    object cdsDadosNOTA_QUANTIDADE: TFloatField
      FieldName = 'NOTA_QUANTIDADE'
    end
    object cdsDadosNOTA_PESOBRUTO: TFloatField
      FieldName = 'NOTA_PESOBRUTO'
    end
    object cdsDadosNOTA_PESOLIQUIDO: TFloatField
      FieldName = 'NOTA_PESOLIQUIDO'
    end
    object cdsDadosCHNFE: TStringField
      FieldName = 'CHNFE'
      FixedChar = True
      Size = 50
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.757710358800000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
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
        ItemName = 'dxBarSubItem3'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnImpOrcamento'
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarButton12'
      end>
  end
end
