inherited formRelEstoqueReposicao: TformRelEstoqueReposicao
  Caption = 'Estoque Reposi'#231#227'o'
  ExplicitWidth = 493
  ExplicitHeight = 298
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited pnlDados: TPanel
      inherited ckEmpresa: TcxCheckBox
        State = cbsChecked
        Visible = False
        ExplicitHeight = 21
      end
    end
  end
  inherited cdsRelatorio: TClientDataSet
    CommandText = 
      'SELECT PO.codigo, PO.barra, PO.partnumber, PO.descricao, SUM(ID.' +
      'QUANTIDADE) AS VENDIDOS, COALESCE((SELECT SUM(ID1.QUANTIDADE) FR' +
      'OM INDIVIDUAIS ID1 WHERE ID1.CODPRODUTO = PO.CODIGO AND ID1.VEND' +
      'IDO = '#39'N'#39' And ID1.codempresa = :codempresa1), 0) AS estoque, PO.' +
      'minimo, PO.precocusto FROM PRODUTOS PO JOIN individuais ID ON (I' +
      'D.codproduto = PO.codigo) JOIN movimentos MO ON (MO.codigo = ID.' +
      'codmovsaida) WHERE PO.PS= '#39'P'#39' And ID.vendido ='#39'S'#39' and MO.es = 2 ' +
      'and MO.tipo Between 5 and 6 and Mo.codempresa = :codempresa2 and' +
      ' MO.data BETWEEN :data1 and :data2 GROUP BY 1,2,3,4,6,7,8 ORDER ' +
      'BY 5 DESC'
    Params = <
      item
        DataType = ftLargeint
        Name = 'codempresa1'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'codempresa2'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'data1'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'data2'
        ParamType = ptInput
      end>
    object cdsRelatorioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRelatorioBARRA: TStringField
      FieldName = 'BARRA'
      Required = True
      FixedChar = True
      Size = 14
    end
    object cdsRelatorioPARTNUMBER: TStringField
      FieldName = 'PARTNUMBER'
      FixedChar = True
      Size = 30
    end
    object cdsRelatorioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 60
    end
    object cdsRelatorioESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 20
      Size = 3
    end
    object cdsRelatorioVENDIDOS: TFMTBCDField
      FieldName = 'VENDIDOS'
      Precision = 20
      Size = 3
    end
    object cdsRelatorioMINIMO: TFloatField
      FieldName = 'MINIMO'
    end
    object cdsRelatorioPRECOCUSTO: TFMTBCDField
      FieldName = 'PRECOCUSTO'
      Required = True
      Precision = 20
      Size = 3
    end
  end
  inherited ppDBPipeline: TppDBPipeline
    object ppDBPipelineppField1: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineppField2: TppField
      FieldAlias = 'BARRA'
      FieldName = 'BARRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineppField3: TppField
      FieldAlias = 'PARTNUMBER'
      FieldName = 'PARTNUMBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineppField4: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineppField5: TppField
      FieldAlias = 'ESTOQUE'
      FieldName = 'ESTOQUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineppField6: TppField
      FieldAlias = 'VENDIDOS'
      FieldName = 'VENDIDOS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineppField7: TppField
      FieldAlias = 'MINIMO'
      FieldName = 'MINIMO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineppField8: TppField
      FieldAlias = 'PRECOCUSTO'
      FieldName = 'PRECOCUSTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
  end
  inherited ppReport: TppReport
    PassSetting = psOnePass
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    DataPipelineName = 'ppDBPipeline'
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 26723
      inherited lbTitulo: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited lbLPagina: TppLabel
        SaveOrder = -1
        mmHeight = 3175
        mmLeft = 255588
        mmWidth = 9260
        LayerName = Foreground
      end
      inherited lbLDataImp: TppLabel
        SaveOrder = -1
        mmHeight = 3175
        mmLeft = 241300
        mmWidth = 23548
        LayerName = Foreground
      end
      inherited lbLUsuario: TppLabel
        SaveOrder = -1
        mmHeight = 3175
        mmLeft = 254794
        mmWidth = 10054
        LayerName = Foreground
      end
      inherited lbPagina: TppSystemVariable
        SaveOrder = -1
        mmHeight = 3175
        mmLeft = 265907
        mmWidth = 7673
        LayerName = Foreground
      end
      inherited lbDataImp: TppSystemVariable
        SaveOrder = -1
        mmHeight = 3175
        mmLeft = 265907
        mmWidth = 13758
        LayerName = Foreground
      end
      inherited lbUsuario: TppLabel
        SaveOrder = -1
        mmHeight = 3175
        mmLeft = 265907
        LayerName = Foreground
      end
      inherited lbDescricao: TppMemo
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited linCab: TppLine
        mmWidth = 282840
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'C'#211'DIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 3175
        mmTop = 23019
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'DESCRI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 47656
        mmTop = 23019
        mmWidth = 26194
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'CUSTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 244740
        mmTop = 23019
        mmWidth = 22490
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'VENDIDOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 177536
        mmTop = 23019
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'PARTNUMBER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 18785
        mmTop = 23019
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'ESTOQUE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 199761
        mmTop = 23019
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'MINIMO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 222250
        mmTop = 23019
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 3440
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'VENDIDOS'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 3440
        mmLeft = 177536
        mmTop = 0
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'PRECOCUSTO'
        DataPipeline = ppDBPipeline
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 3440
        mmLeft = 244740
        mmTop = 0
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 3440
        mmLeft = 47656
        mmTop = 0
        mmWidth = 131498
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CODIGO'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 3440
        mmLeft = 3175
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'PARTNUMBER'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 3440
        mmLeft = 18785
        mmTop = 0
        mmWidth = 26283
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ESTOQUE'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 3440
        mmLeft = 199761
        mmTop = 0
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'MINIMO'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 3440
        mmLeft = 222250
        mmTop = 0
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited lbCopyright: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited linFoot: TppLine
        mmWidth = 282840
        LayerName = Foreground
      end
    end
  end
end
