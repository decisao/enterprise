inherited formRelEstoqueMinimo: TformRelEstoqueMinimo
  Caption = 'Estoque abaixo do M'#237'nimo'
  ClientHeight = 204
  ClientWidth = 468
  ExplicitWidth = 474
  ExplicitHeight = 232
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 468
    Height = 204
    ExplicitWidth = 468
    ExplicitHeight = 204
    inherited Bevel1: TBevel
      Top = 156
      Width = 468
      ExplicitTop = 156
      ExplicitWidth = 468
    end
    inherited pnlDados: TPanel
      Width = 468
      Height = 156
      ExplicitWidth = 468
      ExplicitHeight = 156
      object Label1: TLabel [1]
        Left = 184
        Top = 64
        Width = 117
        Height = 13
        Caption = 'Estoque da Empresa'
        FocusControl = dlcEmpresa
      end
      inherited dlcEmpresa: TcxLookupComboBox
        Left = 183
        Top = 78
        ExplicitLeft = 183
        ExplicitTop = 78
      end
      inherited gbData: TGroupBox
        Left = 20
        Top = 175
        Visible = False
        ExplicitLeft = 20
        ExplicitTop = 175
      end
      inherited ckEmpresa: TcxCheckBox
        Left = 20
        Top = 152
        State = cbsChecked
        Visible = False
        ExplicitLeft = 20
        ExplicitTop = 152
      end
    end
    inherited pnlBotoes: TPanel
      Top = 158
      Width = 468
      ExplicitTop = 158
      ExplicitWidth = 468
    end
  end
  inherited cdsRelatorio: TClientDataSet
    CommandText = 'SELECT * FROM ESTOQUE_MINIMO WHERE OCULTO = '#39'N'#39' AND MINIMO > 0'
  end
  inherited ppReport: TppReport
    DataPipelineName = 'ppDBPipeline'
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 25929
      inherited linCab: TppLine [0]
      end
      inherited lbTitulo: TppLabel [1]
        SaveOrder = -1
      end
      inherited lbLPagina: TppLabel [2]
        SaveOrder = -1
      end
      inherited lbLDataImp: TppLabel [3]
        SaveOrder = -1
      end
      inherited lbLUsuario: TppLabel [4]
        SaveOrder = -1
      end
      inherited lbPagina: TppSystemVariable [5]
        SaveOrder = -1
      end
      inherited lbDataImp: TppSystemVariable [6]
        SaveOrder = -1
      end
      inherited lbUsuario: TppLabel [7]
        SaveOrder = -1
      end
      inherited lbDescricao: TppMemo [8]
        SaveOrder = -1
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'C'#211'D.BARRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 3175
        mmTop = 22225
        mmWidth = 24871
        BandType = 0
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
        mmLeft = 31750
        mmTop = 22225
        mmWidth = 26194
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'M'#205'NIMO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3641
        mmLeft = 156369
        mmTop = 22225
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'QUANTIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 174361
        mmTop = 22225
        mmWidth = 20373
        BandType = 0
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 3440
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'BARRA'
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
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
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
        mmLeft = 31750
        mmTop = 0
        mmWidth = 125942
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
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
        mmLeft = 159279
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'QUANTIDADE'
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
        mmLeft = 175684
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited linFoot: TppLine [0]
      end
      inherited lbCopyright: TppLabel [1]
        SaveOrder = -1
      end
    end
  end
end
