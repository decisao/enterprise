object formMODELO_MOV: TformMODELO_MOV
  Left = 310
  Top = 280
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'MODELO DE MOVIMENTO'
  ClientHeight = 570
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxStatusBar: TdxStatusBar
    Left = 0
    Top = 550
    Width = 791
    Height = 20
    HelpContext = 555
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        Width = 60
      end
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        Width = 150
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    PaintStyle = stpsUseLookAndFeel
    Color = clCream
    ParentFont = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 111
    Width = 791
    Height = 439
    Align = alClient
    BevelOuter = bvLowered
    Caption = 'Panel1'
    TabOrder = 1
    ExplicitTop = 100
    ExplicitHeight = 450
    object pgcSaida: TcxPageControl
      Left = 1
      Top = 1
      Width = 789
      Height = 437
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tabItens
      Properties.HideTabs = True
      Properties.Style = 1
      LookAndFeel.SkinName = 'Office2010Silver'
      OnChange = pgcSaidaChange
      ExplicitHeight = 448
      ClientRectBottom = 433
      ClientRectLeft = 4
      ClientRectRight = 785
      ClientRectTop = 4
      object tabItens: TcxTabSheet
        Caption = 'tabItens'
        Color = clCream
        ImageIndex = 0
        ParentColor = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 444
        object Bevel1: TBevel
          Left = 0
          Top = 321
          Width = 781
          Height = 2
          Align = alBottom
          Shape = bsBottomLine
          ExplicitTop = 311
          ExplicitWidth = 760
        end
        object pnlTotal: TPanel
          Left = 0
          Top = 323
          Width = 781
          Height = 106
          Align = alBottom
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          ExplicitTop = 338
          ExplicitWidth = 785
          object lblDesconto: TLabel
            Left = 33
            Top = 8
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Caption = 'Desconto$'
            FocusControl = dedDESCONTO
          end
          object lblPerc_Desconto: TLabel
            Left = 124
            Top = 8
            Width = 65
            Height = 13
            Alignment = taRightJustify
            Caption = 'Desconto%'
            FocusControl = dedPERC_DESCONTO
          end
          object lblAcrescimo: TLabel
            Left = 27
            Top = 56
            Width = 66
            Height = 13
            Alignment = taRightJustify
            Caption = 'Acr'#233'scimo$'
            FocusControl = dedACRESCIMO
          end
          object lblPerc_Acrescimo: TLabel
            Left = 118
            Top = 56
            Width = 71
            Height = 13
            Alignment = taRightJustify
            Caption = 'Acr'#233'scimo%'
            FocusControl = dedPERC_ACRESCIMO
          end
          object lblJuros: TLabel
            Left = 264
            Top = 56
            Width = 37
            Height = 13
            Alignment = taRightJustify
            Caption = 'Juros$'
            FocusControl = dedJUROS
          end
          object lblCondPag: TLabel
            Left = 216
            Top = 8
            Width = 139
            Height = 13
            Caption = 'Condi'#231#227'o de Pagamento'
            FocusControl = cxDBLookupComboBox1
          end
          object lblTaxaJuros: TLabel
            Left = 363
            Top = 56
            Width = 42
            Height = 13
            Alignment = taRightJustify
            Caption = 'Juros%'
            FocusControl = dedTaxaJuros
          end
          object DBText1: TDBText
            Left = 448
            Top = 8
            Width = 289
            Height = 49
            Alignment = taRightJustify
            DataField = 'VALOR_TOTAL'
            DataSource = dsrMovimento
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -37
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 648
            Top = 55
            Width = 58
            Height = 13
            Caption = 'Margem%'
            FocusControl = cxDBTextEdit2
            Visible = False
          end
          object Label4: TLabel
            Left = 465
            Top = 56
            Width = 70
            Height = 13
            Alignment = taRightJustify
            Caption = 'N.F. Compra'
            FocusControl = cxDBTextEdit3
          end
          object lbFrete: TLabel
            Left = 408
            Top = 56
            Width = 29
            Height = 13
            Alignment = taRightJustify
            Caption = 'Frete'
            FocusControl = dedFrete
            Visible = False
          end
          object dedDESCONTO: TcxDBTextEdit
            Left = 7
            Top = 23
            DataBinding.DataField = 'VALOR_DESCONTO'
            DataBinding.DataSource = dsrMovimento
            TabOrder = 0
            OnEnter = dedDESCONTOEnter
            OnExit = dedDESCONTOExit
            Width = 89
          end
          object dedPERC_DESCONTO: TcxDBTextEdit
            Left = 103
            Top = 23
            DataBinding.DataField = 'PERC_DESCONTO'
            DataBinding.DataSource = dsrMovimento
            TabOrder = 1
            OnEnter = dedDESCONTOEnter
            OnExit = dedDESCONTOExit
            Width = 89
          end
          object dedACRESCIMO: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'VALOR_ACRESCIMO'
            DataBinding.DataSource = dsrMovimento
            TabOrder = 2
            OnEnter = dedDESCONTOEnter
            OnExit = dedDESCONTOExit
            Width = 89
          end
          object dedPERC_ACRESCIMO: TcxDBTextEdit
            Left = 103
            Top = 71
            DataBinding.DataField = 'PERC_ACRESCIMO'
            DataBinding.DataSource = dsrMovimento
            TabOrder = 3
            OnEnter = dedDESCONTOEnter
            OnExit = dedDESCONTOExit
            Width = 89
          end
          object dedJUROS: TcxDBTextEdit
            Left = 215
            Top = 71
            DataBinding.DataField = 'VALOR_JUROS'
            DataBinding.DataSource = dsrMovimento
            TabOrder = 4
            OnEnter = dedDESCONTOEnter
            OnExit = dedDESCONTOExit
            Width = 89
          end
          object dedTaxaJuros: TcxDBTextEdit
            Left = 319
            Top = 71
            DataBinding.DataField = 'PERC_JUROS'
            DataBinding.DataSource = dsrMovimento
            TabOrder = 5
            OnEnter = dedDESCONTOEnter
            OnExit = dedDESCONTOExit
            Width = 89
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox
            Left = 215
            Top = 23
            DataBinding.DataField = 'CODCONDPAG'
            DataBinding.DataSource = dsrMovimento
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'DESCRICAO'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = formPrincipal.dsrCondicoes
            TabOrder = 6
            OnEnter = dedDESCONTOEnter
            OnExit = dedDESCONTOExit
            Width = 226
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 551
            Top = 71
            TabStop = False
            DataBinding.DataField = 'VALOR_CUSTO'
            DataBinding.DataSource = dsrMovimento
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.HotTrack = False
            TabOrder = 7
            Visible = False
            Width = 89
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 647
            Top = 71
            TabStop = False
            DataBinding.DataField = 'MARGEM'
            DataBinding.DataSource = dsrMovimento
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.HotTrack = False
            TabOrder = 8
            Visible = False
            Width = 89
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 463
            Top = 71
            DataBinding.DataField = 'NOTA_NUMERO'
            DataBinding.DataSource = dsrMovimento
            TabOrder = 9
            OnEnter = dedDESCONTOEnter
            OnExit = dedDESCONTOExit
            Width = 74
          end
          object dedFrete: TcxDBTextEdit
            Left = 351
            Top = 71
            DataBinding.DataField = 'VALOR_FRETE'
            DataBinding.DataSource = dsrMovimento
            TabOrder = 10
            Visible = False
            OnEnter = dedDESCONTOEnter
            OnExit = dedDESCONTOExit
            Width = 89
          end
          object ckCMV: TcxCheckBox
            Left = 547
            Top = 52
            Caption = 'CMV'
            TabOrder = 11
            OnClick = ckCMVClick
            Width = 93
          end
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 781
          Height = 258
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = cxcbsNone
          PopupMenu = menuGrid
          TabOrder = 1
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Silver'
          ExplicitWidth = 785
          ExplicitHeight = 273
          object cxGridDBTableView1: TcxGridDBTableView
            DataController.DataSource = dsrItens
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnHorzSizing = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBTableView1OK: TcxGridDBColumn
              DataBinding.FieldName = 'OK'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.DisplayChecked = 'S'
              Properties.DisplayUnchecked = 'N'
              Properties.ImmediatePost = True
              Properties.ReadOnly = False
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              MinWidth = 25
              Width = 25
            end
            object cxGridDBTableView1CODBARRA: TcxGridDBColumn
              Caption = 'C'#243'd.Barras'
              DataBinding.FieldName = 'CODBARRA'
              MinWidth = 100
              Options.Editing = False
              Width = 100
            end
            object cxGridDBTableView1DESCRICAO: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'DESCRICAO'
              MinWidth = 400
              Options.Editing = False
              Width = 400
            end
            object cxGridDBTableView1CAIXAS: TcxGridDBColumn
              Caption = 'Caixas'
              DataBinding.FieldName = 'CAIXAS'
              Width = 50
            end
            object cxGridDBTableView1QUANTIDADE: TcxGridDBColumn
              Caption = 'Quant'
              DataBinding.FieldName = 'QUANTIDADE'
              MinWidth = 40
              Width = 40
            end
            object cxGridDBTableView1VALOR_UNITARIO: TcxGridDBColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'VALOR_UNITARIO'
              HeaderAlignmentHorz = taRightJustify
              MinWidth = 74
            end
            object cxGridDBTableView1VALOR_TOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VALOR_TOTAL'
              HeaderAlignmentHorz = taRightJustify
              MinWidth = 74
              Options.Editing = False
              Options.IncSearch = False
              Options.HorzSizing = False
              Options.Moving = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object pnlServicosOpcionais: TPanel
          Left = 0
          Top = 258
          Width = 781
          Height = 63
          Align = alBottom
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          Visible = False
          ExplicitTop = 273
          ExplicitWidth = 785
          object lbDescricaoDetalhada: TLabel
            Left = 16
            Top = 3
            Width = 214
            Height = 13
            Caption = 'Descri'#231#227'o personalizada dos servi'#231'os'
            FocusControl = cxDBLookupComboBox1
          end
          object dedDescricaoServ: TcxDBMemo
            Left = 16
            Top = 16
            DataBinding.DataField = 'OPCIONAIS'
            DataBinding.DataSource = dsrMovimento
            TabOrder = 0
            Height = 43
            Width = 561
          end
        end
      end
      object tabFatura: TcxTabSheet
        Caption = 'tabFatura'
        Color = clCream
        ImageIndex = 1
        ParentColor = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 444
        object pnlTotalFinal: TPanel
          Left = 0
          Top = 323
          Width = 781
          Height = 106
          Align = alBottom
          TabOrder = 0
          ExplicitTop = 338
          ExplicitWidth = 785
          object Label1: TLabel
            Left = 19
            Top = 8
            Width = 74
            Height = 13
            Caption = 'Observa'#231#245'es'
            FocusControl = cxDBMemo1
          end
          object DBText2: TDBText
            Left = 424
            Top = 8
            Width = 321
            Height = 49
            Alignment = taRightJustify
            DataField = 'VALOR_PAGAMENTOS'
            DataSource = dsrMovimento
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -37
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cxDBMemo1: TcxDBMemo
            Left = 17
            Top = 23
            DataBinding.DataField = 'OBSERVACOES'
            DataBinding.DataSource = dsrMovimento
            TabOrder = 0
            OnEnter = dedDESCONTOEnter
            OnExit = dedDESCONTOExit
            Height = 65
            Width = 313
          end
        end
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 781
          Height = 323
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          ExplicitWidth = 785
          ExplicitHeight = 338
          object cxGrid2DBTableView1: TcxGridDBTableView
            DataController.DataSource = dsrPagamento
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnHorzSizing = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsSelection.InvertSelect = False
            OptionsView.GroupByBox = False
            object cxGrid2DBTableView1SEL: TcxGridDBColumn
              Caption = 'Imp.'
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              MinWidth = 40
              Options.Filtering = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 40
            end
            object cxGrid2DBTableView1NUMERO: TcxGridDBColumn
              Caption = 'Pagamentos'
              DataBinding.FieldName = 'NUMERO'
              HeaderAlignmentHorz = taRightJustify
              MinWidth = 80
              Options.Editing = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 80
            end
            object cxGrid2DBTableView1VALOR: TcxGridDBColumn
              Caption = 'Valores'
              DataBinding.FieldName = 'VALOR'
              HeaderAlignmentHorz = taRightJustify
              MinWidth = 142
              Width = 142
            end
            object cxGrid2DBTableView1CODDOCUMENTO: TcxGridDBColumn
              Caption = 'Formas de Pagamento'
              DataBinding.FieldName = 'CODDOCUMENTO'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'CODIGO'
              Properties.ListColumns = <
                item
                  SortOrder = soAscending
                  FieldName = 'DOCUMENTO'
                end>
              Properties.ListOptions.AnsiSort = True
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = formPrincipal.dsrDocumentos
              MinWidth = 220
              Width = 220
            end
            object cxGrid2DBTableView1DATAVENCIMENTO: TcxGridDBColumn
              Caption = 'Vencimentos'
              DataBinding.FieldName = 'DATAVENCIMENTO'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.ImmediatePost = True
              MinWidth = 138
              Width = 138
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
    end
  end
  object dxBarManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = formPrincipal.imgMenu
    ImageOptions.LargeImages = formPrincipal.imgToolbar
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 664
    Top = 168
    DockControlHeights = (
      0
      0
      111
      0)
    object dxBarManagerBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'BarraSaida'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 124
      FloatTop = 116
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'lblNumero'
        end>
      OldName = 'barSaida'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManagerBar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'BarraCliente'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 80
      DockingStyle = dsTop
      FloatLeft = 124
      FloatTop = 116
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lblCliente'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'lblVendedor'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'lblOperacao'
        end>
      OldName = 'barCliente'
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = formPrincipal.actSobre
      Category = 0
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actProduto
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actServico
      Category = 0
      AutoGrayScale = False
    end
    object dxBarButton2: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object lblNumero: TdxBarStatic
      Align = iaRight
      Caption = '...'
      Category = 0
      Visible = ivAlways
      BorderStyle = sbsEtched
      RightIndent = 10
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actCliente
      Category = 0
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 2
    end
    object lblCliente: TdxBarStatic
      Caption = '...'
      Category = 0
      Visible = ivAlways
      ImageIndex = 111
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actOperacao
      Category = 0
      AutoGrayScale = False
    end
    object lblVendedor: TdxBarStatic
      Align = iaCenter
      Caption = '...'
      Category = 0
      Visible = ivAlways
      ImageIndex = 41
    end
    object lblOperacao: TdxBarStatic
      Align = iaRight
      Caption = '...'
      Category = 0
      Visible = ivAlways
      ImageIndex = 49
      RightIndent = 10
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = actVendedor
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = actSerie
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = actFechar
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = actFaturar
      Category = 0
      AutoGrayScale = False
    end
  end
  object actSaida: TActionList
    Images = formPrincipal.imgToolbar
    Left = 664
    Top = 112
    object actAjuda: TAction
      Caption = '&Ajuda [F1]'
      OnExecute = actAjudaExecute
    end
    object actProduto: TAction
      Caption = '&Produto [F6]'
      ImageIndex = 8
      ShortCut = 117
      OnExecute = actProdutoExecute
    end
    object actServico: TAction
      Caption = '&Servi'#231'o [F7]'
      ImageIndex = 72
      ShortCut = 118
      OnExecute = actServicoExecute
    end
    object actCliente: TAction
      Caption = '&Cliente [F4]'
      ImageIndex = 111
      ShortCut = 115
      OnExecute = actClienteExecute
    end
    object actVendedor: TAction
      Caption = '&Vendedor [F5]'
      ImageIndex = 41
      ShortCut = 116
      OnExecute = actVendedorExecute
    end
    object actOperacao: TAction
      Caption = '&Hist'#243'rico [F8]'
      ImageIndex = 49
      ShortCut = 119
      OnExecute = actOperacaoExecute
    end
    object actSerie: TAction
      Caption = '&N'#250'm S'#233'rie [F8]'
      ImageIndex = 44
      Visible = False
      OnExecute = actSerieExecute
    end
    object actFaturar: TAction
      Caption = '&Continuar [Alt+C]'
      ImageIndex = 92
      ShortCut = 32835
      OnExecute = actFaturarExecute
    end
    object actFechar: TAction
      Caption = '&Fechar Sa'#237'da [F12]'
      ImageIndex = 92
      ShortCut = 123
      Visible = False
      OnExecute = actFecharExecute
    end
  end
  object dsrItens: TDataSource
    AutoEdit = False
    DataSet = cdsItens
    OnDataChange = dsrItensDataChange
    Left = 498
    Top = 228
  end
  object dsrMovimento: TDataSource
    DataSet = cdsMovimento
    OnDataChange = dsrMovimentoDataChange
    Left = 242
    Top = 228
  end
  object memMovimento: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 162
    Top = 172
    object memMovimentoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
    end
    object memMovimentoCODHISTORICOPAG: TIntegerField
      FieldName = 'CODHISTORICOPAG'
    end
    object memMovimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object memMovimentoCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object memMovimentoCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object memMovimentoCODCONDPAG: TIntegerField
      FieldName = 'CODCONDPAG'
    end
    object memMovimentoCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
    object memMovimentoVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object memMovimentoPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object memMovimentoVALOR_ACRESCIMO: TFloatField
      FieldName = 'VALOR_ACRESCIMO'
    end
    object memMovimentoPERC_ACRESCIMO: TFloatField
      FieldName = 'PERC_ACRESCIMO'
    end
    object memMovimentoVALOR_JUROS: TFloatField
      FieldName = 'VALOR_JUROS'
    end
    object memMovimentoPERC_JUROS: TFloatField
      FieldName = 'PERC_JUROS'
    end
    object memMovimentoVALOR_ITENS: TFloatField
      FieldName = 'VALOR_ITENS'
    end
    object memMovimentoVALOR_PAGAMENTOS: TFloatField
      FieldName = 'VALOR_PAGAMENTOS'
    end
    object memMovimentoOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 2048
    end
    object memMovimentoVALOR_CUSTO: TFloatField
      FieldName = 'VALOR_CUSTO'
    end
    object memMovimentoMARGEM: TFloatField
      FieldName = 'MARGEM'
    end
    object memMovimentoNOTA_NUMERO: TIntegerField
      FieldName = 'NOTA_NUMERO'
    end
    object memMovimentoCONDICOES1: TStringField
      FieldName = 'CONDICOES1'
      Size = 512
    end
    object memMovimentoCONDICOES2: TStringField
      FieldName = 'CONDICOES2'
      Size = 512
    end
    object memMovimentoOPCIONAIS: TStringField
      FieldName = 'OPCIONAIS'
      Size = 512
    end
    object memMovimentoDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object memMovimentoVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
  end
  object memItens: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 426
    Top = 172
    object memItensCODBARRA: TStringField
      FieldName = 'CODBARRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 13
    end
    object memItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object memItensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object memItensVALOR_ORIGINAL: TFloatField
      FieldName = 'VALOR_ORIGINAL'
    end
    object memItensICMS: TFloatField
      FieldName = 'ICMS'
    end
    object memItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object memItensVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
    end
    object memItensOK: TStringField
      FieldName = 'OK'
      Size = 1
    end
    object memItensITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object memItensVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object memItensDESC2: TStringField
      FieldName = 'DESC2'
      Size = 40
    end
    object memItensTOTAL_ORIGINAL: TFloatField
      FieldName = 'TOTAL_ORIGINAL'
    end
    object memItensTOTAL_DESCONTO: TFloatField
      FieldName = 'TOTAL_DESCONTO'
    end
    object memItensICMSCOMPRA: TFloatField
      FieldName = 'ICMSCOMPRA'
    end
    object memItensIPI: TFloatField
      FieldName = 'IPI'
    end
    object memItensSITTRIBU: TStringField
      FieldName = 'SITTRIBU'
    end
    object memItensVALOR_CUSTO: TFloatField
      FieldName = 'VALOR_CUSTO'
    end
    object memItensTOTAL_CUSTO: TFloatField
      FieldName = 'TOTAL_CUSTO'
    end
    object memItensCAIXA_ITENS: TIntegerField
      FieldName = 'CAIXA_ITENS'
    end
    object memItensCAIXAS: TIntegerField
      FieldName = 'CAIXAS'
    end
  end
  object provMovimento: TDataSetProvider
    DataSet = memMovimento
    UpdateMode = upWhereKeyOnly
    Left = 162
    Top = 228
  end
  object cdsMovimento: TClientDataSet
    Tag = 1
    Aggregates = <>
    FetchOnDemand = False
    PacketRecords = 1
    Params = <>
    ProviderName = 'provMovimento'
    OnCalcFields = cdsMovimentoCalcFields
    Left = 242
    Top = 172
    object cdsMovimentoRecId: TIntegerField
      FieldName = 'RecId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsMovimentoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
    end
    object cdsMovimentoCODHISTORICOPAG: TIntegerField
      FieldName = 'CODHISTORICOPAG'
    end
    object cdsMovimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsMovimentoCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object cdsMovimentoCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object cdsMovimentoCODCONDPAG: TIntegerField
      FieldName = 'CODCONDPAG'
      OnChange = cdsMovimentoCODCONDPAGChange
    end
    object cdsMovimentoCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
    object cdsMovimentoVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      OnChange = cdsMovimentoVALOR_DESCONTOChange
      currency = True
    end
    object cdsMovimentoPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
      OnChange = cdsMovimentoPERC_DESCONTOChange
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00'
    end
    object cdsMovimentoVALOR_ACRESCIMO: TFloatField
      FieldName = 'VALOR_ACRESCIMO'
      OnChange = cdsMovimentoVALOR_ACRESCIMOChange
      currency = True
    end
    object cdsMovimentoPERC_ACRESCIMO: TFloatField
      FieldName = 'PERC_ACRESCIMO'
      OnChange = cdsMovimentoPERC_ACRESCIMOChange
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00'
    end
    object cdsMovimentoVALOR_JUROS: TFloatField
      FieldName = 'VALOR_JUROS'
      currency = True
    end
    object cdsMovimentoPERC_JUROS: TFloatField
      FieldName = 'PERC_JUROS'
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00'
    end
    object cdsMovimentoVALOR_ITENS: TFloatField
      FieldName = 'VALOR_ITENS'
    end
    object cdsMovimentoVALOR_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '####0.00'
      Calculated = True
    end
    object cdsMovimentoVALOR_PAGAMENTOS: TFloatField
      FieldName = 'VALOR_PAGAMENTOS'
      DisplayFormat = '#####0.00'
    end
    object cdsMovimentoOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 2048
    end
    object cdsMovimentoVALOR_CUSTO: TFloatField
      FieldName = 'VALOR_CUSTO'
      DisplayFormat = '####0.00'
    end
    object cdsMovimentoMARGEM: TFloatField
      FieldName = 'MARGEM'
      DisplayFormat = '##0.00%'
    end
    object cdsMovimentoNOTA_NUMERO: TIntegerField
      FieldName = 'NOTA_NUMERO'
    end
    object cdsMovimentoCONDICOES1: TStringField
      FieldName = 'CONDICOES1'
      Size = 512
    end
    object cdsMovimentoCONDICOES2: TStringField
      FieldName = 'CONDICOES2'
      Size = 512
    end
    object cdsMovimentoOPCIONAIS: TStringField
      FieldName = 'OPCIONAIS'
      Size = 512
    end
    object cdsMovimentoDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object cdsMovimentoVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      DisplayFormat = '#####0.00'
    end
  end
  object provItens: TDataSetProvider
    DataSet = memItens
    Left = 426
    Top = 228
  end
  object cdsItens: TClientDataSet
    Tag = 1
    Aggregates = <>
    AggregatesActive = True
    FetchOnDemand = False
    Params = <>
    ProviderName = 'provItens'
    BeforeInsert = cdsItensBeforeInsert
    AfterPost = cdsItensAfterPost
    OnCalcFields = cdsItensCalcFields
    Left = 498
    Top = 172
    object cdsItensRecId: TIntegerField
      FieldName = 'RecId'
      ReadOnly = True
    end
    object cdsItensCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object cdsItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object cdsItensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      OnChange = cdsItensQUANTIDADEChange
    end
    object cdsItensVALOR_ORIGINAL: TFloatField
      FieldName = 'VALOR_ORIGINAL'
    end
    object cdsItensICMS: TFloatField
      FieldName = 'ICMS'
      DisplayFormat = '##0.00%'
    end
    object cdsItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
      DisplayFormat = '##0.00%'
      EditFormat = '###.##'
    end
    object cdsItensVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
      OnChange = cdsItensQUANTIDADEChange
      DisplayFormat = '####0.00'
    end
    object cdsItensOK: TStringField
      FieldName = 'OK'
      OnChange = cdsItensQUANTIDADEChange
      Size = 1
    end
    object cdsItensITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object cdsItensVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '####0.00'
    end
    object cdsItensDESC2: TStringField
      FieldName = 'DESC2'
      Size = 40
    end
    object cdsItensTOTAL_ORIGINAL: TFloatField
      FieldName = 'TOTAL_ORIGINAL'
    end
    object cdsItensTOTAL_DESCONTO: TFloatField
      FieldName = 'TOTAL_DESCONTO'
    end
    object cdsItensTESTE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TESTE'
      Calculated = True
    end
    object cdsItensICMSCOMPRA: TFloatField
      FieldName = 'ICMSCOMPRA'
      DisplayFormat = '##0.00%'
    end
    object cdsItensIPI: TFloatField
      FieldName = 'IPI'
      DisplayFormat = '##0.00%'
    end
    object cdsItensSITTRIBU: TStringField
      FieldName = 'SITTRIBU'
    end
    object cdsItensVALOR_CUSTO: TFloatField
      FieldName = 'VALOR_CUSTO'
    end
    object cdsItensTOTAL_CUSTO: TFloatField
      FieldName = 'TOTAL_CUSTO'
    end
    object cdsItensCAIXA_ITENS: TIntegerField
      FieldName = 'CAIXA_ITENS'
    end
    object cdsItensCAIXAS: TIntegerField
      FieldName = 'CAIXAS'
      OnChange = cdsItensCAIXASChange
    end
    object cdsItensTOTAL: TAggregateField
      DefaultExpression = '0'
      FieldName = 'TOTAL'
      Active = True
      DisplayName = 'TOTAL'
      DisplayFormat = '####0.00'
      Expression = 'sum(total_original)'
    end
    object cdsItensDESCONTO: TAggregateField
      DefaultExpression = '0'
      FieldName = 'DESCONTO'
      Active = True
      DisplayName = 'DESCONTO'
      DisplayFormat = '####0.00'
      Expression = 'sum(total_desconto)'
    end
    object cdsItensCUSTO: TAggregateField
      DefaultExpression = '0'
      DisplayWidth = 10
      FieldName = 'CUSTO'
      Active = True
      DisplayName = 'CUSTO'
      DisplayFormat = '####0.00'
      Expression = 'sum(total_custo)'
    end
  end
  object tmrItens: TTimer
    Enabled = False
    Interval = 300
    OnTimer = tmrItensTimer
    Left = 562
    Top = 172
  end
  object cdsEstorno: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'USUARIOESTORNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RE_MOVIMENTO'
        ParamType = ptOutput
        Size = 4
      end>
    ProviderName = 'pmEstorno'
    RemoteServer = formPrincipal.SocketConnection
    Left = 58
    Top = 228
  end
  object cdsVenda: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    FetchOnDemand = False
    PacketRecords = 1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODCLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODRESPONSAVEL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODVENDEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODCONDPAG'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODHISTORICOPAG'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 3
        Name = 'PROCESSO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PASSAGEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'NUMDOC'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 3
        Name = 'TIPODOC'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'DATADOC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODCOMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'FRETE'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 14
        Name = 'I01_CODBARRA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I01_QUANTIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I01_VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I01_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I01_ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I01_ICMSCOMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I01_IPI'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 3
        Name = 'I01_SITTRIBU'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 14
        Name = 'I02_CODBARRA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I02_QUANTIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I02_VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I02_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 4
        Name = 'I02_ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I02_ICMSCOMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I02_IPI'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 3
        Name = 'I02_SITTRIBU'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 14
        Name = 'I03_CODBARRA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I03_QUANTIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I03_VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I03_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I03_ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I03_ICMSCOMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'I03_IPI'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 3
        Name = 'I03_SITTRIBU'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RE_MOVIMENTO'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RE_01'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RE_02'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RE_03'
        ParamType = ptOutput
        Size = 4
      end>
    ProviderName = 'pmVenda'
    RemoteServer = formPrincipal.SocketConnection
    Left = 58
    Top = 284
  end
  object cdsPagamento: TClientDataSet
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
    AfterOpen = cdsPagamentoAfterOpen
    AfterPost = cdsPagamentoAfterPost
    Left = 242
    Top = 284
    object cdsPagamentoSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsPagamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPagamentoNUMERO: TSmallintField
      FieldName = 'NUMERO'
    end
    object cdsPagamentoVALOR: TFloatField
      FieldName = 'VALOR'
      OnChange = cdsPagamentoVALORChange
      DisplayFormat = '#,##0.00'
    end
    object cdsPagamentoCODDOCUMENTO: TIntegerField
      FieldName = 'CODDOCUMENTO'
      OnChange = cdsPagamentoVALORChange
    end
    object cdsPagamentoDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
      OnChange = cdsPagamentoDATAVENCIMENTOChange
    end
    object cdsPagamentoDATAPAGO: TSQLTimeStampField
      FieldName = 'DATAPAGO'
    end
    object cdsPagamentoSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsPagamentoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsPagamentoTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsPagamentoTOTAL: TAggregateField
      Alignment = taRightJustify
      DefaultExpression = '0'
      DisplayWidth = 15
      FieldName = 'TOTAL'
      Active = True
      Expression = 'SUM(VALOR)'
    end
  end
  object dsrPagamento: TDataSource
    DataSet = cdsPagamento
    Left = 242
    Top = 340
  end
  object cdsFechamento: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'USUARIOFECHAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 254
        Name = 'OBSERVACOES'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 512
        Name = 'CONDICOES1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 512
        Name = 'CONDICOES2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 512
        Name = 'OPCIONAIS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RE_MOVIMENTO'
        ParamType = ptOutput
        Size = 4
      end>
    ProviderName = 'pmFecha'
    RemoteServer = formPrincipal.SocketConnection
    Left = 58
    Top = 340
  end
  object tmrPagamento: TTimer
    Enabled = False
    Interval = 300
    OnTimer = tmrPagamentoTimer
    Left = 322
    Top = 284
  end
  object tmrMovimento: TTimer
    Enabled = False
    Interval = 300
    OnTimer = tmrMovimentoTimer
    Left = 322
    Top = 172
  end
  object cdsLoadMov: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'pcLoadMov'
    RemoteServer = formPrincipal.SocketConnection
    Left = 426
    Top = 284
    object cdsLoadMovCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsLoadMovNOME: TStringField
      FieldName = 'NOME'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsLoadMovCODHISTORICOPAG: TIntegerField
      FieldName = 'CODHISTORICOPAG'
    end
    object cdsLoadMovHISTORICOPAG: TStringField
      FieldName = 'HISTORICOPAG'
      FixedChar = True
      Size = 60
    end
    object cdsLoadMovCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object cdsLoadMovVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 30
    end
    object cdsLoadMovCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object cdsLoadMovCONDICAO: TStringField
      FieldName = 'CONDICAO'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsLoadMovCODCONDPAG: TIntegerField
      FieldName = 'CODCONDPAG'
    end
    object cdsLoadMovOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 2048
    end
    object cdsLoadMovCPF: TStringField
      FieldName = 'CPF'
      FixedChar = True
    end
    object cdsLoadMovCGC: TStringField
      FieldName = 'CGC'
      FixedChar = True
    end
    object cdsLoadMovPESSOAFISICA: TStringField
      FieldName = 'PESSOAFISICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsLoadMovCONDICOES1: TStringField
      FieldName = 'CONDICOES1'
      Size = 1024
    end
    object cdsLoadMovCONDICOES2: TStringField
      FieldName = 'CONDICOES2'
      Size = 1024
    end
    object cdsLoadMovOPCIONAIS: TStringField
      FieldName = 'OPCIONAIS'
      Size = 1024
    end
    object cdsLoadMovSERVICOS: TStringField
      FieldName = 'SERVICOS'
      Size = 1024
    end
    object cdsLoadMovLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      FixedChar = True
      Size = 60
    end
    object cdsLoadMovNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsLoadMovCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      FixedChar = True
      Size = 40
    end
    object cdsLoadMovBAIRRO: TStringField
      FieldName = 'BAIRRO'
      FixedChar = True
      Size = 60
    end
    object cdsLoadMovCIDADE: TStringField
      FieldName = 'CIDADE'
      FixedChar = True
      Size = 60
    end
    object cdsLoadMovESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
  end
  object cdsLoadItens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'pcLoadItens'
    RemoteServer = formPrincipal.SocketConnection
    Left = 426
    Top = 340
  end
  object tmrAutoFecha: TTimer
    Enabled = False
    Interval = 512
    OnTimer = tmrAutoFechaTimer
    Left = 666
    Top = 228
  end
  object tmrAutoContinua: TTimer
    Enabled = False
    Interval = 512
    OnTimer = tmrAutoContinuaTimer
    Left = 562
    Top = 228
  end
  object tmrCaixas: TTimer
    Enabled = False
    Interval = 300
    OnTimer = tmrCaixasTimer
    Left = 562
    Top = 116
  end
  object menuGrid: TPopupMenu
    OnPopup = menuGridPopup
    Left = 323
    Top = 229
    object CancelarItem1: TMenuItem
      Caption = 'Cancelar Item'
      OnClick = CancelarItem1Click
    end
  end
  object cdsVerifica: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFixedChar
        Precision = 1
        Name = 'BLOQUEIO'
        ParamType = ptOutput
        Size = 2
      end
      item
        DataType = ftString
        Precision = 80
        Name = 'MENSAGEM'
        ParamType = ptOutput
        Size = 81
      end>
    ProviderName = 'pcVerifica'
    RemoteServer = formPrincipal.SocketConnection
    Left = 58
    Top = 172
  end
  object cdsNFEmissao: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'NOTA_NUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 3
        Name = 'NOTA_TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Precision = 8
        Name = 'DATA_EMISSAO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Precision = 8
        Name = 'DATA_SAIDA'
        ParamType = ptInput
      end>
    ProviderName = 'pvNFemissao'
    RemoteServer = formPrincipal.SocketConnection
    Left = 320
    Top = 344
  end
end
