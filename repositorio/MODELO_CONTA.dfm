inherited formContaModelo: TformContaModelo
  Left = 217
  Top = 133
  Caption = 'Contas a Pagar/Receber/Pagas/Recebidas'
  ClientHeight = 645
  ClientWidth = 822
  ExplicitTop = -212
  ExplicitWidth = 838
  ExplicitHeight = 684
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 822
    Height = 625
    ExplicitWidth = 822
    ExplicitHeight = 625
    ClientRectBottom = 624
    ClientRectRight = 821
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 820
      ExplicitHeight = 623
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 820
        ExplicitWidth = 820
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 592
        Width = 820
        ExplicitTop = 592
        ExplicitWidth = 820
      end
      inherited pnlFundoGrade: TPanel
        Width = 820
        Height = 513
        ExplicitWidth = 820
        ExplicitHeight = 513
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 491
          Width = 820
          ExplicitTop = 491
          ExplicitWidth = 820
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 820
          ExplicitWidth = 820
        end
        inherited grdDados: TcxGrid
          Width = 820
          Height = 469
          ExplicitWidth = 820
          ExplicitHeight = 469
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            DataController.KeyFieldNames = 'CODIGO'
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              Caption = '*'
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              MinWidth = 34
              Options.Filtering = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 34
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
              Options.Editing = False
              Width = 67
            end
            object cxGrid1DBTableView1BUSCA_DATAVEN: TcxGridDBColumn
              Caption = 'Vencimento'
              DataBinding.FieldName = 'BUSCA_DATAVEN'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taRightJustify
              Options.Editing = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 96
            end
            object cxGrid1DBTableView1VALOR: TcxGridDBColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'VALOR'
              HeaderAlignmentHorz = taRightJustify
              Options.Editing = False
              Width = 94
            end
            object cxGrid1DBTableView1CODMOVIMENTO: TcxGridDBColumn
              Caption = 'Venda/OS'
              DataBinding.FieldName = 'CODMOVIMENTO'
              HeaderAlignmentHorz = taRightJustify
              Options.Editing = False
              Width = 81
            end
            object cxGrid1DBTableView1NUMERO: TcxGridDBColumn
              Caption = '#'
              DataBinding.FieldName = 'NUMERO'
              HeaderAlignmentHorz = taRightJustify
              Options.Editing = False
              Width = 34
            end
            object cxGrid1DBTableView1NOME: TcxGridDBColumn
              Caption = 'Nome'
              DataBinding.FieldName = 'NOME'
              Options.Editing = False
            end
            object cxGrid1DBTableView1DOCUMENTO: TcxGridDBColumn
              Caption = 'Documento'
              DataBinding.FieldName = 'DOCUMENTO'
            end
            object cxGrid1DBTableView1CH_BANCO: TcxGridDBColumn
              Caption = 'Ch.Banco'
              DataBinding.FieldName = 'CH_BANCO'
              Options.Editing = False
            end
            object cxGrid1DBTableView1CH_NUMERO: TcxGridDBColumn
              Caption = 'Ch.N'#250'mero'
              DataBinding.FieldName = 'CH_NUMERO'
              Options.Editing = False
            end
            object cxGrid1DBTableView1NUMDOC: TcxGridDBColumn
              Caption = 'Nota Fiscal'
              DataBinding.FieldName = 'NUMDOC'
            end
            object cxGrid1DBTableView1TIPODOC: TcxGridDBColumn
              Caption = 'Tipo Fiscal'
              DataBinding.FieldName = 'TIPODOC'
            end
            object cxGrid1DBTableView1DATADOC: TcxGridDBColumn
              Caption = 'Data Emiss'#227'o'
              DataBinding.FieldName = 'DATADOC'
            end
            object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'DESCRICAO'
              Options.Editing = False
            end
            object cxGrid1DBTableView1CODANTIGO: TcxGridDBColumn
              Caption = 'C'#243'd.Controle'
              DataBinding.FieldName = 'CODANTIGO'
            end
            object cxGrid1DBTableView1PLANO: TcxGridDBColumn
              Caption = 'Plano de Contas'
              DataBinding.FieldName = 'PLANO'
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 820
      ExplicitHeight = 623
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 820
        ExplicitWidth = 820
      end
      inherited pnlEdicao: TPanel
        Width = 820
        Height = 544
        ExplicitWidth = 820
        ExplicitHeight = 548
        object pnlCODIGO: TPanel
          Left = 0
          Top = 0
          Width = 820
          Height = 49
          Align = alTop
          BevelOuter = bvNone
          Color = clCream
          ParentBackground = False
          TabOrder = 0
          object lbCODIGO: TLabel
            Left = 8
            Top = 8
            Width = 40
            Height = 13
            Caption = 'C'#243'digo'
          end
          object lbCODEMPRESA: TLabel
            Left = 104
            Top = 8
            Width = 50
            Height = 13
            Caption = 'Empresa'
          end
          object dedCODIGO: TcxDBTextEdit
            Left = 7
            Top = 23
            TabStop = False
            DataBinding.DataField = 'CODIGO'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 0
            Width = 82
          end
          object dedCODEMPRESA: TcxDBTextEdit
            Left = 103
            Top = 23
            TabStop = False
            DataBinding.DataField = 'CODEMPRESA'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 1
            Width = 50
          end
          object dedEMPRESA: TcxTextEdit
            Left = 168
            Top = 23
            TabStop = False
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 2
            Width = 337
          end
        end
        object pnlCliente: TPanel
          Left = 0
          Top = 49
          Width = 820
          Height = 43
          Align = alTop
          BevelOuter = bvNone
          Color = clCream
          ParentBackground = False
          TabOrder = 1
          object lbCODCLIENTE: TLabel
            Left = 8
            Top = 0
            Width = 40
            Height = 13
            Cursor = crHandPoint
            Caption = 'Pessoa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = lbCODCLIENTEClick
            OnMouseEnter = lbModeloMouseEnter
            OnMouseLeave = lbModeloMouseLeave
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 7
            Top = 15
            TabStop = False
            DataBinding.DataField = 'NOME'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 0
            Width = 498
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 92
          Width = 820
          Height = 452
          Align = alClient
          TabOrder = 2
          Properties.ActivePage = cxTabSheet1
          LookAndFeel.NativeStyle = True
          OnChange = cxPageControl1Change
          ExplicitHeight = 456
          ClientRectBottom = 448
          ClientRectLeft = 4
          ClientRectRight = 816
          ClientRectTop = 24
          object cxTabSheet1: TcxTabSheet
            Caption = 'Conta'
            ImageIndex = 0
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object pnlVendaOS: TPanel
              Left = 0
              Top = 0
              Width = 814
              Height = 57
              Align = alTop
              BevelOuter = bvNone
              Color = clCream
              TabOrder = 0
              object lbCODMOVIMENTO: TLabel
                Left = 8
                Top = 16
                Width = 62
                Height = 13
                Caption = 'Movimento'
              end
              object lbNUMERO: TLabel
                Left = 80
                Top = 16
                Width = 42
                Height = 13
                Caption = 'Parcela'
              end
              object Label1: TLabel
                Left = 144
                Top = 16
                Width = 40
                Height = 13
                Caption = 'Cliente'
              end
              object dedCODMOVIMENTO: TcxDBTextEdit
                Left = 7
                Top = 31
                TabStop = False
                DataBinding.DataField = 'CODMOVIMENTO'
                DataBinding.DataSource = dsrDados
                Properties.ReadOnly = True
                Style.Color = clBtnFace
                TabOrder = 0
                Width = 58
              end
              object dedNUMERO: TcxDBTextEdit
                Left = 79
                Top = 31
                TabStop = False
                DataBinding.DataField = 'NUMERO'
                DataBinding.DataSource = dsrDados
                Properties.ReadOnly = True
                Style.Color = clBtnFace
                TabOrder = 1
                Width = 50
              end
              object dedCLIENTE2: TcxTextEdit
                Left = 143
                Top = 31
                TabStop = False
                Properties.ReadOnly = True
                Style.Color = clBtnFace
                TabOrder = 2
                Text = 'dedCLIENTE2'
                Width = 362
              end
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 814
                Height = 15
                Align = alTop
                Alignment = taLeftJustify
                BevelOuter = bvNone
                Caption = '  Este pagamento est'#225' vinculado (veja a guia Movimento)'
                Color = clMoneyGreen
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
              end
            end
            object pnlHISTORICO: TPanel
              Left = 0
              Top = 57
              Width = 814
              Height = 84
              Align = alTop
              BevelOuter = bvNone
              Color = clCream
              TabOrder = 1
              object lbCADAST: TLabel
                Left = 360
                Top = 5
                Width = 101
                Height = 13
                Caption = 'Data de Cadastro'
              end
              object Label11: TLabel
                Left = 8
                Top = 5
                Width = 49
                Height = 13
                Cursor = crHandPoint
                Caption = 'Hist'#243'rico'
                FocusControl = cxDBTextEdit10
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = Label11Click
                OnMouseEnter = lbModeloMouseEnter
                OnMouseLeave = lbModeloMouseLeave
              end
              object Label12: TLabel
                Left = 8
                Top = 45
                Width = 56
                Height = 13
                Caption = 'Descri'#231#227'o'
                FocusControl = cxDBTextEdit11
              end
              object Label31: TLabel
                Left = 400
                Top = 45
                Width = 76
                Height = 13
                Caption = 'C'#243'd.Controle'
                FocusControl = cxDBTextEdit25
              end
              object dedCADAST: TcxDBTextEdit
                Left = 359
                Top = 20
                TabStop = False
                DataBinding.DataField = 'DATACADAST'
                DataBinding.DataSource = dsrDados
                Properties.ReadOnly = True
                Style.Color = clBtnFace
                TabOrder = 0
                Width = 146
              end
              object cxDBTextEdit10: TcxDBTextEdit
                Left = 7
                Top = 20
                TabStop = False
                DataBinding.DataField = 'HISTORICOPAGAMENTO'
                DataBinding.DataSource = dsrDados
                Properties.CharCase = ecUpperCase
                Properties.ReadOnly = True
                Style.Color = clBtnFace
                TabOrder = 1
                Width = 338
              end
              object cxDBTextEdit11: TcxDBTextEdit
                Left = 7
                Top = 60
                DataBinding.DataField = 'DESCRICAO'
                DataBinding.DataSource = dsrDados
                Properties.CharCase = ecUpperCase
                TabOrder = 2
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 378
              end
              object cxCentros: TcxCheckBox
                Left = 170
                Top = 0
                Caption = 'Detalhes do Hist'#243'rico'
                TabOrder = 4
                OnClick = cxCentrosClick
                Width = 175
              end
              object cxDBTextEdit25: TcxDBTextEdit
                Left = 398
                Top = 60
                DataBinding.DataField = 'CODANTIGO'
                DataBinding.DataSource = dsrDados
                TabOrder = 3
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 107
              end
            end
            object pnlVencimento: TPanel
              Left = 0
              Top = 141
              Width = 814
              Height = 126
              Align = alTop
              BevelOuter = bvNone
              Color = clCream
              TabOrder = 2
              object lbDOCUMENTO: TLabel
                Left = 8
                Top = 0
                Width = 65
                Height = 13
                Caption = 'Documento'
                FocusControl = dedDOCUMENTO
              end
              object lbVALOR: TLabel
                Left = 224
                Top = 0
                Width = 29
                Height = 13
                Caption = 'Valor'
                FocusControl = dedVALOR
              end
              object lbVENCIMENTO: TLabel
                Left = 360
                Top = 0
                Width = 115
                Height = 13
                Caption = 'Data de Vencimento'
                FocusControl = dedVENCIMENTO
              end
              object Label3: TLabel
                Left = 8
                Top = 40
                Width = 61
                Height = 13
                Caption = 'Nota Fiscal'
                FocusControl = cxDBTextEdit12
              end
              object Label25: TLabel
                Left = 157
                Top = 40
                Width = 96
                Height = 13
                Caption = 'Data da Emiss'#227'o'
                FocusControl = cxDBDateEdit1
              end
              object Label26: TLabel
                Left = 287
                Top = 38
                Width = 70
                Height = 13
                Caption = 'Exclu'#237'do por'
                FocusControl = cxDBTextEdit23
              end
              object Label27: TLabel
                Left = 391
                Top = 40
                Width = 81
                Height = 13
                Caption = 'Data Exclus'#227'o'
                FocusControl = cxDBTextEdit24
              end
              object Label32: TLabel
                Left = 104
                Top = 40
                Width = 24
                Height = 13
                Caption = 'Tipo'
                FocusControl = cxDBTextEdit26
              end
              object Label33: TLabel
                Left = 8
                Top = 82
                Width = 133
                Height = 13
                Caption = 'Informa'#231#245'es Adicionais'
                FocusControl = dedINFODOC
              end
              object dedDOCUMENTO: TcxDBLookupComboBox
                Left = 7
                Top = 15
                DataBinding.DataField = 'CODDOCUMENTO'
                DataBinding.DataSource = dsrDados
                Properties.ImmediatePost = True
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    FieldName = 'DOCUMENTO'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = formPrincipal.dsrDocumentos
                Properties.ReadOnly = False
                TabOrder = 0
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 201
              end
              object dedVALOR: TcxDBTextEdit
                Left = 222
                Top = 15
                DataBinding.DataField = 'VALOR'
                DataBinding.DataSource = dsrDados
                TabOrder = 1
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 121
              end
              object dedVENCIMENTO: TcxDBDateEdit
                Left = 358
                Top = 15
                DataBinding.DataField = 'DATAVENCIMENTO'
                DataBinding.DataSource = dsrDados
                Properties.DateButtons = [btnClear, btnToday]
                Properties.ImmediatePost = True
                Properties.SaveTime = False
                Properties.ShowTime = False
                TabOrder = 2
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 146
              end
              object cxDBTextEdit12: TcxDBTextEdit
                Left = 7
                Top = 55
                DataBinding.DataField = 'NUMDOC'
                DataBinding.DataSource = dsrDados
                TabOrder = 3
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 85
              end
              object cxDBDateEdit1: TcxDBDateEdit
                Left = 156
                Top = 55
                DataBinding.DataField = 'DATADOC'
                DataBinding.DataSource = dsrDados
                Properties.DateButtons = [btnClear, btnToday]
                Properties.ImmediatePost = True
                Properties.SaveTime = False
                Properties.ShowTime = False
                TabOrder = 4
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 114
              end
              object cxDBTextEdit23: TcxDBTextEdit
                Left = 286
                Top = 54
                DataBinding.DataField = 'EXCLUSAO_NOMEUSER'
                DataBinding.DataSource = dsrDados
                Properties.ReadOnly = True
                TabOrder = 5
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 98
              end
              object cxDBTextEdit24: TcxDBTextEdit
                Left = 390
                Top = 54
                DataBinding.DataField = 'EXCLUSAO_DATAHORA'
                DataBinding.DataSource = dsrDados
                Properties.ReadOnly = True
                TabOrder = 6
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 114
              end
              object cxDBTextEdit26: TcxDBTextEdit
                Left = 103
                Top = 55
                DataBinding.DataField = 'TIPODOC'
                DataBinding.DataSource = dsrDados
                Properties.ReadOnly = True
                TabOrder = 7
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 42
              end
              object dedINFODOC: TcxDBTextEdit
                Left = 7
                Top = 97
                DataBinding.DataField = 'INFODOC'
                DataBinding.DataSource = dsrDados
                Properties.CharCase = ecUpperCase
                TabOrder = 8
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 496
              end
            end
            object pnlCentros: TPanel
              Left = 0
              Top = 267
              Width = 814
              Height = 59
              Align = alTop
              BevelOuter = bvNone
              Color = clCream
              TabOrder = 3
              object Label2: TLabel
                Left = 8
                Top = 16
                Width = 39
                Height = 13
                Caption = 'Centro'
                FocusControl = dlbCentro
              end
              object lbPlanConta: TLabel
                Left = 224
                Top = 16
                Width = 87
                Height = 13
                Cursor = crHandPoint
                Caption = 'Conta no Plano'
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = lbPlanContaClick
                OnMouseEnter = lbModeloMouseEnter
                OnMouseLeave = lbModeloMouseLeave
              end
              object dlbCentro: TcxDBLookupComboBox
                Left = 7
                Top = 31
                DataBinding.DataField = 'CODCENTRO'
                DataBinding.DataSource = dsrDados
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    FieldName = 'DESCRICAO'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dsrCentros
                Properties.ReadOnly = False
                TabOrder = 0
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 201
              end
              object cxDBTextEdit2: TcxDBTextEdit
                Left = 223
                Top = 31
                TabStop = False
                DataBinding.DataField = 'PLANO'
                DataBinding.DataSource = dsrDados
                Properties.ReadOnly = True
                Style.Color = clBtnFace
                TabOrder = 1
                Width = 282
              end
              object Panel2: TPanel
                Left = 0
                Top = 0
                Width = 814
                Height = 15
                Align = alTop
                Alignment = taLeftJustify
                BevelOuter = bvNone
                Caption = '  Classifica'#231#227'o do Pagamento'
                Color = clSilver
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
              end
            end
            object pnlCheque: TPanel
              Left = 0
              Top = 326
              Width = 814
              Height = 99
              Align = alTop
              BevelOuter = bvNone
              Color = clCream
              TabOrder = 4
              object Label4: TLabel
                Left = 8
                Top = 16
                Width = 35
                Height = 13
                Caption = 'Banco'
                FocusControl = cxDBTextEdit3
              end
              object Label5: TLabel
                Left = 72
                Top = 16
                Width = 45
                Height = 13
                Caption = 'Ag'#234'ncia'
                FocusControl = cxDBTextEdit4
              end
              object Label6: TLabel
                Left = 144
                Top = 16
                Width = 34
                Height = 13
                Caption = 'Conta'
                FocusControl = cxDBTextEdit5
              end
              object Label7: TLabel
                Left = 240
                Top = 16
                Width = 30
                Height = 13
                Caption = 'S'#233'rie'
                FocusControl = cxDBTextEdit6
              end
              object Label8: TLabel
                Left = 336
                Top = 16
                Width = 45
                Height = 13
                Caption = 'N'#250'mero'
                FocusControl = cxDBTextEdit7
              end
              object Label9: TLabel
                Left = 8
                Top = 56
                Width = 33
                Height = 13
                Caption = 'Nome'
                FocusControl = cxDBTextEdit8
              end
              object Label10: TLabel
                Left = 240
                Top = 56
                Width = 152
                Height = 13
                Caption = 'Documento (CNPJ ou CPF)'
                FocusControl = cxDBTextEdit9
              end
              object cxDBTextEdit3: TcxDBTextEdit
                Left = 7
                Top = 31
                DataBinding.DataField = 'CH_BANCO'
                DataBinding.DataSource = dsrDados
                Properties.CharCase = ecUpperCase
                TabOrder = 0
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 50
              end
              object Panel3: TPanel
                Left = 0
                Top = 0
                Width = 814
                Height = 15
                Align = alTop
                Alignment = taLeftJustify
                BevelOuter = bvNone
                Caption = '  Cheque'
                Color = clSkyBlue
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object cxDBTextEdit4: TcxDBTextEdit
                Left = 71
                Top = 31
                DataBinding.DataField = 'CH_AGENCIA'
                DataBinding.DataSource = dsrDados
                Properties.CharCase = ecUpperCase
                TabOrder = 2
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 58
              end
              object cxDBTextEdit5: TcxDBTextEdit
                Left = 143
                Top = 31
                DataBinding.DataField = 'CH_CONTA'
                DataBinding.DataSource = dsrDados
                Properties.CharCase = ecUpperCase
                TabOrder = 3
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 82
              end
              object cxDBTextEdit6: TcxDBTextEdit
                Left = 239
                Top = 31
                DataBinding.DataField = 'CH_SERIE'
                DataBinding.DataSource = dsrDados
                Properties.CharCase = ecUpperCase
                TabOrder = 4
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 82
              end
              object cxDBTextEdit7: TcxDBTextEdit
                Left = 335
                Top = 31
                DataBinding.DataField = 'CH_NUMERO'
                DataBinding.DataSource = dsrDados
                Properties.CharCase = ecUpperCase
                TabOrder = 5
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 90
              end
              object cxDBTextEdit8: TcxDBTextEdit
                Left = 7
                Top = 71
                DataBinding.DataField = 'CH_NOME'
                DataBinding.DataSource = dsrDados
                Properties.CharCase = ecUpperCase
                TabOrder = 6
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 218
              end
              object cxDBTextEdit9: TcxDBTextEdit
                Left = 239
                Top = 71
                DataBinding.DataField = 'CH_DOC'
                DataBinding.DataSource = dsrDados
                Properties.CharCase = ecUpperCase
                TabOrder = 7
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 186
              end
            end
          end
          object tabDatas: TcxTabSheet
            Caption = 'Datas'
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel7: TPanel
              Left = 185
              Top = 0
              Width = 629
              Height = 430
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object Panel9: TPanel
                Left = 0
                Top = 0
                Width = 629
                Height = 105
                Align = alTop
                BevelOuter = bvLowered
                Color = clCream
                TabOrder = 0
                object Label23: TLabel
                  Left = 27
                  Top = 8
                  Width = 118
                  Height = 13
                  Caption = 'Primeiro Vencimento'
                  FocusControl = dedDATAVENCIMENTO
                end
                object Label24: TLabel
                  Left = 27
                  Top = 48
                  Width = 216
                  Height = 13
                  Caption = 'Condi'#231#227'o de repeti'#231#227'o do lan'#231'amento'
                  FocusControl = cxDBTextEdit22
                end
                object dedDATAVENCIMENTO: TcxDBDateEdit
                  Left = 27
                  Top = 23
                  DataBinding.DataField = 'DATAVENCIMENTO'
                  DataBinding.DataSource = dsrDados
                  Properties.DateButtons = [btnClear, btnToday]
                  Properties.ImmediatePost = True
                  Properties.SaveTime = False
                  Properties.ShowTime = False
                  TabOrder = 0
                  OnEnter = edtPesquisar2Enter
                  OnExit = edtPesquisar2Exit
                  Width = 146
                end
                object cxDBTextEdit22: TcxDBTextEdit
                  Left = 27
                  Top = 63
                  TabStop = False
                  DataBinding.DataField = 'CONDPAG'
                  DataBinding.DataSource = dsrDados
                  Properties.ReadOnly = True
                  Style.Color = clBtnFace
                  TabOrder = 1
                  OnEnter = edtPesquisar2Enter
                  OnExit = edtPesquisar2Exit
                  Width = 294
                end
              end
              object Panel10: TPanel
                Left = 0
                Top = 105
                Width = 629
                Height = 325
                Align = alClient
                BevelOuter = bvLowered
                Caption = 'Panel10'
                TabOrder = 1
                object cxGrid1: TcxGrid
                  Left = 1
                  Top = 1
                  Width = 627
                  Height = 323
                  Align = alClient
                  TabOrder = 0
                  LookAndFeel.NativeStyle = True
                  object cxGridDBTableView1: TcxGridDBTableView
                    DataController.DataSource = dsrFuturos
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsView.GroupByBox = False
                    OptionsView.Indicator = True
                    object cxGridDBColumn1: TcxGridDBColumn
                      Tag = 2
                      Caption = 'Vencimentos Futuros'
                      DataBinding.FieldName = 'DATA'
                      PropertiesClassName = 'TcxDateEditProperties'
                      Properties.SaveTime = False
                      Properties.ShowTime = False
                      OnSetStoredPropertyValue = cxGridDBColumn1SetStoredPropertyValue
                      Options.Filtering = False
                      Options.FilteringMRUItemsList = False
                      Options.IncSearch = False
                      Options.Grouping = False
                      Options.Moving = False
                      Options.Sorting = False
                      SortIndex = 0
                      SortOrder = soAscending
                      Width = 160
                    end
                  end
                  object cxGridLevel1: TcxGridLevel
                    GridView = cxGridDBTableView1
                  end
                end
              end
            end
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 185
              Height = 430
              Align = alLeft
              BevelOuter = bvNone
              Color = clCream
              TabOrder = 1
              object cxButton1: TcxButton
                Left = 16
                Top = 16
                Width = 137
                Height = 25
                Caption = 'Adicionar'
                LookAndFeel.NativeStyle = True
                TabOrder = 0
                DragCursor = crHandPoint
                OnClick = cxButton1Click
              end
              object cxButton2: TcxButton
                Left = 16
                Top = 56
                Width = 137
                Height = 25
                Caption = 'Remover'
                LookAndFeel.NativeStyle = True
                TabOrder = 1
                DragCursor = crHandPoint
                OnClick = cxButton2Click
              end
            end
          end
          object tabItens: TcxTabSheet
            Caption = 'Movimento'
            ImageIndex = 3
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 814
              Height = 97
              Align = alTop
              BevelOuter = bvNone
              Color = clCream
              TabOrder = 0
              object Label13: TLabel
                Left = 8
                Top = 8
                Width = 62
                Height = 13
                Caption = 'Movimento'
              end
              object Label14: TLabel
                Left = 80
                Top = 8
                Width = 42
                Height = 13
                Caption = 'Parcela'
              end
              object Label15: TLabel
                Left = 8
                Top = 48
                Width = 40
                Height = 13
                Caption = 'Cliente'
              end
              object Label16: TLabel
                Left = 136
                Top = 8
                Width = 36
                Height = 13
                Caption = 'Status'
              end
              object Label17: TLabel
                Left = 280
                Top = 8
                Width = 44
                Height = 13
                Caption = 'N'#250'm.NF'
              end
              object Label18: TLabel
                Left = 360
                Top = 8
                Width = 47
                Height = 13
                Caption = 'Emiss'#227'o'
              end
              object Label19: TLabel
                Left = 440
                Top = 8
                Width = 51
                Height = 13
                Caption = 'Natureza'
              end
              object Label20: TLabel
                Left = 360
                Top = 48
                Width = 34
                Height = 13
                Caption = 'Tipo F'
              end
              object Label22: TLabel
                Left = 442
                Top = 48
                Width = 60
                Height = 13
                Alignment = taRightJustify
                Caption = 'Valor Total'
              end
              object cxDBTextEdit13: TcxDBTextEdit
                Left = 7
                Top = 23
                TabStop = False
                DataBinding.DataField = 'CODMOVIMENTO'
                DataBinding.DataSource = dsrDados
                Properties.ReadOnly = True
                Style.Color = clBtnFace
                TabOrder = 0
                Width = 66
              end
              object cxDBTextEdit14: TcxDBTextEdit
                Left = 79
                Top = 23
                TabStop = False
                DataBinding.DataField = 'NUMERO'
                DataBinding.DataSource = dsrDados
                Properties.ReadOnly = True
                Style.Color = clBtnFace
                TabOrder = 1
                Width = 42
              end
              object cxDBTextEdit15: TcxDBTextEdit
                Left = 135
                Top = 23
                TabStop = False
                DataBinding.DataField = 'STATUS'
                DataBinding.DataSource = dsrMovInfo
                Properties.ReadOnly = True
                Style.Color = clBtnFace
                TabOrder = 2
                Width = 122
              end
              object cxDBTextEdit16: TcxDBTextEdit
                Left = 279
                Top = 23
                TabStop = False
                DataBinding.DataField = 'NOTA_NUMERO'
                DataBinding.DataSource = dsrMovInfo
                Properties.ReadOnly = True
                Style.Color = clBtnFace
                TabOrder = 3
                Width = 66
              end
              object cxDBTextEdit17: TcxDBTextEdit
                Left = 359
                Top = 23
                TabStop = False
                DataBinding.DataField = 'NOTA_DATAEMISSAO'
                DataBinding.DataSource = dsrMovInfo
                Properties.ReadOnly = True
                Style.Color = clBtnFace
                TabOrder = 4
                Width = 66
              end
              object cxDBTextEdit18: TcxDBTextEdit
                Left = 439
                Top = 23
                TabStop = False
                DataBinding.DataField = 'NOTA_CODNATUOPER'
                DataBinding.DataSource = dsrMovInfo
                Properties.ReadOnly = True
                Style.Color = clBtnFace
                TabOrder = 5
                Width = 66
              end
              object cxDBTextEdit19: TcxDBTextEdit
                Left = 359
                Top = 63
                TabStop = False
                DataBinding.DataField = 'TIPODOC'
                DataBinding.DataSource = dsrMovInfo
                Properties.ReadOnly = True
                Style.Color = clBtnFace
                TabOrder = 6
                Width = 42
              end
              object cxDBTextEdit20: TcxDBTextEdit
                Left = 415
                Top = 63
                TabStop = False
                DataBinding.DataField = 'NOTA_VALOR_TOTAL'
                DataBinding.DataSource = dsrMovInfo
                Properties.ReadOnly = True
                Style.Color = clBtnFace
                TabOrder = 7
                Width = 90
              end
              object cxDBTextEdit21: TcxDBTextEdit
                Left = 7
                Top = 63
                TabStop = False
                DataBinding.DataField = 'NOME'
                DataBinding.DataSource = dsrDados
                Properties.ReadOnly = True
                Style.Color = clBtnFace
                TabOrder = 8
                Width = 338
              end
            end
            object pnlItens: TPanel
              Left = 0
              Top = 97
              Width = 814
              Height = 333
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Carregando...'
              Color = clCream
              TabOrder = 1
              Visible = False
              object grdItens: TcxGrid
                Left = 0
                Top = 0
                Width = 814
                Height = 333
                Align = alClient
                TabOrder = 0
                LookAndFeel.NativeStyle = True
                object grdItensDBTableView2: TcxGridDBTableView
                  DataController.DataSource = dmoOS.dsrItens
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  object grdItensDBTableView2BARRA: TcxGridDBColumn
                    Tag = 1
                    Caption = 'C'#243'd.Barras'
                    DataBinding.FieldName = 'BARRA'
                    Width = 114
                  end
                  object grdItensDBTableView2DESCRICAO: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Descri'#231#227'o'
                    DataBinding.FieldName = 'DESCRICAO2'
                    Width = 373
                  end
                  object grdItensDBTableView2QUANTIDADE: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Quant'
                    DataBinding.FieldName = 'QUANTIDADE'
                    Width = 64
                  end
                  object grdItensDBTableView2VALOR_PAGO: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Valor'
                    DataBinding.FieldName = 'VALOR_PAGO'
                  end
                end
                object grdItensLevel2: TcxGridLevel
                  GridView = grdItensDBTableView2
                end
              end
            end
          end
          object cxTabSheet2: TcxTabSheet
            Caption = #218'ltimo Log'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label21: TLabel
              Left = 8
              Top = 8
              Width = 47
              Height = 13
              Caption = 'Registro'
              FocusControl = cxDBMaskEdit1
              Transparent = True
            end
            object Label29: TLabel
              Left = 8
              Top = 48
              Width = 71
              Height = 13
              Caption = 'Computador'
              FocusControl = cxDBMaskEdit3
              Transparent = True
            end
            object Label28: TLabel
              Left = 168
              Top = 8
              Width = 43
              Height = 13
              Caption = 'Usu'#225'rio'
              FocusControl = cxDBMaskEdit2
              Transparent = True
            end
            object Label30: TLabel
              Left = 168
              Top = 48
              Width = 127
              Height = 13
              Caption = 'Data (no computador)'
              FocusControl = cxDBMaskEdit4
              Transparent = True
            end
            object cxDBMaskEdit1: TcxDBMaskEdit
              Left = 7
              Top = 23
              DataBinding.DataField = 'LOG_TIPO'
              DataBinding.DataSource = dsrDados
              Properties.MaxLength = 0
              Style.Color = clBtnFace
              TabOrder = 0
              Width = 146
            end
            object cxDBMaskEdit3: TcxDBMaskEdit
              Left = 7
              Top = 63
              DataBinding.DataField = 'LOG_MAQUINA'
              DataBinding.DataSource = dsrDados
              Properties.MaxLength = 0
              Style.Color = clBtnFace
              TabOrder = 1
              Width = 146
            end
            object cxDBMaskEdit2: TcxDBMaskEdit
              Left = 167
              Top = 23
              DataBinding.DataField = 'LOG_USUARIO'
              DataBinding.DataSource = dsrDados
              Properties.MaxLength = 0
              Style.Color = clBtnFace
              TabOrder = 2
              Width = 146
            end
            object cxDBMaskEdit4: TcxDBMaskEdit
              Left = 167
              Top = 63
              DataBinding.DataField = 'LOG_DATAREMOTO'
              DataBinding.DataSource = dsrDados
              Properties.MaxLength = 0
              Style.Color = clBtnFace
              TabOrder = 3
              Width = 146
            end
          end
          object cxTabSheet3: TcxTabSheet
            Caption = 'Outros Logs'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object pnlLog: TPanel
              Left = 0
              Top = 0
              Width = 814
              Height = 430
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Nenhum registro de Log'
              TabOrder = 0
              object Splitter1: TSplitter
                Left = 0
                Top = 81
                Width = 814
                Height = 3
                Cursor = crVSplit
                Align = alTop
                ExplicitWidth = 672
              end
              object cxGridLog1: TcxGrid
                Left = 0
                Top = 0
                Width = 814
                Height = 81
                Align = alTop
                TabOrder = 0
                LookAndFeel.NativeStyle = True
                object DBTableView1: TcxGridDBTableView
                  DataController.DataSource = dmoLog.dsrLog1
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsCustomize.ColumnFiltering = False
                  OptionsCustomize.ColumnGrouping = False
                  OptionsCustomize.ColumnHidingOnGrouping = False
                  OptionsCustomize.ColumnSorting = False
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsSelection.CellSelect = False
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  object DBTableView1LOG_TIPO: TcxGridDBColumn
                    Caption = 'Registro'
                    DataBinding.FieldName = 'LOG_TIPO'
                    Width = 117
                  end
                  object DBTableView1LOG_USUARIO: TcxGridDBColumn
                    Caption = 'Usu'#225'rio'
                    DataBinding.FieldName = 'LOG_USUARIO'
                    Width = 159
                  end
                  object DBTableView1LOG_MAQUINA: TcxGridDBColumn
                    Caption = 'M'#225'quina'
                    DataBinding.FieldName = 'LOG_MAQUINA'
                  end
                  object DBTableView1LOG_DATAREMOTO: TcxGridDBColumn
                    Caption = 'Data Remoto'
                    DataBinding.FieldName = 'LOG_DATAREMOTO'
                    Width = 170
                  end
                  object DBTableView1LOG_DATASERVIDOR: TcxGridDBColumn
                    Caption = 'Data Servidor'
                    DataBinding.FieldName = 'LOG_DATASERVIDOR'
                    Width = 170
                  end
                end
                object Level1: TcxGridLevel
                  GridView = DBTableView1
                end
              end
              object cxGridLog2: TcxGrid
                Left = 0
                Top = 84
                Width = 814
                Height = 346
                Align = alClient
                TabOrder = 1
                LookAndFeel.NativeStyle = True
                object cxGrid2DBTableView2: TcxGridDBTableView
                  DataController.DataSource = dmoLog.dsrLog2
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsCustomize.ColumnFiltering = False
                  OptionsCustomize.ColumnGrouping = False
                  OptionsCustomize.ColumnHidingOnGrouping = False
                  OptionsCustomize.ColumnSorting = False
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsSelection.CellSelect = False
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  object cxGrid2DBTableView2LOG_CAMPO: TcxGridDBColumn
                    Caption = 'Campo'
                    DataBinding.FieldName = 'LOG_CAMPO'
                    Width = 185
                  end
                  object cxGrid2DBTableView2LOG_VALORANTIGO: TcxGridDBColumn
                    Caption = 'Valor Anterior'
                    DataBinding.FieldName = 'LOG_VALORANTIGO'
                    Width = 221
                  end
                  object cxGrid2DBTableView2LOG_VALORNOVO: TcxGridDBColumn
                    Caption = 'Valor Novo'
                    DataBinding.FieldName = 'LOG_VALORNOVO'
                    Width = 240
                  end
                end
                object cxGrid2Level2: TcxGridLevel
                  GridView = cxGrid2DBTableView2
                end
              end
            end
          end
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 625
    Width = 822
    ExplicitTop = 625
    ExplicitWidth = 822
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 400
    Top = 215
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManagerCadBar1: TdxBar
      FloatClientWidth = 251
      FloatClientHeight = 45
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmbSelecionar'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 139
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
    inherited dxBarManagerCadBar2: TdxBar
      FloatClientHeight = 280
    end
    inherited dxBarManagerCadBar3: TdxBar
      FloatClientWidth = 23
      FloatClientHeight = 22
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
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnBaixar'
        end>
      OldName = 'Links'
    end
    inherited dxBarManagerCadBar4: TdxBar
      FloatClientWidth = 69
      FloatClientHeight = 22
      OldName = 'Where'
    end
    inherited dxBarManagerCadBar5: TdxBar
      FloatClientWidth = 88
      FloatClientHeight = 223
      OldName = 'BotoesDetalhes'
    end
    inherited btnAdicionar: TdxBarLargeButton
      ImageIndex = 2
    end
    inherited edtSelecionar: TdxBarEdit
      Width = 70
    end
    inherited cmbSelecionar: TdxBarCombo
      Tag = 5
    end
    inherited btnAjuda: TdxBarLargeButton
      SyncImageIndex = False
      ImageIndex = 0
    end
    object btnBaixar: TdxBarButton
      Tag = 11
      Caption = '&Baixar'
      Category = 0
      Hint = 'Baixar'
      Visible = ivAlways
      ImageIndex = 26
      PaintStyle = psCaptionGlyph
      OnClick = btnBaixarClick
    end
    object btnConjunto: TdxBarButton
      Caption = '&Criar Conjunto'
      Category = 0
      Hint = 'Criar Conjunto'
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = btnConjuntoClick
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Relat'#243'rio'
      Category = 0
      Hint = 'Relat'#243'rio'
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton6Click
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Imprimir &Duplicata(s)'
      Category = 0
      Hint = 'Imprimir Duplicata(s)'
      Visible = ivAlways
      OnClick = dxBarButton7Click
    end
  end
  inherited cdsDados: TClientDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'TOTALSEL'
        Expression = 'SUM(TOTAL_PAGO)'
        Visible = False
      end>
    AggregatesActive = True
    CommandText = 
      'SELECT '#39'N'#39' AS SEL, PAGAMENTOS.*, CAST(PAGAMENTOS.DATACADAST AS D' +
      'ATE) AS BUSCA_DATACAD, CAST(PAGAMENTOS.DATAVENCIMENTO AS DATE) A' +
      'S BUSCA_DATAVEN, CAST(PAGAMENTOS.DATAPAGO AS DATE) AS BUSCA_DATA' +
      'PAG, CLIENTES.NOME, UDF_TRIM(PLANCONTAS.CODPLANO) || '#39' '#39' || PLAN' +
      'CONTAS.DESCRICAO AS PLANO, HISTORICOPAG.DESCRICAO AS HISTORICOPA' +
      'GAMENTO, DOCUMENTOS.DOCUMENTO FROM PAGAMENTOS JOIN CLIENTES ON (' +
      'CLIENTES.CODIGO = PAGAMENTOS.CODCLIENTE) JOIN DOCUMENTOS ON (DOC' +
      'UMENTOS.CODIGO = PAGAMENTOS.CODDOCUMENTO) LEFT JOIN PLANCONTAS O' +
      'N (PLANCONTAS.CODIGO = PAGAMENTOS.CODPLANO) LEFT JOIN HISTORICOP' +
      'AG ON (HISTORICOPAG.CODIGO = PAGAMENTOS.CODHISTORICO)'
    ProviderName = 'pvPagamentos'
    Left = 584
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
    end
    object cdsDadosNUMERO: TSmallintField
      FieldName = 'NUMERO'
      Required = True
      DisplayFormat = '0#'
    end
    object cdsDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsDadosES: TSmallintField
      FieldName = 'ES'
      Required = True
    end
    object cdsDadosDATACADAST: TSQLTimeStampField
      FieldName = 'DATACADAST'
    end
    object cdsDadosVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsDadosCODDOCUMENTO: TIntegerField
      DisplayLabel = 'Documento'
      FieldName = 'CODDOCUMENTO'
      Required = True
      OnChange = cdsDadosCODDOCUMENTOChange
    end
    object cdsDadosINFODOC: TStringField
      FieldName = 'INFODOC'
      FixedChar = True
      Size = 50
    end
    object cdsDadosEXTERNO: TStringField
      FieldName = 'EXTERNO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosARQUIVO: TStringField
      FieldName = 'ARQUIVO'
      FixedChar = True
      Size = 50
    end
    object cdsDadosHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 1024
    end
    object cdsDadosPAGO: TSmallintField
      FieldName = 'PAGO'
      Required = True
    end
    object cdsDadosDATAPAGO: TSQLTimeStampField
      FieldName = 'DATAPAGO'
    end
    object cdsDadosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsDadosMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
    end
    object cdsDadosTOTAL_PAGO: TFloatField
      FieldName = 'TOTAL_PAGO'
      ProviderFlags = []
    end
    object cdsDadosDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object cdsDadosSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 30
    end
    object cdsDadosSALDOANT: TFloatField
      FieldName = 'SALDOANT'
    end
    object cdsDadosSALDOATU: TFloatField
      FieldName = 'SALDOATU'
    end
    object cdsDadosCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
      Required = True
    end
    object cdsDadosCODLANCTO: TIntegerField
      FieldName = 'CODLANCTO'
    end
    object cdsDadosNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      FixedChar = True
      Size = 30
    end
    object cdsDadosCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
      Required = True
    end
    object cdsDadosVALOR_COMISSAO: TFloatField
      FieldName = 'VALOR_COMISSAO'
    end
    object cdsDadosTIPO_PAG: TStringField
      FieldName = 'TIPO_PAG'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosCH_BANCO: TIntegerField
      FieldName = 'CH_BANCO'
    end
    object cdsDadosCH_AGENCIA: TIntegerField
      FieldName = 'CH_AGENCIA'
    end
    object cdsDadosCH_CONTA: TIntegerField
      FieldName = 'CH_CONTA'
    end
    object cdsDadosCH_SERIE: TStringField
      FieldName = 'CH_SERIE'
      FixedChar = True
      Size = 10
    end
    object cdsDadosCH_NUMERO: TIntegerField
      FieldName = 'CH_NUMERO'
    end
    object cdsDadosCODCENTRO: TIntegerField
      FieldName = 'CODCENTRO'
      Required = True
    end
    object cdsDadosCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsDadosCODPLANO: TIntegerField
      FieldName = 'CODPLANO'
    end
    object cdsDadosESTORNO_CODUSUARIO: TIntegerField
      FieldName = 'ESTORNO_CODUSUARIO'
    end
    object cdsDadosESTORNO_DATA: TSQLTimeStampField
      FieldName = 'ESTORNO_DATA'
    end
    object cdsDadosESTORNO_CODESTORNO: TIntegerField
      FieldName = 'ESTORNO_CODESTORNO'
    end
    object cdsDadosESTORNO_CODRELANC: TIntegerField
      FieldName = 'ESTORNO_CODRELANC'
    end
    object cdsDadosESTORNO_NOMEUSER: TStringField
      FieldName = 'ESTORNO_NOMEUSER'
      FixedChar = True
      Size = 30
    end
    object cdsDadosCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
    end
    object cdsDadosBUSCA_DATACAD: TDateField
      FieldName = 'BUSCA_DATACAD'
      ProviderFlags = []
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object cdsDadosBUSCA_DATAVEN: TDateField
      FieldName = 'BUSCA_DATAVEN'
      ProviderFlags = []
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object cdsDadosBUSCA_DATAPAG: TDateField
      FieldName = 'BUSCA_DATAPAG'
      ProviderFlags = []
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object cdsDadosNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosLOG_USUARIO: TStringField
      FieldName = 'LOG_USUARIO'
      FixedChar = True
      Size = 30
    end
    object cdsDadosLOG_TIPO: TStringField
      FieldName = 'LOG_TIPO'
      FixedChar = True
      Size = 10
    end
    object cdsDadosLOG_MAQUINA: TStringField
      FieldName = 'LOG_MAQUINA'
      FixedChar = True
      Size = 30
    end
    object cdsDadosLOG_DATAREMOTO: TSQLTimeStampField
      FieldName = 'LOG_DATAREMOTO'
    end
    object cdsDadosCAD_SEMANA_FLUXO: TIntegerField
      FieldName = 'CAD_SEMANA_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosCAD_MES_FLUXO: TIntegerField
      FieldName = 'CAD_MES_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosCAD_TRIMESTRE_FLUXO: TIntegerField
      FieldName = 'CAD_TRIMESTRE_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosCAD_QUADRIMESTRE_FLUXO: TIntegerField
      FieldName = 'CAD_QUADRIMESTRE_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosCAD_SEMESTRE_FLUXO: TIntegerField
      FieldName = 'CAD_SEMESTRE_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosCAD_ANO_FLUXO: TIntegerField
      FieldName = 'CAD_ANO_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosCAD_STR_SEMANA_FLUXO: TStringField
      FieldName = 'CAD_STR_SEMANA_FLUXO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosCAD_STR_MES_FLUXO: TStringField
      FieldName = 'CAD_STR_MES_FLUXO'
      ProviderFlags = []
      FixedChar = True
    end
    object cdsDadosCAD_STR_BIMESTRE_FLUXO: TStringField
      FieldName = 'CAD_STR_BIMESTRE_FLUXO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosCAD_STR_TRIMESTRE_FLUXO: TStringField
      FieldName = 'CAD_STR_TRIMESTRE_FLUXO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosCAD_STR_QUADRIMESTRE_FLUXO: TStringField
      FieldName = 'CAD_STR_QUADRIMESTRE_FLUXO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosCAD_STR_SEMESTRE_FLUXO: TStringField
      FieldName = 'CAD_STR_SEMESTRE_FLUXO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosCAD_BIMESTRE_FLUXO: TIntegerField
      FieldName = 'CAD_BIMESTRE_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosVEN_SEMANA_FLUXO: TIntegerField
      FieldName = 'VEN_SEMANA_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosVEN_MES_FLUXO: TIntegerField
      FieldName = 'VEN_MES_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosVEN_TRIMESTRE_FLUXO: TIntegerField
      FieldName = 'VEN_TRIMESTRE_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosVEN_QUADRIMESTRE_FLUXO: TIntegerField
      FieldName = 'VEN_QUADRIMESTRE_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosVEN_SEMESTRE_FLUXO: TIntegerField
      FieldName = 'VEN_SEMESTRE_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosVEN_ANO_FLUXO: TIntegerField
      FieldName = 'VEN_ANO_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosVEN_STR_SEMANA_FLUXO: TStringField
      FieldName = 'VEN_STR_SEMANA_FLUXO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosVEN_STR_MES_FLUXO: TStringField
      FieldName = 'VEN_STR_MES_FLUXO'
      ProviderFlags = []
      FixedChar = True
    end
    object cdsDadosVEN_STR_BIMESTRE_FLUXO: TStringField
      FieldName = 'VEN_STR_BIMESTRE_FLUXO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosVEN_STR_TRIMESTRE_FLUXO: TStringField
      FieldName = 'VEN_STR_TRIMESTRE_FLUXO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosVEN_STR_QUADRIMESTRE_FLUXO: TStringField
      FieldName = 'VEN_STR_QUADRIMESTRE_FLUXO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosVEN_STR_SEMESTRE_FLUXO: TStringField
      FieldName = 'VEN_STR_SEMESTRE_FLUXO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosVEN_BIMESTRE_FLUXO: TIntegerField
      FieldName = 'VEN_BIMESTRE_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosPAG_SEMANA_FLUXO: TIntegerField
      FieldName = 'PAG_SEMANA_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosPAG_MES_FLUXO: TIntegerField
      FieldName = 'PAG_MES_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosPAG_TRIMESTRE_FLUXO: TIntegerField
      FieldName = 'PAG_TRIMESTRE_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosPAG_QUADRIMESTRE_FLUXO: TIntegerField
      FieldName = 'PAG_QUADRIMESTRE_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosPAG_SEMESTRE_FLUXO: TIntegerField
      FieldName = 'PAG_SEMESTRE_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosPAG_ANO_FLUXO: TIntegerField
      FieldName = 'PAG_ANO_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosPAG_STR_SEMANA_FLUXO: TStringField
      FieldName = 'PAG_STR_SEMANA_FLUXO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosPAG_STR_MES_FLUXO: TStringField
      FieldName = 'PAG_STR_MES_FLUXO'
      ProviderFlags = []
      FixedChar = True
    end
    object cdsDadosPAG_STR_BIMESTRE_FLUXO: TStringField
      FieldName = 'PAG_STR_BIMESTRE_FLUXO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosPAG_STR_TRIMESTRE_FLUXO: TStringField
      FieldName = 'PAG_STR_TRIMESTRE_FLUXO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosPAG_STR_QUADRIMESTRE_FLUXO: TStringField
      FieldName = 'PAG_STR_QUADRIMESTRE_FLUXO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosPAG_STR_SEMESTRE_FLUXO: TStringField
      FieldName = 'PAG_STR_SEMESTRE_FLUXO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsDadosPAG_BIMESTRE_FLUXO: TIntegerField
      FieldName = 'PAG_BIMESTRE_FLUXO'
      ProviderFlags = []
    end
    object cdsDadosPLANO: TStringField
      FieldName = 'PLANO'
      ProviderFlags = []
      Size = 295
    end
    object cdsDadosCH_NOME: TStringField
      FieldName = 'CH_NOME'
      Size = 40
    end
    object cdsDadosCH_DOC: TStringField
      FieldName = 'CH_DOC'
      Size = 10
    end
    object cdsDadosCODHISTORICO: TIntegerField
      FieldName = 'CODHISTORICO'
    end
    object cdsDadosHISTORICOPAGAMENTO: TStringField
      FieldName = 'HISTORICOPAGAMENTO'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object cdsDadosCONDPAG: TStringField
      FieldName = 'CONDPAG'
      FixedChar = True
      Size = 60
    end
    object cdsDadosVALOR_FLUXO: TFloatField
      FieldName = 'VALOR_FLUXO'
    end
    object cdsDadosNUMDOC: TIntegerField
      FieldName = 'NUMDOC'
    end
    object cdsDadosDATADOC: TDateField
      FieldName = 'DATADOC'
    end
    object cdsDadosTIPODOC: TStringField
      FieldName = 'TIPODOC'
      FixedChar = True
      Size = 3
    end
    object cdsDadosEXCLUSAO_NOMEUSER: TStringField
      FieldName = 'EXCLUSAO_NOMEUSER'
      FixedChar = True
      Size = 30
    end
    object cdsDadosEXCLUSAO_DATAHORA: TSQLTimeStampField
      FieldName = 'EXCLUSAO_DATAHORA'
    end
    object cdsDadosCODANTIGO: TIntegerField
      FieldName = 'CODANTIGO'
    end
    object cdsDadosCAD_DATA_FLUXO: TDateField
      FieldName = 'CAD_DATA_FLUXO'
    end
    object cdsDadosVEN_DATA_FLUXO: TDateField
      FieldName = 'VEN_DATA_FLUXO'
    end
    object cdsDadosPAG_DATA_FLUXO: TDateField
      FieldName = 'PAG_DATA_FLUXO'
    end
    object cdsDadosEXTENSO: TStringField
      FieldName = 'EXTENSO'
      Size = 254
    end
    object cdsDadosDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
  end
  inherited dsrDados: TDataSource
    Left = 584
    Top = 264
  end
  inherited tmrFocus: TTimer
    Left = 584
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 680
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.750910069440000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarSubItem3'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton7'
      end>
    Left = 760
  end
  inherited actDetalhes: TActionList
    Left = 680
  end
  inherited tmrRelogio: TTimer
    Left = 584
  end
  inherited tmrLabel: TTimer
    Left = 432
    Top = 128
  end
  inherited menuGrade: TPopupMenu
    Top = 136
  end
  inherited tmrFocus2: TTimer
    Left = 184
    Top = 176
  end
  inherited tmrSel: TTimer
    Top = 16
  end
  inherited tmrMove: TTimer
    Left = 632
    Top = 224
  end
  inherited memDataGraph: TdxMemData
    Left = 536
    Top = 216
  end
  inherited SaveDialog: TSaveDialog
    Left = 760
  end
  object tmrLog: TTimer
    Enabled = False
    Interval = 256
    OnTimer = tmrLogTimer
    Left = 536
    Top = 64
  end
  object dsrCentros: TDataSource
    AutoEdit = False
    DataSet = cdsCentro
    Left = 320
    Top = 384
  end
  object cdsMovInfo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'pcMovinfo'
    RemoteServer = formPrincipal.SocketConnection
    Left = 314
    Top = 163
    object cdsMovInfoSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
    end
    object cdsMovInfoNOTA_NUMERO: TIntegerField
      FieldName = 'NOTA_NUMERO'
    end
    object cdsMovInfoNOTA_DATAEMISSAO: TSQLTimeStampField
      FieldName = 'NOTA_DATAEMISSAO'
      DisplayFormat = 'dd/mm/yy'
    end
    object cdsMovInfoNOTA_VALOR_TOTAL: TFMTBCDField
      FieldName = 'NOTA_VALOR_TOTAL'
      DisplayFormat = '#######0.00'
      Precision = 15
      Size = 2
    end
    object cdsMovInfoNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      FixedChar = True
      Size = 40
    end
    object cdsMovInfoNOTA_CODNATUOPER: TStringField
      FieldName = 'NOTA_CODNATUOPER'
      FixedChar = True
      Size = 5
    end
    object cdsMovInfoTIPODOC: TStringField
      FieldName = 'TIPODOC'
      FixedChar = True
      Size = 3
    end
  end
  object dsrMovInfo: TDataSource
    DataSet = cdsMovInfo
    Left = 370
    Top = 299
  end
  object tmrCONDICAO: TTimer
    Enabled = False
    Interval = 256
    OnTimer = tmrCONDICAOTimer
    Left = 408
    Top = 64
  end
  object cdsFuturos: TClientDataSet
    Tag = 1
    Aggregates = <>
    Params = <>
    ProviderName = 'provFuturos'
    Left = 539
    Top = 387
    object cdsFuturosRecId: TIntegerField
      FieldName = 'RecId'
      ReadOnly = True
    end
    object cdsFuturosDATA: TDateTimeField
      FieldName = 'DATA'
      OnChange = cdsFuturosDATAChange
    end
  end
  object dsrFuturos: TDataSource
    DataSet = cdsFuturos
    Left = 611
    Top = 379
  end
  object memFuturos: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 227
    Top = 163
    object memFuturosDATA: TDateTimeField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object provFuturos: TDataSetProvider
    DataSet = memFuturos
    UpdateMode = upWhereKeyOnly
    Left = 299
    Top = 307
  end
  object cdsEstornoFin: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODUSUARIO'
        ParamType = ptInput
      end>
    ProviderName = 'pmEstornofin'
    RemoteServer = formPrincipal.SocketConnection
    Left = 210
    Top = 315
    object StringField1: TStringField
      FieldName = 'STATUS'
      FixedChar = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'NOTA_NUMERO'
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'NOTA_DATAEMISSAO'
      DisplayFormat = 'dd/mm/yy'
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'NOTA_VALOR_TOTAL'
      DisplayFormat = '#######0.00'
      Precision = 15
      Size = 2
    end
    object StringField2: TStringField
      FieldName = 'NOME_VENDEDOR'
      FixedChar = True
      Size = 40
    end
    object StringField3: TStringField
      FieldName = 'NOTA_CODNATUOPER'
      FixedChar = True
      Size = 5
    end
    object StringField4: TStringField
      FieldName = 'TIPODOC'
      FixedChar = True
      Size = 3
    end
  end
  object cdsCentro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvCentros'
    RemoteServer = formPrincipal.SocketConnection
    Left = 120
    Top = 264
    object cdsCentroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCentroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsCentroTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
