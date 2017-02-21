inherited formUsuarios: TformUsuarios
  Left = 197
  Top = 213
  Caption = 'Usu'#225'rios'
  ClientHeight = 541
  ClientWidth = 720
  ExplicitWidth = 736
  ExplicitHeight = 580
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 720
    Height = 521
    ExplicitWidth = 720
    ExplicitHeight = 521
    ClientRectBottom = 520
    ClientRectRight = 719
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 718
      ExplicitHeight = 519
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 718
        ExplicitWidth = 718
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 488
        Width = 718
        ExplicitTop = 488
        ExplicitWidth = 718
      end
      inherited pnlFundoGrade: TPanel
        Width = 718
        Height = 409
        ExplicitWidth = 718
        ExplicitHeight = 409
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 406
          Width = 718
          Height = 3
          ExplicitTop = 406
          ExplicitWidth = 718
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 718
          ExplicitWidth = 718
        end
        inherited grdDados: TcxGrid
          Width = 718
          Height = 384
          ExplicitWidth = 718
          ExplicitHeight = 384
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 718
      ExplicitHeight = 519
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 718
        ExplicitWidth = 718
      end
      inherited pnlEdicao: TPanel
        Width = 718
        Height = 440
        ExplicitWidth = 718
        ExplicitHeight = 440
        inherited pnlCliente: TPanel
          Width = 718
          ExplicitWidth = 718
        end
        inherited pgcDetalhes: TcxPageControl
          Width = 718
          Height = 343
          Properties.ActivePage = tabFisica
          ExplicitWidth = 718
          ExplicitHeight = 343
          ClientRectBottom = 337
          ClientRectRight = 712
          inherited tabJuridica: TcxTabSheet
            ExplicitWidth = 710
            ExplicitHeight = 312
            inherited dedContratoJuridico: TcxDBCheckBox
              ExplicitHeight = 21
            end
          end
          inherited tabFisica: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 27
            ExplicitWidth = 710
            ExplicitHeight = 312
            inherited dedContratoFisico: TcxDBCheckBox
              ExplicitHeight = 21
            end
          end
          inherited cxTabSheet3: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 27
            ExplicitWidth = 710
            ExplicitHeight = 312
            inherited ckPAGA_ALUGUEL: TcxDBCheckBox
              ExplicitHeight = 21
            end
          end
          inherited tabAdicionais: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 27
            ExplicitWidth = 710
            ExplicitHeight = 312
          end
          inherited cxTabSheet1: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 27
            ExplicitWidth = 710
            ExplicitHeight = 312
          end
          object cxTabSheet8: TcxTabSheet [5]
            Caption = 'Privil'#233'gios'
            ImageIndex = 7
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object PageControl1: TPageControl
              Left = 0
              Top = 0
              Width = 710
              Height = 312
              ActivePage = TabSheet1
              Align = alClient
              Style = tsButtons
              TabOrder = 0
              OnChange = PageControl1Change
              object TabSheet1: TTabSheet
                Caption = 'Recursos'
                ExplicitLeft = 0
                ExplicitTop = 0
                ExplicitWidth = 0
                ExplicitHeight = 0
                object Label33: TLabel
                  Left = 136
                  Top = 0
                  Width = 50
                  Height = 13
                  Caption = 'Empresa'
                end
                object Label34: TLabel
                  Left = 224
                  Top = 0
                  Width = 101
                  Height = 13
                  Caption = 'Desconto M'#225'ximo'
                end
                object Label35: TLabel
                  Left = 384
                  Top = 0
                  Width = 81
                  Height = 13
                  Caption = 'Com.Produtos'
                end
                object Label36: TLabel
                  Left = 384
                  Top = 40
                  Width = 64
                  Height = 13
                  Caption = 'Com.Pe'#231'as'
                end
                object Label37: TLabel
                  Left = 384
                  Top = 80
                  Width = 80
                  Height = 13
                  Caption = 'Com.Servi'#231'os'
                end
                object lbNOMEUSER: TLabel
                  Left = 8
                  Top = 0
                  Width = 80
                  Height = 13
                  Caption = 'Nome Usu'#225'rio'
                  FocusControl = dedNOMEUSER
                end
                object cxDBTextEdit2: TcxDBTextEdit
                  Left = 135
                  Top = 15
                  DataBinding.DataField = 'CODEMPRESA'
                  DataBinding.DataSource = dsrDados
                  TabOrder = 0
                  OnEnter = edtPesquisar2Enter
                  OnExit = edtPesquisar2Exit
                  Width = 74
                end
                object cxDBCheckBox2: TcxDBCheckBox
                  Left = 3
                  Top = 43
                  Caption = 'Permite Login'
                  DataBinding.DataField = 'INTERNET'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 1
                  Width = 182
                end
                object cxDBCheckBox3: TcxDBCheckBox
                  Left = 3
                  Top = 67
                  Caption = 'Troca de Empresa'
                  DataBinding.DataField = 'MUDAEMPRESA'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 2
                  Width = 182
                end
                object cxDBCheckBox4: TcxDBCheckBox
                  Left = 3
                  Top = 91
                  Caption = 'Acesso Financeiro'
                  DataBinding.DataField = 'FINANCEIRO'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 3
                  Width = 182
                end
                object cxDBCheckBox5: TcxDBCheckBox
                  Left = 3
                  Top = 115
                  Caption = 'Permite Estornos Geral'
                  DataBinding.DataField = 'ESTORNO'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 4
                  Width = 182
                end
                object cxDBCheckBox6: TcxDBCheckBox
                  Left = 3
                  Top = 163
                  Caption = 'Troca Vendedor'
                  DataBinding.DataField = 'TROCAVENDEDOR'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 6
                  Width = 182
                end
                object cxDBCheckBox7: TcxDBCheckBox
                  Left = 3
                  Top = 187
                  Caption = 'Troca Sequ'#234'ncia'
                  DataBinding.DataField = 'SEQUENCIAS'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 7
                  Width = 182
                end
                object cxDBCheckBox8: TcxDBCheckBox
                  Left = 3
                  Top = 211
                  Caption = 'Permite Recalculo'
                  DataBinding.DataField = 'RECALCULO'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 8
                  Width = 182
                end
                object cxDBCheckBox9: TcxDBCheckBox
                  Left = 3
                  Top = 235
                  Caption = 'Acesso a Custos'
                  DataBinding.DataField = 'CUSTO'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 9
                  Width = 182
                end
                object cxDBCheckBox10: TcxDBCheckBox
                  Left = 195
                  Top = 43
                  Caption = 'Permite Recebimentos'
                  DataBinding.DataField = 'RECEBIMENTO'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 10
                  Width = 182
                end
                object cxDBCheckBox11: TcxDBCheckBox
                  Left = 195
                  Top = 67
                  Caption = 'Acesso a Compras'
                  DataBinding.DataField = 'COMPRAS'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 11
                  Width = 182
                end
                object cxDBCheckBox12: TcxDBCheckBox
                  Left = 195
                  Top = 91
                  Caption = 'Permite Transfer'#234'ncias'
                  DataBinding.DataField = 'TRANSFERENCIA'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 12
                  Width = 182
                end
                object cxDBCheckBox13: TcxDBCheckBox
                  Left = 195
                  Top = 115
                  Caption = 'Acesso a Relat'#243'rios'
                  DataBinding.DataField = 'RELATORIOS'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 13
                  Width = 182
                end
                object cxDBTextEdit3: TcxDBTextEdit
                  Left = 223
                  Top = 15
                  DataBinding.DataField = 'DESCONTO'
                  DataBinding.DataSource = dsrDados
                  TabOrder = 14
                  OnEnter = edtPesquisar2Enter
                  OnExit = edtPesquisar2Exit
                  Width = 106
                end
                object cxDBTextEdit4: TcxDBTextEdit
                  Left = 383
                  Top = 15
                  DataBinding.DataField = 'PERCCOMIS_PROD'
                  DataBinding.DataSource = dsrDados
                  TabOrder = 15
                  OnEnter = edtPesquisar2Enter
                  OnExit = edtPesquisar2Exit
                  Width = 98
                end
                object cxDBTextEdit5: TcxDBTextEdit
                  Left = 383
                  Top = 55
                  DataBinding.DataField = 'PERCCOMIS_PECA'
                  DataBinding.DataSource = dsrDados
                  TabOrder = 17
                  OnEnter = edtPesquisar2Enter
                  OnExit = edtPesquisar2Exit
                  Width = 98
                end
                object cxDBTextEdit6: TcxDBTextEdit
                  Left = 383
                  Top = 95
                  DataBinding.DataField = 'PERCCOMIS_SERV'
                  DataBinding.DataSource = dsrDados
                  TabOrder = 16
                  OnEnter = edtPesquisar2Enter
                  OnExit = edtPesquisar2Exit
                  Width = 98
                end
                object dedNOMEUSER: TcxDBTextEdit
                  Left = 7
                  Top = 15
                  DataBinding.DataField = 'NOMEUSER'
                  DataBinding.DataSource = dsrDados
                  TabOrder = 18
                  OnEnter = edtPesquisar2Enter
                  OnExit = edtPesquisar2Exit
                  Width = 114
                end
                object cxDBRadioGroup3: TcxDBRadioGroup
                  Left = 384
                  Top = 213
                  Caption = ' Comiss'#227'o '
                  DataBinding.DataField = 'PERCCOMIS_CALCULO'
                  DataBinding.DataSource = dsrDados
                  Properties.Items = <
                    item
                      Caption = 'Faturamento'
                      Value = 'F'
                    end
                    item
                      Caption = 'Recebimento'
                      Value = 'R'
                    end>
                  TabOrder = 19
                  Height = 68
                  Width = 129
                end
                object cxDBCheckBox17: TcxDBCheckBox
                  Left = 3
                  Top = 259
                  Caption = 'Caixa'
                  DataBinding.DataField = 'CAIXA'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 20
                  Width = 182
                end
                object cxDBCheckBox14: TcxDBCheckBox
                  Left = 195
                  Top = 139
                  Caption = 'T'#233'cnico Login'
                  DataBinding.DataField = 'TECNICOLOGIN'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 21
                  Width = 174
                end
                object cxDBCheckBox15: TcxDBCheckBox
                  Left = 195
                  Top = 163
                  Caption = 'Acesso a Vendas'
                  DataBinding.DataField = 'VENDADIRETA'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 22
                  Width = 174
                end
                object cxDBCheckBox16: TcxDBCheckBox
                  Left = 195
                  Top = 187
                  Caption = 'Permite Fechamentos'
                  DataBinding.DataField = 'FECHAMENTO'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 23
                  Width = 174
                end
                object cxDBCheckBox18: TcxDBCheckBox
                  Left = 383
                  Top = 138
                  Caption = 'Permite An'#225'lises'
                  DataBinding.DataField = 'ANALISES'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 24
                  Width = 150
                end
                object cxDBCheckBox19: TcxDBCheckBox
                  Left = 384
                  Top = 163
                  Caption = 'Gerencia Ocultos'
                  DataBinding.DataField = 'OCULTOS'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 25
                  Width = 150
                end
                object cxDBCheckBox20: TcxDBCheckBox
                  Left = 384
                  Top = 188
                  Caption = 'Leitura de Logs'
                  DataBinding.DataField = 'LOGS'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 26
                  Width = 150
                end
                object ckEstornoPeca: TcxDBCheckBox
                  Left = 3
                  Top = 138
                  Caption = 'Permite Estornos Pe'#231'as'
                  DataBinding.DataField = 'ESTORNO_PECA'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 5
                  Width = 182
                end
                object cxDBCheckBox21: TcxDBCheckBox
                  Left = 195
                  Top = 211
                  Caption = 'Escolha de Pre'#231'os'
                  DataBinding.DataField = 'PRECO_CLIENTE'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 27
                  Width = 174
                end
                object cxDBCheckBox22: TcxDBCheckBox
                  Left = 195
                  Top = 235
                  Caption = 'Pre'#231'os 4 e 5'
                  DataBinding.DataField = 'PRECO_45'
                  DataBinding.DataSource = dsrDados
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 28
                  Width = 174
                end
              end
              object TabSheet2: TTabSheet
                Caption = 'Menus'
                ImageIndex = 1
                ExplicitLeft = 0
                ExplicitTop = 0
                ExplicitWidth = 0
                ExplicitHeight = 0
                object cxGrid1: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 702
                  Height = 281
                  Align = alClient
                  TabOrder = 0
                  Visible = False
                  LookAndFeel.NativeStyle = True
                  object cxGrid1DBTableView2: TcxGridDBTableView
                    DataController.DataSource = dsrPrivilegios
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsView.GroupByBox = False
                    OptionsView.Indicator = True
                    object cxGrid1DBTableView2DESCRICAO: TcxGridDBColumn
                      Tag = 1
                      Caption = 'Menu'
                      DataBinding.FieldName = 'DESCRICAO'
                      Options.Editing = False
                      SortIndex = 0
                      SortOrder = soAscending
                      Width = 181
                    end
                    object cxGrid1DBTableView2VISIVEL: TcxGridDBColumn
                      Tag = 1
                      Caption = 'Acesso'
                      DataBinding.FieldName = 'VISIVEL'
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Properties.Alignment = taCenter
                      Properties.ValueChecked = 'S'
                      Properties.ValueUnchecked = 'N'
                      MinWidth = 30
                      Options.Filtering = False
                      Options.IncSearch = False
                      Options.Grouping = False
                      Options.HorzSizing = False
                      Options.Moving = False
                      Options.Sorting = False
                      Width = 30
                    end
                    object cxGrid1DBTableView2NOVO: TcxGridDBColumn
                      Tag = 1
                      Caption = 'Adicionar'
                      DataBinding.FieldName = 'NOVO'
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Properties.Alignment = taCenter
                      Properties.ValueChecked = 'S'
                      Properties.ValueUnchecked = 'N'
                      MinWidth = 30
                      Options.Filtering = False
                      Options.IncSearch = False
                      Options.Grouping = False
                      Options.HorzSizing = False
                      Options.Moving = False
                      Options.Sorting = False
                      Width = 30
                    end
                    object cxGrid1DBTableView2DETALHES: TcxGridDBColumn
                      Tag = 1
                      Caption = 'Modificar'
                      DataBinding.FieldName = 'DETALHES'
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Properties.Alignment = taCenter
                      Properties.ValueChecked = 'S'
                      Properties.ValueUnchecked = 'N'
                      MinWidth = 30
                      Options.Filtering = False
                      Options.IncSearch = False
                      Options.Grouping = False
                      Options.HorzSizing = False
                      Options.Moving = False
                      Options.Sorting = False
                      Width = 30
                    end
                    object cxGrid1DBTableView2IMPRIMIR: TcxGridDBColumn
                      Tag = 1
                      Caption = 'Imprimir'
                      DataBinding.FieldName = 'IMPRIMIR'
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Properties.Alignment = taCenter
                      Properties.ValueChecked = 'S'
                      Properties.ValueUnchecked = 'N'
                      MinWidth = 30
                      Options.Filtering = False
                      Options.IncSearch = False
                      Options.Grouping = False
                      Options.HorzSizing = False
                      Options.Moving = False
                      Options.Sorting = False
                      Width = 30
                    end
                    object cxGrid1DBTableView2EXPORTAR: TcxGridDBColumn
                      Tag = 1
                      Caption = 'Exportar'
                      DataBinding.FieldName = 'EXPORTAR'
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Properties.Alignment = taCenter
                      Properties.ValueChecked = 'S'
                      Properties.ValueUnchecked = 'N'
                      MinWidth = 30
                      Options.Filtering = False
                      Options.IncSearch = False
                      Options.Grouping = False
                      Options.HorzSizing = False
                      Options.Moving = False
                      Options.Sorting = False
                      Width = 30
                    end
                    object cxGrid1DBTableView2SALVAR: TcxGridDBColumn
                      Tag = 1
                      Caption = 'Salvar'
                      DataBinding.FieldName = 'SALVAR'
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Properties.Alignment = taCenter
                      Properties.ValueChecked = 'S'
                      Properties.ValueUnchecked = 'N'
                      MinWidth = 30
                      Options.Filtering = False
                      Options.IncSearch = False
                      Options.Grouping = False
                      Options.HorzSizing = False
                      Options.Moving = False
                      Options.Sorting = False
                      Width = 30
                    end
                    object cxGrid1DBTableView2EXCLUIR: TcxGridDBColumn
                      Tag = 1
                      Caption = 'Excluir'
                      DataBinding.FieldName = 'EXCLUIR'
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Properties.Alignment = taCenter
                      Properties.ValueChecked = 'S'
                      Properties.ValueUnchecked = 'N'
                      MinWidth = 30
                      Options.Filtering = False
                      Options.IncSearch = False
                      Options.Grouping = False
                      Options.HorzSizing = False
                      Options.Moving = False
                      Options.Sorting = False
                      Width = 30
                    end
                    object cxGrid1DBTableView2AJUDA: TcxGridDBColumn
                      Tag = 1
                      Caption = 'Ajuda'
                      DataBinding.FieldName = 'AJUDA'
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Properties.Alignment = taCenter
                      Properties.ValueChecked = 'S'
                      Properties.ValueUnchecked = 'N'
                      MinWidth = 30
                      Options.Filtering = False
                      Options.IncSearch = False
                      Options.Grouping = False
                      Options.HorzSizing = False
                      Options.Moving = False
                      Options.Sorting = False
                      Width = 30
                    end
                  end
                  object cxGrid1Level2: TcxGridLevel
                    GridView = cxGrid1DBTableView2
                  end
                end
              end
            end
          end
          inherited cxTabSheet2: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 27
            ExplicitWidth = 710
            ExplicitHeight = 312
          end
          inherited cxTabSheet4: TcxTabSheet
            ExplicitWidth = 710
            ExplicitHeight = 312
            inherited cxDBCheckBox1: TcxDBCheckBox
              ExplicitHeight = 21
            end
            inherited ckCOMISSIONADO: TcxDBCheckBox
              ExplicitHeight = 21
            end
          end
          inherited cxTabSheet5: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 27
            ExplicitWidth = 710
            ExplicitHeight = 312
            inherited Panel3: TPanel
              Width = 710
              ExplicitWidth = 710
            end
            inherited Panel4: TPanel
              Top = 302
              Width = 710
              ExplicitTop = 302
              ExplicitWidth = 710
            end
            inherited Panel5: TPanel
              Height = 292
              ExplicitHeight = 292
            end
            inherited pnlImagem: TPanel
              Width = 700
              Height = 292
              ExplicitWidth = 700
              ExplicitHeight = 292
              inherited cxImage: TImage
                Width = 478
                Height = 292
                ExplicitWidth = 465
                ExplicitHeight = 310
              end
              inherited pnlAjuste: TPanel
                Left = 478
                Height = 292
                ExplicitLeft = 478
                ExplicitHeight = 292
                inherited ckAjustar: TcxCheckBox
                  Caption = 'Ajustar Imagem '#224' Janela'
                  ExplicitHeight = 21
                end
              end
            end
          end
          inherited cxTabSheet9: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 27
            ExplicitWidth = 710
            ExplicitHeight = 312
            inherited Label31: TLabel
              Width = 710
              ExplicitWidth = 691
            end
            inherited pnlCondPag: TPanel
              Width = 710
              Height = 295
              ExplicitWidth = 710
              ExplicitHeight = 295
              inherited Panel6: TPanel
                Height = 295
                ExplicitHeight = 295
              end
              inherited cxGrid2: TcxGrid
                Width = 597
                Height = 295
                ExplicitWidth = 597
                ExplicitHeight = 295
              end
            end
          end
          inherited tabCredito: TcxTabSheet
            ExplicitWidth = 710
            ExplicitHeight = 312
          end
          inherited cxTabSheet18: TcxTabSheet
            ExplicitWidth = 710
            ExplicitHeight = 312
            inherited cxDBMemo1: TcxDBMemo
              ExplicitWidth = 710
              ExplicitHeight = 312
              Height = 312
              Width = 710
            end
          end
          inherited cxTabSheet6: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 27
            ExplicitWidth = 710
            ExplicitHeight = 312
          end
          inherited cxTabSheet7: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 27
            ExplicitWidth = 710
            ExplicitHeight = 312
            inherited pnlLog: TPanel
              Width = 710
              Height = 312
              ExplicitWidth = 710
              ExplicitHeight = 312
              inherited Splitter1: TSplitter
                Width = 710
                ExplicitWidth = 691
              end
              inherited cxGridLog1: TcxGrid
                Width = 710
                ExplicitWidth = 710
              end
              inherited cxGridLog2: TcxGrid
                Width = 710
                Height = 228
                ExplicitWidth = 710
                ExplicitHeight = 228
              end
            end
          end
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 521
    Width = 720
    ExplicitTop = 521
    ExplicitWidth = 720
  end
  inherited dxBarManagerCad: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManagerCadBar1: TdxBar
      FloatClientWidth = 251
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
        end>
    end
    inherited dxBarManagerCadBar3: TdxBar
      FloatClientWidth = 77
      FloatClientHeight = 73
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnEmpresas'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnOcultos'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnEmail'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem4'
        end>
      Visible = False
    end
    inherited dxBarManagerCadBar4: TdxBar
      FloatClientWidth = 69
      FloatClientHeight = 22
    end
    inherited btnAdicionar: TdxBarLargeButton
      ImageIndex = 2
    end
    inherited btnAjuda: TdxBarLargeButton
      ImageIndex = 0
    end
    inherited dxBarButton7: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarSubItem4: TdxBarSubItem
      Visible = ivNever
    end
  end
  inherited cdsDados: TClientDataSet
    inherited cdsDadosDESCONTO: TFloatField
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00'
    end
    inherited cdsDadosPERCCOMIS_PROD: TFloatField
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00'
    end
    inherited cdsDadosPERCCOMIS_PECA: TFloatField
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00'
    end
    inherited cdsDadosPERCCOMIS_SERV: TFloatField
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00'
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.759567534730000000
      BuiltInReportLink = True
    end
  end
  inherited tmrLabel: TTimer
    Left = 504
    Top = 96
  end
  inherited tmrFocus2: TTimer
    Left = 232
    Top = 200
  end
  inherited memDataEntre: TdxMemData
    Left = 392
    Top = 208
  end
  inherited memCampos: TdxMemData
    Left = 384
    Top = 264
  end
  inherited memDataGraph: TdxMemData
    Left = 672
    Top = 344
  end
  inherited menuImagem: TPopupMenu
    Left = 354
    Top = 113
  end
  inherited tmrLog: TTimer
    Left = 344
    Top = 8
  end
  inherited tmrCondPag: TTimer
    Left = 144
    Top = 248
  end
  inherited OpenPictureDialog: TOpenPictureDialog
    Left = 210
    Top = 145
  end
  inherited tmrImagem: TTimer
    Left = 432
    Top = 96
  end
  object tmrPrivilegios: TTimer
    Enabled = False
    Interval = 256
    OnTimer = tmrPrivilegiosTimer
    Left = 408
    Top = 16
  end
  object dsrPrivilegios: TDataSource
    DataSet = cdsPrivilegios
    OnStateChange = dsrPrivilegiosStateChange
    Left = 272
    Top = 72
  end
  object cdsPrivilegios: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftInteger
        Name = 'CODUSUARIO'
        ParamType = ptInput
      end>
    ProviderName = 'pvUserAccess'
    RemoteServer = formPrincipal.SocketConnection
    Left = 600
    Top = 408
    object cdsPrivilegiosCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPrivilegiosCODRESOURCE: TIntegerField
      FieldName = 'CODRESOURCE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPrivilegiosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 60
    end
    object cdsPrivilegiosVISIVEL: TStringField
      FieldName = 'VISIVEL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPrivilegiosNOVO: TStringField
      FieldName = 'NOVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPrivilegiosDETALHES: TStringField
      FieldName = 'DETALHES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPrivilegiosIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPrivilegiosEXPORTAR: TStringField
      FieldName = 'EXPORTAR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPrivilegiosAJUDA: TStringField
      FieldName = 'AJUDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPrivilegiosSALVAR: TStringField
      FieldName = 'SALVAR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPrivilegiosEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
