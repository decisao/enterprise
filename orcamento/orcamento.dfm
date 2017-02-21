inherited formOrcamento: TformOrcamento
  Left = 212
  Top = 143
  Caption = 'Or'#231'amento'
  ClientHeight = 506
  ClientWidth = 789
  ExplicitWidth = 795
  ExplicitHeight = 538
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxStatusBar: TdxStatusBar
    Top = 486
    Width = 789
    ExplicitTop = 486
    ExplicitWidth = 789
  end
  inherited Panel1: TPanel
    Width = 789
    Height = 409
    ExplicitWidth = 789
    ExplicitHeight = 409
    inherited pgcSaida: TcxPageControl
      Width = 787
      Height = 407
      ExplicitWidth = 787
      ExplicitHeight = 386
      ClientRectBottom = 405
      ClientRectRight = 785
      inherited tabItens: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 2
        ExplicitWidth = 783
        ExplicitHeight = 382
        inherited Bevel1: TBevel
          Top = 232
          Width = 783
          ExplicitTop = 209
          ExplicitWidth = 759
        end
        inherited pnlTotal: TPanel
          Top = 297
          Width = 783
          ExplicitTop = 276
          ExplicitWidth = 783
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
          Width = 783
          Height = 232
          ExplicitWidth = 783
          ExplicitHeight = 211
        end
        inherited pnlServicosOpcionais: TPanel
          Top = 234
          Width = 783
          ExplicitTop = 213
          ExplicitWidth = 783
        end
      end
      inherited tabFatura: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 2
        ExplicitWidth = 783
        ExplicitHeight = 382
        inherited pnlTotalFinal: TPanel
          Top = 219
          Width = 783
          Height = 184
          ExplicitTop = 198
          ExplicitWidth = 783
          ExplicitHeight = 184
          inherited Label1: TLabel
            Width = 100
            Caption = 'Condi'#231#245'es Gerais'
            ExplicitWidth = 100
          end
          inherited DBText2: TDBText
            Left = 368
            ExplicitLeft = 368
          end
          object Label5: TLabel [2]
            Left = 19
            Top = 88
            Width = 145
            Height = 13
            Caption = 'Condi'#231#245'es de Pagamento'
            FocusControl = cxDBMemo2
          end
          object Label6: TLabel [3]
            Left = 371
            Top = 88
            Width = 226
            Height = 13
            Caption = 'Opcionais (n'#227'o inclu'#237'dos no or'#231'amento)'
            FocusControl = cxDBMemo3
          end
          inherited cxDBMemo1: TcxDBMemo
            DataBinding.DataField = 'CONDICOES1'
          end
          object cxDBMemo2: TcxDBMemo
            Left = 17
            Top = 103
            DataBinding.DataField = 'CONDICOES2'
            DataBinding.DataSource = dsrMovimento
            TabOrder = 1
            OnEnter = dedDESCONTOEnter
            OnExit = dedDESCONTOExit
            Height = 65
            Width = 313
          end
          object cxDBMemo3: TcxDBMemo
            Left = 369
            Top = 103
            DataBinding.DataField = 'OPCIONAIS'
            DataBinding.DataSource = dsrMovimento
            TabOrder = 2
            OnEnter = dedDESCONTOEnter
            OnExit = dedDESCONTOExit
            Height = 65
            Width = 313
          end
        end
        inherited cxGrid2: TcxGrid
          Width = 783
          Height = 219
          ExplicitWidth = 783
          ExplicitHeight = 198
        end
      end
    end
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockControlHeights = (
      0
      0
      77
      0)
    inherited dxBarManagerBar1: TdxBar
      OldName = 'BarraSaida'
    end
    inherited dxBarManagerBar2: TdxBar
      OldName = 'BarraCliente'
    end
    inherited dxBarLargeButton1: TdxBarLargeButton
      LargeImageIndex = 1
      ImageIndex = 0
    end
    inherited dxBarLargeButton4: TdxBarLargeButton
      ImageIndex = 2
    end
    inherited dxBarLargeButton5: TdxBarLargeButton
      Visible = ivNever
    end
    inherited lblOperacao: TdxBarStatic
      Visible = ivNever
    end
  end
end
