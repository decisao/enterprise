inherited formContaRecebidaEstorno: TformContaRecebidaEstorno
  Left = 330
  Top = 159
  Caption = 'Estorno de Contas Recebidas'
  ClientWidth = 675
  ExplicitTop = 8
  ExplicitWidth = 683
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 675
    ExplicitWidth = 675
    ClientRectRight = 674
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 673
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 673
        ExplicitWidth = 673
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Width = 673
        ExplicitWidth = 673
      end
      inherited pnlFundoGrade: TPanel
        Width = 673
        ExplicitWidth = 673
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 514
          Width = 673
          Height = 3
          ExplicitTop = 514
          ExplicitWidth = 673
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 673
          ExplicitWidth = 673
        end
        inherited grdDados: TcxGrid
          Width = 673
          Height = 492
          ExplicitWidth = 673
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
      ExplicitWidth = 673
      ExplicitHeight = 0
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 673
        ExplicitWidth = 673
      end
      inherited pnlEdicao: TPanel
        Width = 673
        ExplicitWidth = 673
        inherited pnlCODIGO: TPanel
          Width = 673
          ExplicitWidth = 673
        end
        inherited pnlCliente: TPanel
          Width = 673
          ExplicitWidth = 673
        end
        inherited cxPageControl1: TcxPageControl
          Width = 673
          ExplicitWidth = 673
          ClientRectRight = 669
          inherited cxTabSheet1: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 667
            ExplicitHeight = 430
            inherited pnlVendaOS: TPanel
              Width = 667
              ExplicitWidth = 667
              inherited Panel4: TPanel
                Width = 667
                ExplicitWidth = 667
              end
            end
            inherited pnlHISTORICO: TPanel
              Width = 667
              ExplicitWidth = 667
              inherited cxCentros: TcxCheckBox
                ExplicitHeight = 17
              end
            end
            inherited pnlVencimento: TPanel
              Width = 667
              ExplicitWidth = 667
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
              inherited cxDBTextEdit23: TcxDBTextEdit
                DataBinding.DataField = 'ESTORNO_NOMEUSER'
              end
              inherited cxDBTextEdit24: TcxDBTextEdit
                DataBinding.DataField = 'ESTORNO_DATA'
              end
            end
            inherited pnlCentros: TPanel
              Width = 667
              ExplicitWidth = 667
              inherited Panel2: TPanel
                Width = 667
                ExplicitWidth = 667
              end
            end
            inherited pnlCheque: TPanel
              Width = 667
              ExplicitWidth = 667
              inherited Panel3: TPanel
                Width = 667
                ExplicitWidth = 667
              end
            end
          end
          inherited tabDatas: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 667
            ExplicitHeight = 430
            inherited Panel7: TPanel
              Width = 482
              ExplicitWidth = 482
              inherited Panel9: TPanel
                Width = 482
                ExplicitWidth = 482
              end
              inherited Panel10: TPanel
                Width = 482
                ExplicitWidth = 482
                inherited cxGrid1: TcxGrid
                  Width = 480
                  ExplicitWidth = 480
                end
              end
            end
          end
          inherited tabItens: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 667
            ExplicitHeight = 430
            inherited Panel5: TPanel
              Width = 667
              ExplicitWidth = 667
            end
            inherited pnlItens: TPanel
              Width = 667
              ExplicitWidth = 667
              inherited grdItens: TcxGrid
                Width = 667
                ExplicitWidth = 667
              end
            end
          end
          inherited cxTabSheet2: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 667
            ExplicitHeight = 430
          end
          inherited cxTabSheet3: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 667
            ExplicitHeight = 430
            inherited pnlLog: TPanel
              Width = 667
              ExplicitWidth = 667
              inherited Splitter1: TSplitter
                Width = 667
                ExplicitWidth = 645
              end
              inherited cxGridLog1: TcxGrid
                Width = 667
                ExplicitWidth = 667
              end
              inherited cxGridLog2: TcxGrid
                Width = 667
                ExplicitWidth = 667
              end
            end
          end
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Width = 675
    ExplicitWidth = 675
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
      ReportDocument.CreationDate = 39476.754744513890000000
      BuiltInReportLink = True
    end
  end
end
