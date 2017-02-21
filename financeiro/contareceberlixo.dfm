inherited formContaReceberLixo: TformContaReceberLixo
  Left = 307
  Top = 141
  Caption = 'Lixeira de Contas a Receber'
  ClientWidth = 681
  ExplicitTop = 8
  ExplicitWidth = 689
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 681
    ExplicitWidth = 681
    ClientRectRight = 680
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 679
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 679
        ExplicitWidth = 679
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Width = 679
        ExplicitWidth = 679
      end
      inherited pnlFundoGrade: TPanel
        Width = 679
        ExplicitWidth = 679
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 514
          Width = 679
          Height = 3
          ExplicitTop = 514
          ExplicitWidth = 679
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 679
          ExplicitWidth = 679
        end
        inherited grdDados: TcxGrid
          Width = 679
          Height = 492
          ExplicitWidth = 679
          ExplicitHeight = 496
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 679
      ExplicitHeight = 0
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 679
        ExplicitWidth = 679
      end
      inherited pnlEdicao: TPanel
        Width = 679
        ExplicitWidth = 679
        inherited pnlCODIGO: TPanel
          Width = 679
          ExplicitWidth = 679
        end
        inherited pnlCliente: TPanel
          Width = 679
          ExplicitWidth = 679
        end
        inherited cxPageControl1: TcxPageControl
          Width = 679
          ExplicitWidth = 679
          ClientRectRight = 675
          inherited cxTabSheet1: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 673
            ExplicitHeight = 430
            inherited pnlVendaOS: TPanel
              Width = 673
              ExplicitWidth = 673
              inherited Panel4: TPanel
                Width = 673
                ExplicitWidth = 673
              end
            end
            inherited pnlHISTORICO: TPanel
              Width = 673
              ExplicitWidth = 673
              inherited cxCentros: TcxCheckBox
                ExplicitHeight = 17
              end
            end
            inherited pnlVencimento: TPanel
              Width = 673
              ExplicitWidth = 673
            end
            inherited pnlCentros: TPanel
              Width = 673
              ExplicitWidth = 673
              inherited Panel2: TPanel
                Width = 673
                ExplicitWidth = 673
              end
            end
            inherited pnlCheque: TPanel
              Width = 673
              ExplicitWidth = 673
              inherited Panel3: TPanel
                Width = 673
                ExplicitWidth = 673
              end
            end
          end
          inherited tabDatas: TcxTabSheet
            TabVisible = False
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 673
            ExplicitHeight = 430
            inherited Panel7: TPanel
              Width = 488
              ExplicitWidth = 488
              inherited Panel9: TPanel
                Width = 488
                ExplicitWidth = 488
              end
              inherited Panel10: TPanel
                Width = 488
                ExplicitWidth = 488
                inherited cxGrid1: TcxGrid
                  Width = 486
                  ExplicitWidth = 486
                end
              end
            end
          end
          inherited tabItens: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 673
            ExplicitHeight = 430
            inherited Panel5: TPanel
              Width = 673
              ExplicitWidth = 673
            end
            inherited pnlItens: TPanel
              Width = 673
              ExplicitWidth = 673
              inherited grdItens: TcxGrid
                Width = 673
                ExplicitWidth = 673
              end
            end
          end
          inherited cxTabSheet2: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 673
            ExplicitHeight = 430
          end
          inherited cxTabSheet3: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 673
            ExplicitHeight = 430
            inherited pnlLog: TPanel
              Width = 673
              ExplicitWidth = 673
              inherited Splitter1: TSplitter
                Width = 673
                ExplicitWidth = 651
              end
              inherited cxGridLog1: TcxGrid
                Width = 673
                ExplicitWidth = 673
              end
              inherited cxGridLog2: TcxGrid
                Width = 673
                ExplicitWidth = 673
              end
            end
          end
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Width = 681
    ExplicitWidth = 681
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
      ReportDocument.CreationDate = 39476.754694791660000000
      BuiltInReportLink = True
    end
  end
end
