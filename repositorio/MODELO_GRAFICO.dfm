object formModeloGrafico: TformModeloGrafico
  Left = 346
  Top = 220
  Caption = 'Gr'#225'fico'
  ClientHeight = 359
  ClientWidth = 531
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxStatusBar: TdxStatusBar
    Left = 0
    Top = 339
    Width = 531
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
    PaintStyle = stpsOffice11
    LookAndFeel.Kind = lfUltraFlat
    Color = clCream
    ParentFont = True
  end
  object DBChart1: TDBChart
    Left = 0
    Top = 72
    Width = 531
    Height = 267
    BackWall.Gradient.EndColor = 11118482
    BackWall.Gradient.Visible = True
    BackWall.Transparent = False
    Border.Color = 14645801
    Border.Width = 7
    BottomWall.Gradient.EndColor = 16580349
    BottomWall.Gradient.StartColor = 3114493
    BottomWall.Gradient.Visible = True
    Gradient.Direction = gdDiagonalDown
    Gradient.EndColor = 11645361
    Gradient.Visible = True
    LeftWall.Gradient.EndColor = 2413052
    LeftWall.Gradient.StartColor = 900220
    LeftWall.Gradient.Visible = True
    Title.Text.Strings = (
      'TDBChart')
    Legend.CheckBoxes = True
    Legend.Font.Charset = ANSI_CHARSET
    Legend.Gradient.Direction = gdTopBottom
    Legend.Gradient.EndColor = clSilver
    Legend.Gradient.StartColor = clWhite
    Legend.Gradient.Visible = True
    Legend.LegendStyle = lsSeries
    Legend.Shadow.Transparency = 50
    Legend.TextStyle = ltsPlain
    Legend.Title.Text.Strings = (
      'Legenda')
    Legend.Title.TextAlignment = taCenter
    Shadow.Color = clBlack
    Shadow.HorizSize = 10
    Shadow.VertSize = 10
    View3D = False
    Zoom.Animated = True
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 5
    PrintMargins = (
      15
      27
      15
      27)
    object Series1: TBarSeries
      Marks.Callout.Brush.Color = clBlack
      Marks.Gradient.Visible = True
      Marks.Visible = False
      DataSource = DBCrossTabSource
      Gradient.Direction = gdTopBottom
      MultiBar = mbSelfStack
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object dxBarManager: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = formPrincipal.imgLinks
    ImageOptions.LargeImages = formPrincipal.imgCadastros
    ImageOptions.UseLargeImagesForLargeIcons = True
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    ShowFullMenusAfterDelay = False
    Style = bmsOffice11
    UseSystemFont = True
    Left = 432
    Top = 112
    DockControlHeights = (
      0
      0
      72
      0)
    object dxBarManagerBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 296
      FloatTop = 220
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
          ItemName = 'dxBarLargeButton4'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Ajuda [F1]'
      Category = 0
      Hint = 'Ajuda [F1]'
      Visible = ivAlways
      LargeImageIndex = 5
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Gr'#225'fico'
      Category = 0
      Hint = 'Gr'#225'fico'
      Visible = ivAlways
      LargeImageIndex = 6
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
      LargeImageIndex = 7
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'Fechar [ESC]'
      Category = 0
      Hint = 'Fechar [ESC]'
      Visible = ivAlways
      LargeImageIndex = 3
    end
  end
  object DBCrossTabSource: TDBCrossTabSource
    DataSet = formVendas.cdsDados
    GroupField = 'NOME'
    LabelField = 'NOME'
    Series = Series1
    ValueField = 'NOTA_VALOR_TOTAL'
    Left = 432
    Top = 168
  end
end
