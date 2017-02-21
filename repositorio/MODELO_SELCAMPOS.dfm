object formSelCampos: TformSelCampos
  Left = 343
  Top = 200
  BorderStyle = bsDialog
  Caption = 'Selecionar Campos'
  ClientHeight = 269
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 376
    Height = 269
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel1: TBevel
      Left = 0
      Top = 226
      Width = 376
      Height = 2
      Align = alBottom
      Shape = bsBottomLine
      ExplicitWidth = 352
    end
    object pnlBotoes: TPanel
      Left = 0
      Top = 228
      Width = 376
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object cxButton1: TcxButton
        Left = 80
        Top = 8
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Caption = 'OK'
        TabOrder = 0
        OnClick = cxButton1Click
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
      end
      object cxButton2: TcxButton
        Left = 208
        Top = 8
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Cancel = True
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = cxButton2Click
        LookAndFeel.Kind = lfOffice11
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 376
      Height = 226
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = cxcbsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsrCampos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        Styles.ContentOdd = formPrincipal.ColunaImpar
        Styles.Selection = formPrincipal.ColunaSelecionada
        object cxGrid1DBTableView1SEL: TcxGridDBColumn
          DataBinding.FieldName = 'SEL'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          MinWidth = 30
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 30
        end
        object cxGrid1DBTableView1CAMPO: TcxGridDBColumn
          DataBinding.FieldName = 'CAMPO'
          MinWidth = 250
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 250
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object dsrCampos: TDataSource
    Left = 304
    Top = 96
  end
end
