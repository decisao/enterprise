inherited formContaReceber: TformContaReceber
  Left = 367
  Top = 134
  Caption = 'Contas a Receber'
  ClientHeight = 566
  ClientWidth = 649
  ExplicitTop = 8
  ExplicitWidth = 657
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 649
    Height = 546
    ExplicitWidth = 649
    ExplicitHeight = 546
    ClientRectBottom = 545
    ClientRectRight = 648
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 647
      ExplicitHeight = 544
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 647
        ExplicitWidth = 647
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 515
        Width = 647
        ExplicitTop = 515
        ExplicitWidth = 647
      end
      inherited pnlFundoGrade: TPanel
        Width = 647
        Height = 438
        ExplicitWidth = 647
        ExplicitHeight = 438
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 435
          Width = 647
          Height = 3
          ExplicitTop = 435
          ExplicitWidth = 647
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 647
          ExplicitWidth = 647
        end
        inherited grdDados: TcxGrid
          Width = 647
          Height = 413
          ExplicitWidth = 647
          ExplicitHeight = 417
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            inherited cxGrid1DBTableView1SEL: TcxGridDBColumn
              Properties.ImmediatePost = True
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 647
      ExplicitHeight = 544
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 647
        ExplicitWidth = 647
      end
      inherited pnlEdicao: TPanel
        Width = 647
        Height = 467
        ExplicitWidth = 647
        ExplicitHeight = 469
        inherited pnlCODIGO: TPanel
          Width = 647
          ExplicitWidth = 647
        end
        inherited pnlCliente: TPanel
          Width = 647
          ExplicitWidth = 647
        end
        inherited cxPageControl1: TcxPageControl
          Width = 647
          Height = 375
          ExplicitWidth = 647
          ExplicitHeight = 377
          ClientRectBottom = 371
          ClientRectRight = 643
          inherited cxTabSheet1: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 641
            ExplicitHeight = 351
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
              inherited cxCentros: TcxCheckBox
                ExplicitHeight = 17
              end
            end
            inherited pnlVencimento: TPanel
              Width = 641
              ExplicitWidth = 641
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
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 641
            ExplicitHeight = 351
            inherited Panel7: TPanel
              Width = 456
              Height = 351
              ExplicitWidth = 456
              ExplicitHeight = 351
              inherited Panel9: TPanel
                Width = 456
                ExplicitWidth = 456
              end
              inherited Panel10: TPanel
                Width = 456
                Height = 246
                ExplicitWidth = 456
                ExplicitHeight = 246
                inherited cxGrid1: TcxGrid
                  Width = 454
                  Height = 244
                  ExplicitWidth = 454
                  ExplicitHeight = 244
                end
              end
            end
            inherited Panel8: TPanel
              Height = 351
              ExplicitHeight = 351
            end
          end
          inherited tabItens: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 641
            ExplicitHeight = 351
            inherited Panel5: TPanel
              Width = 641
              ExplicitWidth = 641
            end
            inherited pnlItens: TPanel
              Width = 641
              Height = 254
              ExplicitWidth = 641
              ExplicitHeight = 254
              inherited grdItens: TcxGrid
                Width = 641
                Height = 254
                ExplicitWidth = 641
                ExplicitHeight = 254
              end
            end
          end
          inherited cxTabSheet2: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 641
            ExplicitHeight = 351
          end
          inherited cxTabSheet3: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 641
            ExplicitHeight = 351
            inherited pnlLog: TPanel
              Width = 641
              Height = 351
              ExplicitWidth = 641
              ExplicitHeight = 351
              inherited Splitter1: TSplitter
                Width = 641
                ExplicitWidth = 619
              end
              inherited cxGridLog1: TcxGrid
                Width = 641
                ExplicitWidth = 641
              end
              inherited cxGridLog2: TcxGrid
                Width = 641
                Height = 267
                ExplicitWidth = 641
                ExplicitHeight = 267
              end
            end
          end
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 546
    Width = 649
    ExplicitTop = 546
    ExplicitWidth = 649
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
      FloatClientWidth = 21
      FloatClientHeight = 16
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
    object dxBarStatic1: TdxBarStatic
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
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
      ReportDocument.CreationDate = 39476.754655729160000000
      BuiltInReportLink = True
    end
  end
end
