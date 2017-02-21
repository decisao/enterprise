inherited formCompra: TformCompra
  Left = 146
  Top = 117
  Caption = 'Compra'
  ClientHeight = 508
  ClientWidth = 794
  ExplicitWidth = 800
  ExplicitHeight = 540
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxStatusBar: TdxStatusBar
    Top = 488
    Width = 794
    ExplicitTop = 488
    ExplicitWidth = 794
  end
  inherited Panel1: TPanel
    Width = 794
    Height = 383
    ExplicitTop = 105
    ExplicitWidth = 794
    ExplicitHeight = 383
    inherited pgcSaida: TcxPageControl
      Width = 792
      Height = 381
      ExplicitWidth = 792
      ExplicitHeight = 381
      ClientRectBottom = 379
      ClientRectRight = 790
      inherited tabItens: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 2
        ExplicitWidth = 788
        ExplicitHeight = 377
        inherited Bevel1: TBevel
          Top = 206
          Width = 788
          ExplicitTop = 213
          ExplicitWidth = 764
        end
        inherited pnlTotal: TPanel
          Top = 271
          Width = 788
          Anchors = [akBottom]
          Locked = True
          ExplicitTop = 271
          ExplicitWidth = 788
          inherited lblJuros: TLabel
            Left = 528
            Top = 8
            Visible = False
            ExplicitLeft = 528
            ExplicitTop = 8
          end
          inherited lblTaxaJuros: TLabel
            Left = 627
            Top = 8
            Visible = False
            ExplicitLeft = 627
            ExplicitTop = 8
          end
          inherited Label4: TLabel
            Left = 223
            ExplicitLeft = 223
          end
          object Label5: TLabel [11]
            Left = 320
            Top = 56
            Width = 96
            Height = 13
            Caption = 'Data de Emiss'#227'o'
            FocusControl = cxDBDateEdit1
          end
          inherited dedJUROS: TcxDBTextEdit
            Left = 479
            Top = 23
            Visible = False
            ExplicitLeft = 479
            ExplicitTop = 23
          end
          inherited dedTaxaJuros: TcxDBTextEdit
            Left = 583
            Top = 23
            Visible = False
            ExplicitLeft = 583
            ExplicitTop = 23
          end
          inherited cxDBTextEdit3: TcxDBTextEdit
            Left = 216
            ExplicitLeft = 216
            ExplicitWidth = 81
            Width = 81
          end
          inherited dedFrete: TcxDBTextEdit
            TabOrder = 12
          end
          inherited ckCMV: TcxCheckBox
            ExplicitHeight = 17
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 319
            Top = 71
            DataBinding.DataField = 'DATA_EMISSAO'
            DataBinding.DataSource = dsrMovimento
            TabOrder = 10
            OnEnter = dedDESCONTOEnter
            OnExit = dedDESCONTOExit
            Width = 121
          end
        end
        inherited cxGrid1: TcxGrid
          Width = 788
          Height = 147
          ExplicitWidth = 788
          ExplicitHeight = 147
        end
        inherited pnlServicosOpcionais: TPanel
          Top = 208
          Width = 788
          TabOrder = 3
          ExplicitTop = 208
          ExplicitWidth = 788
        end
        object Panel2: TPanel
          Left = 0
          Top = 147
          Width = 788
          Height = 59
          Align = alBottom
          BevelOuter = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          object Label6: TLabel
            Left = 8
            Top = 18
            Width = 45
            Height = 13
            Caption = 'Sit.Trib.'
            FocusControl = cxDBTextEdit4
          end
          object Label7: TLabel
            Left = 96
            Top = 17
            Width = 81
            Height = 13
            Caption = 'ICMS Compra'
            FocusControl = cxDBTextEdit5
          end
          object Label8: TLabel
            Left = 200
            Top = 17
            Width = 71
            Height = 13
            Caption = 'ICMS Venda'
            FocusControl = cxDBTextEdit6
          end
          object Label9: TLabel
            Left = 304
            Top = 17
            Width = 17
            Height = 13
            Caption = 'IPI'
            FocusControl = cxDBTextEdit7
          end
          object dedDescricaoCaixa: TDBText
            Left = 1
            Top = 1
            Width = 786
            Height = 17
            Align = alTop
            DataField = 'DESCRICAO'
            DataSource = dsrItens
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 762
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 7
            Top = 31
            DataBinding.DataField = 'SITTRIBU'
            DataBinding.DataSource = dsrItens
            TabOrder = 0
            OnEnter = dedDESCONTOEnter
            OnExit = dedDESCONTOExit
            Width = 82
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 95
            Top = 30
            DataBinding.DataField = 'ICMSCOMPRA'
            DataBinding.DataSource = dsrItens
            TabOrder = 1
            OnEnter = dedDESCONTOEnter
            OnExit = dedDESCONTOExit
            Width = 98
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 199
            Top = 30
            DataBinding.DataField = 'ICMS'
            DataBinding.DataSource = dsrItens
            TabOrder = 2
            OnEnter = dedDESCONTOEnter
            OnExit = dedDESCONTOExit
            Width = 98
          end
          object cxDBTextEdit7: TcxDBTextEdit
            Left = 303
            Top = 30
            DataBinding.DataField = 'IPI'
            DataBinding.DataSource = dsrItens
            TabOrder = 3
            OnEnter = dedDESCONTOEnter
            OnExit = dedDESCONTOExit
            Width = 98
          end
        end
      end
      inherited tabFatura: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 2
        ExplicitWidth = 788
        ExplicitHeight = 377
        inherited pnlTotalFinal: TPanel
          Top = 271
          Width = 788
          ExplicitTop = 271
          ExplicitWidth = 788
          inherited DBText2: TDBText
            DataField = 'VALOR_TOTAL'
          end
        end
        inherited cxGrid2: TcxGrid
          Width = 788
          Height = 271
          ExplicitWidth = 788
          ExplicitHeight = 271
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
      105
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
    inherited dxBarLargeButton3: TdxBarLargeButton
      Visible = ivNever
    end
    inherited dxBarLargeButton4: TdxBarLargeButton
      ImageIndex = 2
    end
    inherited dxBarLargeButton6: TdxBarLargeButton
      Visible = ivNever
    end
    object dxBarContainerItem1: TdxBarContainerItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Category = 0
      Visible = ivAlways
    end
  end
  inherited actSaida: TActionList
    inherited actCliente: TAction
      Caption = '&Fornecedor [F4]'
    end
  end
  inherited dsrPagamento: TDataSource
    Top = 396
  end
  inherited cdsFechamento: TClientDataSet
    Left = 106
    Top = 284
  end
end
