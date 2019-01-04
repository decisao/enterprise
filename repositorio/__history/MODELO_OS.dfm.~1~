inherited formModeloOS: TformModeloOS
  Left = 266
  Top = 190
  Caption = 'MODELO DE O.S.'
  ClientHeight = 670
  ClientWidth = 909
  ExplicitWidth = 925
  ExplicitHeight = 708
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 8
    Top = 48
    Width = 34
    Height = 13
    Cursor = crHandPoint
    Caption = 'Marca'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = lbMARCAClick
    OnMouseEnter = lbModeloMouseEnter
    OnMouseLeave = lbModeloMouseLeave
  end
  inherited pgcDados: TcxPageControl
    Width = 909
    Height = 650
    ExplicitWidth = 909
    ExplicitHeight = 650
    ClientRectBottom = 649
    ClientRectRight = 908
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 907
      ExplicitHeight = 648
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 907
        ExplicitWidth = 907
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 617
        Width = 907
        ExplicitTop = 617
        ExplicitWidth = 907
      end
      inherited pnlFundoGrade: TPanel
        Width = 907
        Height = 538
        ExplicitWidth = 907
        ExplicitHeight = 538
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 516
          Width = 907
          ExplicitTop = 516
          ExplicitWidth = 907
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 907
          ExplicitWidth = 907
        end
        inherited grdDados: TcxGrid
          Width = 907
          Height = 494
          ExplicitWidth = 907
          ExplicitHeight = 498
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <
              item
              end>
            DataController.Summary.FooterSummaryItems = <
              item
              end>
            DataController.OnGroupingChanged = nil
            OptionsCustomize.ColumnHiding = True
            OptionsData.CancelOnExit = False
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 907
      ExplicitHeight = 648
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 907
        ExplicitWidth = 907
      end
      inherited pnlEdicao: TPanel
        Width = 907
        Height = 569
        ExplicitWidth = 907
        ExplicitHeight = 571
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 907
          Height = 136
          Align = alTop
          BevelOuter = bvNone
          Color = clCream
          TabOrder = 0
          object lbCODIGO: TLabel
            Left = 8
            Top = 8
            Width = 40
            Height = 13
            Caption = 'C'#243'digo'
            FocusControl = dedCODIGO
          end
          object lbSTATUS: TLabel
            Left = 104
            Top = 8
            Width = 36
            Height = 13
            Caption = 'Status'
            Color = clCream
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsUnderline]
            ParentColor = False
            ParentFont = False
            OnClick = lbSTATUSClick
          end
          object lbDATAABERTURA: TLabel
            Left = 272
            Top = 8
            Width = 81
            Height = 13
            Caption = 'Data Abertura'
            FocusControl = cxDBDateEdit1
          end
          object lbNOME: TLabel
            Left = 8
            Top = 48
            Width = 94
            Height = 13
            Cursor = crHandPoint
            Caption = 'nome do Cliente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = lbNOMEClick
            OnMouseEnter = lbModeloMouseEnter
            OnMouseLeave = lbModeloMouseLeave
          end
          object Label5: TLabel
            Left = 408
            Top = 8
            Width = 71
            Height = 13
            Cursor = crHandPoint
            Caption = 'Tipo de O.S.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label5Click
            OnMouseEnter = lbModeloMouseEnter
            OnMouseLeave = lbModeloMouseLeave
          end
          object Label6: TLabel
            Left = 7
            Top = 88
            Width = 47
            Height = 13
            Cursor = crHandPoint
            Caption = 'Parceiro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label6Click
            OnMouseEnter = lbModeloMouseEnter
            OnMouseLeave = lbModeloMouseLeave
          end
          object Label93: TLabel
            Left = 409
            Top = 48
            Width = 65
            Height = 13
            Caption = 'Localiza'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label93Click
          end
          object dedCODIGO: TcxDBTextEdit
            Left = 7
            Top = 23
            DataBinding.DataField = 'CODIGO'
            DataBinding.DataSource = dsrDados
            TabOrder = 0
            OnEnter = edtPesquisar2Enter
            OnExit = edtPesquisar2Exit
            Width = 82
          end
          object dedSTATUS: TcxDBTextEdit
            Left = 103
            Top = 23
            TabStop = False
            DataBinding.DataField = 'STATUS'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 1
            Width = 154
          end
          object dedNOME: TcxDBTextEdit
            Left = 6
            Top = 63
            TabStop = False
            DataBinding.DataField = 'NOME'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 2
            Width = 386
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 407
            Top = 23
            TabStop = False
            DataBinding.DataField = 'TIPOOS'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 3
            Width = 281
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 6
            Top = 103
            TabStop = False
            DataBinding.DataField = 'PARCEIRO'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 4
            Width = 386
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 272
            Top = 23
            DataBinding.DataField = 'DATA'
            DataBinding.DataSource = dsrDados
            Properties.ImmediatePost = True
            Properties.Kind = ckDateTime
            Properties.ReadOnly = False
            TabOrder = 5
            OnEnter = edtPesquisar2Enter
            OnExit = edtPesquisar2Exit
            Width = 120
          end
          object dblLocalizacao: TcxDBTextEdit
            Left = 407
            Top = 63
            TabStop = False
            DataBinding.DataField = 'LOCALIZACAO'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 6
            Width = 281
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 136
          Width = 907
          Height = 433
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = cxTabSheet1
          LookAndFeel.NativeStyle = True
          OnChange = cxPageControl1Change
          ExplicitHeight = 435
          ClientRectBottom = 429
          ClientRectLeft = 4
          ClientRectRight = 903
          ClientRectTop = 24
          object cxTabSheet1: TcxTabSheet
            Caption = 'Abertura'
            ImageIndex = 0
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object lbQUEMABRIU: TLabel
              Left = 8
              Top = 8
              Width = 106
              Height = 13
              Cursor = crHandPoint
              Caption = 'quem Abriu a O.S.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = lbQUEMABRIUClick
              OnMouseEnter = lbModeloMouseEnter
              OnMouseLeave = lbModeloMouseLeave
            end
            object lbSOLICITANTE: TLabel
              Left = 192
              Top = 8
              Width = 59
              Height = 13
              Caption = 'Solicitante'
              FocusControl = dedSOLICITANTE
            end
            object lbMARCA: TLabel
              Left = 8
              Top = 48
              Width = 34
              Height = 13
              Cursor = crHandPoint
              Caption = 'Marca'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = lbMARCAClick
              OnMouseEnter = lbModeloMouseEnter
              OnMouseLeave = lbModeloMouseLeave
            end
            object lbMODELO: TLabel
              Left = 192
              Top = 48
              Width = 44
              Height = 13
              Cursor = crHandPoint
              Caption = 'moDelo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = lbMODELOClick
              OnMouseEnter = lbModeloMouseEnter
              OnMouseLeave = lbModeloMouseLeave
            end
            object lbPRIORIDADE: TLabel
              Left = 408
              Top = 8
              Width = 58
              Height = 13
              Caption = 'Prioridade'
              FocusControl = dedPRIORIDADE
            end
            object lbPRAZO: TLabel
              Left = 520
              Top = 8
              Width = 126
              Height = 13
              Caption = 'Prazo de Atendimento'
            end
            object lbSERIE: TLabel
              Left = 408
              Top = 48
              Width = 172
              Height = 13
              Caption = 'N'#250'mero de S'#233'rie / IMEI / ESN'
              FocusControl = dedSERIE
            end
            object lbCONDICAOEXTERNA: TLabel
              Left = 8
              Top = 88
              Width = 101
              Height = 13
              Caption = 'Condi'#231#227'o Externa'
              FocusControl = dedCONDICAOEXTERNA
            end
            object lbACESSORIOS: TLabel
              Left = 408
              Top = 88
              Width = 61
              Height = 13
              Caption = 'Acess'#243'rios'
              FocusControl = dedACESSORIOS
            end
            object lbSERVICOS: TLabel
              Left = 8
              Top = 168
              Width = 80
              Height = 13
              Caption = 'Detalhamento'
              FocusControl = dedSERVICOS
            end
            object lbOCORRENCIA: TLabel
              Left = 8
              Top = 128
              Width = 62
              Height = 13
              Cursor = crHandPoint
              Caption = 'Ocorr'#234'ncia'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = lbOCORRENCIAClick
              OnMouseEnter = lbModeloMouseEnter
              OnMouseLeave = lbModeloMouseLeave
            end
            object Label99: TLabel
              Left = 408
              Top = 144
              Width = 51
              Height = 13
              Caption = 'Lendo...'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label4: TLabel
              Left = 408
              Top = 128
              Width = 59
              Height = 13
              Cursor = crHandPoint
              Caption = 'oPeradora'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = Label4Click
              OnMouseEnter = lbModeloMouseEnter
              OnMouseLeave = lbModeloMouseLeave
            end
            object Label7: TLabel
              Left = 64
              Top = 48
              Width = 75
              Height = 13
              Cursor = crHandPoint
              Caption = 'Equip.Cliente'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = Label7Click
              OnMouseEnter = lbModeloMouseEnter
              OnMouseLeave = lbModeloMouseLeave
            end
            object dedQUEMABRIU: TcxDBTextEdit
              Left = 7
              Top = 23
              TabStop = False
              DataBinding.DataField = 'QUEMABRIU'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 0
              Width = 170
            end
            object dedSOLICITANTE: TcxDBTextEdit
              Left = 191
              Top = 23
              DataBinding.DataField = 'SOLICITANTE'
              DataBinding.DataSource = dsrDados
              Properties.CharCase = ecUpperCase
              TabOrder = 1
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 202
            end
            object dedMARCA: TcxDBTextEdit
              Left = 7
              Top = 63
              TabStop = False
              DataBinding.DataField = 'MARCA'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 2
              Width = 170
            end
            object dedMODELO: TcxDBTextEdit
              Left = 191
              Top = 63
              TabStop = False
              DataBinding.DataField = 'MODELO'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 3
              Width = 202
            end
            object dedPRAZO: TcxDBTextEdit
              Left = 519
              Top = 23
              TabStop = False
              DataBinding.DataField = 'PRAZO'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 4
              Width = 162
            end
            object dedSERIE: TcxDBTextEdit
              Left = 407
              Top = 63
              DataBinding.DataField = 'SERIE'
              DataBinding.DataSource = dsrDados
              Properties.CharCase = ecUpperCase
              TabOrder = 5
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 273
            end
            object dedCONDICAOEXTERNA: TcxDBTextEdit
              Left = 7
              Top = 103
              DataBinding.DataField = 'CONDICAOEXTERNA'
              DataBinding.DataSource = dsrDados
              Properties.CharCase = ecUpperCase
              TabOrder = 6
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 385
            end
            object dedACESSORIOS: TcxDBTextEdit
              Left = 407
              Top = 103
              DataBinding.DataField = 'ACESSORIOS'
              DataBinding.DataSource = dsrDados
              Properties.CharCase = ecUpperCase
              TabOrder = 7
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 273
            end
            object dedOCORRENCIA: TcxDBTextEdit
              Left = 7
              Top = 143
              DataBinding.DataField = 'OCORRENCIA'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 8
              Width = 385
            end
            object dedPRIORIDADE: TcxDBComboBox
              Left = 407
              Top = 23
              DataBinding.DataField = 'PRIORIDADE'
              DataBinding.DataSource = dsrDados
              Properties.Items.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5')
              TabOrder = 9
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 97
            end
            object dedSERVICOS: TcxDBMemo
              Left = 7
              Top = 183
              DataBinding.DataField = 'SERVICOS'
              DataBinding.DataSource = dsrDados
              Properties.ScrollBars = ssVertical
              TabOrder = 10
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Height = 57
              Width = 674
            end
            object dblOperadoras: TcxDBLookupComboBox
              Left = 407
              Top = 143
              DataBinding.DataField = 'OPERADORA'
              DataBinding.DataSource = dsrDados
              Properties.KeyFieldNames = 'NOME'
              Properties.ListColumns = <
                item
                  FieldName = 'NOME'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = formPrincipal.dsrOperadoras
              TabOrder = 11
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 274
            end
          end
          object cxTabSheet2: TcxTabSheet
            Caption = 'T'#233'cnicos'
            ImageIndex = 1
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 899
              Height = 94
              Align = alTop
              BevelOuter = bvNone
              Color = clCream
              TabOrder = 0
              object lbDEFEITO_DETECTADO: TLabel
                Left = 8
                Top = 8
                Width = 101
                Height = 13
                Caption = 'Defeito detectado'
                FocusControl = dedDEFEITO_DETECTADO
              end
              object lbSERVICO_REALIZAR: TLabel
                Left = 8
                Top = 48
                Width = 101
                Height = 13
                Caption = 'Servi'#231'o a realizar'
                FocusControl = dedSERVICO_REALIZAR
              end
              object dedDEFEITO_DETECTADO: TcxDBTextEdit
                Left = 7
                Top = 23
                DataBinding.DataField = 'DEFEITO_DETECTADO'
                DataBinding.DataSource = dsrDados
                Properties.CharCase = ecUpperCase
                TabOrder = 0
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 385
              end
              object dedSERVICO_REALIZAR: TcxDBTextEdit
                Left = 7
                Top = 63
                DataBinding.DataField = 'SERVICO_REALIZAR'
                DataBinding.DataSource = dsrDados
                Properties.CharCase = ecUpperCase
                TabOrder = 1
                OnEnter = edtPesquisar2Enter
                OnExit = edtPesquisar2Exit
                Width = 385
              end
              object boxTecnico: TcxGroupBox
                Left = 408
                Top = 8
                Caption = ' T'#233'cnicos '
                LookAndFeel.NativeStyle = True
                TabOrder = 2
                Visible = False
                Height = 76
                Width = 273
                object btnInicio: TcxButton
                  Left = 24
                  Top = 32
                  Width = 89
                  Height = 25
                  Cursor = crHandPoint
                  Caption = 'Iniciar'
                  LookAndFeel.NativeStyle = True
                  TabOrder = 0
                  OnClick = btnInicioClick
                end
                object btnTermino: TcxButton
                  Left = 152
                  Top = 32
                  Width = 89
                  Height = 25
                  Cursor = crHandPoint
                  Caption = 'Terminar'
                  LookAndFeel.NativeStyle = True
                  TabOrder = 1
                  OnClick = btnTerminoClick
                end
              end
            end
            object pnlTecnicos: TPanel
              Left = 0
              Top = 94
              Width = 899
              Height = 311
              Align = alClient
              BevelOuter = bvLowered
              Caption = 'Sem registro de T'#233'cnicos.'
              TabOrder = 1
              ExplicitHeight = 313
              object grdTecnicos: TcxGrid
                Left = 1
                Top = 1
                Width = 897
                Height = 311
                Align = alClient
                TabOrder = 0
                LookAndFeel.NativeStyle = True
                object DBTableView1: TcxGridDBTableView
                  OnDblClick = DBTableView1DblClick
                  DataController.DataSource = dsrTecnicos
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  object DBTableView1NOMEUSER: TcxGridDBColumn
                    Tag = 1
                    Caption = 'T'#233'cnico'
                    DataBinding.FieldName = 'NOMEUSER'
                    Width = 294
                  end
                  object DBTableView1DATAINI: TcxGridDBColumn
                    Tag = 1
                    Caption = 'In'#237'cio'
                    DataBinding.FieldName = 'DATAINI'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Width = 120
                  end
                  object DBTableView1DATAFIM: TcxGridDBColumn
                    Tag = 1
                    Caption = 'T'#233'rmino'
                    DataBinding.FieldName = 'DATAFIM'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Width = 137
                  end
                  object DBTableView1PORCENTAGEM: TcxGridDBColumn
                    Caption = '%'
                    DataBinding.FieldName = 'PORCENTAGEM'
                    HeaderAlignmentHorz = taRightJustify
                    Options.ShowEditButtons = isebAlways
                    Width = 68
                  end
                end
                object Level1: TcxGridLevel
                  GridView = DBTableView1
                end
              end
            end
          end
          object cxTabSheet3: TcxTabSheet
            Caption = 'Produtos && Servi'#231'os'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object pnlItens: TPanel
              Left = 0
              Top = 0
              Width = 899
              Height = 407
              Align = alClient
              BevelOuter = bvLowered
              Caption = 'N'#227'o existem Produtos ou Servi'#231'os lan'#231'ados.'
              TabOrder = 0
              object grdItens: TcxGrid
                Left = 1
                Top = 1
                Width = 897
                Height = 405
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
                    Width = 362
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
          object tabPagamentos: TcxTabSheet
            Caption = 'Pagamentos'
            ImageIndex = 7
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object pnlPagamentos: TPanel
              Left = 0
              Top = 0
              Width = 899
              Height = 407
              Align = alClient
              BevelOuter = bvLowered
              Caption = 'Nenhum pagamento lan'#231'ado.'
              TabOrder = 0
              object grdPagamentos: TcxGrid
                Left = 1
                Top = 1
                Width = 897
                Height = 405
                Align = alClient
                TabOrder = 0
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView2: TcxGridDBTableView
                  DataController.DataSource = dsrPagamentos
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsSelection.CellSelect = False
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  object cxGridDBTableView1NUMERO: TcxGridDBColumn
                    Tag = 1
                    Caption = '#'
                    DataBinding.FieldName = 'NUMERO'
                    HeaderAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Filtering = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Width = 23
                  end
                  object cxGridDBTableView1STATUS: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Situa'#231#227'o'
                    DataBinding.FieldName = 'STATUS'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Width = 90
                  end
                  object cxGridDBTableView1DATAVENCIMENTO: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Vencimento'
                    DataBinding.FieldName = 'DATAVENCIMENTO'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Width = 101
                  end
                  object cxGridDBTableView1DATAPAGO: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Pagamento'
                    DataBinding.FieldName = 'DATAPAGO'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Width = 104
                  end
                  object cxGridDBTableView1DOCUMENTO: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Documento'
                    DataBinding.FieldName = 'DOCUMENTO'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Width = 170
                  end
                  object cxGridDBTableView1VALOR: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Valor'
                    DataBinding.FieldName = 'VALOR'
                    HeaderAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Filtering = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                  end
                end
                object cxGridLevel2: TcxGridLevel
                  GridView = cxGridDBTableView2
                end
              end
            end
          end
          object cxTabSheet4: TcxTabSheet
            Caption = 'Autoriza'#231#227'o'
            ImageIndex = 3
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object lbQUEM_AUTORIZOU: TLabel
              Left = 160
              Top = 8
              Width = 97
              Height = 13
              Caption = 'Quem autorizou?'
            end
            object lbDATA_AUTORIZADO: TLabel
              Left = 160
              Top = 48
              Width = 97
              Height = 13
              Caption = 'Data autoriza'#231#227'o'
            end
            object Label1: TLabel
              Left = 9
              Top = 288
              Width = 211
              Height = 13
              Caption = 'Detalhes do processo de autoriza'#231#227'o'
              FocusControl = cxDBMemo1
            end
            object lbAtend: TLabel
              Left = 9
              Top = 96
              Width = 134
              Height = 13
              Caption = 'Contatos com o Cliente'
            end
            object cxDBRadioGroup1: TcxDBRadioGroup
              Left = 8
              Top = 8
              Caption = ' Cliente autorizou? '
              DataBinding.DataField = 'AUTORIZADO'
              DataBinding.DataSource = dsrDados
              Properties.Items = <
                item
                  Caption = 'Sim'
                  Value = 'S'
                end
                item
                  Caption = 'N'#227'o'
                  Value = 'N'
                end>
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 0
              Height = 77
              Width = 137
            end
            object dedQUEM_AUTORIZOU: TcxDBTextEdit
              Left = 159
              Top = 23
              DataBinding.DataField = 'QUEM_AUTORIZOU'
              DataBinding.DataSource = dsrDados
              Properties.CharCase = ecUpperCase
              TabOrder = 1
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 233
            end
            object dedDATA_AUTORIZADO: TcxDBDateEdit
              Left = 159
              Top = 63
              DataBinding.DataField = 'DATA_AUTORIZADO'
              DataBinding.DataSource = dsrDados
              TabOrder = 2
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 121
            end
            object cxDBMemo1: TcxDBMemo
              Left = 8
              Top = 303
              DataBinding.DataField = 'OPCIONAIS'
              DataBinding.DataSource = dsrDados
              Properties.ScrollBars = ssVertical
              TabOrder = 3
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Height = 57
              Width = 678
            end
            object grdAtend: TcxGrid
              Left = 9
              Top = 111
              Width = 677
              Height = 171
              TabOrder = 4
              Visible = False
              LookAndFeel.NativeStyle = True
              object cxGridDBTableView3: TcxGridDBTableView
                OnDblClick = DBTableView1DblClick
                DataController.DataSource = dmoOS.dsrAtend
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxGridDBTableView3DATA: TcxGridDBColumn
                  DataBinding.FieldName = 'DATA'
                  SortIndex = 0
                  SortOrder = soDescending
                  Width = 99
                end
                object cxGridDBTableView3USUARIO: TcxGridDBColumn
                  DataBinding.FieldName = 'USUARIO'
                  Width = 112
                end
                object cxGridDBTableView3COMENTARIOS: TcxGridDBColumn
                  DataBinding.FieldName = 'COMENTARIOS'
                end
              end
              object cxGridLevel3: TcxGridLevel
                GridView = cxGridDBTableView3
              end
            end
            object btnRemoverAtend: TcxButton
              Left = 493
              Top = 80
              Width = 89
              Height = 25
              Cursor = crHandPoint
              Caption = 'Remover'
              LookAndFeel.NativeStyle = True
              TabOrder = 5
              OnClick = btnRemoverAtendClick
            end
            object btnAdicionarAtend: TcxButton
              Left = 597
              Top = 80
              Width = 89
              Height = 25
              Cursor = crHandPoint
              Caption = 'Adicionar'
              LookAndFeel.NativeStyle = True
              TabOrder = 6
              OnClick = btnAdicionarAtendClick
            end
          end
          object cxTabSheet5: TcxTabSheet
            Caption = 'Fechamento'
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object lbDATA_ENTREGA: TLabel
              Left = 9
              Top = 50
              Width = 75
              Height = 13
              Caption = 'Data entrega'
              FocusControl = dedDATA_ENTREGA
            end
            object lbQUEM_RECEBEU: TLabel
              Left = 184
              Top = 50
              Width = 82
              Height = 13
              Caption = 'Quem retirou?'
              FocusControl = dedQUEM_RECEBEU
            end
            object lbQUEM_ENTREGOU: TLabel
              Left = 409
              Top = 50
              Width = 95
              Height = 13
              Caption = 'Quem entregou?'
              FocusControl = dedQUEM_ENTREGOU
            end
            object lbUSUARIOFECHAMENTO: TLabel
              Left = 145
              Top = 170
              Width = 110
              Height = 13
              Caption = 'Usu'#225'rio que fechou'
            end
            object lbDATAFECHAMENTO: TLabel
              Left = 9
              Top = 170
              Width = 98
              Height = 13
              Caption = 'Data fechamento'
            end
            object Label2: TLabel
              Left = 9
              Top = 90
              Width = 139
              Height = 13
              Caption = 'Detalhes de fechamento'
              FocusControl = cxDBMemo2
            end
            object dedDATA_ENTREGA: TcxDBDateEdit
              Left = 8
              Top = 65
              DataBinding.DataField = 'DATA_ENTREGA'
              DataBinding.DataSource = dsrDados
              Properties.Kind = ckDateTime
              Properties.ReadOnly = True
              TabOrder = 0
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 161
            end
            object dedQUEM_RECEBEU: TcxDBTextEdit
              Left = 183
              Top = 65
              DataBinding.DataField = 'QUEM_RECEBEU'
              DataBinding.DataSource = dsrDados
              Properties.CharCase = ecUpperCase
              TabOrder = 1
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 207
            end
            object dedQUEM_ENTREGOU: TcxDBTextEdit
              Left = 409
              Top = 65
              DataBinding.DataField = 'QUEM_ENTREGOU'
              DataBinding.DataSource = dsrDados
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              TabOrder = 2
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 281
            end
            object dedUSUARIOFECHAMENTO: TcxDBTextEdit
              Left = 144
              Top = 185
              DataBinding.DataField = 'USUARIOFECHAMENTO'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 3
              Width = 121
            end
            object dedDATAFECHAMENTO: TcxDBTextEdit
              Left = 8
              Top = 185
              DataBinding.DataField = 'DATAFECHAMENTO'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 4
              Width = 121
            end
            object cxDBMemo2: TcxDBMemo
              Left = 8
              Top = 105
              DataBinding.DataField = 'OBSERVACOES'
              DataBinding.DataSource = dsrDados
              Properties.ScrollBars = ssVertical
              TabOrder = 5
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Height = 57
              Width = 665
            end
            object btnEntrega: TcxButton
              Left = 4
              Top = 19
              Width = 161
              Height = 25
              Cursor = crHandPoint
              Caption = 'Entrega'
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.NativeStyle = True
              TabOrder = 6
              OnClick = btnEntregaClick
            end
          end
          object cxTabSheet7: TcxTabSheet
            Caption = #218'ltimo Log'
            ImageIndex = 5
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
            end
            object Label29: TLabel
              Left = 8
              Top = 48
              Width = 71
              Height = 13
              Caption = 'Computador'
              FocusControl = cxDBMaskEdit3
            end
            object Label28: TLabel
              Left = 168
              Top = 8
              Width = 43
              Height = 13
              Caption = 'Usu'#225'rio'
              FocusControl = cxDBMaskEdit2
            end
            object Label30: TLabel
              Left = 168
              Top = 48
              Width = 127
              Height = 13
              Caption = 'Data (no computador)'
              FocusControl = cxDBMaskEdit4
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
          object cxTabSheet8: TcxTabSheet
            Caption = 'Outros Logs'
            ImageIndex = 6
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object pnlLog: TPanel
              Left = 0
              Top = 0
              Width = 899
              Height = 407
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Nenhum registro de Log'
              TabOrder = 0
              object Splitter1: TSplitter
                Left = 0
                Top = 105
                Width = 899
                Height = 3
                Cursor = crVSplit
                Align = alTop
                ExplicitWidth = 673
              end
              object cxGridLog1: TcxGrid
                Left = 0
                Top = 0
                Width = 899
                Height = 105
                Align = alTop
                TabOrder = 0
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView1: TcxGridDBTableView
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
                    Tag = 1
                    Caption = 'Registro'
                    DataBinding.FieldName = 'LOG_TIPO'
                    Width = 117
                  end
                  object DBTableView1LOG_USUARIO: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Usu'#225'rio'
                    DataBinding.FieldName = 'LOG_USUARIO'
                    Width = 159
                  end
                  object DBTableView1LOG_MAQUINA: TcxGridDBColumn
                    Tag = 1
                    Caption = 'M'#225'quina'
                    DataBinding.FieldName = 'LOG_MAQUINA'
                  end
                  object DBTableView1LOG_DATAREMOTO: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Data Remoto'
                    DataBinding.FieldName = 'LOG_DATAREMOTO'
                    Width = 170
                  end
                  object DBTableView1LOG_DATASERVIDOR: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Data Servidor'
                    DataBinding.FieldName = 'LOG_DATASERVIDOR'
                    Width = 170
                  end
                end
                object cxGridLevel1: TcxGridLevel
                  GridView = cxGridDBTableView1
                end
              end
              object cxGridLog2: TcxGrid
                Left = 0
                Top = 108
                Width = 899
                Height = 299
                Align = alClient
                TabOrder = 1
                LookAndFeel.NativeStyle = True
                object cxGrid2DBTableView2: TcxGridDBTableView
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
                    Tag = 1
                    Caption = 'Campo'
                    DataBinding.FieldName = 'LOG_CAMPO'
                    Width = 185
                  end
                  object cxGrid2DBTableView2LOG_VALORANTIGO: TcxGridDBColumn
                    Tag = 1
                    Caption = 'Valor Anterior'
                    DataBinding.FieldName = 'LOG_VALORANTIGO'
                    Width = 221
                  end
                  object cxGrid2DBTableView2LOG_VALORNOVO: TcxGridDBColumn
                    Tag = 1
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
    Top = 650
    Width = 909
    ExplicitTop = 650
    ExplicitWidth = 909
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 624
    Top = 511
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
          UserWidth = 124
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
      FloatLeft = 448
      FloatTop = 617
      FloatClientWidth = 157
      FloatClientHeight = 97
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
          ItemName = 'dxBarButton6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton15'
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
    inherited btnExcluir: TdxBarLargeButton
      Caption = 'Estorno'
      Hint = 'Estorno'
    end
    inherited cmbSelecionar: TdxBarCombo
      Tag = 5
    end
    inherited btnAjuda: TdxBarLargeButton
      SyncImageIndex = False
      ImageIndex = 0
    end
    object dxBarButton6: TdxBarButton
      Tag = 11
      Caption = 'Efetuar Lan'#231'amento'
      Category = 0
      Hint = 'Efetuar Lan'#231'amento'
      Visible = ivAlways
      ImageIndex = 91
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton6Click
    end
    object dxBarButton7: TdxBarButton
      Tag = 11
      Caption = 'Imprimir Abertura #&1'
      Category = 0
      Hint = 'Imprimir Abertura #1'
      Visible = ivAlways
      OnClick = dxBarButton7Click
    end
    object dxBarButton8: TdxBarButton
      Tag = 11
      Caption = 'Imprimir Abertura #&2'
      Category = 0
      Hint = 'Imprimir Abertura #2'
      Visible = ivAlways
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Tag = 11
      Caption = 'Imprimir &Fechamento'
      Category = 0
      Hint = 'Imprimir Fechamento'
      Visible = ivAlways
      OnClick = dxBarButton9Click
    end
    object dxBarButton10: TdxBarButton
      Tag = 11
      Caption = 'Imprimir Nota Fiscal'
      Category = 0
      Hint = 'Imprimir Nota Fiscal'
      Visible = ivAlways
      OnClick = dxBarButton10Click
    end
    object dxBarButton11: TdxBarButton
      Tag = 11
      Caption = 'Contas a receber'
      Category = 0
      Hint = 'Contas a receber'
      Visible = ivAlways
      ImageIndex = 25
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton11Click
    end
    object dxBarButton12: TdxBarButton
      Tag = 11
      Caption = 'Mov. Produtos'
      Category = 0
      Hint = 'Mov. Produtos'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton12Click
    end
    object dxBarButton13: TdxBarButton
      Tag = 11
      Caption = 'Imprimir Pedido Venda Bruto'
      Category = 0
      Hint = 'Imprimir Pedido Venda Bruto'
      Visible = ivAlways
      OnClick = dxBarButton13Click
    end
    object dxBarButton14: TdxBarButton
      Tag = 11
      Caption = 'Imprimir Pedido Venda Liquido'
      Category = 0
      Hint = 'Imprimir Pedido Venda Liquido'
      Visible = ivAlways
      OnClick = dxBarButton14Click
    end
    object dxBarButton15: TdxBarButton
      Tag = 11
      Caption = 'GED'
      Category = 0
      Hint = 'GED'
      Visible = ivAlways
      ImageIndex = 12
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton15Click
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 
      'SELECT '#39'N'#39' AS SEL, MO.CODIGO, MO.DATA, CAST(MO.DATA AS DATE) AS ' +
      'DATAAB, CAST(MO.DATA AS TIME) AS HORAAB, MO.PRIORIDADE, MO.DATAP' +
      'REVISAO, CAST(((MO.DATAPREVISAO - CURRENT_TIMESTAMP) * 24) AS DO' +
      'UBLE PRECISION) AS PRAZO, MO.STATUS, MO.CODCLIENTE, CL.NOME, MO.' +
      'OSTIPO, OT.TIPO AS TIPOOS, MO.CODMARCA, MA.DESCRICAO AS MARCA, M' +
      'O.CODMODELO, MD.DESCRICAO AS MODELO, MO.SERIE, MO.CODDEFEITO, DE' +
      '.DESCRICAO AS OCORRENCIA, MO.CODPARCEIRO, PA.NOME AS PARCEIRO, M' +
      'O.NOTA_VALOR_TOTAL, MO.CODVENDEDOR_ABRE, QA.NOMEUSER AS QUEMABRI' +
      'U, MO.SOLICITANTE, MO.CONDICAOEXTERNA, MO.ACESSORIOS, MO.SERVICO' +
      'S, MO.DEFEITO_DETECTADO, MO.SERVICO_REALIZAR, MO.AUTORIZADO, MO.' +
      'QUEM_AUTORIZOU, MO.DATA_AUTORIZADO, MO.OPCIONAIS, MO.CODVENDEDOR' +
      ', VE.NOMEUSER AS TECNICO, MO.USUARIOFECHAMENTO, MO.DATAFECHAMENT' +
      'O, MO.DATA_ENTREGA, MO.QUEM_RECEBEU, MO.QUEM_ENTREGOU, MO.OBSERV' +
      'ACOES, MO.CODEMPRESA, MO.ES, MO.TIPO, MO.VALOR_SERVICOS, MO.VALO' +
      'R_ITENS, MO.NOTA_VALOR_FRETE, MO.NOTA_VALOR_SEGURO, MO.NOTA_VALO' +
      'R_OUTROS, MO.VALOR_ICMS, MO.DESCONTO, MO.NOTA_QUANTIDADE, MO.NOT' +
      'A_FRETE, MO.CONDICAO, MO.NOTA_DATASAIDA, MO.NOTA_BASEICMS, MO.NO' +
      'TA_BASEICMSSUBST, MO.NOTA_VALORICMSSUBST, MO.VALOR_IPI, MO.GARAN' +
      'TIA, MO.EMPRESTIMO, MO.ICMSSIMPLES, MO.ICMSSIMPALIQ, MO.ISSALIQ,' +
      ' MO.NOTA_CODNATUOPER, MO.NOTA_PESOBRUTO, MO.NOTA_PESOLIQUIDO, MO' +
      '.CODCENTRO, MO.LOG_USUARIO, MO.LOG_TIPO, MO.LOG_MAQUINA, MO.LOG_' +
      'DATAREMOTO, MO.LOCALIZACAO, MO.OPERADORA, (SELECT SUM(PA.VALOR) ' +
      'FROM PAGAMENTOS PA WHERE PA.CODMOVIMENTO = MO.CODIGO AND PA.PAGO' +
      ' = 0 AND PA.ES = 2) AS ABERTO FROM MOVIMENTOS MO JOIN CLIENTES C' +
      'L ON (CL.CODIGO = MO.CODCLIENTE) LEFT JOIN OSTIPOS OT ON (OT.COD' +
      'IGO = MO.OSTIPO) LEFT JOIN MARCAS MA ON (MA.CODIGO = MO.CODMARCA' +
      ') LEFT JOIN MODELOS MD ON (MD.CODIGO = MO.CODMODELO AND MD.CODEQ' +
      'UIPAMENTO = MO.CODMARCA) LEFT JOIN DEFEITOS DE ON (DE.CODIGO = M' +
      'O.CODDEFEITO) LEFT JOIN CLIENTES PA ON (PA.CODIGO = MO.CODPARCEI' +
      'RO) LEFT JOIN CLIENTES QA ON (QA.CODIGO = MO.CODVENDEDOR_ABRE) L' +
      'EFT JOIN CLIENTES VE ON (VE.CODIGO = MO.CODTECNICO) WHERE MO.ES ' +
      '= 2 AND MO.TIPO IN (2, 3)'
    ProviderName = 'pmOS'
    Left = 704
    Top = 560
  end
  inherited dsrDados: TDataSource
    Left = 704
    Top = 608
  end
  inherited tmrFocus: TTimer
    Left = 704
    Top = 512
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 800
    Top = 512
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.752070300930000000
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
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton13'
      end
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end>
    Left = 880
    Top = 512
  end
  inherited actDetalhes: TActionList
    Left = 800
    Top = 456
  end
  inherited tmrRelogio: TTimer
    Left = 704
    Top = 456
  end
  inherited tmrLabel: TTimer
    Left = 968
    Top = 456
  end
  inherited menuGrade: TPopupMenu
    Left = 600
  end
  inherited tmrFocus2: TTimer
    Top = 176
  end
  inherited memDataEntre: TdxMemData
    Left = 712
    Top = 200
  end
  inherited dsrDataEntre: TDataSource
    Left = 456
    Top = 184
  end
  inherited tmrSemDireito: TTimer
    Left = 256
    Top = 144
  end
  inherited tmrSel: TTimer
    Left = 792
    Top = 200
  end
  inherited tmrMove: TTimer
    Left = 744
    Top = 136
  end
  inherited SaveDialog: TSaveDialog
    Left = 880
    Top = 456
  end
  inherited tmrShift: TTimer
    Top = 304
  end
  object tmrItens: TTimer
    Enabled = False
    Interval = 512
    OnTimer = tmrItensTimer
    Left = 800
    Top = 248
  end
  object tmrTecnicos: TTimer
    Enabled = False
    Interval = 512
    OnTimer = tmrTecnicosTimer
    Left = 800
    Top = 392
  end
  object tmrLog: TTimer
    Enabled = False
    Interval = 256
    OnTimer = tmrLogTimer
    Left = 536
    Top = 192
  end
  object memLocalizacao: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 538
    Top = 307
    object memLocalizacaoITEM: TStringField
      FieldName = 'ITEM'
      Size = 40
    end
  end
  object dsrLocalizacao: TDataSource
    AutoEdit = False
    DataSet = memLocalizacao
    Left = 538
    Top = 363
  end
  object cdsPagamentos: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'pmPagamentos'
    RemoteServer = formPrincipal.SocketConnection
    Left = 690
    Top = 244
    object cdsPagamentosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsPagamentosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPagamentosNUMERO: TSmallintField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPagamentosVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsPagamentosCODDOCUMENTO: TIntegerField
      FieldName = 'CODDOCUMENTO'
    end
    object cdsPagamentosDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object cdsPagamentosDATAPAGO: TSQLTimeStampField
      FieldName = 'DATAPAGO'
    end
    object cdsPagamentosSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsPagamentosDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsPagamentosTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
  end
  object dsrPagamentos: TDataSource
    DataSet = cdsPagamentos
    Left = 610
    Top = 348
  end
  object tmrPagamentos: TTimer
    Enabled = False
    Interval = 512
    OnTimer = tmrPagamentosTimer
    Left = 880
    Top = 248
  end
  object ActionList1: TActionList
    Left = 320
    Top = 256
  end
  object cdsTecnicos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODMOVIMENTO'
    FetchOnDemand = False
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'pmTecnicos'
    RemoteServer = formPrincipal.SocketConnection
    Left = 392
    Top = 168
    object cdsTecnicosCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTecnicosCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTecnicosDATAINI: TSQLTimeStampField
      FieldName = 'DATAINI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsTecnicosDATAFIM: TSQLTimeStampField
      FieldName = 'DATAFIM'
    end
    object cdsTecnicosPORCENTAGEM: TFloatField
      FieldName = 'PORCENTAGEM'
    end
    object cdsTecnicosNOMEUSER: TStringField
      FieldName = 'NOMEUSER'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
  end
  object dsrTecnicos: TDataSource
    DataSet = cdsTecnicos
    Left = 392
    Top = 216
  end
  object cdsVerifica: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODCLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'BLOQUEIO'
        ParamType = ptOutput
        Size = 1
      end
      item
        DataType = ftString
        Name = 'MENSAGEM'
        ParamType = ptOutput
        Size = 80
      end>
    ProviderName = 'pcVerifica'
    RemoteServer = formPrincipal.SocketConnection
    Left = 58
    Top = 156
  end
  object tmrAtend: TTimer
    Enabled = False
    Interval = 512
    OnTimer = tmrAtendTimer
    Left = 800
    Top = 312
  end
end
