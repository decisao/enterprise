inherited formContasPagas: TformContasPagas
  Caption = 'Contas Pagas'
  ClientWidth = 669
  ExplicitTop = 8
  ExplicitWidth = 677
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 669
    ExplicitWidth = 669
    ClientRectRight = 668
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 667
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 667
        ExplicitWidth = 667
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Width = 667
        ExplicitWidth = 667
      end
      inherited pnlFundoGrade: TPanel
        Width = 667
        ExplicitWidth = 667
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 514
          Width = 667
          Height = 3
          ExplicitTop = 514
          ExplicitWidth = 667
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 667
          ExplicitWidth = 667
        end
        inherited grdDados: TcxGrid
          Width = 667
          Height = 492
          ExplicitWidth = 667
          ExplicitHeight = 496
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 667
      ExplicitHeight = 0
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 667
        ExplicitWidth = 667
      end
      inherited pnlEdicao: TPanel
        Width = 667
        ExplicitWidth = 667
        inherited pnlCODIGO: TPanel
          Width = 667
          ExplicitWidth = 667
        end
        inherited pnlCliente: TPanel
          Width = 667
          ExplicitWidth = 667
        end
        inherited cxPageControl1: TcxPageControl
          Width = 667
          ExplicitWidth = 667
          ClientRectRight = 663
          inherited cxTabSheet1: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 661
            ExplicitHeight = 430
            inherited pnlVendaOS: TPanel
              Width = 661
              ExplicitWidth = 661
              inherited Panel4: TPanel
                Width = 661
                ExplicitWidth = 661
              end
            end
            inherited pnlHISTORICO: TPanel
              Width = 661
              ExplicitWidth = 661
              inherited cxCentros: TcxCheckBox
                ExplicitHeight = 17
              end
            end
            inherited pnlVencimento: TPanel
              Width = 661
              ExplicitWidth = 661
              inherited Label26: TLabel
                Width = 51
                Caption = 'Pago por'
                ExplicitWidth = 51
              end
              inherited Label27: TLabel
                Width = 95
                Caption = 'Data Pagamento'
                ExplicitWidth = 95
              end
              inherited cxDBTextEdit23: TcxDBTextEdit
                DataBinding.DataField = 'NOMEUSUARIO'
              end
              inherited cxDBTextEdit24: TcxDBTextEdit
                DataBinding.DataField = 'DATAPAGO'
              end
            end
            inherited pnlCentros: TPanel
              Width = 661
              ExplicitWidth = 661
              inherited Panel2: TPanel
                Width = 661
                ExplicitWidth = 661
              end
            end
            inherited pnlCheque: TPanel
              Width = 661
              ExplicitWidth = 661
              inherited Panel3: TPanel
                Width = 661
                ExplicitWidth = 661
              end
            end
          end
          inherited tabDatas: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 661
            ExplicitHeight = 430
            inherited Panel7: TPanel
              Width = 476
              ExplicitWidth = 476
              inherited Panel9: TPanel
                Width = 476
                ExplicitWidth = 476
              end
              inherited Panel10: TPanel
                Width = 476
                ExplicitWidth = 476
                inherited cxGrid1: TcxGrid
                  Width = 474
                  ExplicitWidth = 474
                end
              end
            end
          end
          inherited tabItens: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 661
            ExplicitHeight = 430
            inherited Panel5: TPanel
              Width = 661
              Height = 57
              ExplicitWidth = 661
              ExplicitHeight = 57
            end
            inherited pnlItens: TPanel
              Top = 57
              Width = 661
              Height = 373
              ExplicitTop = 57
              ExplicitWidth = 661
              ExplicitHeight = 373
              inherited grdItens: TcxGrid
                Width = 661
                Height = 373
                ExplicitWidth = 661
                ExplicitHeight = 373
              end
            end
          end
          inherited cxTabSheet2: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 661
            ExplicitHeight = 430
          end
          inherited cxTabSheet3: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 661
            ExplicitHeight = 430
            inherited pnlLog: TPanel
              Width = 661
              ExplicitWidth = 661
              inherited Splitter1: TSplitter
                Width = 661
                ExplicitWidth = 639
              end
              inherited cxGridLog1: TcxGrid
                Width = 661
                ExplicitWidth = 661
              end
              inherited cxGridLog2: TcxGrid
                Width = 661
                ExplicitWidth = 661
              end
            end
          end
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Width = 669
    ExplicitWidth = 669
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
      ReportDocument.CreationDate = 39476.754823796300000000
      BuiltInReportLink = True
    end
  end
end
