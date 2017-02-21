inherited formCompras: TformCompras
  Caption = 'Compras'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    inherited tabVisual: TcxTabSheet
      inherited pnlFundoGrade: TPanel
        inherited grdDados: TcxGrid
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            OptionsSelection.CellSelect = False
            inherited cxGrid1DBTableView1NOME: TcxGridDBColumn
              Caption = 'Fornecedor'
            end
            inherited cxGrid1DBTableView1NOMEUSER: TcxGridDBColumn
              Caption = 'Respons'#225'vel'
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 0
      ExplicitHeight = 0
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited pnlEdicao: TPanel
        inherited pnlPainel: TPanel
          inherited Label5: TLabel
            Width = 64
            Caption = 'Fornecedor'
            ExplicitWidth = 64
          end
          inherited Label8: TLabel
            Width = 72
            Caption = 'Respons'#225'vel'
            ExplicitWidth = 72
          end
        end
        inherited pgcDetalhes: TcxPageControl
          inherited tabFechamento: TcxTabSheet
            ExplicitWidth = 0
            ExplicitHeight = 0
          end
          inherited tabItens: TcxTabSheet
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
          end
          inherited tabPagamentos: TcxTabSheet
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
          end
        end
      end
    end
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 128
    Top = 176
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManagerCadBar2: TdxBar
      FloatLeft = 648
      FloatTop = 219
    end
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
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton9'
        end>
    end
    inherited btnAdicionar: TdxBarLargeButton
      ImageIndex = 2
    end
    inherited btnAjuda: TdxBarLargeButton
      ImageIndex = 0
    end
    inherited dxBarButton6: TdxBarButton
      Caption = 'Imprimir Compra'
      Hint = 'Imprimir Compra'
    end
    object dxBarButton9: TdxBarButton [39]
      Tag = 11
      Caption = 'Produtos Individuais'
      Category = 0
      Hint = 'Produtos Individuais'
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton9Click
    end
    object dxBarButton10: TdxBarButton [40]
      Caption = 'Imprimir Etiquetas 4x20 sem pre'#231'o'
      Category = 0
      Hint = 'Imprimir Etiquetas 4x20 sem pre'#231'o'
      Visible = ivAlways
      OnClick = dxBarButton10Click
    end
    object dxBarButton11: TdxBarButton [41]
      Caption = 'Imprimir Etiquetas 4x20 com pre'#231'o'
      Category = 0
      Hint = 'Imprimir Etiquetas 4x20 com pre'#231'o'
      Visible = ivAlways
      OnClick = dxBarButton11Click
    end
    object dxBarButton12: TdxBarButton [42]
      Caption = 'Imprimir Etiquetas 3x10 sem pre'#231'o'
      Category = 0
      Hint = 'Imprimir Etiquetas 3x10 sem pre'#231'o'
      Visible = ivAlways
      OnClick = dxBarButton12Click
    end
    object dxBarButton13: TdxBarButton [43]
      Caption = 'Imprimir Etiquetas 3x10 com pre'#231'o'
      Category = 0
      Hint = 'Imprimir Etiquetas 3x10 com pre'#231'o'
      Visible = ivAlways
      OnClick = dxBarButton13Click
    end
    object dxBarButton15: TdxBarButton
      Tag = 11
      Caption = 'Contas a Pagar'
      Category = 0
      Hint = 'Contas a Pagar'
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton15Click
    end
    object dxBarButton16: TdxBarButton
      Tag = 11
      Caption = 'Excluir'
      Category = 0
      Hint = 'Excluir'
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton16Click
    end
    object dxBarButton17: TdxBarButton
      Caption = 'Imprimir Pedido de Compra'
      Category = 0
      Hint = 'Imprimir Pedido de Compra'
      Visible = ivAlways
      OnClick = dxBarButton17Click
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
      ' 1) AS ABERTO FROM MOVIMENTOS MO LEFT JOIN CLIENTES CL ON (CL.CO' +
      'DIGO = MO.CODCLIENTE) LEFT JOIN CLIENTES VE ON (VE.CODIGO = MO.C' +
      'ODVENDEDOR) LEFT JOIN CONDPAG CP ON (CP.CODIGO = MO.CODCONDPAG) ' +
      'WHERE MO.ES = 1 AND MO.TIPO = 1 '
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.753290914350000000
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
        ItemName = 'dxBarButton17'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        Visible = True
        ItemName = 'dxBarButton13'
      end>
  end
end
