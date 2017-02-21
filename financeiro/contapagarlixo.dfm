inherited formContaPagarLixo: TformContaPagarLixo
  Left = 365
  Top = 124
  Caption = 'Lixeira de Contas a Pagar'
  ClientWidth = 677
  ExplicitTop = 8
  ExplicitWidth = 685
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 677
    ExplicitWidth = 677
    ClientRectRight = 676
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 675
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 675
        ExplicitWidth = 675
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Width = 675
        ExplicitWidth = 675
      end
      inherited pnlFundoGrade: TPanel
        Width = 675
        ExplicitWidth = 675
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 514
          Width = 675
          Height = 3
          ExplicitTop = 514
          ExplicitWidth = 675
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 675
          ExplicitWidth = 675
        end
        inherited grdDados: TcxGrid
          Width = 675
          Height = 492
          ExplicitWidth = 675
          ExplicitHeight = 496
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 675
      ExplicitHeight = 0
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 675
        ExplicitWidth = 675
      end
      inherited pnlEdicao: TPanel
        Width = 675
        ExplicitWidth = 675
        inherited pnlCODIGO: TPanel
          Width = 675
          ExplicitWidth = 675
        end
        inherited pnlCliente: TPanel
          Width = 675
          ExplicitWidth = 675
        end
        inherited cxPageControl1: TcxPageControl
          Width = 675
          ExplicitWidth = 675
          ClientRectRight = 671
          inherited cxTabSheet1: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 669
            ExplicitHeight = 430
            inherited pnlVendaOS: TPanel
              Width = 669
              ExplicitWidth = 669
              inherited Panel4: TPanel
                Width = 669
                ExplicitWidth = 669
              end
            end
            inherited pnlHISTORICO: TPanel
              Width = 669
              ExplicitWidth = 669
              inherited cxCentros: TcxCheckBox
                ExplicitHeight = 17
              end
            end
            inherited pnlVencimento: TPanel
              Width = 669
              ExplicitWidth = 669
            end
            inherited pnlCentros: TPanel
              Width = 669
              ExplicitWidth = 669
              inherited Panel2: TPanel
                Width = 669
                ExplicitWidth = 669
              end
            end
            inherited pnlCheque: TPanel
              Width = 669
              ExplicitWidth = 669
              inherited Panel3: TPanel
                Width = 669
                ExplicitWidth = 669
              end
            end
          end
          inherited tabDatas: TcxTabSheet
            TabVisible = False
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 669
            ExplicitHeight = 430
            inherited Panel7: TPanel
              Width = 484
              ExplicitWidth = 484
              inherited Panel9: TPanel
                Width = 484
                ExplicitWidth = 484
              end
              inherited Panel10: TPanel
                Width = 484
                ExplicitWidth = 484
                inherited cxGrid1: TcxGrid
                  Width = 482
                  ExplicitWidth = 482
                end
              end
            end
          end
          inherited tabItens: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 669
            ExplicitHeight = 430
            inherited Panel5: TPanel
              Width = 669
              Height = 57
              ExplicitWidth = 669
              ExplicitHeight = 57
            end
            inherited pnlItens: TPanel
              Top = 57
              Width = 669
              Height = 373
              ExplicitTop = 57
              ExplicitWidth = 669
              ExplicitHeight = 373
              inherited grdItens: TcxGrid
                Width = 669
                Height = 373
                ExplicitWidth = 669
                ExplicitHeight = 373
              end
            end
          end
          inherited cxTabSheet2: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 669
            ExplicitHeight = 430
          end
          inherited cxTabSheet3: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 669
            ExplicitHeight = 430
            inherited pnlLog: TPanel
              Width = 669
              ExplicitWidth = 669
              inherited Splitter1: TSplitter
                Width = 669
                ExplicitWidth = 647
              end
              inherited cxGridLog1: TcxGrid
                Width = 669
                ExplicitWidth = 669
              end
              inherited cxGridLog2: TcxGrid
                Width = 669
                ExplicitWidth = 669
              end
            end
          end
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Width = 677
    ExplicitWidth = 677
  end
  inherited dxBarManagerCad: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManagerCadBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmbSelecionar'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 172
          Visible = True
          ItemName = 'edtSelecionar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmbSelecionar2'
        end
        item
          Visible = True
          ItemName = 'edtSelecionar2'
        end>
    end
    inherited dxBarManagerCadBar3: TdxBar
      FloatClientWidth = 57
      FloatClientHeight = 43
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
    inherited dxBarManagerCadBar5: TdxBar
      FloatLeft = 700
      FloatTop = 109
    end
    inherited btnAdicionar: TdxBarLargeButton
      ImageIndex = 2
    end
    inherited btnExcluir: TdxBarLargeButton
      Caption = 'Restaurar'
      Hint = 'Restaurar'
      LargeImageIndex = 109
    end
    inherited btnAjuda: TdxBarLargeButton
      ImageIndex = 0
    end
    inherited btnBaixar: TdxBarButton
      Enabled = False
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
      ReportDocument.CreationDate = 39476.754614351850000000
      BuiltInReportLink = True
    end
  end
end
