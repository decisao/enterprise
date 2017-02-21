inherited formContaPagaEstorno: TformContaPagaEstorno
  Caption = 'Estornos de Contas Pagas'
  ClientWidth = 654
  ExplicitTop = 8
  ExplicitWidth = 662
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 654
    ExplicitWidth = 654
    ClientRectRight = 653
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 652
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 652
        ExplicitWidth = 652
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Width = 652
        ExplicitWidth = 652
      end
      inherited pnlFundoGrade: TPanel
        Width = 652
        ExplicitWidth = 652
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 514
          Width = 652
          Height = 3
          ExplicitTop = 514
          ExplicitWidth = 652
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 652
          ExplicitWidth = 652
        end
        inherited grdDados: TcxGrid
          Width = 652
          Height = 492
          ExplicitWidth = 652
          ExplicitHeight = 496
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1ESTORNO_NOMEUSER: TcxGridDBColumn
              Caption = 'Quem estornou'
              DataBinding.FieldName = 'ESTORNO_NOMEUSER'
            end
            object cxGrid1DBTableView1ESTORNO_DATA: TcxGridDBColumn
              Caption = 'Data estorno'
              DataBinding.FieldName = 'ESTORNO_DATA'
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 652
      ExplicitHeight = 0
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 652
        ExplicitWidth = 652
      end
      inherited pnlEdicao: TPanel
        Width = 652
        ExplicitWidth = 652
        inherited pnlCODIGO: TPanel
          Width = 652
          ExplicitWidth = 652
        end
        inherited pnlCliente: TPanel
          Width = 652
          ExplicitWidth = 652
        end
        inherited cxPageControl1: TcxPageControl
          Width = 652
          ExplicitWidth = 652
          ClientRectRight = 648
          inherited cxTabSheet1: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 646
            ExplicitHeight = 430
            inherited pnlVendaOS: TPanel
              Width = 646
              ExplicitWidth = 646
              inherited Panel4: TPanel
                Width = 646
                ExplicitWidth = 646
              end
            end
            inherited pnlHISTORICO: TPanel
              Width = 646
              ExplicitWidth = 646
              inherited cxCentros: TcxCheckBox
                ExplicitHeight = 17
              end
            end
            inherited pnlVencimento: TPanel
              Width = 646
              ExplicitWidth = 646
              inherited Label26: TLabel
                Width = 88
                Caption = 'Quem estornou'
                ExplicitWidth = 88
              end
              inherited Label27: TLabel
                Width = 74
                Caption = 'Data Estorno'
                ExplicitWidth = 74
              end
            end
            inherited pnlCentros: TPanel
              Width = 646
              ExplicitWidth = 646
              inherited Panel2: TPanel
                Width = 646
                ExplicitWidth = 646
              end
            end
            inherited pnlCheque: TPanel
              Width = 646
              ExplicitWidth = 646
              inherited Panel3: TPanel
                Width = 646
                ExplicitWidth = 646
              end
            end
          end
          inherited tabDatas: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 646
            ExplicitHeight = 430
            inherited Panel7: TPanel
              Width = 461
              ExplicitWidth = 461
              inherited Panel9: TPanel
                Width = 461
                ExplicitWidth = 461
              end
              inherited Panel10: TPanel
                Width = 461
                ExplicitWidth = 461
                inherited cxGrid1: TcxGrid
                  Width = 459
                  ExplicitWidth = 459
                end
              end
            end
          end
          inherited tabItens: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 646
            ExplicitHeight = 430
            inherited Panel5: TPanel
              Width = 646
              ExplicitWidth = 646
            end
            inherited pnlItens: TPanel
              Width = 646
              ExplicitWidth = 646
              inherited grdItens: TcxGrid
                Width = 646
                ExplicitWidth = 646
              end
            end
          end
          inherited cxTabSheet2: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 646
            ExplicitHeight = 430
          end
          inherited cxTabSheet3: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 646
            ExplicitHeight = 430
            inherited pnlLog: TPanel
              Width = 646
              ExplicitWidth = 646
              inherited Splitter1: TSplitter
                Width = 646
                ExplicitWidth = 624
              end
              inherited cxGridLog1: TcxGrid
                Width = 646
                ExplicitWidth = 646
              end
              inherited cxGridLog2: TcxGrid
                Width = 646
                ExplicitWidth = 646
              end
            end
          end
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Width = 654
    ExplicitWidth = 654
  end
  inherited dxBarManagerCad: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManagerCadBar1: TdxBar
      FloatClientWidth = 197
      FloatClientHeight = 90
    end
    inherited dxBarManagerCadBar2: TdxBar
      FloatLeft = 682
      FloatTop = 332
    end
    inherited dxBarManagerCadBar3: TdxBar
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
        end>
      Visible = False
    end
    inherited btnAdicionar: TdxBarLargeButton
      Enabled = False
      Visible = ivNever
      ImageIndex = 2
    end
    inherited btnSalvar: TdxBarLargeButton
      Enabled = False
      Visible = ivNever
    end
    inherited btnExcluir: TdxBarLargeButton
      Enabled = False
      Visible = ivNever
    end
    inherited btnAjuda: TdxBarLargeButton
      ImageIndex = 0
    end
    inherited btnBaixar: TdxBarButton
      Visible = ivNever
    end
    inherited btnConjunto: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton7: TdxBarButton
      Visible = ivNever
    end
  end
  inherited cdsDados: TClientDataSet
    Aggregates = <
      item
        Active = True
        Expression = 'SUM(TOTAL_PAGO)'
        Visible = False
      end>
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.754312638890000000
      BuiltInReportLink = True
    end
  end
end
