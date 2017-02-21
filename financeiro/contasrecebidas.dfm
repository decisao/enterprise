inherited formContasRecebidas: TformContasRecebidas
  Left = 243
  Top = 78
  Caption = 'Contas Recebidas'
  ClientWidth = 671
  ExplicitTop = 8
  ExplicitWidth = 679
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 671
    ExplicitWidth = 671
    ClientRectRight = 670
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 669
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 669
        ExplicitWidth = 669
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Width = 669
        ExplicitWidth = 669
      end
      inherited pnlFundoGrade: TPanel
        Width = 669
        ExplicitWidth = 669
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 514
          Width = 669
          Height = 3
          ExplicitTop = 514
          ExplicitWidth = 669
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 669
          ExplicitWidth = 669
        end
        inherited grdDados: TcxGrid
          Width = 669
          Height = 492
          ExplicitWidth = 669
          ExplicitHeight = 496
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 669
      ExplicitHeight = 0
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 669
        ExplicitWidth = 669
      end
      inherited pnlEdicao: TPanel
        Width = 669
        ExplicitWidth = 665
        inherited pnlCODIGO: TPanel
          Width = 669
          ExplicitWidth = 647
        end
        inherited pnlCliente: TPanel
          Width = 669
          ExplicitWidth = 647
        end
        inherited cxPageControl1: TcxPageControl
          Width = 669
          ExplicitWidth = 665
          ClientRectRight = 665
          inherited cxTabSheet1: TcxTabSheet
            ExplicitWidth = 641
            inherited pnlVendaOS: TPanel
              Width = 641
              ExplicitWidth = 641
              inherited Panel4: TPanel
                Width = 641
                ExplicitWidth = 641
              end
            end
            inherited pnlHISTORICO: TPanel
              Width = 641
              ExplicitWidth = 641
            end
            inherited pnlVencimento: TPanel
              Width = 641
              ExplicitWidth = 641
              inherited Label26: TLabel
                Width = 75
                Caption = 'Recebido por'
                ExplicitWidth = 75
              end
              inherited Label27: TLabel
                Width = 105
                Caption = 'Data Recebimento'
                ExplicitWidth = 105
              end
              inherited cxDBTextEdit23: TcxDBTextEdit
                DataBinding.DataField = 'NOMEUSUARIO'
              end
              inherited cxDBTextEdit24: TcxDBTextEdit
                DataBinding.DataField = 'DATAPAGO'
              end
            end
            inherited pnlCentros: TPanel
              Width = 641
              ExplicitWidth = 641
              inherited Panel2: TPanel
                Width = 641
                ExplicitWidth = 641
              end
            end
            inherited pnlCheque: TPanel
              Width = 641
              ExplicitWidth = 641
              inherited Panel3: TPanel
                Width = 641
                ExplicitWidth = 641
              end
            end
          end
          inherited tabDatas: TcxTabSheet
            ExplicitWidth = 659
            inherited Panel7: TPanel
              Width = 474
              ExplicitWidth = 474
              inherited Panel9: TPanel
                Width = 474
                ExplicitWidth = 456
              end
              inherited Panel10: TPanel
                Width = 474
                ExplicitWidth = 474
                inherited cxGrid1: TcxGrid
                  Width = 472
                  ExplicitWidth = 472
                end
              end
            end
          end
          inherited tabItens: TcxTabSheet
            ExplicitWidth = 659
            inherited Panel5: TPanel
              Width = 659
              ExplicitWidth = 641
            end
            inherited pnlItens: TPanel
              Width = 659
              ExplicitWidth = 659
              inherited grdItens: TcxGrid
                Width = 659
                ExplicitWidth = 659
              end
            end
          end
          inherited cxTabSheet2: TcxTabSheet
            ExplicitWidth = 641
          end
          inherited cxTabSheet3: TcxTabSheet
            ExplicitWidth = 659
            inherited pnlLog: TPanel
              Width = 659
              ExplicitWidth = 659
              inherited Splitter1: TSplitter
                Width = 659
                ExplicitWidth = 641
              end
              inherited cxGridLog1: TcxGrid
                Width = 659
                ExplicitWidth = 659
              end
              inherited cxGridLog2: TcxGrid
                Width = 659
                ExplicitWidth = 659
              end
            end
          end
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Width = 671
    ExplicitWidth = 671
  end
  inherited dxBarManagerCad: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManagerCadBar1: TdxBar
      FloatClientWidth = 230
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
      FloatLeft = 706
      FloatTop = 87
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
      Caption = 'Estorno'
      Hint = 'Estorno'
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
      ReportDocument.CreationDate = 39476.754932164350000000
      BuiltInReportLink = True
    end
  end
end
