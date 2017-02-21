object dmoOrcamentos: TdmoOrcamentos
  OldCreateOrder = False
  Height = 275
  Width = 741
  object cdsORCorpo: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'prORcorpo'
    RemoteServer = formPrincipal.SocketConnection
    Left = 40
    Top = 16
  end
  object dsrOSCorpo: TDataSource
    AutoEdit = False
    DataSet = cdsORCorpo
    Left = 40
    Top = 72
  end
  object cdsORItens: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'prORitens'
    RemoteServer = formPrincipal.SocketConnection
    Left = 120
    Top = 16
  end
  object dsrOSItens: TDataSource
    AutoEdit = False
    DataSet = cdsORItens
    Left = 120
    Top = 72
  end
  object ppDBPipeCorpo: TppDBPipeline
    DataSource = dsrOSCorpo
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeCorpo'
    Left = 40
    Top = 128
  end
  object ppDBPipeItens: TppDBPipeline
    DataSource = dsrOSItens
    OpenDataSource = False
    UserName = 'DBPipeItens'
    Left = 120
    Top = 128
    object ppDBPipeItensppField1: TppField
      FieldAlias = 'CODMOVIMENTO'
      FieldName = 'CODMOVIMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField2: TppField
      FieldAlias = 'CODPRODUTO'
      FieldName = 'CODPRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField3: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField4: TppField
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField5: TppField
      FieldAlias = 'VALOR_UNITARIO'
      FieldName = 'VALOR_UNITARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField6: TppField
      FieldAlias = 'DESCONTO'
      FieldName = 'DESCONTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField7: TppField
      FieldAlias = 'VALOR_TOTAL'
      FieldName = 'VALOR_TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField8: TppField
      FieldAlias = 'MARCA'
      FieldName = 'MARCA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField9: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItensppField10: TppField
      FieldAlias = 'CODEMPRESA'
      FieldName = 'CODEMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
  end
  object ppOrcamento: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeItens
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\Elieser\orcamento.rtm'
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 504
    Top = 16
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeItens'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 68263
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 25665
        mmLeft = 156898
        mmTop = 32544
        mmWidth = 38894
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 25665
        mmLeft = 1852
        mmTop = 32544
        mmWidth = 152929
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 37306
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 40481
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 11113
        mmTop = 43656
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'CNPJ/CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 46831
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 50006
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'FAX:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 93927
        mmTop = 53181
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 37306
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'LOGRADOURO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 40481
        mmWidth = 130969
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'BAIRRO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 43656
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'CPF'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 46831
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'FONE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 50006
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'FAX'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102129
        mmTop = 53181
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'RAZAOSOCIAL'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 89165
        mmTop = 37306
        mmWidth = 64029
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 89694
        mmTop = 50006
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'CELULAR'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102129
        mmTop = 50006
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'I.E./RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 89165
        mmTop = 46831
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'RG'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102129
        mmTop = 46831
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 89959
        mmTop = 43656
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'CIDADE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102129
        mmTop = 43656
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 11906
        mmTop = 53181
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'EMAIL'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 53181
        mmWidth = 56092
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'DATA'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3969
        mmLeft = 160073
        mmTop = 37835
        mmWidth = 33602
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 9790
        mmTop = 34131
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'CODCLIENTE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 34131
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'NOMEUSER'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3969
        mmLeft = 168275
        mmTop = 52652
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 27517
        mmWidth = 47625
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'EMP_NOME'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 2117
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'EMP_RAZAOSOCIAL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 5292
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'EMP_LOGRADOURO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 8467
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'EMP_BAIRRO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 11642
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'EMP_CIDADE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 14817
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Color = clGray
        DataField = 'CODIGO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Verdana'
        Font.Size = 28
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 11906
        mmLeft = 148696
        mmTop = 9525
        mmWidth = 46831
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'EMP_CNPJ'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 8467
        mmWidth = 40746
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'EMP_IE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 11642
        mmWidth = 40746
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'EMP_FONE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 14817
        mmWidth = 40746
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'EMP_EMAIL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 17992
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'EMP_FAX'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 17992
        mmWidth = 40746
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        UserName = 'Label101'
        Caption = 'PROPOSTA DE FORNECIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6879
        mmLeft = 49477
        mmTop = 24077
        mmWidth = 97896
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 149225
        mmTop = 27252
        mmWidth = 48154
        BandType = 0
        LayerName = Foreground
      end
      object ppDBImage1: TppDBImage
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = True
        Stretch = True
        DataField = 'LOGOTIPO'
        DataPipeline = ppDBPipeEmpresa
        GraphicType = 'JPEG'
        ParentDataPipeline = False
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 21431
        mmLeft = 2381
        mmTop = 2381
        mmWidth = 39688
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3351
        mmLeft = 25665
        mmTop = 63500
        mmWidth = 15663
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3351
        mmLeft = 11906
        mmTop = 63500
        mmWidth = 10795
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3351
        mmLeft = 108744
        mmTop = 63765
        mmWidth = 9737
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 133350
        mmTop = 63765
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 158750
        mmTop = 63765
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3351
        mmLeft = 187061
        mmTop = 63765
        mmWidth = 8043
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 67733
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CODPRODUTO'
        DisplayFormat = '00#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        mmHeight = 3852
        mmLeft = 1588
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'CODPRODUTO'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3852
        mmLeft = 9525
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3852
        mmLeft = 25665
        mmTop = 0
        mmWidth = 80433
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'MARCA'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3852
        mmLeft = 108744
        mmTop = 0
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'QUANTIDADE'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3852
        mmLeft = 135202
        mmTop = 0
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'UNIDADE'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3852
        mmLeft = 146315
        mmTop = 0
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'VALOR_UNITARIO'
        DataPipeline = ppDBPipeItens
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3969
        mmLeft = 154517
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'VALOR_TOTAL'
        DataPipeline = ppDBPipeItens
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3969
        mmLeft = 173567
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'DESCONTO'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3969
        mmLeft = 120650
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 110067
      mmPrintPosition = 0
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 20108
        mmLeft = 110331
        mmTop = 27517
        mmWidth = 85990
        BandType = 7
        LayerName = Foreground
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 20108
        mmLeft = 1588
        mmTop = 27781
        mmWidth = 107156
        BandType = 7
        LayerName = Foreground
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = True
        DataField = 'CONDICOES1'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 19050
        mmLeft = 2117
        mmTop = 28310
        mmWidth = 106098
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBMemo3: TppDBMemo
        UserName = 'DBMemo3'
        CharWrap = True
        DataField = 'CONDICOES2'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 19050
        mmLeft = 111125
        mmTop = 28046
        mmWidth = 84667
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 11642
        mmLeft = 1588
        mmTop = 52388
        mmWidth = 194734
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'Opcionais (n'#227'o inclu'#237'dos no or'#231'amento)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 48683
        mmWidth = 63765
        BandType = 7
        LayerName = Foreground
      end
      object ppDBMemo4: TppDBMemo
        UserName = 'DBMemo4'
        CharWrap = True
        DataField = 'OPCIONAIS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 10583
        mmLeft = 2117
        mmTop = 52917
        mmWidth = 193675
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 6085
        mmTop = 86784
        mmWidth = 75671
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        DataField = 'EMP_NOME'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 6350
        mmTop = 88900
        mmWidth = 61119
        BandType = 7
        LayerName = Foreground
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 84667
        mmTop = 86784
        mmWidth = 34660
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        DataField = 'NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 124884
        mmTop = 88900
        mmWidth = 64029
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        UserName = 'Label104'
        Caption = 'Local, Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 84931
        mmTop = 88900
        mmWidth = 17727
        BandType = 7
        LayerName = Foreground
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 124354
        mmTop = 86784
        mmWidth = 70115
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'Condi'#231#245'es Gerais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 24077
        mmWidth = 27252
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'Condi'#231#245'es de Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 111125
        mmTop = 23813
        mmWidth = 39952
        BandType = 7
        LayerName = Foreground
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 18521
        mmLeft = 1588
        mmTop = 1852
        mmWidth = 195263
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 2910
        mmTop = 11377
        mmWidth = 22754
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'TOTAL PARCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 141288
        mmTop = 3440
        mmWidth = 27781
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'DESCONTO DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 142611
        mmTop = 8996
        mmWidth = 26458
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'T O T A L   D A   P R O P O S T A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 106363
        mmTop = 14552
        mmWidth = 62706
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'VALOR_TOTAL'
        DataPipeline = ppDBPipeItens
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3852
        mmLeft = 171450
        mmTop = 3440
        mmWidth = 23283
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        BlankWhenZero = True
        DataField = 'DESCONTO'
        DataPipeline = ppDBPipeItens
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3969
        mmLeft = 171450
        mmTop = 8996
        mmWidth = 23283
        BandType = 7
        LayerName = Foreground
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 171450
        mmTop = 14552
        mmWidth = 23283
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060D54726156617250726F6772616D094368696C645479706502110B50726F
        6772616D4E616D6506095661726961626C65730B50726F6772616D5479706507
        0B747450726F63656475726506536F75726365068870726F6365647572652056
        61726961626C65733B0D0A7661720D0A202020646573636F6E746F3A20657874
        656E6465643B0D0A202020746F74616C3A20657874656E6465643B0D0A202020
        69646573636F6E746F3A20657874656E6465643B0D0A20202069746F74616C3A
        20657874656E6465643B0D0A0D0A626567696E0D0A0D0A656E643B0D0A084361
        726574506F730102000200000001060F5472614576656E7448616E646C65720B
        50726F6772616D4E616D6506104C6162656C32314F6E476574546578740B5072
        6F6772616D54797065070B747450726F63656475726506536F757263650C4701
        000070726F636564757265204C6162656C32314F6E4765745465787428766172
        20546578743A20537472696E67293B0D0A7661720D0A2020706F7263656E7461
        67656D3A20657874656E6465643B0D0A626567696E0D0A202069662044424361
        6C63322E56616C7565203E2030207468656E0D0A20202020706F7263656E7461
        67656D203A3D2028444243616C63332E56616C7565202A2031303029202F2044
        4243616C63322E56616C75650D0A2020656C73650D0A20202020706F7263656E
        746167656D203A3D20303B0D0A0D0A2020696620706F7263656E746167656D20
        3E2030207468656E0D0A2020202054657874203A3D2027444553434F4E544F20
        44452027202B20466F726D617443757272282723302E303025272C20706F7263
        656E746167656D290D0A2020656C73650D0A2020202054657874203A3D202727
        3B0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506074C6162656C3231
        094576656E744E616D6506094F6E47657454657874074576656E744944023508
        4361726574506F730102000200000001060F5472614576656E7448616E646C65
        720B50726F6772616D4E616D650610444254657874334F6E476574546578740B
        50726F6772616D54797065070B747450726F63656475726506536F7572636506
        9870726F63656475726520444254657874334F6E476574546578742876617220
        546578743A20537472696E67293B0D0A626567696E0D0A0D0A20205465787420
        3A3D205472696D28444250697065456D70726573615B27454D505F4C4F475241
        444F55524F275D29202B20272C2027202B2020444250697065456D7072657361
        5B27454D505F4E554D45524F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E
        656E744E616D65060744425465787433094576656E744E616D6506094F6E4765
        7454657874074576656E7449440235084361726574506F730102000200000001
        060F5472614576656E7448616E646C65720B50726F6772616D4E616D65061144
        425465787431354F6E476574546578740B50726F6772616D54797065070B7474
        50726F63656475726506536F7572636506B570726F6365647572652044425465
        787431354F6E476574546578742876617220546578743A20537472696E67293B
        0D0A626567696E0D0A0D0A202054657874203A3D205472696D28444250697065
        436F72706F5B274C4F475241444F55524F275D29202B20272C2027202B204442
        50697065436F72706F5B274E554D45524F275D202B20272027202B0D0A202020
        2020444250697065436F72706F5B27434F4D504C454D454E544F275D3B0D0A0D
        0A656E643B0D0A0D436F6D706F6E656E744E616D650608444254657874313509
        4576656E744E616D6506094F6E47657454657874074576656E74494402350843
        61726574506F730102000200000001060F5472614576656E7448616E646C6572
        0B50726F6772616D4E616D650610444254657874354F6E476574546578740B50
        726F6772616D54797065070B747450726F63656475726506536F757263650693
        70726F63656475726520444254657874354F6E47657454657874287661722054
        6578743A20537472696E67293B0D0A626567696E0D0A0D0A202054657874203A
        3D205472696D28444250697065456D70726573615B27454D505F434944414445
        275D29202B20272C2027202B20444250697065456D70726573615B27454D505F
        45535441444F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D
        65060744425465787435094576656E744E616D6506094F6E4765745465787407
        4576656E7449440235084361726574506F730102000200000001060F54726145
        76656E7448616E646C65720B50726F6772616D4E616D65061144425465787432
        344F6E476574546578740B50726F6772616D54797065070B747450726F636564
        75726506536F75726365068870726F6365647572652044425465787432344F6E
        476574546578742876617220546578743A20537472696E67293B0D0A62656769
        6E0D0A0D0A202054657874203A3D205472696D28444250697065436F72706F5B
        27434944414445275D29202B20272C2027202B20444250697065436F72706F5B
        2745535441444F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E61
        6D6506084442546578743234094576656E744E616D6506094F6E476574546578
        74074576656E7449440235084361726574506F730102000200000001060F5472
        614576656E7448616E646C65720B50726F6772616D4E616D6506114442546578
        7431374F6E476574546578740B50726F6772616D54797065070B747450726F63
        656475726506536F7572636506B570726F636564757265204442546578743137
        4F6E476574546578742876617220546578743A20537472696E67293B0D0A6265
        67696E0D0A0D0A2020696620444250697065436F72706F5B275449504F504553
        534F41275D203D20274627207468656E0D0A2020202054657874203A3D204442
        50697065436F72706F5B27435046275D0D0A2020656C73650D0A202020205465
        7874203A3D20444250697065436F72706F5B27434743275D3B0D0A0D0A656E64
        3B0D0A0D436F6D706F6E656E744E616D6506084442546578743137094576656E
        744E616D6506094F6E47657454657874074576656E7449440235084361726574
        506F730102000200000001060F5472614576656E7448616E646C65720B50726F
        6772616D4E616D65061144425465787432334F6E476574546578740B50726F67
        72616D54797065070B747450726F63656475726506536F7572636506B370726F
        6365647572652044425465787432334F6E476574546578742876617220546578
        743A20537472696E67293B0D0A626567696E0D0A0D0A20206966204442506970
        65436F72706F5B275449504F504553534F41275D203D20274627207468656E0D
        0A2020202054657874203A3D20444250697065436F72706F5B275247275D0D0A
        2020656C73650D0A2020202054657874203A3D20444250697065436F72706F5B
        274945275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D650608
        4442546578743233094576656E744E616D6506094F6E47657454657874074576
        656E7449440235084361726574506F730102000200000001060F547261457665
        6E7448616E646C65720B50726F6772616D4E616D650610444254657874374F6E
        476574546578740B50726F6772616D54797065070B747450726F636564757265
        06536F75726365067070726F63656475726520444254657874374F6E47657454
        6578742876617220546578743A20537472696E67293B0D0A626567696E0D0A0D
        0A202054657874203A3D2027434E504A2027202B20444250697065456D707265
        73615B27454D505F434E504A275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E
        656E744E616D65060744425465787437094576656E744E616D6506094F6E4765
        7454657874074576656E7449440235084361726574506F730102000200000001
        060F5472614576656E7448616E646C65720B50726F6772616D4E616D65061044
        4254657874384F6E476574546578740B50726F6772616D54797065070B747450
        726F63656475726506536F75726365066E70726F636564757265204442546578
        74384F6E476574546578742876617220546578743A20537472696E67293B0D0A
        626567696E0D0A0D0A202054657874203A3D2027492E452E2027202B20444250
        697065456D70726573615B27454D505F4945275D3B0D0A0D0A656E643B0D0A0D
        436F6D706F6E656E744E616D65060744425465787438094576656E744E616D65
        06094F6E47657454657874074576656E7449440235084361726574506F730102
        000200000001060F5472614576656E7448616E646C65720B50726F6772616D4E
        616D6506195265706F72744F6E50726576696577466F726D4372656174650B50
        726F6772616D54797065070B747450726F63656475726506536F757263650654
        70726F636564757265205265706F72744F6E50726576696577466F726D437265
        6174653B0D0A626567696E0D0A2020746F74616C203A3D20303B0D0A20206465
        73636F6E746F203A3D20303B0D0A656E643B0D0A0D436F6D706F6E656E744E61
        6D6506065265706F7274094576656E744E616D6506134F6E5072657669657746
        6F726D437265617465074576656E7449440205084361726574506F7301020002
        00000001060F5472614576656E7448616E646C65720B50726F6772616D4E616D
        6506175265706F72744F6E53746172745365636F6E64506173730B50726F6772
        616D54797065070B747450726F63656475726506536F75726365065270726F63
        6564757265205265706F72744F6E53746172745365636F6E64506173733B0D0A
        626567696E0D0A2020746F74616C203A3D20303B0D0A2020646573636F6E746F
        203A3D20303B0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506065265
        706F7274094576656E744E616D6506114F6E53746172745365636F6E64506173
        73074576656E7449440216084361726574506F730102000200000001060F5472
        614576656E7448616E646C65720B50726F6772616D4E616D65060F5661726961
        626C65314F6E43616C630B50726F6772616D54797065070B747450726F636564
        75726506536F75726365069D70726F636564757265205661726961626C65314F
        6E43616C63287661722056616C75653A2056617269616E74293B0D0A62656769
        6E0D0A0D0A202056616C7565203A3D2020466F726D6174437572722827232C23
        23302E3030272C20444250697065436F72706F5B2756414C4F525F544F54414C
        275D202D2020444250697065436F72706F5B27444553434F4E544F275D293B0D
        0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506095661726961626C
        6531094576656E744E616D6506064F6E43616C63074576656E74494402210843
        61726574506F730102000200000000}
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeEmpresa: TppDBPipeline
    DataSource = formPrincipal.dsrPerfil
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeEmpresa'
    Left = 40
    Top = 216
    object ppDBPipeEmpresappField1: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField2: TppField
      FieldAlias = 'CODCLIENTE'
      FieldName = 'CODCLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField3: TppField
      FieldAlias = 'CODCONTA_COMPRADEB'
      FieldName = 'CODCONTA_COMPRADEB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField4: TppField
      FieldAlias = 'CODCONTA_VENDACRE'
      FieldName = 'CODCONTA_VENDACRE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField5: TppField
      FieldAlias = 'CODCLIENTE_PADRAO'
      FieldName = 'CODCLIENTE_PADRAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField6: TppField
      FieldAlias = 'VALOR_LIMITE'
      FieldName = 'VALOR_LIMITE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField7: TppField
      FieldAlias = 'ALIQUOTA_ISS'
      FieldName = 'ALIQUOTA_ISS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField8: TppField
      FieldAlias = 'ALIQUOTA_ICMSSIMPLES'
      FieldName = 'ALIQUOTA_ICMSSIMPLES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField9: TppField
      FieldAlias = 'ICMSSIMPLES'
      FieldName = 'ICMSSIMPLES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField10: TppField
      FieldAlias = 'CODDOC_AVISTA'
      FieldName = 'CODDOC_AVISTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField11: TppField
      FieldAlias = 'CODDOC_PRAZO'
      FieldName = 'CODDOC_PRAZO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField12: TppField
      FieldAlias = 'MDI'
      FieldName = 'MDI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField13: TppField
      FieldAlias = 'AUTOLAUNCH'
      FieldName = 'AUTOLAUNCH'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField14: TppField
      FieldAlias = 'AUTOLAUNCH_TIME'
      FieldName = 'AUTOLAUNCH_TIME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField15: TppField
      FieldAlias = 'PADRAO'
      FieldName = 'PADRAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField16: TppField
      FieldAlias = 'PRINT_OS'
      FieldName = 'PRINT_OS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField17: TppField
      FieldAlias = 'PRINT_NOTA'
      FieldName = 'PRINT_NOTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField18: TppField
      FieldAlias = 'MOEDASINGULAR'
      FieldName = 'MOEDASINGULAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField19: TppField
      FieldAlias = 'MOEDAPLURAL'
      FieldName = 'MOEDAPLURAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField20: TppField
      FieldAlias = 'CENTAVOSINGULAR'
      FieldName = 'CENTAVOSINGULAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField21: TppField
      FieldAlias = 'CENTAVOPLURAL'
      FieldName = 'CENTAVOPLURAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField22: TppField
      FieldAlias = 'NOTA_PADRAO'
      FieldName = 'NOTA_PADRAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField23: TppField
      FieldAlias = 'OSABERTA_PADRAO'
      FieldName = 'OSABERTA_PADRAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField24: TppField
      FieldAlias = 'OSFECHADA_PADRAO'
      FieldName = 'OSFECHADA_PADRAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField25: TppField
      FieldAlias = 'MEDIDA_SER'
      FieldName = 'MEDIDA_SER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField26: TppField
      FieldAlias = 'GRUPO_SER'
      FieldName = 'GRUPO_SER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField27: TppField
      FieldAlias = 'PRINT_BOLETO'
      FieldName = 'PRINT_BOLETO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField28: TppField
      FieldAlias = 'LOGTIMEOFF'
      FieldName = 'LOGTIMEOFF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField29: TppField
      FieldAlias = 'PRINT_OS2'
      FieldName = 'PRINT_OS2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField30: TppField
      FieldAlias = 'PRINT_RECIBO'
      FieldName = 'PRINT_RECIBO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField31: TppField
      FieldAlias = 'JUROS_MES'
      FieldName = 'JUROS_MES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField32: TppField
      FieldAlias = 'COPIAS_OS'
      FieldName = 'COPIAS_OS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField33: TppField
      FieldAlias = 'COPIAS_OS2'
      FieldName = 'COPIAS_OS2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField34: TppField
      FieldAlias = 'COPIAS_RECIBO'
      FieldName = 'COPIAS_RECIBO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField35: TppField
      FieldAlias = 'RECIBO_PADRAO'
      FieldName = 'RECIBO_PADRAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField36: TppField
      FieldAlias = 'FISCAL_MAQ'
      FieldName = 'FISCAL_MAQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField37: TppField
      FieldAlias = 'FISCAL_CONF'
      FieldName = 'FISCAL_CONF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField38: TppField
      FieldAlias = 'BLOQUEIO_DIAS'
      FieldName = 'BLOQUEIO_DIAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField39: TppField
      FieldAlias = 'OSABERTA_PADRAO_2A'
      FieldName = 'OSABERTA_PADRAO_2A'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField40: TppField
      FieldAlias = 'COPIAS_OS_2A'
      FieldName = 'COPIAS_OS_2A'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField41: TppField
      FieldAlias = 'PRINT_OS_2A'
      FieldName = 'PRINT_OS_2A'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField42: TppField
      FieldAlias = 'NATUOPER_PADRAO'
      FieldName = 'NATUOPER_PADRAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField43: TppField
      FieldAlias = 'SENHA_CLIENTES'
      FieldName = 'SENHA_CLIENTES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField44: TppField
      FieldAlias = 'SENHA_PRODUTOS'
      FieldName = 'SENHA_PRODUTOS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField45: TppField
      FieldAlias = 'SENHA_FECHAMENTO'
      FieldName = 'SENHA_FECHAMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField46: TppField
      FieldAlias = 'SENHA_OS'
      FieldName = 'SENHA_OS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField47: TppField
      FieldAlias = 'SENHA_BAIXA'
      FieldName = 'SENHA_BAIXA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField48: TppField
      FieldAlias = 'TECNICOLOGIN_VENDEDOR'
      FieldName = 'TECNICOLOGIN_VENDEDOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField49: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField50: TppField
      FieldAlias = 'NATUOPER_COMPRA'
      FieldName = 'NATUOPER_COMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField51: TppField
      FieldAlias = 'MENSAGEM_OS'
      FieldName = 'MENSAGEM_OS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField52: TppField
      FieldAlias = 'MENSAGEM_VENDA'
      FieldName = 'MENSAGEM_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField53: TppField
      FieldAlias = 'OSCOND1'
      FieldName = 'OSCOND1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField54: TppField
      FieldAlias = 'OSCOND2'
      FieldName = 'OSCOND2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField55: TppField
      FieldAlias = 'CODHISTORICO_COMPRA'
      FieldName = 'CODHISTORICO_COMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField56: TppField
      FieldAlias = 'CODHISTORICO_VENDA'
      FieldName = 'CODHISTORICO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField57: TppField
      FieldAlias = 'VERIFICA_LIMITE'
      FieldName = 'VERIFICA_LIMITE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField58: TppField
      FieldAlias = 'PRECO_CLIENTE'
      FieldName = 'PRECO_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField59: TppField
      FieldAlias = 'EMP_NOME'
      FieldName = 'EMP_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField60: TppField
      FieldAlias = 'EMP_RAZAOSOCIAL'
      FieldName = 'EMP_RAZAOSOCIAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField61: TppField
      FieldAlias = 'EMP_CNPJ'
      FieldName = 'EMP_CNPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField62: TppField
      FieldAlias = 'EMP_IE'
      FieldName = 'EMP_IE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField63: TppField
      FieldAlias = 'EMP_LOGRADOURO'
      FieldName = 'EMP_LOGRADOURO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField64: TppField
      FieldAlias = 'EMP_NUMERO'
      FieldName = 'EMP_NUMERO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField65: TppField
      FieldAlias = 'EMP_COMPLEMENTO'
      FieldName = 'EMP_COMPLEMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField66: TppField
      FieldAlias = 'EMP_BAIRRO'
      FieldName = 'EMP_BAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField67: TppField
      FieldAlias = 'EMP_CIDADE'
      FieldName = 'EMP_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField68: TppField
      FieldAlias = 'EMP_ESTADO'
      FieldName = 'EMP_ESTADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField69: TppField
      FieldAlias = 'EMP_CEP'
      FieldName = 'EMP_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField70: TppField
      FieldAlias = 'EMP_MUNIBGE'
      FieldName = 'EMP_MUNIBGE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField71: TppField
      FieldAlias = 'EMP_FONE'
      FieldName = 'EMP_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField72: TppField
      FieldAlias = 'EMP_FAX'
      FieldName = 'EMP_FAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField73: TppField
      FieldAlias = 'EMP_EMAIL'
      FieldName = 'EMP_EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField74: TppField
      FieldAlias = 'LOGOTIPO'
      FieldName = 'LOGOTIPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField75: TppField
      FieldAlias = 'CONSUMIDOR'
      FieldName = 'CONSUMIDOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField76: TppField
      FieldAlias = 'HISTORICOCOMPRA'
      FieldName = 'HISTORICOCOMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object ppDBPipeEmpresappField77: TppField
      FieldAlias = 'HISTORICOVENDA'
      FieldName = 'HISTORICOVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
  end
  object cdsORItens2: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'prORitens2'
    RemoteServer = formPrincipal.SocketConnection
    Left = 200
    Top = 16
  end
  object dsrOSItens2: TDataSource
    AutoEdit = False
    DataSet = cdsORItens2
    Left = 200
    Top = 72
  end
  object ppDBPipeItens2: TppDBPipeline
    DataSource = dsrOSItens2
    OpenDataSource = False
    UserName = 'DBPipeItens1'
    Left = 200
    Top = 128
  end
  object ppOrcamento2: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeItens2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\Elieser\orcamento.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 504
    Top = 72
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeItens2'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 68263
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape2'
        mmHeight = 25665
        mmLeft = 156898
        mmTop = 32544
        mmWidth = 38894
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape1'
        mmHeight = 25665
        mmLeft = 1852
        mmTop = 32544
        mmWidth = 152929
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label4'
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 37306
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label5'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 40481
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label6'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 11113
        mmTop = 43656
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label7'
        Caption = 'CNPJ/CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 46831
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label8'
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 50006
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label9'
        Caption = 'FAX:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 93927
        mmTop = 53181
        mmWidth = 6879
        BandType = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText14'
        DataField = 'NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 37306
        mmWidth = 65617
        BandType = 0
      end
      object ppDBText37: TppDBText
        UserName = 'DBText15'
        DataField = 'LOGRADOURO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 40481
        mmWidth = 130969
        BandType = 0
      end
      object ppDBText38: TppDBText
        UserName = 'DBText16'
        DataField = 'BAIRRO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 43656
        mmWidth = 65617
        BandType = 0
      end
      object ppDBText39: TppDBText
        UserName = 'DBText17'
        DataField = 'CPF'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 46831
        mmWidth = 65617
        BandType = 0
      end
      object ppDBText40: TppDBText
        UserName = 'DBText18'
        DataField = 'FONE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 50006
        mmWidth = 65617
        BandType = 0
      end
      object ppDBText41: TppDBText
        UserName = 'DBText19'
        DataField = 'FAX'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102129
        mmTop = 53181
        mmWidth = 51065
        BandType = 0
      end
      object ppDBText42: TppDBText
        UserName = 'DBText21'
        DataField = 'RAZAOSOCIAL'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 89165
        mmTop = 37306
        mmWidth = 64029
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label11'
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 89694
        mmTop = 50006
        mmWidth = 11113
        BandType = 0
      end
      object ppDBText43: TppDBText
        UserName = 'DBText22'
        DataField = 'CELULAR'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102129
        mmTop = 50006
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label12'
        Caption = 'I.E./RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 89165
        mmTop = 46831
        mmWidth = 11642
        BandType = 0
      end
      object ppDBText44: TppDBText
        UserName = 'DBText23'
        DataField = 'RG'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102129
        mmTop = 46831
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label13'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 89959
        mmTop = 43656
        mmWidth = 10848
        BandType = 0
      end
      object ppDBText45: TppDBText
        UserName = 'DBText24'
        DataField = 'CIDADE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102129
        mmTop = 43656
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label14'
        Caption = 'email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 11906
        mmTop = 53181
        mmWidth = 8996
        BandType = 0
      end
      object ppDBText46: TppDBText
        UserName = 'DBText25'
        DataField = 'EMAIL'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 53181
        mmWidth = 56092
        BandType = 0
      end
      object ppDBText47: TppDBText
        UserName = 'DBText11'
        DataField = 'DATA'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3969
        mmLeft = 160073
        mmTop = 37835
        mmWidth = 33602
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label3'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 9790
        mmTop = 34131
        mmWidth = 11113
        BandType = 0
      end
      object ppDBText48: TppDBText
        UserName = 'DBText13'
        DataField = 'CODCLIENTE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 34131
        mmWidth = 65617
        BandType = 0
      end
      object ppDBText49: TppDBText
        UserName = 'DBText31'
        DataField = 'NOMEUSER'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3969
        mmLeft = 168275
        mmTop = 52652
        mmWidth = 25400
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 27517
        mmWidth = 47625
        BandType = 0
      end
      object ppDBText50: TppDBText
        UserName = 'DBText1'
        DataField = 'EMP_NOME'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 2117
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText51: TppDBText
        UserName = 'DBText2'
        DataField = 'EMP_RAZAOSOCIAL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 5292
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText52: TppDBText
        UserName = 'DBText3'
        DataField = 'EMP_LOGRADOURO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 8467
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText53: TppDBText
        UserName = 'DBText4'
        DataField = 'EMP_BAIRRO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 11642
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText54: TppDBText
        UserName = 'DBText5'
        DataField = 'EMP_CIDADE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 14817
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText55: TppDBText
        UserName = 'DBText6'
        Color = clGray
        DataField = 'CODIGO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Verdana'
        Font.Size = 28
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 11906
        mmLeft = 148696
        mmTop = 9525
        mmWidth = 46831
        BandType = 0
      end
      object ppDBText56: TppDBText
        UserName = 'DBText7'
        DataField = 'EMP_CNPJ'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 8467
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText57: TppDBText
        UserName = 'DBText8'
        DataField = 'EMP_IE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 11642
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText58: TppDBText
        UserName = 'DBText9'
        DataField = 'EMP_FONE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 14817
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText59: TppDBText
        UserName = 'DBText10'
        DataField = 'EMP_EMAIL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 17992
        mmWidth = 60854
        BandType = 0
      end
      object ppDBText60: TppDBText
        UserName = 'DBText12'
        DataField = 'EMP_FAX'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 17992
        mmWidth = 40746
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label101'
        Caption = 'PROPOSTA DE FORNECIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6879
        mmLeft = 49477
        mmTop = 24077
        mmWidth = 97896
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 149225
        mmTop = 27252
        mmWidth = 48154
        BandType = 0
      end
      object ppDBImage2: TppDBImage
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = True
        Stretch = True
        DataField = 'LOGOTIPO'
        DataPipeline = ppDBPipeEmpresa
        GraphicType = 'JPEG'
        ParentDataPipeline = False
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 21431
        mmLeft = 2381
        mmTop = 2381
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label1'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3351
        mmLeft = 25665
        mmTop = 63500
        mmWidth = 15663
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label2'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3351
        mmLeft = 11906
        mmTop = 63500
        mmWidth = 10795
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label10'
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3351
        mmLeft = 108744
        mmTop = 63765
        mmWidth = 9737
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label15'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 133350
        mmTop = 63765
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label16'
        Caption = 'Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 158750
        mmTop = 63765
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label17'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3351
        mmLeft = 187061
        mmTop = 63765
        mmWidth = 8043
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 67733
        mmWidth = 197380
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CODPRODUTO'
        DataPipeline = ppDBPipeItens2
        DisplayFormat = '00#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3852
        mmLeft = 1588
        mmTop = 0
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText20'
        DataField = 'CODPRODUTO'
        DataPipeline = ppDBPipeItens2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3852
        mmLeft = 9525
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText62: TppDBText
        UserName = 'DBText26'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBPipeItens2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3852
        mmLeft = 25665
        mmTop = 0
        mmWidth = 80433
        BandType = 4
      end
      object ppDBText63: TppDBText
        UserName = 'DBText27'
        DataField = 'MARCA'
        DataPipeline = ppDBPipeItens2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3852
        mmLeft = 108744
        mmTop = 0
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText64: TppDBText
        UserName = 'DBText28'
        DataField = 'QUANTIDADE'
        DataPipeline = ppDBPipeItens2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3852
        mmLeft = 135202
        mmTop = 0
        mmWidth = 9260
        BandType = 4
      end
      object ppDBText65: TppDBText
        UserName = 'DBText32'
        DataField = 'UNIDADE'
        DataPipeline = ppDBPipeItens2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3852
        mmLeft = 146315
        mmTop = 0
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText66: TppDBText
        UserName = 'DBText29'
        DataField = 'VALOR_UNITARIO'
        DataPipeline = ppDBPipeItens2
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3969
        mmLeft = 154517
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText67: TppDBText
        UserName = 'DBText30'
        DataField = 'VALOR_TOTAL'
        DataPipeline = ppDBPipeItens2
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3969
        mmLeft = 173567
        mmTop = 0
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText68: TppDBText
        UserName = 'DBText33'
        DataField = 'DESCONTO'
        DataPipeline = ppDBPipeItens2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3969
        mmLeft = 120650
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 99748
      mmPrintPosition = 0
      object ppShape9: TppShape
        UserName = 'Shape6'
        mmHeight = 20108
        mmLeft = 110331
        mmTop = 17992
        mmWidth = 85990
        BandType = 7
      end
      object ppShape10: TppShape
        UserName = 'Shape5'
        mmHeight = 20108
        mmLeft = 1588
        mmTop = 18256
        mmWidth = 107156
        BandType = 7
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = True
        DataField = 'CONDICOES1'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 19050
        mmLeft = 2117
        mmTop = 18785
        mmWidth = 106098
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBMemo5: TppDBMemo
        UserName = 'DBMemo3'
        CharWrap = True
        DataField = 'CONDICOES2'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 19050
        mmLeft = 111125
        mmTop = 18521
        mmWidth = 84667
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape7'
        mmHeight = 11642
        mmLeft = 1588
        mmTop = 42863
        mmWidth = 194734
        BandType = 7
      end
      object ppLabel45: TppLabel
        UserName = 'Label25'
        Caption = 'Opcionais (n'#227'o inclu'#237'dos no or'#231'amento)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 39158
        mmWidth = 63765
        BandType = 7
      end
      object ppDBMemo6: TppDBMemo
        UserName = 'DBMemo4'
        CharWrap = True
        DataField = 'OPCIONAIS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 10583
        mmLeft = 2117
        mmTop = 43392
        mmWidth = 193675
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLine10: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 6085
        mmTop = 77258
        mmWidth = 75671
        BandType = 7
      end
      object ppDBText69: TppDBText
        UserName = 'DBText35'
        DataField = 'EMP_NOME'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 6350
        mmTop = 79375
        mmWidth = 61119
        BandType = 7
      end
      object ppLine11: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 84667
        mmTop = 77258
        mmWidth = 34660
        BandType = 7
      end
      object ppDBText70: TppDBText
        UserName = 'DBText36'
        DataField = 'NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 124884
        mmTop = 79375
        mmWidth = 64029
        BandType = 7
      end
      object ppLabel46: TppLabel
        UserName = 'Label104'
        Caption = 'Local, Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 84931
        mmTop = 79375
        mmWidth = 17727
        BandType = 7
      end
      object ppLine12: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 124354
        mmTop = 77258
        mmWidth = 70115
        BandType = 7
      end
      object ppLabel47: TppLabel
        UserName = 'Label24'
        Caption = 'Condi'#231#245'es Gerais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 14552
        mmWidth = 27252
        BandType = 7
      end
      object ppLabel48: TppLabel
        UserName = 'Label27'
        Caption = 'Condi'#231#245'es de Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 111125
        mmTop = 14288
        mmWidth = 39952
        BandType = 7
      end
      object ppShape12: TppShape
        UserName = 'Shape3'
        mmHeight = 10054
        mmLeft = 1588
        mmTop = 1852
        mmWidth = 195263
        BandType = 7
      end
      object ppLabel49: TppLabel
        UserName = 'Label18'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 2910
        mmTop = 3175
        mmWidth = 22754
        BandType = 7
      end
      object ppLabel52: TppLabel
        UserName = 'Label22'
        Caption = 'T O T A L   D A   P R O P O S T A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 106363
        mmTop = 6350
        mmWidth = 62706
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'VALOR_TOTAL'
        DataPipeline = ppDBPipeItens2
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3969
        mmLeft = 171450
        mmTop = 6350
        mmWidth = 23283
        BandType = 7
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {
        01060D54726156617250726F6772616D094368696C645479706502110B50726F
        6772616D4E616D6506095661726961626C65730B50726F6772616D5479706507
        0B747450726F63656475726506536F75726365068870726F6365647572652056
        61726961626C65733B0D0A7661720D0A202020646573636F6E746F3A20657874
        656E6465643B0D0A202020746F74616C3A20657874656E6465643B0D0A202020
        69646573636F6E746F3A20657874656E6465643B0D0A20202069746F74616C3A
        20657874656E6465643B0D0A0D0A626567696E0D0A0D0A656E643B0D0A084361
        726574506F730102000200000001060F5472614576656E7448616E646C65720B
        50726F6772616D4E616D650610444254657874334F6E476574546578740B5072
        6F6772616D54797065070B747450726F63656475726506536F75726365069870
        726F63656475726520444254657874334F6E4765745465787428766172205465
        78743A20537472696E67293B0D0A626567696E0D0A0D0A202054657874203A3D
        205472696D28444250697065456D70726573615B27454D505F4C4F475241444F
        55524F275D29202B20272C2027202B2020444250697065456D70726573615B27
        454D505F4E554D45524F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E
        744E616D65060744425465787433094576656E744E616D6506094F6E47657454
        657874074576656E7449440235084361726574506F730102000200000001060F
        5472614576656E7448616E646C65720B50726F6772616D4E616D650611444254
        65787431354F6E476574546578740B50726F6772616D54797065070B74745072
        6F63656475726506536F7572636506B570726F63656475726520444254657874
        31354F6E476574546578742876617220546578743A20537472696E67293B0D0A
        626567696E0D0A0D0A202054657874203A3D205472696D28444250697065436F
        72706F5B274C4F475241444F55524F275D29202B20272C2027202B2044425069
        7065436F72706F5B274E554D45524F275D202B20272027202B0D0A2020202020
        444250697065436F72706F5B27434F4D504C454D454E544F275D3B0D0A0D0A65
        6E643B0D0A0D436F6D706F6E656E744E616D6506084442546578743135094576
        656E744E616D6506094F6E47657454657874074576656E744944023508436172
        6574506F730102000200000001060F5472614576656E7448616E646C65720B50
        726F6772616D4E616D650610444254657874354F6E476574546578740B50726F
        6772616D54797065070B747450726F63656475726506536F7572636506937072
        6F63656475726520444254657874354F6E476574546578742876617220546578
        743A20537472696E67293B0D0A626567696E0D0A0D0A202054657874203A3D20
        5472696D28444250697065456D70726573615B27454D505F434944414445275D
        29202B20272C2027202B20444250697065456D70726573615B27454D505F4553
        5441444F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506
        0744425465787435094576656E744E616D6506094F6E47657454657874074576
        656E7449440235084361726574506F730102000200000001060F547261457665
        6E7448616E646C65720B50726F6772616D4E616D65061144425465787432344F
        6E476574546578740B50726F6772616D54797065070B747450726F6365647572
        6506536F75726365068870726F6365647572652044425465787432344F6E4765
        74546578742876617220546578743A20537472696E67293B0D0A626567696E0D
        0A0D0A202054657874203A3D205472696D28444250697065436F72706F5B2743
        4944414445275D29202B20272C2027202B20444250697065436F72706F5B2745
        535441444F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65
        06084442546578743234094576656E744E616D6506094F6E4765745465787407
        4576656E7449440235084361726574506F730102000200000001060F54726145
        76656E7448616E646C65720B50726F6772616D4E616D65061144425465787431
        374F6E476574546578740B50726F6772616D54797065070B747450726F636564
        75726506536F7572636506B570726F6365647572652044425465787431374F6E
        476574546578742876617220546578743A20537472696E67293B0D0A62656769
        6E0D0A0D0A2020696620444250697065436F72706F5B275449504F504553534F
        41275D203D20274627207468656E0D0A2020202054657874203A3D2044425069
        7065436F72706F5B27435046275D0D0A2020656C73650D0A2020202054657874
        203A3D20444250697065436F72706F5B27434743275D3B0D0A0D0A656E643B0D
        0A0D436F6D706F6E656E744E616D6506084442546578743137094576656E744E
        616D6506094F6E47657454657874074576656E7449440235084361726574506F
        730102000200000001060F5472614576656E7448616E646C65720B50726F6772
        616D4E616D65061144425465787432334F6E476574546578740B50726F677261
        6D54797065070B747450726F63656475726506536F7572636506B370726F6365
        647572652044425465787432334F6E476574546578742876617220546578743A
        20537472696E67293B0D0A626567696E0D0A0D0A202069662044425069706543
        6F72706F5B275449504F504553534F41275D203D20274627207468656E0D0A20
        20202054657874203A3D20444250697065436F72706F5B275247275D0D0A2020
        656C73650D0A2020202054657874203A3D20444250697065436F72706F5B2749
        45275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506084442
        546578743233094576656E744E616D6506094F6E47657454657874074576656E
        7449440235084361726574506F730102000200000001060F5472614576656E74
        48616E646C65720B50726F6772616D4E616D650610444254657874374F6E4765
        74546578740B50726F6772616D54797065070B747450726F6365647572650653
        6F75726365067070726F63656475726520444254657874374F6E476574546578
        742876617220546578743A20537472696E67293B0D0A626567696E0D0A0D0A20
        2054657874203A3D2027434E504A2027202B20444250697065456D7072657361
        5B27454D505F434E504A275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E
        744E616D65060744425465787437094576656E744E616D6506094F6E47657454
        657874074576656E7449440235084361726574506F730102000200000001060F
        5472614576656E7448616E646C65720B50726F6772616D4E616D650610444254
        657874384F6E476574546578740B50726F6772616D54797065070B747450726F
        63656475726506536F75726365066E70726F6365647572652044425465787438
        4F6E476574546578742876617220546578743A20537472696E67293B0D0A6265
        67696E0D0A0D0A202054657874203A3D2027492E452E2027202B204442506970
        65456D70726573615B27454D505F4945275D3B0D0A0D0A656E643B0D0A0D436F
        6D706F6E656E744E616D65060744425465787438094576656E744E616D650609
        4F6E47657454657874074576656E7449440235084361726574506F7301020002
        00000001060F5472614576656E7448616E646C65720B50726F6772616D4E616D
        6506195265706F72744F6E50726576696577466F726D4372656174650B50726F
        6772616D54797065070B747450726F63656475726506536F7572636506547072
        6F636564757265205265706F72744F6E50726576696577466F726D4372656174
        653B0D0A626567696E0D0A2020746F74616C203A3D20303B0D0A202064657363
        6F6E746F203A3D20303B0D0A656E643B0D0A0D436F6D706F6E656E744E616D65
        06065265706F7274094576656E744E616D6506134F6E50726576696577466F72
        6D437265617465074576656E7449440205084361726574506F73010200020000
        0001060F5472614576656E7448616E646C65720B50726F6772616D4E616D6506
        175265706F72744F6E53746172745365636F6E64506173730B50726F6772616D
        54797065070B747450726F63656475726506536F75726365065270726F636564
        757265205265706F72744F6E53746172745365636F6E64506173733B0D0A6265
        67696E0D0A2020746F74616C203A3D20303B0D0A2020646573636F6E746F203A
        3D20303B0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506065265706F
        7274094576656E744E616D6506114F6E53746172745365636F6E645061737307
        4576656E7449440216084361726574506F730102000200000000}
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppCompra: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeItens
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\Elieser\orcamento.rtm'
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 424
    Top = 16
    Version = '15.03'
    mmColumnWidth = 197300
    DataPipelineName = 'ppDBPipeItens'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 68263
      mmPrintPosition = 0
      object ppShape13: TppShape
        UserName = 'Shape2'
        mmHeight = 25665
        mmLeft = 156898
        mmTop = 32544
        mmWidth = 38894
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape14: TppShape
        UserName = 'Shape1'
        mmHeight = 25665
        mmLeft = 1852
        mmTop = 32544
        mmWidth = 152929
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel50: TppLabel
        UserName = 'Label4'
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 37306
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel51: TppLabel
        UserName = 'Label5'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 40481
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel53: TppLabel
        UserName = 'Label6'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 11113
        mmTop = 43656
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel54: TppLabel
        UserName = 'Label7'
        Caption = 'CNPJ/CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 46831
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel55: TppLabel
        UserName = 'Label8'
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 50006
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel56: TppLabel
        UserName = 'Label9'
        Caption = 'FAX:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 93927
        mmTop = 53181
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText71: TppDBText
        UserName = 'DBText14'
        DataField = 'NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 37306
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText72: TppDBText
        UserName = 'DBText15'
        DataField = 'LOGRADOURO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 40481
        mmWidth = 130969
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText73: TppDBText
        UserName = 'DBText16'
        DataField = 'BAIRRO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 43656
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText74: TppDBText
        UserName = 'DBText17'
        DataField = 'CPF'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 46831
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText75: TppDBText
        UserName = 'DBText18'
        DataField = 'FONE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 50006
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText76: TppDBText
        UserName = 'DBText19'
        DataField = 'FAX'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102129
        mmTop = 53181
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText77: TppDBText
        UserName = 'DBText21'
        DataField = 'RAZAOSOCIAL'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 89165
        mmTop = 37306
        mmWidth = 64029
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel57: TppLabel
        UserName = 'Label11'
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 89694
        mmTop = 50006
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText78: TppDBText
        UserName = 'DBText22'
        DataField = 'CELULAR'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102129
        mmTop = 50006
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel58: TppLabel
        UserName = 'Label12'
        Caption = 'I.E./RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 89165
        mmTop = 46831
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText79: TppDBText
        UserName = 'DBText23'
        DataField = 'RG'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102129
        mmTop = 46831
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel59: TppLabel
        UserName = 'Label13'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 89959
        mmTop = 43656
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText80: TppDBText
        UserName = 'DBText24'
        DataField = 'CIDADE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 102129
        mmTop = 43656
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel60: TppLabel
        UserName = 'Label14'
        Caption = 'email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 11906
        mmTop = 53181
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText81: TppDBText
        UserName = 'DBText25'
        DataField = 'EMAIL'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 53181
        mmWidth = 56092
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText82: TppDBText
        UserName = 'DBText11'
        DataField = 'DATA'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3969
        mmLeft = 160073
        mmTop = 37835
        mmWidth = 33602
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel61: TppLabel
        UserName = 'Label3'
        Caption = 'Fornecedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 2381
        mmTop = 34131
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText83: TppDBText
        UserName = 'DBText13'
        DataField = 'CODCLIENTE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 34131
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText84: TppDBText
        UserName = 'DBText31'
        DataField = 'NOMEUSER'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3969
        mmLeft = 168275
        mmTop = 52652
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine13: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 27517
        mmWidth = 62971
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText85: TppDBText
        UserName = 'DBText1'
        DataField = 'EMP_NOME'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 2117
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText86: TppDBText
        UserName = 'DBText2'
        DataField = 'EMP_RAZAOSOCIAL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 5292
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText87: TppDBText
        UserName = 'DBText3'
        DataField = 'EMP_LOGRADOURO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 8467
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText88: TppDBText
        UserName = 'DBText4'
        DataField = 'EMP_BAIRRO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 11642
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText89: TppDBText
        UserName = 'DBText5'
        DataField = 'EMP_CIDADE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 14817
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText90: TppDBText
        UserName = 'DBText6'
        Color = clGray
        DataField = 'CODIGO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Verdana'
        Font.Size = 28
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 11906
        mmLeft = 148696
        mmTop = 9525
        mmWidth = 46831
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText91: TppDBText
        UserName = 'DBText7'
        DataField = 'EMP_CNPJ'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 8467
        mmWidth = 40746
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText92: TppDBText
        UserName = 'DBText8'
        DataField = 'EMP_IE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 11642
        mmWidth = 40746
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText93: TppDBText
        UserName = 'DBText9'
        DataField = 'EMP_FONE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 14817
        mmWidth = 40746
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText94: TppDBText
        UserName = 'DBText10'
        DataField = 'EMP_EMAIL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 17992
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText95: TppDBText
        UserName = 'DBText12'
        DataField = 'EMP_FAX'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 105040
        mmTop = 17992
        mmWidth = 40746
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel62: TppLabel
        UserName = 'Label101'
        Caption = 'PEDIDO DE COMPRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6816
        mmLeft = 66170
        mmTop = 24077
        mmWidth = 64516
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine14: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 133350
        mmTop = 27252
        mmWidth = 64029
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBImage3: TppDBImage
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = True
        Stretch = True
        DataField = 'LOGOTIPO'
        DataPipeline = ppDBPipeEmpresa
        GraphicType = 'JPEG'
        ParentDataPipeline = False
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 21431
        mmLeft = 2381
        mmTop = 2381
        mmWidth = 39688
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel63: TppLabel
        UserName = 'Label1'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3351
        mmLeft = 25665
        mmTop = 63500
        mmWidth = 15663
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel64: TppLabel
        UserName = 'Label2'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3351
        mmLeft = 11906
        mmTop = 63500
        mmWidth = 10795
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel65: TppLabel
        UserName = 'Label10'
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3351
        mmLeft = 108744
        mmTop = 63765
        mmWidth = 9737
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel66: TppLabel
        UserName = 'Label15'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 133350
        mmTop = 63765
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel67: TppLabel
        UserName = 'Label16'
        Caption = 'Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 158750
        mmTop = 63765
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel68: TppLabel
        UserName = 'Label17'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3351
        mmLeft = 187061
        mmTop = 63765
        mmWidth = 8043
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine15: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 67733
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CODPRODUTO'
        DisplayFormat = '00#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        mmHeight = 3852
        mmLeft = 1588
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText96: TppDBText
        UserName = 'DBText20'
        DataField = 'CODPRODUTO'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3852
        mmLeft = 9525
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText97: TppDBText
        UserName = 'DBText26'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3852
        mmLeft = 25665
        mmTop = 0
        mmWidth = 80433
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText98: TppDBText
        UserName = 'DBText27'
        DataField = 'MARCA'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3852
        mmLeft = 108744
        mmTop = 0
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText99: TppDBText
        UserName = 'DBText28'
        DataField = 'QUANTIDADE'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3852
        mmLeft = 135202
        mmTop = 0
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText100: TppDBText
        UserName = 'DBText32'
        DataField = 'UNIDADE'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3852
        mmLeft = 146315
        mmTop = 0
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText101: TppDBText
        UserName = 'DBText29'
        DataField = 'VALOR_UNITARIO'
        DataPipeline = ppDBPipeItens
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3969
        mmLeft = 154517
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText102: TppDBText
        UserName = 'DBText30'
        DataField = 'VALOR_TOTAL'
        DataPipeline = ppDBPipeItens
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3969
        mmLeft = 173567
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText103: TppDBText
        UserName = 'DBText33'
        DataField = 'DESCONTO'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3969
        mmLeft = 120650
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppFooterBand3: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 80169
      mmPrintPosition = 0
      object ppLine16: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 4233
        mmTop = 55563
        mmWidth = 75671
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBText104: TppDBText
        UserName = 'DBText35'
        DataField = 'EMP_NOME'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 4498
        mmTop = 57679
        mmWidth = 61119
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine17: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 82815
        mmTop = 55563
        mmWidth = 34660
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBText105: TppDBText
        UserName = 'DBText36'
        DataField = 'NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 123031
        mmTop = 57679
        mmWidth = 64029
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel70: TppLabel
        UserName = 'Label104'
        Caption = 'Local, Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 83079
        mmTop = 57679
        mmWidth = 17727
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine18: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 122502
        mmTop = 55563
        mmWidth = 70115
        BandType = 7
        LayerName = Foreground2
      end
      object ppShape18: TppShape
        UserName = 'Shape3'
        mmHeight = 18521
        mmLeft = 1588
        mmTop = 1852
        mmWidth = 195263
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel73: TppLabel
        UserName = 'Label18'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 2910
        mmTop = 11377
        mmWidth = 22754
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel74: TppLabel
        UserName = 'Label19'
        Caption = 'TOTAL PARCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 141288
        mmTop = 3440
        mmWidth = 27781
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel75: TppLabel
        UserName = 'Label21'
        Caption = 'DESCONTO DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 142611
        mmTop = 8996
        mmWidth = 26458
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel76: TppLabel
        UserName = 'Label22'
        Caption = 'T O T A L   D A   P E D I D O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 115941
        mmTop = 14552
        mmWidth = 53128
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'VALOR_TOTAL'
        DataPipeline = ppDBPipeItens
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3852
        mmLeft = 171450
        mmTop = 3440
        mmWidth = 23283
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'DESCONTO'
        DataPipeline = ppDBPipeItens
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3969
        mmLeft = 171450
        mmTop = 8996
        mmWidth = 23283
        BandType = 7
        LayerName = Foreground2
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        mmHeight = 11642
        mmLeft = 1588
        mmTop = 25665
        mmWidth = 194734
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        Caption = 'Observa'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 1852
        mmTop = 21960
        mmWidth = 20278
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBMemo7: TppDBMemo
        UserName = 'DBMemo7'
        CharWrap = True
        DataField = 'OBSERVACOES'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 10583
        mmLeft = 2117
        mmTop = 26194
        mmWidth = 193675
        BandType = 7
        LayerName = Foreground2
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppVariable2: TppVariable
        UserName = 'Variable2'
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 171450
        mmTop = 14552
        mmWidth = 23283
        BandType = 7
        LayerName = Foreground2
      end
    end
    object raCodeModule3: TraCodeModule
      ProgramStream = {
        01060D54726156617250726F6772616D094368696C645479706502110B50726F
        6772616D4E616D6506095661726961626C65730B50726F6772616D5479706507
        0B747450726F63656475726506536F75726365068870726F6365647572652056
        61726961626C65733B0D0A7661720D0A202020646573636F6E746F3A20657874
        656E6465643B0D0A202020746F74616C3A20657874656E6465643B0D0A202020
        69646573636F6E746F3A20657874656E6465643B0D0A20202069746F74616C3A
        20657874656E6465643B0D0A0D0A626567696E0D0A0D0A656E643B0D0A084361
        726574506F730102000200000001060F5472614576656E7448616E646C65720B
        50726F6772616D4E616D6506104C6162656C32314F6E476574546578740B5072
        6F6772616D54797065070B747450726F63656475726506536F757263650C4701
        000070726F636564757265204C6162656C32314F6E4765745465787428766172
        20546578743A20537472696E67293B0D0A7661720D0A2020706F7263656E7461
        67656D3A20657874656E6465643B0D0A626567696E0D0A202069662044424361
        6C63322E56616C7565203E2030207468656E0D0A20202020706F7263656E7461
        67656D203A3D2028444243616C63332E56616C7565202A2031303029202F2044
        4243616C63322E56616C75650D0A2020656C73650D0A20202020706F7263656E
        746167656D203A3D20303B0D0A0D0A2020696620706F7263656E746167656D20
        3E2030207468656E0D0A2020202054657874203A3D2027444553434F4E544F20
        44452027202B20466F726D617443757272282723302E303025272C20706F7263
        656E746167656D290D0A2020656C73650D0A2020202054657874203A3D202727
        3B0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506074C6162656C3231
        094576656E744E616D6506094F6E47657454657874074576656E744944023508
        4361726574506F730102000200000001060F5472614576656E7448616E646C65
        720B50726F6772616D4E616D650610444254657874334F6E476574546578740B
        50726F6772616D54797065070B747450726F63656475726506536F7572636506
        9870726F63656475726520444254657874334F6E476574546578742876617220
        546578743A20537472696E67293B0D0A626567696E0D0A0D0A20205465787420
        3A3D205472696D28444250697065456D70726573615B27454D505F4C4F475241
        444F55524F275D29202B20272C2027202B2020444250697065456D7072657361
        5B27454D505F4E554D45524F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E
        656E744E616D65060744425465787433094576656E744E616D6506094F6E4765
        7454657874074576656E7449440235084361726574506F730102000200000001
        060F5472614576656E7448616E646C65720B50726F6772616D4E616D65061144
        425465787431354F6E476574546578740B50726F6772616D54797065070B7474
        50726F63656475726506536F7572636506B570726F6365647572652044425465
        787431354F6E476574546578742876617220546578743A20537472696E67293B
        0D0A626567696E0D0A0D0A202054657874203A3D205472696D28444250697065
        436F72706F5B274C4F475241444F55524F275D29202B20272C2027202B204442
        50697065436F72706F5B274E554D45524F275D202B20272027202B0D0A202020
        2020444250697065436F72706F5B27434F4D504C454D454E544F275D3B0D0A0D
        0A656E643B0D0A0D436F6D706F6E656E744E616D650608444254657874313509
        4576656E744E616D6506094F6E47657454657874074576656E74494402350843
        61726574506F730102000200000001060F5472614576656E7448616E646C6572
        0B50726F6772616D4E616D650610444254657874354F6E476574546578740B50
        726F6772616D54797065070B747450726F63656475726506536F757263650693
        70726F63656475726520444254657874354F6E47657454657874287661722054
        6578743A20537472696E67293B0D0A626567696E0D0A0D0A202054657874203A
        3D205472696D28444250697065456D70726573615B27454D505F434944414445
        275D29202B20272C2027202B20444250697065456D70726573615B27454D505F
        45535441444F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D
        65060744425465787435094576656E744E616D6506094F6E4765745465787407
        4576656E7449440235084361726574506F730102000200000001060F54726145
        76656E7448616E646C65720B50726F6772616D4E616D65061144425465787432
        344F6E476574546578740B50726F6772616D54797065070B747450726F636564
        75726506536F75726365068870726F6365647572652044425465787432344F6E
        476574546578742876617220546578743A20537472696E67293B0D0A62656769
        6E0D0A0D0A202054657874203A3D205472696D28444250697065436F72706F5B
        27434944414445275D29202B20272C2027202B20444250697065436F72706F5B
        2745535441444F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E61
        6D6506084442546578743234094576656E744E616D6506094F6E476574546578
        74074576656E7449440235084361726574506F730102000200000001060F5472
        614576656E7448616E646C65720B50726F6772616D4E616D6506114442546578
        7431374F6E476574546578740B50726F6772616D54797065070B747450726F63
        656475726506536F7572636506B570726F636564757265204442546578743137
        4F6E476574546578742876617220546578743A20537472696E67293B0D0A6265
        67696E0D0A0D0A2020696620444250697065436F72706F5B275449504F504553
        534F41275D203D20274627207468656E0D0A2020202054657874203A3D204442
        50697065436F72706F5B27435046275D0D0A2020656C73650D0A202020205465
        7874203A3D20444250697065436F72706F5B27434743275D3B0D0A0D0A656E64
        3B0D0A0D436F6D706F6E656E744E616D6506084442546578743137094576656E
        744E616D6506094F6E47657454657874074576656E7449440235084361726574
        506F730102000200000001060F5472614576656E7448616E646C65720B50726F
        6772616D4E616D65061144425465787432334F6E476574546578740B50726F67
        72616D54797065070B747450726F63656475726506536F7572636506B370726F
        6365647572652044425465787432334F6E476574546578742876617220546578
        743A20537472696E67293B0D0A626567696E0D0A0D0A20206966204442506970
        65436F72706F5B275449504F504553534F41275D203D20274627207468656E0D
        0A2020202054657874203A3D20444250697065436F72706F5B275247275D0D0A
        2020656C73650D0A2020202054657874203A3D20444250697065436F72706F5B
        274945275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D650608
        4442546578743233094576656E744E616D6506094F6E47657454657874074576
        656E7449440235084361726574506F730102000200000001060F547261457665
        6E7448616E646C65720B50726F6772616D4E616D650610444254657874374F6E
        476574546578740B50726F6772616D54797065070B747450726F636564757265
        06536F75726365067070726F63656475726520444254657874374F6E47657454
        6578742876617220546578743A20537472696E67293B0D0A626567696E0D0A0D
        0A202054657874203A3D2027434E504A2027202B20444250697065456D707265
        73615B27454D505F434E504A275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E
        656E744E616D65060744425465787437094576656E744E616D6506094F6E4765
        7454657874074576656E7449440235084361726574506F730102000200000001
        060F5472614576656E7448616E646C65720B50726F6772616D4E616D65061044
        4254657874384F6E476574546578740B50726F6772616D54797065070B747450
        726F63656475726506536F75726365066E70726F636564757265204442546578
        74384F6E476574546578742876617220546578743A20537472696E67293B0D0A
        626567696E0D0A0D0A202054657874203A3D2027492E452E2027202B20444250
        697065456D70726573615B27454D505F4945275D3B0D0A0D0A656E643B0D0A0D
        436F6D706F6E656E744E616D65060744425465787438094576656E744E616D65
        06094F6E47657454657874074576656E7449440235084361726574506F730102
        000200000001060F5472614576656E7448616E646C65720B50726F6772616D4E
        616D6506195265706F72744F6E50726576696577466F726D4372656174650B50
        726F6772616D54797065070B747450726F63656475726506536F757263650654
        70726F636564757265205265706F72744F6E50726576696577466F726D437265
        6174653B0D0A626567696E0D0A2020746F74616C203A3D20303B0D0A20206465
        73636F6E746F203A3D20303B0D0A656E643B0D0A0D436F6D706F6E656E744E61
        6D6506065265706F7274094576656E744E616D6506134F6E5072657669657746
        6F726D437265617465074576656E7449440205084361726574506F7301020002
        00000001060F5472614576656E7448616E646C65720B50726F6772616D4E616D
        6506175265706F72744F6E53746172745365636F6E64506173730B50726F6772
        616D54797065070B747450726F63656475726506536F75726365065270726F63
        6564757265205265706F72744F6E53746172745365636F6E64506173733B0D0A
        626567696E0D0A2020746F74616C203A3D20303B0D0A2020646573636F6E746F
        203A3D20303B0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506065265
        706F7274094576656E744E616D6506114F6E53746172745365636F6E64506173
        73074576656E7449440216084361726574506F730102000200000001060F5472
        614576656E7448616E646C65720B50726F6772616D4E616D65060F5661726961
        626C65324F6E43616C630B50726F6772616D54797065070B747450726F636564
        75726506536F75726365069D70726F636564757265205661726961626C65324F
        6E43616C63287661722056616C75653A2056617269616E74293B0D0A62656769
        6E0D0A0D0A202056616C7565203A3D2020466F726D6174437572722827232C23
        23302E3030272C20444250697065436F72706F5B2756414C4F525F544F54414C
        275D202D2020444250697065436F72706F5B27444553434F4E544F275D293B0D
        0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506095661726961626C
        6532094576656E744E616D6506064F6E43616C63074576656E74494402210843
        61726574506F730102000200000000}
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
  object ppPV: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeItens3
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\Elieser\orcamento.rtm'
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 656
    Top = 16
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeItens3'
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 68263
      mmPrintPosition = 0
      object ppShape15: TppShape
        UserName = 'Shape2'
        mmHeight = 25665
        mmLeft = 242623
        mmTop = 32544
        mmWidth = 38894
        BandType = 0
        LayerName = Foreground3
      end
      object ppShape16: TppShape
        UserName = 'Shape1'
        mmHeight = 25665
        mmLeft = 1852
        mmTop = 32544
        mmWidth = 237596
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel69: TppLabel
        UserName = 'Label4'
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 37306
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel71: TppLabel
        UserName = 'Label5'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 40481
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel72: TppLabel
        UserName = 'Label6'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 11113
        mmTop = 43656
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel77: TppLabel
        UserName = 'Label7'
        Caption = 'CNPJ/CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 46831
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel78: TppLabel
        UserName = 'Label8'
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 50006
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel79: TppLabel
        UserName = 'Label9'
        Caption = 'FAX:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 133879
        mmTop = 53181
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText106: TppDBText
        UserName = 'DBText14'
        DataField = 'NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 37306
        mmWidth = 104246
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText107: TppDBText
        UserName = 'DBText15'
        DataField = 'LOGRADOURO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 40481
        mmWidth = 160867
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText108: TppDBText
        UserName = 'DBText16'
        DataField = 'BAIRRO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 43656
        mmWidth = 104246
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText109: TppDBText
        UserName = 'DBText17'
        DataField = 'CPF'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 46831
        mmWidth = 104246
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText110: TppDBText
        UserName = 'DBText18'
        DataField = 'FONE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 50006
        mmWidth = 104246
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText111: TppDBText
        UserName = 'DBText19'
        DataField = 'FAX'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 142082
        mmTop = 53181
        mmWidth = 80963
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText112: TppDBText
        UserName = 'DBText21'
        DataField = 'RAZAOSOCIAL'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 129117
        mmTop = 37306
        mmWidth = 93927
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel80: TppLabel
        UserName = 'Label11'
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 129646
        mmTop = 50006
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText113: TppDBText
        UserName = 'DBText22'
        DataField = 'CELULAR'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 142082
        mmTop = 50006
        mmWidth = 80963
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel81: TppLabel
        UserName = 'Label12'
        Caption = 'I.E./RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 129117
        mmTop = 46831
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText114: TppDBText
        UserName = 'DBText23'
        DataField = 'RG'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 142082
        mmTop = 46831
        mmWidth = 80963
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel82: TppLabel
        UserName = 'Label13'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 129911
        mmTop = 43656
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText115: TppDBText
        UserName = 'DBText24'
        DataField = 'CIDADE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 142082
        mmTop = 43656
        mmWidth = 80963
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel83: TppLabel
        UserName = 'Label14'
        Caption = 'email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 11906
        mmTop = 53181
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText116: TppDBText
        UserName = 'DBText25'
        DataField = 'EMAIL'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 53181
        mmWidth = 104246
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText117: TppDBText
        UserName = 'DBText11'
        DataField = 'DATA'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3969
        mmLeft = 245798
        mmTop = 37835
        mmWidth = 33602
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel84: TppLabel
        UserName = 'Label3'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 9790
        mmTop = 34131
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText118: TppDBText
        UserName = 'DBText13'
        DataField = 'CODCLIENTE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 34131
        mmWidth = 104246
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText119: TppDBText
        UserName = 'DBText31'
        DataField = 'NOMEUSER'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3969
        mmLeft = 254001
        mmTop = 52652
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine19: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 27517
        mmWidth = 106363
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText120: TppDBText
        UserName = 'DBText1'
        DataField = 'EMP_NOME'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 2117
        mmWidth = 83079
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText121: TppDBText
        UserName = 'DBText2'
        DataField = 'EMP_RAZAOSOCIAL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 5292
        mmWidth = 83079
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText122: TppDBText
        UserName = 'DBText3'
        DataField = 'EMP_LOGRADOURO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 8467
        mmWidth = 83079
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText123: TppDBText
        UserName = 'DBText4'
        DataField = 'EMP_BAIRRO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 11642
        mmWidth = 83079
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText124: TppDBText
        UserName = 'DBText5'
        DataField = 'EMP_CIDADE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 14817
        mmWidth = 83079
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText125: TppDBText
        UserName = 'DBText6'
        Color = clGray
        DataField = 'CODIGO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Verdana'
        Font.Size = 28
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 11906
        mmLeft = 235480
        mmTop = 8467
        mmWidth = 46831
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText126: TppDBText
        UserName = 'DBText7'
        DataField = 'EMP_CNPJ'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 129117
        mmTop = 9525
        mmWidth = 80433
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText127: TppDBText
        UserName = 'DBText8'
        DataField = 'EMP_IE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 129117
        mmTop = 12700
        mmWidth = 80433
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText128: TppDBText
        UserName = 'DBText9'
        DataField = 'EMP_FONE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 129117
        mmTop = 15875
        mmWidth = 80433
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText129: TppDBText
        UserName = 'DBText10'
        DataField = 'EMP_EMAIL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 17992
        mmWidth = 83079
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText130: TppDBText
        UserName = 'DBText12'
        DataField = 'EMP_FAX'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 129117
        mmTop = 19050
        mmWidth = 80433
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine20: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 168805
        mmTop = 27252
        mmWidth = 114565
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBImage4: TppDBImage
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = True
        Stretch = True
        DataField = 'LOGOTIPO'
        DataPipeline = ppDBPipeEmpresa
        GraphicType = 'JPEG'
        ParentDataPipeline = False
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 21431
        mmLeft = 2381
        mmTop = 2381
        mmWidth = 39688
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel86: TppLabel
        UserName = 'Label1'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3351
        mmLeft = 25665
        mmTop = 63500
        mmWidth = 15663
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel87: TppLabel
        UserName = 'Label2'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3351
        mmLeft = 11906
        mmTop = 63500
        mmWidth = 10795
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel89: TppLabel
        UserName = 'Label15'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 217488
        mmTop = 63765
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel90: TppLabel
        UserName = 'Label16'
        Caption = 'Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 242888
        mmTop = 63765
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel91: TppLabel
        UserName = 'Label17'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 271198
        mmTop = 63765
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine21: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 67733
        mmWidth = 283369
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        Caption = 'PEDIDO DE VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6879
        mmLeft = 107686
        mmTop = 24077
        mmWidth = 59531
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        Caption = 'PartNumber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 153194
        mmTop = 63500
        mmWidth = 20638
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel114: TppLabel
        UserName = 'Label114'
        Caption = 'Localiza'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 186002
        mmTop = 63500
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground3
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CODPRODUTO'
        DisplayFormat = '00#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        mmHeight = 3852
        mmLeft = 1588
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText131: TppDBText
        UserName = 'DBText20'
        DataField = 'CODIGO'
        DataPipeline = ppDBPipeItens3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3852
        mmLeft = 9525
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText132: TppDBText
        UserName = 'DBText26'
        DataField = 'DESCRICAO2'
        DataPipeline = ppDBPipeItens3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3969
        mmLeft = 25665
        mmTop = 0
        mmWidth = 124619
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText134: TppDBText
        UserName = 'DBText28'
        DataField = 'QUANTIDADE'
        DataPipeline = ppDBPipeItens3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3969
        mmLeft = 219340
        mmTop = 0
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText135: TppDBText
        UserName = 'DBText32'
        DataField = 'UNIDADE'
        DataPipeline = ppDBPipeItens3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3969
        mmLeft = 230453
        mmTop = 0
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText136: TppDBText
        UserName = 'DBText29'
        DataField = 'VALOR_VENDA'
        DataPipeline = ppDBPipeItens3
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3969
        mmLeft = 238655
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText137: TppDBText
        UserName = 'DBText30'
        DataField = 'VALOR_PAGO'
        DataPipeline = ppDBPipeItens3
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3969
        mmLeft = 182034
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText138: TppDBText
        UserName = 'DBText33'
        DataField = 'DESCONTO'
        DataPipeline = ppDBPipeItens3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3969
        mmLeft = 204788
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground3
      end
      object ppVariable3: TppVariable
        UserName = 'Variable3'
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 258763
        mmTop = 0
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText133: TppDBText
        UserName = 'DBText133'
        DataField = 'PARTNUMBER'
        DataPipeline = ppDBPipeItens3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3969
        mmLeft = 153194
        mmTop = 0
        mmWidth = 29898
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText168: TppDBText
        UserName = 'DBText168'
        DataField = 'LOCALIZACAO'
        DataPipeline = ppDBPipeItens3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3969
        mmLeft = 186002
        mmTop = 0
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground3
      end
    end
    object ppFooterBand4: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand4: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 64823
      mmPrintPosition = 0
      object ppShape20: TppShape
        UserName = 'Shape7'
        mmHeight = 11642
        mmLeft = 1588
        mmTop = 30427
        mmWidth = 279930
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel92: TppLabel
        UserName = 'Label25'
        Caption = 'Observa'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 1852
        mmTop = 26723
        mmWidth = 20278
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBMemo9: TppDBMemo
        UserName = 'DBMemo4'
        CharWrap = True
        DataField = 'OBSERVACOES'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 10583
        mmLeft = 2117
        mmTop = 30956
        mmWidth = 278342
        BandType = 7
        LayerName = Foreground3
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLine22: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 6085
        mmTop = 59267
        mmWidth = 75671
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText139: TppDBText
        UserName = 'DBText35'
        DataField = 'EMP_NOME'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 6350
        mmTop = 61383
        mmWidth = 61119
        BandType = 7
        LayerName = Foreground3
      end
      object ppLine23: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 84667
        mmTop = 59267
        mmWidth = 34660
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText140: TppDBText
        UserName = 'DBText36'
        DataField = 'NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 124884
        mmTop = 61383
        mmWidth = 64029
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel93: TppLabel
        UserName = 'Label104'
        Caption = 'Local, Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 84931
        mmTop = 61383
        mmWidth = 17727
        BandType = 7
        LayerName = Foreground3
      end
      object ppLine24: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 124354
        mmTop = 59267
        mmWidth = 70115
        BandType = 7
        LayerName = Foreground3
      end
      object ppShape21: TppShape
        UserName = 'Shape3'
        mmHeight = 18521
        mmLeft = 1588
        mmTop = 1852
        mmWidth = 279930
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel96: TppLabel
        UserName = 'Label18'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 2910
        mmTop = 11377
        mmWidth = 22754
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel97: TppLabel
        UserName = 'Label19'
        Caption = 'TOTAL PARCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 225425
        mmTop = 3440
        mmWidth = 27781
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel98: TppLabel
        UserName = 'Label21'
        Caption = 'DESCONTO DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 226748
        mmTop = 8996
        mmWidth = 26458
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel99: TppLabel
        UserName = 'Label22'
        Caption = 'T O T A L   D O   P E D I D O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 199761
        mmTop = 14552
        mmWidth = 53446
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'VALOR_PAGO'
        DataPipeline = ppDBPipeItens3
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3969
        mmLeft = 255588
        mmTop = 14552
        mmWidth = 23283
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'DESCONTO'
        DataPipeline = ppDBPipeItens3
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3969
        mmLeft = 255588
        mmTop = 8996
        mmWidth = 23283
        BandType = 7
        LayerName = Foreground3
      end
      object ppVariable5: TppVariable
        UserName = 'Variable5'
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 255588
        mmTop = 3440
        mmWidth = 23019
        BandType = 7
        LayerName = Foreground3
      end
    end
    object raCodeModule4: TraCodeModule
      ProgramStream = {
        01060D54726156617250726F6772616D094368696C645479706502110B50726F
        6772616D4E616D6506095661726961626C65730B50726F6772616D5479706507
        0B747450726F63656475726506536F75726365068870726F6365647572652056
        61726961626C65733B0D0A7661720D0A202020646573636F6E746F3A20657874
        656E6465643B0D0A202020746F74616C3A20657874656E6465643B0D0A202020
        69646573636F6E746F3A20657874656E6465643B0D0A20202069746F74616C3A
        20657874656E6465643B0D0A0D0A626567696E0D0A0D0A656E643B0D0A084361
        726574506F730102000200000001060F5472614576656E7448616E646C65720B
        50726F6772616D4E616D6506104C6162656C32314F6E476574546578740B5072
        6F6772616D54797065070B747450726F63656475726506536F757263650C4701
        000070726F636564757265204C6162656C32314F6E4765745465787428766172
        20546578743A20537472696E67293B0D0A7661720D0A2020706F7263656E7461
        67656D3A20657874656E6465643B0D0A626567696E0D0A202069662044424361
        6C63322E56616C7565203E2030207468656E0D0A20202020706F7263656E7461
        67656D203A3D2028444243616C63332E56616C7565202A2031303029202F2044
        4243616C63322E56616C75650D0A2020656C73650D0A20202020706F7263656E
        746167656D203A3D20303B0D0A0D0A2020696620706F7263656E746167656D20
        3E2030207468656E0D0A2020202054657874203A3D2027444553434F4E544F20
        44452027202B20466F726D617443757272282723302E303025272C20706F7263
        656E746167656D290D0A2020656C73650D0A2020202054657874203A3D202727
        3B0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506074C6162656C3231
        094576656E744E616D6506094F6E47657454657874074576656E744944023508
        4361726574506F730102000200000001060F5472614576656E7448616E646C65
        720B50726F6772616D4E616D650610444254657874334F6E476574546578740B
        50726F6772616D54797065070B747450726F63656475726506536F7572636506
        9870726F63656475726520444254657874334F6E476574546578742876617220
        546578743A20537472696E67293B0D0A626567696E0D0A0D0A20205465787420
        3A3D205472696D28444250697065456D70726573615B27454D505F4C4F475241
        444F55524F275D29202B20272C2027202B2020444250697065456D7072657361
        5B27454D505F4E554D45524F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E
        656E744E616D65060744425465787433094576656E744E616D6506094F6E4765
        7454657874074576656E7449440235084361726574506F730102000200000001
        060F5472614576656E7448616E646C65720B50726F6772616D4E616D65061144
        425465787431354F6E476574546578740B50726F6772616D54797065070B7474
        50726F63656475726506536F7572636506B570726F6365647572652044425465
        787431354F6E476574546578742876617220546578743A20537472696E67293B
        0D0A626567696E0D0A0D0A202054657874203A3D205472696D28444250697065
        436F72706F5B274C4F475241444F55524F275D29202B20272C2027202B204442
        50697065436F72706F5B274E554D45524F275D202B20272027202B0D0A202020
        2020444250697065436F72706F5B27434F4D504C454D454E544F275D3B0D0A0D
        0A656E643B0D0A0D436F6D706F6E656E744E616D650608444254657874313509
        4576656E744E616D6506094F6E47657454657874074576656E74494402350843
        61726574506F730102000200000001060F5472614576656E7448616E646C6572
        0B50726F6772616D4E616D650610444254657874354F6E476574546578740B50
        726F6772616D54797065070B747450726F63656475726506536F757263650693
        70726F63656475726520444254657874354F6E47657454657874287661722054
        6578743A20537472696E67293B0D0A626567696E0D0A0D0A202054657874203A
        3D205472696D28444250697065456D70726573615B27454D505F434944414445
        275D29202B20272C2027202B20444250697065456D70726573615B27454D505F
        45535441444F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D
        65060744425465787435094576656E744E616D6506094F6E4765745465787407
        4576656E7449440235084361726574506F730102000200000001060F54726145
        76656E7448616E646C65720B50726F6772616D4E616D65061144425465787432
        344F6E476574546578740B50726F6772616D54797065070B747450726F636564
        75726506536F75726365068870726F6365647572652044425465787432344F6E
        476574546578742876617220546578743A20537472696E67293B0D0A62656769
        6E0D0A0D0A202054657874203A3D205472696D28444250697065436F72706F5B
        27434944414445275D29202B20272C2027202B20444250697065436F72706F5B
        2745535441444F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E61
        6D6506084442546578743234094576656E744E616D6506094F6E476574546578
        74074576656E7449440235084361726574506F730102000200000001060F5472
        614576656E7448616E646C65720B50726F6772616D4E616D6506114442546578
        7431374F6E476574546578740B50726F6772616D54797065070B747450726F63
        656475726506536F7572636506B570726F636564757265204442546578743137
        4F6E476574546578742876617220546578743A20537472696E67293B0D0A6265
        67696E0D0A0D0A2020696620444250697065436F72706F5B275449504F504553
        534F41275D203D20274627207468656E0D0A2020202054657874203A3D204442
        50697065436F72706F5B27435046275D0D0A2020656C73650D0A202020205465
        7874203A3D20444250697065436F72706F5B27434743275D3B0D0A0D0A656E64
        3B0D0A0D436F6D706F6E656E744E616D6506084442546578743137094576656E
        744E616D6506094F6E47657454657874074576656E7449440235084361726574
        506F730102000200000001060F5472614576656E7448616E646C65720B50726F
        6772616D4E616D65061144425465787432334F6E476574546578740B50726F67
        72616D54797065070B747450726F63656475726506536F7572636506B370726F
        6365647572652044425465787432334F6E476574546578742876617220546578
        743A20537472696E67293B0D0A626567696E0D0A0D0A20206966204442506970
        65436F72706F5B275449504F504553534F41275D203D20274627207468656E0D
        0A2020202054657874203A3D20444250697065436F72706F5B275247275D0D0A
        2020656C73650D0A2020202054657874203A3D20444250697065436F72706F5B
        274945275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D650608
        4442546578743233094576656E744E616D6506094F6E47657454657874074576
        656E7449440235084361726574506F730102000200000001060F547261457665
        6E7448616E646C65720B50726F6772616D4E616D650610444254657874374F6E
        476574546578740B50726F6772616D54797065070B747450726F636564757265
        06536F75726365067070726F63656475726520444254657874374F6E47657454
        6578742876617220546578743A20537472696E67293B0D0A626567696E0D0A0D
        0A202054657874203A3D2027434E504A2027202B20444250697065456D707265
        73615B27454D505F434E504A275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E
        656E744E616D65060744425465787437094576656E744E616D6506094F6E4765
        7454657874074576656E7449440235084361726574506F730102000200000001
        060F5472614576656E7448616E646C65720B50726F6772616D4E616D65061044
        4254657874384F6E476574546578740B50726F6772616D54797065070B747450
        726F63656475726506536F75726365066E70726F636564757265204442546578
        74384F6E476574546578742876617220546578743A20537472696E67293B0D0A
        626567696E0D0A0D0A202054657874203A3D2027492E452E2027202B20444250
        697065456D70726573615B27454D505F4945275D3B0D0A0D0A656E643B0D0A0D
        436F6D706F6E656E744E616D65060744425465787438094576656E744E616D65
        06094F6E47657454657874074576656E7449440235084361726574506F730102
        000200000001060F5472614576656E7448616E646C65720B50726F6772616D4E
        616D6506195265706F72744F6E50726576696577466F726D4372656174650B50
        726F6772616D54797065070B747450726F63656475726506536F757263650654
        70726F636564757265205265706F72744F6E50726576696577466F726D437265
        6174653B0D0A626567696E0D0A2020746F74616C203A3D20303B0D0A20206465
        73636F6E746F203A3D20303B0D0A656E643B0D0A0D436F6D706F6E656E744E61
        6D6506065265706F7274094576656E744E616D6506134F6E5072657669657746
        6F726D437265617465074576656E7449440205084361726574506F7301020002
        00000001060F5472614576656E7448616E646C65720B50726F6772616D4E616D
        6506175265706F72744F6E53746172745365636F6E64506173730B50726F6772
        616D54797065070B747450726F63656475726506536F75726365065270726F63
        6564757265205265706F72744F6E53746172745365636F6E64506173733B0D0A
        626567696E0D0A2020746F74616C203A3D20303B0D0A2020646573636F6E746F
        203A3D20303B0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506065265
        706F7274094576656E744E616D6506114F6E53746172745365636F6E64506173
        73074576656E7449440216084361726574506F730102000200000001060F5472
        614576656E7448616E646C65720B50726F6772616D4E616D65060F5661726961
        626C65334F6E43616C630B50726F6772616D54797065070B747450726F636564
        75726506536F75726365069F70726F636564757265205661726961626C65334F
        6E43616C63287661722056616C75653A2056617269616E74293B0D0A62656769
        6E0D0A0D0A202056616C7565203A3D20466F726D6174437572722827232C2323
        302E3030272C204442506970654974656E73335B2756414C4F525F56454E4441
        275D202A204442506970654974656E73335B275155414E544944414445275D29
        3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506095661726961
        626C6533094576656E744E616D6506064F6E43616C63074576656E7449440221
        084361726574506F730102000200000001060F5472614576656E7448616E646C
        65720B50726F6772616D4E616D65060F5661726961626C65354F6E43616C630B
        50726F6772616D54797065070B747450726F63656475726506536F7572636506
        8470726F636564757265205661726961626C65354F6E43616C63287661722056
        616C75653A2056617269616E74293B0D0A626567696E0D0A0D0A202056616C75
        65203A3D20466F726D6174437572722827232C2323302E3030272C2044424361
        6C63332E56616C7565202B20444243616C63322E56616C7565293B0D0A0D0A65
        6E643B0D0A0D436F6D706F6E656E744E616D6506095661726961626C65350945
        76656E744E616D6506064F6E43616C63074576656E7449440221084361726574
        506F730102000200000000}
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ppPV2: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeItens3
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\Elieser\orcamento.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 656
    Top = 72
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeItens3'
    object ppHeaderBand5: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 68263
      mmPrintPosition = 0
      object ppShape22: TppShape
        UserName = 'Shape2'
        mmHeight = 25665
        mmLeft = 242623
        mmTop = 32544
        mmWidth = 38894
        BandType = 0
        LayerName = Foreground4
      end
      object ppShape23: TppShape
        UserName = 'Shape1'
        mmHeight = 25665
        mmLeft = 1852
        mmTop = 32544
        mmWidth = 235480
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel100: TppLabel
        UserName = 'Label4'
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 37306
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel101: TppLabel
        UserName = 'Label5'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 40481
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel102: TppLabel
        UserName = 'Label6'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 11113
        mmTop = 43656
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel103: TppLabel
        UserName = 'Label7'
        Caption = 'CNPJ/CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 46831
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel104: TppLabel
        UserName = 'Label8'
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 50006
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel105: TppLabel
        UserName = 'Label9'
        Caption = 'FAX:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 127529
        mmTop = 53181
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText141: TppDBText
        UserName = 'DBText14'
        DataField = 'NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 37306
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText142: TppDBText
        UserName = 'DBText15'
        DataField = 'LOGRADOURO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 40481
        mmWidth = 130969
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText143: TppDBText
        UserName = 'DBText16'
        DataField = 'BAIRRO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 43656
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText144: TppDBText
        UserName = 'DBText17'
        DataField = 'CPF'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 46831
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText145: TppDBText
        UserName = 'DBText18'
        DataField = 'FONE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 50006
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText146: TppDBText
        UserName = 'DBText19'
        DataField = 'FAX'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 135732
        mmTop = 53181
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText147: TppDBText
        UserName = 'DBText21'
        DataField = 'RAZAOSOCIAL'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 122767
        mmTop = 37306
        mmWidth = 64029
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel106: TppLabel
        UserName = 'Label11'
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 123296
        mmTop = 50006
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText148: TppDBText
        UserName = 'DBText22'
        DataField = 'CELULAR'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 135732
        mmTop = 50006
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel107: TppLabel
        UserName = 'Label12'
        Caption = 'I.E./RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 122767
        mmTop = 46831
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText149: TppDBText
        UserName = 'DBText23'
        DataField = 'RG'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 135732
        mmTop = 46831
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel108: TppLabel
        UserName = 'Label13'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 123561
        mmTop = 43656
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText150: TppDBText
        UserName = 'DBText24'
        DataField = 'CIDADE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 135732
        mmTop = 43656
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel109: TppLabel
        UserName = 'Label14'
        Caption = 'email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 11906
        mmTop = 53181
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText151: TppDBText
        UserName = 'DBText25'
        DataField = 'EMAIL'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 53181
        mmWidth = 56092
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText152: TppDBText
        UserName = 'DBText11'
        DataField = 'DATA'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3969
        mmLeft = 245798
        mmTop = 37835
        mmWidth = 33602
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel110: TppLabel
        UserName = 'Label3'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 9790
        mmTop = 34131
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText153: TppDBText
        UserName = 'DBText13'
        DataField = 'CODCLIENTE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 34131
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText154: TppDBText
        UserName = 'DBText31'
        DataField = 'NOMEUSER'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3969
        mmLeft = 254001
        mmTop = 52652
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine25: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 27517
        mmWidth = 118269
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText155: TppDBText
        UserName = 'DBText1'
        DataField = 'EMP_NOME'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 58473
        mmTop = 2117
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText156: TppDBText
        UserName = 'DBText2'
        DataField = 'EMP_RAZAOSOCIAL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 58473
        mmTop = 5292
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText157: TppDBText
        UserName = 'DBText3'
        DataField = 'EMP_LOGRADOURO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 58473
        mmTop = 8467
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText158: TppDBText
        UserName = 'DBText4'
        DataField = 'EMP_BAIRRO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 58473
        mmTop = 11642
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText159: TppDBText
        UserName = 'DBText5'
        DataField = 'EMP_CIDADE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 58473
        mmTop = 14817
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText160: TppDBText
        UserName = 'DBText6'
        Color = clGray
        DataField = 'CODIGO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Verdana'
        Font.Size = 28
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 11906
        mmLeft = 234421
        mmTop = 9525
        mmWidth = 46831
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText161: TppDBText
        UserName = 'DBText7'
        DataField = 'EMP_CNPJ'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 168805
        mmTop = 8467
        mmWidth = 40746
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText162: TppDBText
        UserName = 'DBText8'
        DataField = 'EMP_IE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 168805
        mmTop = 11642
        mmWidth = 40746
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText163: TppDBText
        UserName = 'DBText9'
        DataField = 'EMP_FONE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 168805
        mmTop = 14817
        mmWidth = 40746
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText164: TppDBText
        UserName = 'DBText10'
        DataField = 'EMP_EMAIL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 58473
        mmTop = 17992
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText165: TppDBText
        UserName = 'DBText12'
        DataField = 'EMP_FAX'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 168805
        mmTop = 17992
        mmWidth = 40746
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel111: TppLabel
        UserName = 'Label101'
        Caption = 'PEDIDO DE VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6879
        mmLeft = 120915
        mmTop = 24342
        mmWidth = 59531
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine26: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 182827
        mmTop = 27252
        mmWidth = 100277
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBImage5: TppDBImage
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = True
        Stretch = True
        DataField = 'LOGOTIPO'
        DataPipeline = ppDBPipeEmpresa
        GraphicType = 'JPEG'
        ParentDataPipeline = False
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 21431
        mmLeft = 2381
        mmTop = 2381
        mmWidth = 39688
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel112: TppLabel
        UserName = 'Label1'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3351
        mmLeft = 25665
        mmTop = 63500
        mmWidth = 15663
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel113: TppLabel
        UserName = 'Label2'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3351
        mmLeft = 11906
        mmTop = 63500
        mmWidth = 10795
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel115: TppLabel
        UserName = 'Label15'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 219075
        mmTop = 63765
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel116: TppLabel
        UserName = 'Label16'
        Caption = 'Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 244475
        mmTop = 63765
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel117: TppLabel
        UserName = 'Label17'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 272786
        mmTop = 63765
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine27: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 67733
        mmWidth = 283105
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel171: TppLabel
        UserName = 'Label171'
        Caption = 'PartNumber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 144463
        mmTop = 63500
        mmWidth = 20638
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText246: TppDBText
        UserName = 'DBText246'
        DataField = 'PARTNUMBER'
        DataPipeline = ppDBPipeItens3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3969
        mmLeft = 133879
        mmTop = 0
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel172: TppLabel
        UserName = 'Label172'
        Caption = 'Localiza'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 179388
        mmTop = 63765
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground4
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CODPRODUTO'
        DataPipeline = ppDBPipeItens3
        DisplayFormat = '00#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3852
        mmLeft = 1588
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText166: TppDBText
        UserName = 'DBText20'
        DataField = 'CODIGO'
        DataPipeline = ppDBPipeItens3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3852
        mmLeft = 9525
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText167: TppDBText
        UserName = 'DBText26'
        DataField = 'DESCRICAO2'
        DataPipeline = ppDBPipeItens3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3852
        mmLeft = 25665
        mmTop = 0
        mmWidth = 115888
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText169: TppDBText
        UserName = 'DBText28'
        DataField = 'QUANTIDADE'
        DataPipeline = ppDBPipeItens3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3969
        mmLeft = 220928
        mmTop = 0
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText170: TppDBText
        UserName = 'DBText32'
        DataField = 'UNIDADE'
        DataPipeline = ppDBPipeItens3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3969
        mmLeft = 232040
        mmTop = 0
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText171: TppDBText
        UserName = 'DBText29'
        DataField = 'VALOR_ITEM'
        DataPipeline = ppDBPipeItens3
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3969
        mmLeft = 240242
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText172: TppDBText
        UserName = 'DBText30'
        DataField = 'VALOR_PAGO'
        DataPipeline = ppDBPipeItens3
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3969
        mmLeft = 259292
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText173: TppDBText
        UserName = 'DBText33'
        DataField = 'DESCONTO'
        DataPipeline = ppDBPipeItens3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3969
        mmLeft = 206375
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText247: TppDBText
        UserName = 'DBText247'
        DataField = 'PARTNUMBER'
        DataPipeline = ppDBPipeItens3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3969
        mmLeft = 144463
        mmTop = 0
        mmWidth = 29898
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText248: TppDBText
        UserName = 'DBText248'
        DataField = 'LOCALIZACAO'
        DataPipeline = ppDBPipeItens3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3969
        mmLeft = 179388
        mmTop = 0
        mmWidth = 36513
        BandType = 4
        LayerName = Foreground4
      end
    end
    object ppFooterBand5: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand5: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 53975
      mmPrintPosition = 0
      object ppShape26: TppShape
        UserName = 'Shape7'
        mmHeight = 11642
        mmLeft = 1588
        mmTop = 20108
        mmWidth = 281517
        BandType = 7
        LayerName = Foreground4
      end
      object ppLabel118: TppLabel
        UserName = 'Label25'
        Caption = 'Observa'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 1852
        mmTop = 16404
        mmWidth = 20278
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBMemo12: TppDBMemo
        UserName = 'DBMemo4'
        CharWrap = True
        DataField = 'OBSERVACOES'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 10583
        mmLeft = 2117
        mmTop = 20638
        mmWidth = 279401
        BandType = 7
        LayerName = Foreground4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLine28: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 6085
        mmTop = 48419
        mmWidth = 75671
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBText174: TppDBText
        UserName = 'DBText35'
        DataField = 'EMP_NOME'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 6350
        mmTop = 50536
        mmWidth = 61119
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine29: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 84667
        mmTop = 48419
        mmWidth = 55563
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBText175: TppDBText
        UserName = 'DBText36'
        DataField = 'NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 179917
        mmTop = 50536
        mmWidth = 64029
        BandType = 7
        LayerName = Foreground4
      end
      object ppLabel119: TppLabel
        UserName = 'Label104'
        Caption = 'Local, Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 84931
        mmTop = 50536
        mmWidth = 17727
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine30: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 179388
        mmTop = 48419
        mmWidth = 79640
        BandType = 7
        LayerName = Foreground4
      end
      object ppShape27: TppShape
        UserName = 'Shape3'
        mmHeight = 10054
        mmLeft = 1588
        mmTop = 1852
        mmWidth = 281517
        BandType = 7
        LayerName = Foreground4
      end
      object ppLabel122: TppLabel
        UserName = 'Label18'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 2910
        mmTop = 3175
        mmWidth = 22754
        BandType = 7
        LayerName = Foreground4
      end
      object ppLabel123: TppLabel
        UserName = 'Label22'
        Caption = 'T O T A L   D A   P R O P O S T A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 192352
        mmTop = 6350
        mmWidth = 62706
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'VALOR_PAGO'
        DataPipeline = ppDBPipeItens3
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens3'
        mmHeight = 3969
        mmLeft = 257440
        mmTop = 6350
        mmWidth = 23283
        BandType = 7
        LayerName = Foreground4
      end
    end
    object raCodeModule5: TraCodeModule
      ProgramStream = {
        01060D54726156617250726F6772616D094368696C645479706502110B50726F
        6772616D4E616D6506095661726961626C65730B50726F6772616D5479706507
        0B747450726F63656475726506536F75726365068870726F6365647572652056
        61726961626C65733B0D0A7661720D0A202020646573636F6E746F3A20657874
        656E6465643B0D0A202020746F74616C3A20657874656E6465643B0D0A202020
        69646573636F6E746F3A20657874656E6465643B0D0A20202069746F74616C3A
        20657874656E6465643B0D0A0D0A626567696E0D0A0D0A656E643B0D0A084361
        726574506F730102000200000001060F5472614576656E7448616E646C65720B
        50726F6772616D4E616D650610444254657874334F6E476574546578740B5072
        6F6772616D54797065070B747450726F63656475726506536F75726365069870
        726F63656475726520444254657874334F6E4765745465787428766172205465
        78743A20537472696E67293B0D0A626567696E0D0A0D0A202054657874203A3D
        205472696D28444250697065456D70726573615B27454D505F4C4F475241444F
        55524F275D29202B20272C2027202B2020444250697065456D70726573615B27
        454D505F4E554D45524F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E
        744E616D65060744425465787433094576656E744E616D6506094F6E47657454
        657874074576656E7449440235084361726574506F730102000200000001060F
        5472614576656E7448616E646C65720B50726F6772616D4E616D650611444254
        65787431354F6E476574546578740B50726F6772616D54797065070B74745072
        6F63656475726506536F7572636506B570726F63656475726520444254657874
        31354F6E476574546578742876617220546578743A20537472696E67293B0D0A
        626567696E0D0A0D0A202054657874203A3D205472696D28444250697065436F
        72706F5B274C4F475241444F55524F275D29202B20272C2027202B2044425069
        7065436F72706F5B274E554D45524F275D202B20272027202B0D0A2020202020
        444250697065436F72706F5B27434F4D504C454D454E544F275D3B0D0A0D0A65
        6E643B0D0A0D436F6D706F6E656E744E616D6506084442546578743135094576
        656E744E616D6506094F6E47657454657874074576656E744944023508436172
        6574506F730102000200000001060F5472614576656E7448616E646C65720B50
        726F6772616D4E616D650610444254657874354F6E476574546578740B50726F
        6772616D54797065070B747450726F63656475726506536F7572636506937072
        6F63656475726520444254657874354F6E476574546578742876617220546578
        743A20537472696E67293B0D0A626567696E0D0A0D0A202054657874203A3D20
        5472696D28444250697065456D70726573615B27454D505F434944414445275D
        29202B20272C2027202B20444250697065456D70726573615B27454D505F4553
        5441444F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506
        0744425465787435094576656E744E616D6506094F6E47657454657874074576
        656E7449440235084361726574506F730102000200000001060F547261457665
        6E7448616E646C65720B50726F6772616D4E616D65061144425465787432344F
        6E476574546578740B50726F6772616D54797065070B747450726F6365647572
        6506536F75726365068870726F6365647572652044425465787432344F6E4765
        74546578742876617220546578743A20537472696E67293B0D0A626567696E0D
        0A0D0A202054657874203A3D205472696D28444250697065436F72706F5B2743
        4944414445275D29202B20272C2027202B20444250697065436F72706F5B2745
        535441444F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65
        06084442546578743234094576656E744E616D6506094F6E4765745465787407
        4576656E7449440235084361726574506F730102000200000001060F54726145
        76656E7448616E646C65720B50726F6772616D4E616D65061144425465787431
        374F6E476574546578740B50726F6772616D54797065070B747450726F636564
        75726506536F7572636506B570726F6365647572652044425465787431374F6E
        476574546578742876617220546578743A20537472696E67293B0D0A62656769
        6E0D0A0D0A2020696620444250697065436F72706F5B275449504F504553534F
        41275D203D20274627207468656E0D0A2020202054657874203A3D2044425069
        7065436F72706F5B27435046275D0D0A2020656C73650D0A2020202054657874
        203A3D20444250697065436F72706F5B27434743275D3B0D0A0D0A656E643B0D
        0A0D436F6D706F6E656E744E616D6506084442546578743137094576656E744E
        616D6506094F6E47657454657874074576656E7449440235084361726574506F
        730102000200000001060F5472614576656E7448616E646C65720B50726F6772
        616D4E616D65061144425465787432334F6E476574546578740B50726F677261
        6D54797065070B747450726F63656475726506536F7572636506B370726F6365
        647572652044425465787432334F6E476574546578742876617220546578743A
        20537472696E67293B0D0A626567696E0D0A0D0A202069662044425069706543
        6F72706F5B275449504F504553534F41275D203D20274627207468656E0D0A20
        20202054657874203A3D20444250697065436F72706F5B275247275D0D0A2020
        656C73650D0A2020202054657874203A3D20444250697065436F72706F5B2749
        45275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506084442
        546578743233094576656E744E616D6506094F6E47657454657874074576656E
        7449440235084361726574506F730102000200000001060F5472614576656E74
        48616E646C65720B50726F6772616D4E616D650610444254657874374F6E4765
        74546578740B50726F6772616D54797065070B747450726F6365647572650653
        6F75726365067070726F63656475726520444254657874374F6E476574546578
        742876617220546578743A20537472696E67293B0D0A626567696E0D0A0D0A20
        2054657874203A3D2027434E504A2027202B20444250697065456D7072657361
        5B27454D505F434E504A275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E
        744E616D65060744425465787437094576656E744E616D6506094F6E47657454
        657874074576656E7449440235084361726574506F730102000200000001060F
        5472614576656E7448616E646C65720B50726F6772616D4E616D650610444254
        657874384F6E476574546578740B50726F6772616D54797065070B747450726F
        63656475726506536F75726365066E70726F6365647572652044425465787438
        4F6E476574546578742876617220546578743A20537472696E67293B0D0A6265
        67696E0D0A0D0A202054657874203A3D2027492E452E2027202B204442506970
        65456D70726573615B27454D505F4945275D3B0D0A0D0A656E643B0D0A0D436F
        6D706F6E656E744E616D65060744425465787438094576656E744E616D650609
        4F6E47657454657874074576656E7449440235084361726574506F7301020002
        00000001060F5472614576656E7448616E646C65720B50726F6772616D4E616D
        6506195265706F72744F6E50726576696577466F726D4372656174650B50726F
        6772616D54797065070B747450726F63656475726506536F7572636506547072
        6F636564757265205265706F72744F6E50726576696577466F726D4372656174
        653B0D0A626567696E0D0A2020746F74616C203A3D20303B0D0A202064657363
        6F6E746F203A3D20303B0D0A656E643B0D0A0D436F6D706F6E656E744E616D65
        06065265706F7274094576656E744E616D6506134F6E50726576696577466F72
        6D437265617465074576656E7449440205084361726574506F73010200020000
        0001060F5472614576656E7448616E646C65720B50726F6772616D4E616D6506
        175265706F72744F6E53746172745365636F6E64506173730B50726F6772616D
        54797065070B747450726F63656475726506536F75726365065270726F636564
        757265205265706F72744F6E53746172745365636F6E64506173733B0D0A6265
        67696E0D0A2020746F74616C203A3D20303B0D0A2020646573636F6E746F203A
        3D20303B0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506065265706F
        7274094576656E744E616D6506114F6E53746172745365636F6E645061737307
        4576656E7449440216084361726574506F730102000200000000}
    end
    object ppDesignLayers5: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'Foreground4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object ppOV: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeItens
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\Elieser\orcamento.rtm'
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 584
    Top = 16
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeItens'
    object ppHeaderBand6: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 64823
      mmPrintPosition = 0
      object ppShape19: TppShape
        UserName = 'Shape2'
        mmHeight = 25665
        mmLeft = 230188
        mmTop = 32544
        mmWidth = 38894
        BandType = 0
        LayerName = Foreground5
      end
      object ppShape24: TppShape
        UserName = 'Shape1'
        mmHeight = 25665
        mmLeft = 10583
        mmTop = 32544
        mmWidth = 214048
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel95: TppLabel
        UserName = 'Label4'
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 12965
        mmTop = 37306
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel120: TppLabel
        UserName = 'Label5'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 12965
        mmTop = 40481
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel121: TppLabel
        UserName = 'Label6'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 20638
        mmTop = 43656
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel124: TppLabel
        UserName = 'Label7'
        Caption = 'CNPJ/CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 12965
        mmTop = 46831
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel125: TppLabel
        UserName = 'Label8'
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 12965
        mmTop = 50006
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel126: TppLabel
        UserName = 'Label9'
        Caption = 'FAX:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 128323
        mmTop = 53181
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText176: TppDBText
        UserName = 'DBText14'
        DataField = 'NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 37306
        mmWidth = 84667
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText177: TppDBText
        UserName = 'DBText15'
        DataField = 'LOGRADOURO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 40481
        mmWidth = 130969
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText178: TppDBText
        UserName = 'DBText16'
        DataField = 'BAIRRO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 43656
        mmWidth = 84402
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText179: TppDBText
        UserName = 'DBText17'
        DataField = 'CPF'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 46831
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText180: TppDBText
        UserName = 'DBText18'
        DataField = 'FONE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 50006
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText181: TppDBText
        UserName = 'DBText19'
        DataField = 'FAX'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 136525
        mmTop = 53181
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText182: TppDBText
        UserName = 'DBText21'
        DataField = 'RAZAOSOCIAL'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 123561
        mmTop = 37306
        mmWidth = 74083
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel127: TppLabel
        UserName = 'Label11'
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 124090
        mmTop = 50006
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText183: TppDBText
        UserName = 'DBText22'
        DataField = 'CELULAR'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 136525
        mmTop = 50006
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel128: TppLabel
        UserName = 'Label12'
        Caption = 'I.E./RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 123561
        mmTop = 46831
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText184: TppDBText
        UserName = 'DBText23'
        DataField = 'RG'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 136525
        mmTop = 46831
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel129: TppLabel
        UserName = 'Label13'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 124354
        mmTop = 43656
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText185: TppDBText
        UserName = 'DBText24'
        DataField = 'CIDADE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 136525
        mmTop = 43656
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel130: TppLabel
        UserName = 'Label14'
        Caption = 'email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 21431
        mmTop = 53181
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText186: TppDBText
        UserName = 'DBText25'
        DataField = 'EMAIL'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 53181
        mmWidth = 56092
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText187: TppDBText
        UserName = 'DBText11'
        DataField = 'DATA'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3969
        mmLeft = 233363
        mmTop = 37835
        mmWidth = 33602
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel131: TppLabel
        UserName = 'Label3'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 19315
        mmTop = 34131
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText188: TppDBText
        UserName = 'DBText13'
        DataField = 'CODCLIENTE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 34131
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText189: TppDBText
        UserName = 'DBText31'
        DataField = 'NOMEUSER'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3969
        mmLeft = 241565
        mmTop = 52652
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground5
      end
      object ppLine31: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 9525
        mmTop = 27517
        mmWidth = 75142
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText190: TppDBText
        UserName = 'DBText1'
        DataField = 'EMP_NOME'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 56356
        mmTop = 2117
        mmWidth = 81756
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText191: TppDBText
        UserName = 'DBText2'
        DataField = 'EMP_RAZAOSOCIAL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 56356
        mmTop = 5292
        mmWidth = 81756
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText192: TppDBText
        UserName = 'DBText3'
        DataField = 'EMP_LOGRADOURO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 56356
        mmTop = 8467
        mmWidth = 81756
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText193: TppDBText
        UserName = 'DBText4'
        DataField = 'EMP_BAIRRO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 56356
        mmTop = 11642
        mmWidth = 81756
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText194: TppDBText
        UserName = 'DBText5'
        DataField = 'EMP_CIDADE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 56356
        mmTop = 14817
        mmWidth = 81756
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText195: TppDBText
        UserName = 'DBText6'
        Color = clGray
        DataField = 'CODIGO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Verdana'
        Font.Size = 28
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 11906
        mmLeft = 221986
        mmTop = 4233
        mmWidth = 46831
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText196: TppDBText
        UserName = 'DBText7'
        DataField = 'EMP_CNPJ'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 144727
        mmTop = 8467
        mmWidth = 61648
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText197: TppDBText
        UserName = 'DBText8'
        DataField = 'EMP_IE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 144727
        mmTop = 11642
        mmWidth = 61648
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText198: TppDBText
        UserName = 'DBText9'
        DataField = 'EMP_FONE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 144727
        mmTop = 14817
        mmWidth = 61648
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText199: TppDBText
        UserName = 'DBText10'
        DataField = 'EMP_EMAIL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 56356
        mmTop = 17992
        mmWidth = 81756
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBText200: TppDBText
        UserName = 'DBText12'
        DataField = 'EMP_FAX'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 144727
        mmTop = 17992
        mmWidth = 61648
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel132: TppLabel
        UserName = 'Label101'
        Caption = 'PROPOSTA DE FORNECIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6879
        mmLeft = 87313
        mmTop = 24077
        mmWidth = 97896
        BandType = 0
        LayerName = Foreground5
      end
      object ppLine32: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 187855
        mmTop = 27252
        mmWidth = 82021
        BandType = 0
        LayerName = Foreground5
      end
      object ppDBImage6: TppDBImage
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = True
        Stretch = True
        DataField = 'LOGOTIPO'
        DataPipeline = ppDBPipeEmpresa
        GraphicType = 'JPEG'
        ParentDataPipeline = False
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 21431
        mmLeft = 10583
        mmTop = 2381
        mmWidth = 39688
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel133: TppLabel
        UserName = 'Label1'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3351
        mmLeft = 35719
        mmTop = 60061
        mmWidth = 15663
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel134: TppLabel
        UserName = 'Label2'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3351
        mmLeft = 21960
        mmTop = 60061
        mmWidth = 10795
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel135: TppLabel
        UserName = 'Label10'
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3351
        mmLeft = 182034
        mmTop = 60325
        mmWidth = 9737
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel136: TppLabel
        UserName = 'Label15'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 206640
        mmTop = 60325
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel137: TppLabel
        UserName = 'Label16'
        Caption = 'Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 232040
        mmTop = 60325
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel138: TppLabel
        UserName = 'Label17'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3351
        mmLeft = 260351
        mmTop = 60325
        mmWidth = 8043
        BandType = 0
        LayerName = Foreground5
      end
      object ppLine33: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 9525
        mmTop = 64294
        mmWidth = 260615
        BandType = 0
        LayerName = Foreground5
      end
    end
    object ppDetailBand6: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CODPRODUTO'
        DisplayFormat = '00#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        mmHeight = 3852
        mmLeft = 11642
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText201: TppDBText
        UserName = 'DBText20'
        DataField = 'CODPRODUTO'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3852
        mmLeft = 19579
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText202: TppDBText
        UserName = 'DBText26'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3969
        mmLeft = 35719
        mmTop = 0
        mmWidth = 153988
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText203: TppDBText
        UserName = 'DBText27'
        DataField = 'MARCA'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3852
        mmLeft = 182034
        mmTop = 0
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText204: TppDBText
        UserName = 'DBText28'
        DataField = 'QUANTIDADE'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3852
        mmLeft = 208492
        mmTop = 0
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText205: TppDBText
        UserName = 'DBText32'
        DataField = 'UNIDADE'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3852
        mmLeft = 219605
        mmTop = 0
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText206: TppDBText
        UserName = 'DBText29'
        DataField = 'VALOR_UNITARIO'
        DataPipeline = ppDBPipeItens
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3969
        mmLeft = 227807
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText207: TppDBText
        UserName = 'DBText30'
        DataField = 'VALOR_TOTAL'
        DataPipeline = ppDBPipeItens
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3969
        mmLeft = 246857
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText208: TppDBText
        UserName = 'DBText33'
        DataField = 'DESCONTO'
        DataPipeline = ppDBPipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3969
        mmLeft = 194734
        mmTop = 0
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground5
      end
    end
    object ppFooterBand6: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand6: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 73290
      mmPrintPosition = 0
      object ppShape25: TppShape
        UserName = 'Shape6'
        mmHeight = 20108
        mmLeft = 132821
        mmTop = 21167
        mmWidth = 136261
        BandType = 7
        LayerName = Foreground5
      end
      object ppShape28: TppShape
        UserName = 'Shape5'
        mmHeight = 20108
        mmLeft = 10583
        mmTop = 21431
        mmWidth = 118798
        BandType = 7
        LayerName = Foreground5
      end
      object ppDBMemo8: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = True
        DataField = 'CONDICOES1'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 19050
        mmLeft = 11377
        mmTop = 21960
        mmWidth = 117211
        BandType = 7
        LayerName = Foreground5
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBMemo10: TppDBMemo
        UserName = 'DBMemo3'
        CharWrap = True
        DataField = 'CONDICOES2'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 19050
        mmLeft = 133615
        mmTop = 21696
        mmWidth = 134938
        BandType = 7
        LayerName = Foreground5
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppShape29: TppShape
        UserName = 'Shape7'
        mmHeight = 8467
        mmLeft = 10583
        mmTop = 46831
        mmWidth = 258498
        BandType = 7
        LayerName = Foreground5
      end
      object ppLabel139: TppLabel
        UserName = 'Label25'
        Caption = 'Opcionais (n'#227'o inclu'#237'dos no or'#231'amento)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 11113
        mmTop = 43127
        mmWidth = 63765
        BandType = 7
        LayerName = Foreground5
      end
      object ppDBMemo11: TppDBMemo
        UserName = 'DBMemo4'
        CharWrap = True
        DataField = 'OPCIONAIS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 7408
        mmLeft = 11113
        mmTop = 47361
        mmWidth = 257440
        BandType = 7
        LayerName = Foreground5
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLine34: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 11377
        mmTop = 67733
        mmWidth = 97631
        BandType = 7
        LayerName = Foreground5
      end
      object ppDBText209: TppDBText
        UserName = 'DBText35'
        DataField = 'EMP_NOME'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 11642
        mmTop = 69850
        mmWidth = 61119
        BandType = 7
        LayerName = Foreground5
      end
      object ppLine35: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 114300
        mmTop = 67733
        mmWidth = 34660
        BandType = 7
        LayerName = Foreground5
      end
      object ppDBText210: TppDBText
        UserName = 'DBText36'
        DataField = 'NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 168275
        mmTop = 69850
        mmWidth = 64029
        BandType = 7
        LayerName = Foreground5
      end
      object ppLabel140: TppLabel
        UserName = 'Label104'
        Caption = 'Local, Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 114565
        mmTop = 69850
        mmWidth = 17727
        BandType = 7
        LayerName = Foreground5
      end
      object ppLine36: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 167746
        mmTop = 67733
        mmWidth = 98161
        BandType = 7
        LayerName = Foreground5
      end
      object ppLabel141: TppLabel
        UserName = 'Label24'
        Caption = 'Condi'#231#245'es Gerais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 17727
        mmWidth = 27252
        BandType = 7
        LayerName = Foreground5
      end
      object ppLabel142: TppLabel
        UserName = 'Label27'
        Caption = 'Condi'#231#245'es de Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 133615
        mmTop = 17463
        mmWidth = 39952
        BandType = 7
        LayerName = Foreground5
      end
      object ppShape30: TppShape
        UserName = 'Shape3'
        mmHeight = 14552
        mmLeft = 10583
        mmTop = 1852
        mmWidth = 258498
        BandType = 7
        LayerName = Foreground5
      end
      object ppLabel143: TppLabel
        UserName = 'Label18'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 12171
        mmTop = 8202
        mmWidth = 22754
        BandType = 7
        LayerName = Foreground5
      end
      object ppLabel144: TppLabel
        UserName = 'Label19'
        Caption = 'TOTAL PARCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 214578
        mmTop = 3440
        mmWidth = 27781
        BandType = 7
        LayerName = Foreground5
      end
      object ppLabel145: TppLabel
        UserName = 'Label21'
        Caption = 'DESCONTO DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 215900
        mmTop = 7408
        mmWidth = 26458
        BandType = 7
        LayerName = Foreground5
      end
      object ppLabel146: TppLabel
        UserName = 'Label22'
        Caption = 'T O T A L   D A   P R O P O S T A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 11113
        mmWidth = 62706
        BandType = 7
        LayerName = Foreground5
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'VALOR_TOTAL'
        DataPipeline = ppDBPipeItens
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3852
        mmLeft = 244740
        mmTop = 3440
        mmWidth = 23283
        BandType = 7
        LayerName = Foreground5
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc3'
        BlankWhenZero = True
        DataField = 'DESCONTO'
        DataPipeline = ppDBPipeItens
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens'
        mmHeight = 3969
        mmLeft = 244740
        mmTop = 7408
        mmWidth = 23283
        BandType = 7
        LayerName = Foreground5
      end
      object ppVariable4: TppVariable
        UserName = 'Variable4'
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 244740
        mmTop = 11113
        mmWidth = 23283
        BandType = 7
        LayerName = Foreground5
      end
    end
    object raCodeModule6: TraCodeModule
      ProgramStream = {
        01060D54726156617250726F6772616D094368696C645479706502110B50726F
        6772616D4E616D6506095661726961626C65730B50726F6772616D5479706507
        0B747450726F63656475726506536F75726365068870726F6365647572652056
        61726961626C65733B0D0A7661720D0A202020646573636F6E746F3A20657874
        656E6465643B0D0A202020746F74616C3A20657874656E6465643B0D0A202020
        69646573636F6E746F3A20657874656E6465643B0D0A20202069746F74616C3A
        20657874656E6465643B0D0A0D0A626567696E0D0A0D0A656E643B0D0A084361
        726574506F730102000200000001060F5472614576656E7448616E646C65720B
        50726F6772616D4E616D6506104C6162656C32314F6E476574546578740B5072
        6F6772616D54797065070B747450726F63656475726506536F757263650C4701
        000070726F636564757265204C6162656C32314F6E4765745465787428766172
        20546578743A20537472696E67293B0D0A7661720D0A2020706F7263656E7461
        67656D3A20657874656E6465643B0D0A626567696E0D0A202069662044424361
        6C63322E56616C7565203E2030207468656E0D0A20202020706F7263656E7461
        67656D203A3D2028444243616C63332E56616C7565202A2031303029202F2044
        4243616C63322E56616C75650D0A2020656C73650D0A20202020706F7263656E
        746167656D203A3D20303B0D0A0D0A2020696620706F7263656E746167656D20
        3E2030207468656E0D0A2020202054657874203A3D2027444553434F4E544F20
        44452027202B20466F726D617443757272282723302E303025272C20706F7263
        656E746167656D290D0A2020656C73650D0A2020202054657874203A3D202727
        3B0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506074C6162656C3231
        094576656E744E616D6506094F6E47657454657874074576656E744944023508
        4361726574506F730102000200000001060F5472614576656E7448616E646C65
        720B50726F6772616D4E616D650610444254657874334F6E476574546578740B
        50726F6772616D54797065070B747450726F63656475726506536F7572636506
        9870726F63656475726520444254657874334F6E476574546578742876617220
        546578743A20537472696E67293B0D0A626567696E0D0A0D0A20205465787420
        3A3D205472696D28444250697065456D70726573615B27454D505F4C4F475241
        444F55524F275D29202B20272C2027202B2020444250697065456D7072657361
        5B27454D505F4E554D45524F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E
        656E744E616D65060744425465787433094576656E744E616D6506094F6E4765
        7454657874074576656E7449440235084361726574506F730102000200000001
        060F5472614576656E7448616E646C65720B50726F6772616D4E616D65061144
        425465787431354F6E476574546578740B50726F6772616D54797065070B7474
        50726F63656475726506536F7572636506B570726F6365647572652044425465
        787431354F6E476574546578742876617220546578743A20537472696E67293B
        0D0A626567696E0D0A0D0A202054657874203A3D205472696D28444250697065
        436F72706F5B274C4F475241444F55524F275D29202B20272C2027202B204442
        50697065436F72706F5B274E554D45524F275D202B20272027202B0D0A202020
        2020444250697065436F72706F5B27434F4D504C454D454E544F275D3B0D0A0D
        0A656E643B0D0A0D436F6D706F6E656E744E616D650608444254657874313509
        4576656E744E616D6506094F6E47657454657874074576656E74494402350843
        61726574506F730102000200000001060F5472614576656E7448616E646C6572
        0B50726F6772616D4E616D650610444254657874354F6E476574546578740B50
        726F6772616D54797065070B747450726F63656475726506536F757263650693
        70726F63656475726520444254657874354F6E47657454657874287661722054
        6578743A20537472696E67293B0D0A626567696E0D0A0D0A202054657874203A
        3D205472696D28444250697065456D70726573615B27454D505F434944414445
        275D29202B20272C2027202B20444250697065456D70726573615B27454D505F
        45535441444F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D
        65060744425465787435094576656E744E616D6506094F6E4765745465787407
        4576656E7449440235084361726574506F730102000200000001060F54726145
        76656E7448616E646C65720B50726F6772616D4E616D65061144425465787432
        344F6E476574546578740B50726F6772616D54797065070B747450726F636564
        75726506536F75726365068870726F6365647572652044425465787432344F6E
        476574546578742876617220546578743A20537472696E67293B0D0A62656769
        6E0D0A0D0A202054657874203A3D205472696D28444250697065436F72706F5B
        27434944414445275D29202B20272C2027202B20444250697065436F72706F5B
        2745535441444F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E61
        6D6506084442546578743234094576656E744E616D6506094F6E476574546578
        74074576656E7449440235084361726574506F730102000200000001060F5472
        614576656E7448616E646C65720B50726F6772616D4E616D6506114442546578
        7431374F6E476574546578740B50726F6772616D54797065070B747450726F63
        656475726506536F7572636506B570726F636564757265204442546578743137
        4F6E476574546578742876617220546578743A20537472696E67293B0D0A6265
        67696E0D0A0D0A2020696620444250697065436F72706F5B275449504F504553
        534F41275D203D20274627207468656E0D0A2020202054657874203A3D204442
        50697065436F72706F5B27435046275D0D0A2020656C73650D0A202020205465
        7874203A3D20444250697065436F72706F5B27434743275D3B0D0A0D0A656E64
        3B0D0A0D436F6D706F6E656E744E616D6506084442546578743137094576656E
        744E616D6506094F6E47657454657874074576656E7449440235084361726574
        506F730102000200000001060F5472614576656E7448616E646C65720B50726F
        6772616D4E616D65061144425465787432334F6E476574546578740B50726F67
        72616D54797065070B747450726F63656475726506536F7572636506B370726F
        6365647572652044425465787432334F6E476574546578742876617220546578
        743A20537472696E67293B0D0A626567696E0D0A0D0A20206966204442506970
        65436F72706F5B275449504F504553534F41275D203D20274627207468656E0D
        0A2020202054657874203A3D20444250697065436F72706F5B275247275D0D0A
        2020656C73650D0A2020202054657874203A3D20444250697065436F72706F5B
        274945275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D650608
        4442546578743233094576656E744E616D6506094F6E47657454657874074576
        656E7449440235084361726574506F730102000200000001060F547261457665
        6E7448616E646C65720B50726F6772616D4E616D650610444254657874374F6E
        476574546578740B50726F6772616D54797065070B747450726F636564757265
        06536F75726365067070726F63656475726520444254657874374F6E47657454
        6578742876617220546578743A20537472696E67293B0D0A626567696E0D0A0D
        0A202054657874203A3D2027434E504A2027202B20444250697065456D707265
        73615B27454D505F434E504A275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E
        656E744E616D65060744425465787437094576656E744E616D6506094F6E4765
        7454657874074576656E7449440235084361726574506F730102000200000001
        060F5472614576656E7448616E646C65720B50726F6772616D4E616D65061044
        4254657874384F6E476574546578740B50726F6772616D54797065070B747450
        726F63656475726506536F75726365066E70726F636564757265204442546578
        74384F6E476574546578742876617220546578743A20537472696E67293B0D0A
        626567696E0D0A0D0A202054657874203A3D2027492E452E2027202B20444250
        697065456D70726573615B27454D505F4945275D3B0D0A0D0A656E643B0D0A0D
        436F6D706F6E656E744E616D65060744425465787438094576656E744E616D65
        06094F6E47657454657874074576656E7449440235084361726574506F730102
        000200000001060F5472614576656E7448616E646C65720B50726F6772616D4E
        616D6506195265706F72744F6E50726576696577466F726D4372656174650B50
        726F6772616D54797065070B747450726F63656475726506536F757263650654
        70726F636564757265205265706F72744F6E50726576696577466F726D437265
        6174653B0D0A626567696E0D0A2020746F74616C203A3D20303B0D0A20206465
        73636F6E746F203A3D20303B0D0A656E643B0D0A0D436F6D706F6E656E744E61
        6D6506065265706F7274094576656E744E616D6506134F6E5072657669657746
        6F726D437265617465074576656E7449440205084361726574506F7301020002
        00000001060F5472614576656E7448616E646C65720B50726F6772616D4E616D
        6506175265706F72744F6E53746172745365636F6E64506173730B50726F6772
        616D54797065070B747450726F63656475726506536F75726365065270726F63
        6564757265205265706F72744F6E53746172745365636F6E64506173733B0D0A
        626567696E0D0A2020746F74616C203A3D20303B0D0A2020646573636F6E746F
        203A3D20303B0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506065265
        706F7274094576656E744E616D6506114F6E53746172745365636F6E64506173
        73074576656E7449440216084361726574506F730102000200000001060F5472
        614576656E7448616E646C65720B50726F6772616D4E616D65060F5661726961
        626C65344F6E43616C630B50726F6772616D54797065070B747450726F636564
        75726506536F75726365069C70726F636564757265205661726961626C65344F
        6E43616C63287661722056616C75653A2056617269616E74293B0D0A62656769
        6E0D0A0D0A202056616C7565203A3D20466F726D6174437572722827232C2323
        302E3030272C20444250697065436F72706F5B2756414C4F525F544F54414C27
        5D202D2020444250697065436F72706F5B27444553434F4E544F275D293B0D0A
        0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506095661726961626C65
        34094576656E744E616D6506064F6E43616C63074576656E7449440221084361
        726574506F730102000200000000}
    end
    object ppDesignLayers6: TppDesignLayers
      object ppDesignLayer6: TppDesignLayer
        UserName = 'Foreground5'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList6: TppParameterList
    end
  end
  object ppOV2: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeItens2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\Elieser\orcamento.rtm'
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 584
    Top = 72
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeItens2'
    object ppHeaderBand7: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 64294
      mmPrintPosition = 0
      object ppShape31: TppShape
        UserName = 'Shape2'
        mmHeight = 25665
        mmLeft = 230453
        mmTop = 32544
        mmWidth = 38894
        BandType = 0
        LayerName = Foreground6
      end
      object ppShape32: TppShape
        UserName = 'Shape1'
        mmHeight = 25665
        mmLeft = 10583
        mmTop = 32544
        mmWidth = 211932
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel147: TppLabel
        UserName = 'Label4'
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 12171
        mmTop = 37306
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel148: TppLabel
        UserName = 'Label5'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 12171
        mmTop = 40481
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel149: TppLabel
        UserName = 'Label6'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 19844
        mmTop = 43656
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel150: TppLabel
        UserName = 'Label7'
        Caption = 'CNPJ/CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 12171
        mmTop = 46831
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel151: TppLabel
        UserName = 'Label8'
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 12171
        mmTop = 50006
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel152: TppLabel
        UserName = 'Label9'
        Caption = 'FAX:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 124884
        mmTop = 53181
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText211: TppDBText
        UserName = 'DBText14'
        DataField = 'NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 30956
        mmTop = 37306
        mmWidth = 86254
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText212: TppDBText
        UserName = 'DBText15'
        DataField = 'LOGRADOURO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 30956
        mmTop = 40481
        mmWidth = 130969
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText213: TppDBText
        UserName = 'DBText16'
        DataField = 'BAIRRO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 30956
        mmTop = 43656
        mmWidth = 86519
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText214: TppDBText
        UserName = 'DBText17'
        DataField = 'CPF'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 30956
        mmTop = 46831
        mmWidth = 86519
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText215: TppDBText
        UserName = 'DBText18'
        DataField = 'FONE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 30956
        mmTop = 50006
        mmWidth = 86519
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText216: TppDBText
        UserName = 'DBText19'
        DataField = 'FAX'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 133086
        mmTop = 53181
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText217: TppDBText
        UserName = 'DBText21'
        DataField = 'RAZAOSOCIAL'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 120121
        mmTop = 37306
        mmWidth = 100542
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel153: TppLabel
        UserName = 'Label11'
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 120650
        mmTop = 50006
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText218: TppDBText
        UserName = 'DBText22'
        DataField = 'CELULAR'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 133086
        mmTop = 50006
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel154: TppLabel
        UserName = 'Label12'
        Caption = 'I.E./RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 120121
        mmTop = 46831
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText219: TppDBText
        UserName = 'DBText23'
        DataField = 'RG'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 133086
        mmTop = 46831
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel155: TppLabel
        UserName = 'Label13'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 120915
        mmTop = 43656
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText220: TppDBText
        UserName = 'DBText24'
        DataField = 'CIDADE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 133086
        mmTop = 43656
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel156: TppLabel
        UserName = 'Label14'
        Caption = 'email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 20638
        mmTop = 53181
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText221: TppDBText
        UserName = 'DBText25'
        DataField = 'EMAIL'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 30956
        mmTop = 53181
        mmWidth = 86519
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText222: TppDBText
        UserName = 'DBText11'
        DataField = 'DATA'
        DataPipeline = ppDBPipeCorpo
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3969
        mmLeft = 233628
        mmTop = 37835
        mmWidth = 33602
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel157: TppLabel
        UserName = 'Label3'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 18521
        mmTop = 34131
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText223: TppDBText
        UserName = 'DBText13'
        DataField = 'CODCLIENTE'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 30956
        mmTop = 34131
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText224: TppDBText
        UserName = 'DBText31'
        DataField = 'NOMEUSER'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3969
        mmLeft = 241830
        mmTop = 52652
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground6
      end
      object ppLine37: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 9790
        mmTop = 27517
        mmWidth = 78846
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText225: TppDBText
        UserName = 'DBText1'
        DataField = 'EMP_NOME'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 55298
        mmTop = 2117
        mmWidth = 80169
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText226: TppDBText
        UserName = 'DBText2'
        DataField = 'EMP_RAZAOSOCIAL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 55298
        mmTop = 5292
        mmWidth = 80169
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText227: TppDBText
        UserName = 'DBText3'
        DataField = 'EMP_LOGRADOURO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 55298
        mmTop = 8467
        mmWidth = 80169
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText228: TppDBText
        UserName = 'DBText4'
        DataField = 'EMP_BAIRRO'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 55298
        mmTop = 11642
        mmWidth = 80169
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText229: TppDBText
        UserName = 'DBText5'
        DataField = 'EMP_CIDADE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 55298
        mmTop = 14817
        mmWidth = 80169
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText230: TppDBText
        UserName = 'DBText6'
        Color = clGray
        DataField = 'CODIGO'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Verdana'
        Font.Size = 28
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 11906
        mmLeft = 222250
        mmTop = 4233
        mmWidth = 46831
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText231: TppDBText
        UserName = 'DBText7'
        DataField = 'EMP_CNPJ'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 139436
        mmTop = 8467
        mmWidth = 48948
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText232: TppDBText
        UserName = 'DBText8'
        DataField = 'EMP_IE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 139436
        mmTop = 11642
        mmWidth = 48948
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText233: TppDBText
        UserName = 'DBText9'
        DataField = 'EMP_FONE'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 139436
        mmTop = 14817
        mmWidth = 48948
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText234: TppDBText
        UserName = 'DBText10'
        DataField = 'EMP_EMAIL'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 55298
        mmTop = 17992
        mmWidth = 80169
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText235: TppDBText
        UserName = 'DBText12'
        DataField = 'EMP_FAX'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 139436
        mmTop = 17992
        mmWidth = 48948
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel158: TppLabel
        UserName = 'Label101'
        Caption = 'PROPOSTA DE FORNECIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6879
        mmLeft = 90752
        mmTop = 24077
        mmWidth = 97896
        BandType = 0
        LayerName = Foreground6
      end
      object ppLine38: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 191559
        mmTop = 27252
        mmWidth = 77523
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBImage7: TppDBImage
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = True
        Stretch = True
        DataField = 'LOGOTIPO'
        DataPipeline = ppDBPipeEmpresa
        GraphicType = 'JPEG'
        ParentDataPipeline = False
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 21431
        mmLeft = 10583
        mmTop = 2381
        mmWidth = 39688
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel159: TppLabel
        UserName = 'Label1'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3351
        mmLeft = 35454
        mmTop = 59531
        mmWidth = 15663
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel160: TppLabel
        UserName = 'Label2'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3351
        mmLeft = 21696
        mmTop = 59531
        mmWidth = 10795
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel161: TppLabel
        UserName = 'Label10'
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3351
        mmLeft = 182298
        mmTop = 59796
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel162: TppLabel
        UserName = 'Label15'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 206905
        mmTop = 59796
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel163: TppLabel
        UserName = 'Label16'
        Caption = 'Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 232305
        mmTop = 59796
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel164: TppLabel
        UserName = 'Label17'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3351
        mmLeft = 260615
        mmTop = 59796
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground6
      end
      object ppLine39: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 9525
        mmTop = 63765
        mmWidth = 259821
        BandType = 0
        LayerName = Foreground6
      end
    end
    object ppDetailBand7: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CODPRODUTO'
        DataPipeline = ppDBPipeItens2
        DisplayFormat = '00#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3852
        mmLeft = 11377
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText236: TppDBText
        UserName = 'DBText20'
        DataField = 'CODPRODUTO'
        DataPipeline = ppDBPipeItens2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3852
        mmLeft = 19315
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText237: TppDBText
        UserName = 'DBText26'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBPipeItens2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3852
        mmLeft = 35454
        mmTop = 0
        mmWidth = 153988
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText238: TppDBText
        UserName = 'DBText27'
        DataField = 'MARCA'
        DataPipeline = ppDBPipeItens2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3852
        mmLeft = 182298
        mmTop = 0
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText239: TppDBText
        UserName = 'DBText28'
        DataField = 'QUANTIDADE'
        DataPipeline = ppDBPipeItens2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3852
        mmLeft = 209815
        mmTop = 0
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText240: TppDBText
        UserName = 'DBText32'
        DataField = 'UNIDADE'
        DataPipeline = ppDBPipeItens2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3852
        mmLeft = 219869
        mmTop = 0
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText241: TppDBText
        UserName = 'DBText29'
        DataField = 'VALOR_UNITARIO'
        DataPipeline = ppDBPipeItens2
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3969
        mmLeft = 228071
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText242: TppDBText
        UserName = 'DBText30'
        DataField = 'VALOR_TOTAL'
        DataPipeline = ppDBPipeItens2
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3969
        mmLeft = 247121
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText243: TppDBText
        UserName = 'DBText33'
        DataField = 'DESCONTO'
        DataPipeline = ppDBPipeItens2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3969
        mmLeft = 194205
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground6
      end
    end
    object ppFooterBand7: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand7: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 66940
      mmPrintPosition = 0
      object ppShape33: TppShape
        UserName = 'Shape6'
        mmHeight = 20108
        mmLeft = 155575
        mmTop = 16140
        mmWidth = 113506
        BandType = 7
        LayerName = Foreground6
      end
      object ppShape34: TppShape
        UserName = 'Shape5'
        mmHeight = 20108
        mmLeft = 10583
        mmTop = 16404
        mmWidth = 139965
        BandType = 7
        LayerName = Foreground6
      end
      object ppDBMemo13: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = True
        DataField = 'CONDICOES1'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 19050
        mmLeft = 11377
        mmTop = 16933
        mmWidth = 138377
        BandType = 7
        LayerName = Foreground6
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBMemo14: TppDBMemo
        UserName = 'DBMemo3'
        CharWrap = True
        DataField = 'CONDICOES2'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 19050
        mmLeft = 156369
        mmTop = 16669
        mmWidth = 111919
        BandType = 7
        LayerName = Foreground6
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppShape35: TppShape
        UserName = 'Shape7'
        mmHeight = 8467
        mmLeft = 10583
        mmTop = 41010
        mmWidth = 258498
        BandType = 7
        LayerName = Foreground6
      end
      object ppLabel165: TppLabel
        UserName = 'Label25'
        Caption = 'Opcionais (n'#227'o inclu'#237'dos no or'#231'amento)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 11642
        mmTop = 37306
        mmWidth = 63765
        BandType = 7
        LayerName = Foreground6
      end
      object ppDBMemo15: TppDBMemo
        UserName = 'DBMemo4'
        CharWrap = True
        DataField = 'OPCIONAIS'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 7408
        mmLeft = 11377
        mmTop = 41540
        mmWidth = 257176
        BandType = 7
        LayerName = Foreground6
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLine40: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 10848
        mmTop = 60854
        mmWidth = 88636
        BandType = 7
        LayerName = Foreground6
      end
      object ppDBText244: TppDBText
        UserName = 'DBText35'
        DataField = 'EMP_NOME'
        DataPipeline = ppDBPipeEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeEmpresa'
        mmHeight = 3440
        mmLeft = 11113
        mmTop = 62971
        mmWidth = 61119
        BandType = 7
        LayerName = Foreground6
      end
      object ppLine41: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 103717
        mmTop = 60854
        mmWidth = 44979
        BandType = 7
        LayerName = Foreground6
      end
      object ppDBText245: TppDBText
        UserName = 'DBText36'
        DataField = 'NOME'
        DataPipeline = ppDBPipeCorpo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeCorpo'
        mmHeight = 3440
        mmLeft = 159544
        mmTop = 62971
        mmWidth = 64029
        BandType = 7
        LayerName = Foreground6
      end
      object ppLabel166: TppLabel
        UserName = 'Label104'
        Caption = 'Local, Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 103981
        mmTop = 62971
        mmWidth = 17727
        BandType = 7
        LayerName = Foreground6
      end
      object ppLine42: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 159015
        mmTop = 60854
        mmWidth = 103981
        BandType = 7
        LayerName = Foreground6
      end
      object ppLabel167: TppLabel
        UserName = 'Label24'
        Caption = 'Condi'#231#245'es Gerais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 12700
        mmWidth = 27252
        BandType = 7
        LayerName = Foreground6
      end
      object ppLabel168: TppLabel
        UserName = 'Label27'
        Caption = 'Condi'#231#245'es de Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 156369
        mmTop = 12435
        mmWidth = 39952
        BandType = 7
        LayerName = Foreground6
      end
      object ppShape36: TppShape
        UserName = 'Shape3'
        mmHeight = 10054
        mmLeft = 10583
        mmTop = 1852
        mmWidth = 258498
        BandType = 7
        LayerName = Foreground6
      end
      object ppLabel169: TppLabel
        UserName = 'Label18'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 11906
        mmTop = 3175
        mmWidth = 22754
        BandType = 7
        LayerName = Foreground6
      end
      object ppLabel170: TppLabel
        UserName = 'Label22'
        Caption = 'T O T A L   D A   P R O P O S T A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 6350
        mmWidth = 62706
        BandType = 7
        LayerName = Foreground6
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'VALOR_TOTAL'
        DataPipeline = ppDBPipeItens2
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeItens2'
        mmHeight = 3969
        mmLeft = 244740
        mmTop = 6350
        mmWidth = 23283
        BandType = 7
        LayerName = Foreground6
      end
    end
    object raCodeModule7: TraCodeModule
      ProgramStream = {
        01060D54726156617250726F6772616D094368696C645479706502110B50726F
        6772616D4E616D6506095661726961626C65730B50726F6772616D5479706507
        0B747450726F63656475726506536F75726365068870726F6365647572652056
        61726961626C65733B0D0A7661720D0A202020646573636F6E746F3A20657874
        656E6465643B0D0A202020746F74616C3A20657874656E6465643B0D0A202020
        69646573636F6E746F3A20657874656E6465643B0D0A20202069746F74616C3A
        20657874656E6465643B0D0A0D0A626567696E0D0A0D0A656E643B0D0A084361
        726574506F730102000200000001060F5472614576656E7448616E646C65720B
        50726F6772616D4E616D650610444254657874334F6E476574546578740B5072
        6F6772616D54797065070B747450726F63656475726506536F75726365069870
        726F63656475726520444254657874334F6E4765745465787428766172205465
        78743A20537472696E67293B0D0A626567696E0D0A0D0A202054657874203A3D
        205472696D28444250697065456D70726573615B27454D505F4C4F475241444F
        55524F275D29202B20272C2027202B2020444250697065456D70726573615B27
        454D505F4E554D45524F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E
        744E616D65060744425465787433094576656E744E616D6506094F6E47657454
        657874074576656E7449440235084361726574506F730102000200000001060F
        5472614576656E7448616E646C65720B50726F6772616D4E616D650611444254
        65787431354F6E476574546578740B50726F6772616D54797065070B74745072
        6F63656475726506536F7572636506B570726F63656475726520444254657874
        31354F6E476574546578742876617220546578743A20537472696E67293B0D0A
        626567696E0D0A0D0A202054657874203A3D205472696D28444250697065436F
        72706F5B274C4F475241444F55524F275D29202B20272C2027202B2044425069
        7065436F72706F5B274E554D45524F275D202B20272027202B0D0A2020202020
        444250697065436F72706F5B27434F4D504C454D454E544F275D3B0D0A0D0A65
        6E643B0D0A0D436F6D706F6E656E744E616D6506084442546578743135094576
        656E744E616D6506094F6E47657454657874074576656E744944023508436172
        6574506F730102000200000001060F5472614576656E7448616E646C65720B50
        726F6772616D4E616D650610444254657874354F6E476574546578740B50726F
        6772616D54797065070B747450726F63656475726506536F7572636506937072
        6F63656475726520444254657874354F6E476574546578742876617220546578
        743A20537472696E67293B0D0A626567696E0D0A0D0A202054657874203A3D20
        5472696D28444250697065456D70726573615B27454D505F434944414445275D
        29202B20272C2027202B20444250697065456D70726573615B27454D505F4553
        5441444F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506
        0744425465787435094576656E744E616D6506094F6E47657454657874074576
        656E7449440235084361726574506F730102000200000001060F547261457665
        6E7448616E646C65720B50726F6772616D4E616D65061144425465787432344F
        6E476574546578740B50726F6772616D54797065070B747450726F6365647572
        6506536F75726365068870726F6365647572652044425465787432344F6E4765
        74546578742876617220546578743A20537472696E67293B0D0A626567696E0D
        0A0D0A202054657874203A3D205472696D28444250697065436F72706F5B2743
        4944414445275D29202B20272C2027202B20444250697065436F72706F5B2745
        535441444F275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65
        06084442546578743234094576656E744E616D6506094F6E4765745465787407
        4576656E7449440235084361726574506F730102000200000001060F54726145
        76656E7448616E646C65720B50726F6772616D4E616D65061144425465787431
        374F6E476574546578740B50726F6772616D54797065070B747450726F636564
        75726506536F7572636506B570726F6365647572652044425465787431374F6E
        476574546578742876617220546578743A20537472696E67293B0D0A62656769
        6E0D0A0D0A2020696620444250697065436F72706F5B275449504F504553534F
        41275D203D20274627207468656E0D0A2020202054657874203A3D2044425069
        7065436F72706F5B27435046275D0D0A2020656C73650D0A2020202054657874
        203A3D20444250697065436F72706F5B27434743275D3B0D0A0D0A656E643B0D
        0A0D436F6D706F6E656E744E616D6506084442546578743137094576656E744E
        616D6506094F6E47657454657874074576656E7449440235084361726574506F
        730102000200000001060F5472614576656E7448616E646C65720B50726F6772
        616D4E616D65061144425465787432334F6E476574546578740B50726F677261
        6D54797065070B747450726F63656475726506536F7572636506B370726F6365
        647572652044425465787432334F6E476574546578742876617220546578743A
        20537472696E67293B0D0A626567696E0D0A0D0A202069662044425069706543
        6F72706F5B275449504F504553534F41275D203D20274627207468656E0D0A20
        20202054657874203A3D20444250697065436F72706F5B275247275D0D0A2020
        656C73650D0A2020202054657874203A3D20444250697065436F72706F5B2749
        45275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506084442
        546578743233094576656E744E616D6506094F6E47657454657874074576656E
        7449440235084361726574506F730102000200000001060F5472614576656E74
        48616E646C65720B50726F6772616D4E616D650610444254657874374F6E4765
        74546578740B50726F6772616D54797065070B747450726F6365647572650653
        6F75726365067070726F63656475726520444254657874374F6E476574546578
        742876617220546578743A20537472696E67293B0D0A626567696E0D0A0D0A20
        2054657874203A3D2027434E504A2027202B20444250697065456D7072657361
        5B27454D505F434E504A275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E
        744E616D65060744425465787437094576656E744E616D6506094F6E47657454
        657874074576656E7449440235084361726574506F730102000200000001060F
        5472614576656E7448616E646C65720B50726F6772616D4E616D650610444254
        657874384F6E476574546578740B50726F6772616D54797065070B747450726F
        63656475726506536F75726365066E70726F6365647572652044425465787438
        4F6E476574546578742876617220546578743A20537472696E67293B0D0A6265
        67696E0D0A0D0A202054657874203A3D2027492E452E2027202B204442506970
        65456D70726573615B27454D505F4945275D3B0D0A0D0A656E643B0D0A0D436F
        6D706F6E656E744E616D65060744425465787438094576656E744E616D650609
        4F6E47657454657874074576656E7449440235084361726574506F7301020002
        00000001060F5472614576656E7448616E646C65720B50726F6772616D4E616D
        6506195265706F72744F6E50726576696577466F726D4372656174650B50726F
        6772616D54797065070B747450726F63656475726506536F7572636506547072
        6F636564757265205265706F72744F6E50726576696577466F726D4372656174
        653B0D0A626567696E0D0A2020746F74616C203A3D20303B0D0A202064657363
        6F6E746F203A3D20303B0D0A656E643B0D0A0D436F6D706F6E656E744E616D65
        06065265706F7274094576656E744E616D6506134F6E50726576696577466F72
        6D437265617465074576656E7449440205084361726574506F73010200020000
        0001060F5472614576656E7448616E646C65720B50726F6772616D4E616D6506
        175265706F72744F6E53746172745365636F6E64506173730B50726F6772616D
        54797065070B747450726F63656475726506536F75726365065270726F636564
        757265205265706F72744F6E53746172745365636F6E64506173733B0D0A6265
        67696E0D0A2020746F74616C203A3D20303B0D0A2020646573636F6E746F203A
        3D20303B0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506065265706F
        7274094576656E744E616D6506114F6E53746172745365636F6E645061737307
        4576656E7449440216084361726574506F730102000200000000}
    end
    object ppDesignLayers7: TppDesignLayers
      object ppDesignLayer7: TppDesignLayer
        UserName = 'Foreground6'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList7: TppParameterList
    end
  end
  object cdsORItens3: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'prOSitens'
    RemoteServer = formPrincipal.SocketConnection
    Left = 280
    Top = 16
  end
  object dsrOSItens3: TDataSource
    AutoEdit = False
    DataSet = cdsORItens3
    Left = 280
    Top = 72
  end
  object ppDBPipeItens3: TppDBPipeline
    DataSource = dsrOSItens3
    OpenDataSource = False
    UserName = 'DBPipeItens3'
    Left = 280
    Top = 128
    object ppDBPipeItens3ppField1: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField2: TppField
      FieldAlias = 'BARRA'
      FieldName = 'BARRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField3: TppField
      FieldAlias = 'DESCRICAO1'
      FieldName = 'DESCRICAO1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField4: TppField
      FieldAlias = 'DESCRICAO2'
      FieldName = 'DESCRICAO2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField5: TppField
      FieldAlias = 'SERIE'
      FieldName = 'SERIE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField6: TppField
      FieldAlias = 'SERIE2'
      FieldName = 'SERIE2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField7: TppField
      FieldAlias = 'VALOR_VENDA'
      FieldName = 'VALOR_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField8: TppField
      FieldAlias = 'ICMS_VENDA'
      FieldName = 'ICMS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField9: TppField
      FieldAlias = 'DESCONTO'
      FieldName = 'DESCONTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField10: TppField
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField11: TppField
      FieldAlias = 'VALOR_PAGO'
      FieldName = 'VALOR_PAGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField12: TppField
      FieldAlias = 'VALOR_ICMS'
      FieldName = 'VALOR_ICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField13: TppField
      FieldAlias = 'SITTRIBU'
      FieldName = 'SITTRIBU'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField14: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField15: TppField
      FieldAlias = 'VALOR_ITEM'
      FieldName = 'VALOR_ITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField16: TppField
      FieldAlias = 'IPI'
      FieldName = 'IPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField17: TppField
      FieldAlias = 'LINHA'
      FieldName = 'LINHA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField18: TppField
      FieldAlias = 'OPERADORA'
      FieldName = 'OPERADORA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField19: TppField
      FieldAlias = 'PLANO'
      FieldName = 'PLANO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField20: TppField
      FieldAlias = 'ATIVACAO'
      FieldName = 'ATIVACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField21: TppField
      FieldAlias = 'CONTRATO'
      FieldName = 'CONTRATO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField22: TppField
      FieldAlias = 'VOUCHER'
      FieldName = 'VOUCHER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField23: TppField
      FieldAlias = 'TIPOATIVACAO'
      FieldName = 'TIPOATIVACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField24: TppField
      FieldAlias = 'VALOR_CUSTO'
      FieldName = 'VALOR_CUSTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField25: TppField
      FieldAlias = 'CLASSFISCAL'
      FieldName = 'CLASSFISCAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField26: TppField
      FieldAlias = 'PESO'
      FieldName = 'PESO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField27: TppField
      FieldAlias = 'DESCONTO_ADM'
      FieldName = 'DESCONTO_ADM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField28: TppField
      FieldAlias = 'NCM'
      FieldName = 'NCM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField29: TppField
      FieldAlias = 'PS'
      FieldName = 'PS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField30: TppField
      FieldAlias = 'LOCALIZACAO'
      FieldName = 'LOCALIZACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeItens3ppField31: TppField
      FieldAlias = 'PARTNUMBER'
      FieldName = 'PARTNUMBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
  end
end
