inherited formSaida: TformSaida
  Left = 182
  Top = 147
  Caption = 'Venda'
  ClientHeight = 506
  ClientWidth = 792
  OldCreateOrder = True
  ExplicitWidth = 798
  ExplicitHeight = 534
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxStatusBar: TdxStatusBar
    Top = 486
    Width = 792
    ExplicitTop = 486
    ExplicitWidth = 792
  end
  inherited Panel1: TPanel
    Width = 792
    Height = 379
    ExplicitWidth = 792
    ExplicitHeight = 379
    inherited pgcSaida: TcxPageControl
      Width = 790
      Height = 377
      ExplicitWidth = 790
      ExplicitHeight = 377
      ClientRectBottom = 373
      ClientRectRight = 786
      inherited tabItens: TcxTabSheet
        ExplicitWidth = 782
        ExplicitHeight = 369
        inherited Bevel1: TBevel
          Top = 198
          Width = 782
          ExplicitTop = 211
          ExplicitWidth = 764
        end
        inherited pnlTotal: TPanel
          Top = 263
          Width = 782
          ExplicitTop = 263
          ExplicitWidth = 782
          inherited lblJuros: TLabel
            Visible = False
          end
          inherited lblTaxaJuros: TLabel
            Visible = False
          end
          inherited Label4: TLabel
            Visible = False
          end
          inherited dedJUROS: TcxDBTextEdit
            Visible = False
          end
          inherited dedTaxaJuros: TcxDBTextEdit
            Visible = False
          end
          inherited cxDBTextEdit3: TcxDBTextEdit
            Visible = False
          end
        end
        inherited cxGrid1: TcxGrid
          Width = 782
          Height = 198
          ExplicitWidth = 782
          ExplicitHeight = 198
        end
        inherited pnlServicosOpcionais: TPanel
          Top = 200
          Width = 782
          ExplicitTop = 200
          ExplicitWidth = 782
        end
      end
      inherited tabFatura: TcxTabSheet
        ExplicitWidth = 782
        ExplicitHeight = 369
        inherited pnlTotalFinal: TPanel
          Top = 263
          Width = 782
          ExplicitTop = 263
          ExplicitWidth = 782
        end
        inherited cxGrid2: TcxGrid
          Width = 782
          Height = 263
          ExplicitWidth = 786
          ExplicitHeight = 274
        end
      end
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      107
      0)
    inherited dxBarManagerBar1: TdxBar
      OldName = 'BarraSaida'
    end
    inherited dxBarManagerBar2: TdxBar
      OldName = 'BarraCliente'
    end
    inherited dxBarLargeButton1: TdxBarLargeButton
      ImageIndex = 0
    end
    inherited dxBarLargeButton4: TdxBarLargeButton
      ImageIndex = 2
    end
  end
end
