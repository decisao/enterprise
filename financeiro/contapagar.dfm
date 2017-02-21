inherited formContaPagar: TformContaPagar
  Left = 286
  Top = 158
  Caption = 'Contas a Pagar'
  ClientHeight = 627
  ClientWidth = 720
  ExplicitTop = 8
  ExplicitWidth = 736
  ExplicitHeight = 666
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 720
    Height = 607
    ExplicitWidth = 720
    ExplicitHeight = 607
    ClientRectBottom = 606
    ClientRectRight = 719
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 718
      ExplicitHeight = 605
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 718
        ExplicitWidth = 718
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 574
        Width = 718
        ExplicitTop = 574
        ExplicitWidth = 718
      end
      inherited pnlFundoGrade: TPanel
        Width = 718
        Height = 495
        ExplicitWidth = 718
        ExplicitHeight = 495
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 492
          Width = 718
          ExplicitTop = 492
          ExplicitWidth = 718
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 718
          ExplicitWidth = 718
        end
        inherited grdDados: TcxGrid
          Width = 718
          Height = 470
          ExplicitWidth = 718
          ExplicitHeight = 470
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            inherited cxGrid1DBTableView1SEL: TcxGridDBColumn
              Properties.ImmediatePost = True
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 718
      ExplicitHeight = 605
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 718
        ExplicitWidth = 718
      end
      inherited pnlEdicao: TPanel
        Width = 718
        Height = 526
        ExplicitWidth = 718
        ExplicitHeight = 530
        inherited pnlCODIGO: TPanel
          Width = 718
          ExplicitWidth = 718
        end
        inherited pnlCliente: TPanel
          Width = 718
          ExplicitWidth = 718
        end
        inherited cxPageControl1: TcxPageControl
          Width = 718
          Height = 434
          ExplicitWidth = 718
          ExplicitHeight = 438
          ClientRectBottom = 430
          ClientRectRight = 714
          inherited cxTabSheet1: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 712
            ExplicitHeight = 412
            inherited pnlVendaOS: TPanel
              Width = 712
              ExplicitWidth = 712
              inherited Panel4: TPanel
                Width = 712
                ExplicitWidth = 712
              end
            end
            inherited pnlHISTORICO: TPanel
              Width = 712
              ExplicitWidth = 712
              inherited cxCentros: TcxCheckBox
                ExplicitHeight = 17
              end
            end
            inherited pnlVencimento: TPanel
              Width = 712
              ExplicitWidth = 712
              inherited Label26: TLabel
                Visible = False
              end
              inherited Label27: TLabel
                Visible = False
              end
              inherited cxDBTextEdit23: TcxDBTextEdit
                Visible = False
              end
              inherited cxDBTextEdit24: TcxDBTextEdit
                Visible = False
              end
            end
            inherited pnlCentros: TPanel
              Width = 712
              ExplicitWidth = 712
              inherited Panel2: TPanel
                Width = 712
                ExplicitWidth = 712
              end
            end
            inherited pnlCheque: TPanel
              Width = 712
              ExplicitWidth = 712
              inherited Panel3: TPanel
                Width = 712
                ExplicitWidth = 712
              end
            end
          end
          inherited tabDatas: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 712
            ExplicitHeight = 412
            inherited Panel7: TPanel
              Width = 527
              Height = 412
              ExplicitWidth = 527
              ExplicitHeight = 412
              inherited Panel9: TPanel
                Width = 527
                ExplicitWidth = 527
              end
              inherited Panel10: TPanel
                Width = 527
                Height = 307
                ExplicitWidth = 527
                ExplicitHeight = 307
                inherited cxGrid1: TcxGrid
                  Width = 525
                  Height = 305
                  ExplicitWidth = 525
                  ExplicitHeight = 305
                end
              end
            end
            inherited Panel8: TPanel
              Height = 412
              ExplicitHeight = 412
            end
          end
          inherited tabItens: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 712
            ExplicitHeight = 412
            inherited Panel5: TPanel
              Width = 712
              ExplicitWidth = 712
            end
            inherited pnlItens: TPanel
              Width = 712
              Height = 315
              ExplicitWidth = 712
              ExplicitHeight = 315
              inherited grdItens: TcxGrid
                Width = 712
                Height = 315
                ExplicitWidth = 712
                ExplicitHeight = 315
              end
            end
          end
          inherited cxTabSheet2: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 712
            ExplicitHeight = 412
          end
          inherited cxTabSheet3: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 712
            ExplicitHeight = 412
            inherited pnlLog: TPanel
              Width = 712
              Height = 412
              ExplicitWidth = 712
              ExplicitHeight = 412
              inherited Splitter1: TSplitter
                Width = 712
                ExplicitWidth = 690
              end
              inherited cxGridLog1: TcxGrid
                Width = 712
                ExplicitWidth = 712
              end
              inherited cxGridLog2: TcxGrid
                Width = 712
                Height = 328
                ExplicitWidth = 712
                ExplicitHeight = 328
              end
            end
          end
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 607
    Width = 720
    ExplicitTop = 607
    ExplicitWidth = 720
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
      Visible = False
    end
    inherited btnAdicionar: TdxBarLargeButton
      ImageIndex = 2
    end
    inherited btnAjuda: TdxBarLargeButton
      ImageIndex = 0
    end
    inherited btnBaixar: TdxBarButton
      Tag = 0
    end
    inherited btnConjunto: TdxBarButton
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
      ReportDocument.CreationDate = 39476.754552222220000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
