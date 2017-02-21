object dmoEtiquetas: TdmoEtiquetas
  OldCreateOrder = False
  Height = 258
  Width = 636
  object cdsEtiqCompras: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftInteger
        Name = 'CODCOMPRA'
        ParamType = ptInput
      end>
    ProviderName = 'prEtiqcompras'
    RemoteServer = formPrincipal.SocketConnection
    Left = 128
    Top = 16
    object cdsEtiqComprasBARRA: TStringField
      FieldName = 'BARRA'
      Required = True
      FixedChar = True
      Size = 14
    end
    object cdsEtiqComprasSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      FixedChar = True
    end
    object cdsEtiqComprasNUMERO_FONE: TStringField
      FieldName = 'NUMERO_FONE'
      FixedChar = True
    end
    object cdsEtiqComprasQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 20
      Size = 3
    end
    object cdsEtiqComprasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 60
    end
    object cdsEtiqComprasNUMETIQ: TIntegerField
      FieldName = 'NUMETIQ'
      Required = True
    end
    object cdsEtiqComprasETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsEtiqComprasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsEtiqComprasPRECOVENDA: TFMTBCDField
      FieldName = 'PRECOVENDA'
      Precision = 20
      Size = 3
    end
  end
  object cdsEtiqProdutos: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftInteger
        Name = 'CODPRODUTO'
        ParamType = ptInput
      end>
    ProviderName = 'prEtiqprodutos'
    RemoteServer = formPrincipal.SocketConnection
    Left = 224
    Top = 16
    object cdsEtiqProdutosBARRA: TStringField
      FieldName = 'BARRA'
      Required = True
      FixedChar = True
      Size = 14
    end
    object cdsEtiqProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 60
    end
    object cdsEtiqProdutosNUMETIQ: TIntegerField
      FieldName = 'NUMETIQ'
      Required = True
    end
    object cdsEtiqProdutosETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsEtiqProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEtiqProdutosPRECOVENDA: TFMTBCDField
      FieldName = 'PRECOVENDA'
      Precision = 20
      Size = 3
    end
  end
  object memEtiqCompras: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 128
    Top = 72
    object memEtiqComprasBARRA: TStringField
      FieldName = 'BARRA'
      Size = 14
    end
    object memEtiqComprasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object memEtiqComprasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object memEtiqComprasPRECO: TStringField
      FieldName = 'PRECO'
    end
    object memEtiqComprasFONE: TStringField
      FieldName = 'FONE'
    end
    object memEtiqComprasPRECOVISTA: TStringField
      FieldName = 'PRECOVISTA'
    end
  end
  object memEtiqProdutos: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 224
    Top = 72
    object memEtiqProdutosBARRA: TStringField
      FieldName = 'BARRA'
      Size = 14
    end
    object memEtiqProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object memEtiqProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object memEtiqProdutosPRECO: TStringField
      FieldName = 'PRECO'
    end
    object memEtiqProdutosPRECOVISTA: TStringField
      FieldName = 'PRECOVISTA'
    end
  end
  object ppDBEtiqCompras: TppDBPipeline
    DataSource = dsrEtiqCompras
    UserName = 'DBEtiqCompras'
    Left = 128
    Top = 184
    object ppDBEtiqComprasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'RecId'
      FieldName = 'RecId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBEtiqComprasppField2: TppField
      FieldAlias = 'BARRA'
      FieldName = 'BARRA'
      FieldLength = 14
      DisplayWidth = 14
      Position = 1
    end
    object ppDBEtiqComprasppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBEtiqComprasppField4: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object ppDBEtiqComprasppField5: TppField
      FieldAlias = 'PRECO'
      FieldName = 'PRECO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object ppDBEtiqComprasppField6: TppField
      FieldAlias = 'FONE'
      FieldName = 'FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppDBEtiqComprasppField7: TppField
      FieldAlias = 'PRECOVISTA'
      FieldName = 'PRECOVISTA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
  end
  object ppDBEtiqProdutos: TppDBPipeline
    DataSource = dsrEtiqProdutos
    UserName = 'DBEtiqProdutos'
    Left = 224
    Top = 184
    object ppDBEtiqProdutosppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'RecId'
      FieldName = 'RecId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBEtiqProdutosppField2: TppField
      FieldAlias = 'BARRA'
      FieldName = 'BARRA'
      FieldLength = 14
      DisplayWidth = 14
      Position = 1
    end
    object ppDBEtiqProdutosppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBEtiqProdutosppField4: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object ppDBEtiqProdutosppField5: TppField
      FieldAlias = 'PRECO'
      FieldName = 'PRECO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object ppDBEtiqProdutosppField6: TppField
      FieldAlias = 'PRECOVISTA'
      FieldName = 'PRECOVISTA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
  end
  object dsrEtiqCompras: TDataSource
    DataSet = memEtiqCompras
    Left = 128
    Top = 128
  end
  object dsrEtiqProdutos: TDataSource
    DataSet = memEtiqProdutos
    Left = 224
    Top = 128
  end
  object ppEtiqProdutos04x20: TppReport
    AutoStop = False
    Columns = 4
    ColumnPositions.Strings = (
      '9000'
      '56500'
      '104000'
      '151500')
    DataPipeline = ppDBEtiqProdutos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 12500
    PrinterSetup.mmMarginLeft = 9000
    PrinterSetup.mmMarginRight = 9000
    PrinterSetup.mmMarginTop = 12500
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 119
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = []
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 512
    Top = 16
    Version = '15.0'
    mmColumnWidth = 47500
    DataPipelineName = 'ppDBEtiqProdutos'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand1: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 12700
      mmPrintPosition = 0
      object ppDBBarCode1: TppDBBarCode
        UserName = 'DBBarCode1'
        AlignBarCode = ahLeft
        BarCodeType = bcEAN_13
        BarColor = clWindowText
        DataField = 'BARRA'
        DataPipeline = ppDBEtiqProdutos
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiqProdutos'
        mmHeight = 11377
        mmLeft = 6615
        mmTop = 1058
        mmWidth = 39423
        BandType = 4
        LayerName = Foreground3
        mmBarWidth = 330
        mmWideBarRatio = 76200
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppEtiqProdutos03x10: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '4800'
      '74500'
      '144500')
    DataPipeline = ppDBEtiqProdutos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 12200
    PrinterSetup.mmMarginLeft = 4800
    PrinterSetup.mmMarginRight = 4800
    PrinterSetup.mmMarginTop = 12200
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 119
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = []
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 512
    Top = 72
    Version = '15.0'
    mmColumnWidth = 68800
    DataPipelineName = 'ppDBEtiqProdutos'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand2: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppDBBarCode2: TppDBBarCode
        UserName = 'DBBarCode1'
        AlignBarCode = ahLeft
        BarCodeType = bcEAN_13
        BarColor = clWindowText
        DataField = 'BARRA'
        DataPipeline = ppDBEtiqProdutos
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiqProdutos'
        mmHeight = 11377
        mmLeft = 23283
        mmTop = 12700
        mmWidth = 39423
        BandType = 4
        mmBarWidth = 330
        mmWideBarRatio = 76200
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiqProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiqProdutos'
        mmHeight = 10848
        mmLeft = 3969
        mmTop = 2117
        mmWidth = 60854
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiqProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiqProdutos'
        mmHeight = 5027
        mmLeft = 4233
        mmTop = 12700
        mmWidth = 15610
        BandType = 4
      end
    end
    object ppColumnFooterBand2: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppEtiqProdutos04x20preco: TppReport
    AutoStop = False
    Columns = 4
    ColumnPositions.Strings = (
      '14000'
      '61000'
      '108000'
      '155000')
    DataPipeline = ppDBEtiqProdutos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 13000
    PrinterSetup.mmMarginLeft = 9000
    PrinterSetup.mmMarginRight = 19000
    PrinterSetup.mmMarginTop = 9000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 119
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = []
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 512
    Top = 128
    Version = '15.0'
    mmColumnWidth = 47000
    DataPipelineName = 'ppDBEtiqProdutos'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand3: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 12700
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiqProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiqProdutos'
        mmHeight = 7408
        mmLeft = 15610
        mmTop = 1323
        mmWidth = 29898
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Anchors = [atLeft, atBottom]
        DataField = 'PRECO'
        DataPipeline = ppDBEtiqProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEtiqProdutos'
        mmHeight = 3175
        mmLeft = 24871
        mmTop = 8467
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        Anchors = [atLeft, atBottom]
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiqProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEtiqProdutos'
        mmHeight = 3175
        mmLeft = 3440
        mmTop = 1323
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppColumnFooterBand3: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand3: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppEtiqProdutos03x10preco: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '4800'
      '74500'
      '144500')
    DataPipeline = ppDBEtiqProdutos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 12200
    PrinterSetup.mmMarginLeft = 4800
    PrinterSetup.mmMarginRight = 4800
    PrinterSetup.mmMarginTop = 12200
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 119
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = []
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 512
    Top = 184
    Version = '15.0'
    mmColumnWidth = 68800
    DataPipelineName = 'ppDBEtiqProdutos'
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand4: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppDBBarCode3: TppDBBarCode
        UserName = 'DBBarCode1'
        AlignBarCode = ahLeft
        BarCodeType = bcEAN_13
        BarColor = clWindowText
        DataField = 'BARRA'
        DataPipeline = ppDBEtiqProdutos
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiqProdutos'
        mmHeight = 11377
        mmLeft = 23283
        mmTop = 12700
        mmWidth = 39423
        BandType = 4
        mmBarWidth = 330
        mmWideBarRatio = 76200
      end
      object ppDBText5: TppDBText
        UserName = 'DBText1'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiqProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiqProdutos'
        mmHeight = 10848
        mmLeft = 3440
        mmTop = 2117
        mmWidth = 60854
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText2'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiqProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEtiqProdutos'
        mmHeight = 5027
        mmLeft = 2117
        mmTop = 13229
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'PRECOVISTA'
        DataPipeline = ppDBEtiqProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEtiqProdutos'
        mmHeight = 5027
        mmLeft = 2117
        mmTop = 19050
        mmWidth = 17463
        BandType = 4
      end
    end
    object ppColumnFooterBand4: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand4: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ppEtiqCompras04x20: TppReport
    AutoStop = False
    Columns = 4
    ColumnPositions.Strings = (
      '9000'
      '56500'
      '104000'
      '151500')
    DataPipeline = ppDBEtiqCompras
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 12500
    PrinterSetup.mmMarginLeft = 9000
    PrinterSetup.mmMarginRight = 9000
    PrinterSetup.mmMarginTop = 12500
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 119
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = []
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 357
    Top = 16
    Version = '15.0'
    mmColumnWidth = 47500
    DataPipelineName = 'ppDBEtiqCompras'
    object ppHeaderBand5: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand5: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 12700
      mmPrintPosition = 0
      object ppDBBarCode4: TppDBBarCode
        UserName = 'DBBarCode1'
        AlignBarCode = ahLeft
        BarCodeType = bcEAN_13
        BarColor = clWindowText
        DataField = 'BARRA'
        DataPipeline = ppDBEtiqCompras
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiqCompras'
        mmHeight = 11377
        mmLeft = 6615
        mmTop = 1058
        mmWidth = 39423
        BandType = 4
        LayerName = Foreground
        mmBarWidth = 330
        mmWideBarRatio = 76200
      end
    end
    object ppColumnFooterBand5: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand5: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object ppEtiqCompras03x10: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '4800'
      '74500'
      '144500')
    DataPipeline = ppDBEtiqCompras
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 12200
    PrinterSetup.mmMarginLeft = 4800
    PrinterSetup.mmMarginRight = 4800
    PrinterSetup.mmMarginTop = 12200
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 119
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = []
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 357
    Top = 72
    Version = '15.0'
    mmColumnWidth = 68800
    DataPipelineName = 'ppDBEtiqCompras'
    object ppHeaderBand6: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand6: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand6: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppDBBarCode5: TppDBBarCode
        UserName = 'DBBarCode1'
        AlignBarCode = ahLeft
        BarCodeType = bcEAN_13
        BarColor = clWindowText
        DataField = 'BARRA'
        DataPipeline = ppDBEtiqCompras
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiqCompras'
        mmHeight = 11377
        mmLeft = 21696
        mmTop = 12700
        mmWidth = 39423
        BandType = 4
        mmBarWidth = 330
        mmWideBarRatio = 76200
      end
      object ppDBText7: TppDBText
        UserName = 'DBText1'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiqCompras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiqCompras'
        mmHeight = 10583
        mmLeft = 3704
        mmTop = 2381
        mmWidth = 60854
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText2'
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiqCompras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiqCompras'
        mmHeight = 5027
        mmLeft = 4233
        mmTop = 12700
        mmWidth = 15610
        BandType = 4
      end
    end
    object ppColumnFooterBand6: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand6: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList6: TppParameterList
    end
  end
  object ppEtiqCompras04x20preco: TppReport
    AutoStop = False
    Columns = 4
    ColumnPositions.Strings = (
      '9000'
      '56000'
      '103000'
      '150000')
    DataPipeline = ppDBEtiqCompras
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 13000
    PrinterSetup.mmMarginLeft = 9000
    PrinterSetup.mmMarginRight = 19000
    PrinterSetup.mmMarginTop = 9000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 119
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = []
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 357
    Top = 128
    Version = '15.0'
    mmColumnWidth = 47000
    DataPipelineName = 'ppDBEtiqCompras'
    object ppColumnHeaderBand7: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand7: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 12700
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'DBText3'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiqCompras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiqCompras'
        mmHeight = 7408
        mmLeft = 15346
        mmTop = 1323
        mmWidth = 30163
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        UserName = 'DBText4'
        Anchors = [atLeft, atBottom]
        DataField = 'PRECO'
        DataPipeline = ppDBEtiqCompras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEtiqCompras'
        mmHeight = 3175
        mmLeft = 24871
        mmTop = 8467
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        Anchors = [atLeft, atBottom]
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiqCompras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEtiqCompras'
        mmHeight = 3175
        mmLeft = 3440
        mmTop = 1323
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppColumnFooterBand7: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand7: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList7: TppParameterList
    end
  end
  object ppEtiqCompras03x10preco: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '4800'
      '74500'
      '144500')
    DataPipeline = ppDBEtiqCompras
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 12200
    PrinterSetup.mmMarginLeft = 4800
    PrinterSetup.mmMarginRight = 4800
    PrinterSetup.mmMarginTop = 12200
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 119
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = []
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 357
    Top = 184
    Version = '15.0'
    mmColumnWidth = 68800
    DataPipelineName = 'ppDBEtiqCompras'
    object ppHeaderBand8: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand8: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand8: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppDBBarCode6: TppDBBarCode
        UserName = 'DBBarCode1'
        AlignBarCode = ahLeft
        BarCodeType = bcEAN_13
        BarColor = clWindowText
        DataField = 'BARRA'
        DataPipeline = ppDBEtiqCompras
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiqCompras'
        mmHeight = 11377
        mmLeft = 23283
        mmTop = 12700
        mmWidth = 39423
        BandType = 4
        mmBarWidth = 330
        mmWideBarRatio = 76200
      end
      object ppDBText11: TppDBText
        UserName = 'DBText1'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiqCompras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiqCompras'
        mmHeight = 10319
        mmLeft = 3704
        mmTop = 2646
        mmWidth = 60854
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText2'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiqCompras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEtiqCompras'
        mmHeight = 5027
        mmLeft = 2117
        mmTop = 13494
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'PRECOVISTA'
        DataPipeline = ppDBEtiqCompras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEtiqCompras'
        mmHeight = 5027
        mmLeft = 2117
        mmTop = 19050
        mmWidth = 16933
        BandType = 4
      end
    end
    object ppColumnFooterBand8: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand8: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList8: TppParameterList
    end
  end
end
