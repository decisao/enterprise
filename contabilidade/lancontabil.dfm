inherited formLanContabil: TformLanContabil
  Caption = 'Lan'#231'amentos Cont'#225'beis'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    inherited tabVisual: TcxTabSheet
      inherited pnlFundoGrade: TPanel
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 323
          Height = 3
          ExplicitTop = 323
          ExplicitHeight = 3
        end
        inherited grdDados: TcxGrid
          Height = 301
          ExplicitHeight = 305
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
            end
            object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAO'
              SortIndex = 0
              SortOrder = soAscending
            end
            object cxGrid1DBTableView1CONTADEBITO: TcxGridDBColumn
              Caption = 'Trad.D'#233'bito'
              DataBinding.FieldName = 'CONTADEBITO'
            end
            object cxGrid1DBTableView1DEBITO: TcxGridDBColumn
              Caption = 'Conta D'#233'bito'
              DataBinding.FieldName = 'DEBITO'
            end
            object cxGrid1DBTableView1CONTACREDITO: TcxGridDBColumn
              Caption = 'Trad.Cr'#233'dito'
              DataBinding.FieldName = 'CONTACREDITO'
            end
            object cxGrid1DBTableView1CREDITO: TcxGridDBColumn
              Caption = 'Conta Cr'#233'dito'
              DataBinding.FieldName = 'CREDITO'
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited pnlEdicao: TPanel
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 40
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label2: TLabel
          Left = 8
          Top = 48
          Width = 69
          Height = 13
          Caption = 'Lan'#231'amento'
        end
        object Label3: TLabel
          Left = 8
          Top = 200
          Width = 74
          Height = 13
          Caption = 'Observa'#231#245'es'
        end
        object Label4: TLabel
          Left = 8
          Top = 104
          Width = 90
          Height = 13
          Caption = 'Tradutor D'#233'bito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = Label4Click
        end
        object Label5: TLabel
          Left = 8
          Top = 144
          Width = 95
          Height = 13
          Caption = 'Tradutor Cr'#233'dito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = Label5Click
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 7
          Top = 23
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 100
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 7
          Top = 63
          DataBinding.DataField = 'DESCRICAO'
          DataBinding.DataSource = dsrDados
          TabOrder = 1
          Width = 490
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 7
          Top = 119
          DataBinding.DataField = 'CONTADEBITO'
          DataBinding.DataSource = dsrDados
          TabOrder = 2
          Width = 100
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 7
          Top = 159
          DataBinding.DataField = 'CONTACREDITO'
          DataBinding.DataSource = dsrDados
          TabOrder = 3
          Width = 100
        end
        object cxDBMemo1: TcxDBMemo
          Left = 7
          Top = 215
          DataBinding.DataField = 'OBSERVACOES'
          DataBinding.DataSource = dsrDados
          TabOrder = 4
          Height = 89
          Width = 489
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 119
          Top = 119
          DataBinding.DataField = 'DEBITO'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 5
          Width = 378
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 119
          Top = 159
          DataBinding.DataField = 'CREDITO'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 6
          Width = 378
        end
      end
    end
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 496
    Top = 263
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManagerCadBar1: TdxBar
      FloatClientWidth = 183
      FloatClientHeight = 85
    end
    inherited dxBarManagerCadBar2: TdxBar
      FloatClientHeight = 360
    end
    inherited dxBarManagerCadBar3: TdxBar
      FloatClientWidth = 157
      FloatClientHeight = 70
      OldName = 'Links'
      Visible = False
    end
    inherited dxBarManagerCadBar4: TdxBar
      FloatClientWidth = 69
      FloatClientHeight = 22
      OldName = 'Where'
    end
    inherited dxBarManagerCadBar5: TdxBar
      FloatClientWidth = 89
      FloatClientHeight = 287
      OldName = 'BotoesDetalhes'
    end
    inherited btnAdicionar: TdxBarLargeButton
      ImageIndex = 96
    end
    inherited cmbSelecionar: TdxBarCombo
      Tag = 1
    end
    inherited btnAjuda: TdxBarLargeButton
      SyncImageIndex = False
      ImageIndex = 0
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 
      'SELECT '#39'N'#39' AS SEL, CONTABIL.*, PC1.CODPLANO || '#39' '#39' || PC1.DESCRI' +
      'CAO AS DEBITO, PC2.CODPLANO || '#39' '#39' || PC2.DESCRICAO AS CREDITO F' +
      'ROM CONTABIL LEFT JOIN PLANCONTAS PC1 ON (PC1.CODIGO = CONTABIL.' +
      'CONTADEBITO) LEFT JOIN PLANCONTAS PC2 ON (PC2.CODIGO = CONTABIL.' +
      'CONTACREDITO) '
    ProviderName = 'pvLancont'
    Left = 576
    Top = 328
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object cdsDadosOBSERVACOES: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'OBSERVACOES'
      Size = 254
    end
    object cdsDadosCONTADEBITO: TIntegerField
      DisplayLabel = 'Conta D'#233'bito'
      FieldName = 'CONTADEBITO'
      OnChange = cdsDadosCONTADEBITOChange
      DisplayFormat = '00000#'
    end
    object cdsDadosCONTACREDITO: TIntegerField
      DisplayLabel = 'Conta Cr'#233'dito'
      FieldName = 'CONTACREDITO'
      OnChange = cdsDadosCONTACREDITOChange
      DisplayFormat = '00000#'
    end
    object cdsDadosDEBITO: TStringField
      FieldName = 'DEBITO'
      ProviderFlags = []
      Size = 61
    end
    object cdsDadosCREDITO: TStringField
      FieldName = 'CREDITO'
      ProviderFlags = []
      Size = 61
    end
  end
  inherited dsrDados: TDataSource
    Left = 576
    Top = 384
  end
  inherited tmrFocus: TTimer
    Left = 576
    Top = 272
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 672
    Top = 272
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.753665532410000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 752
    Top = 272
  end
  inherited actDetalhes: TActionList
    Left = 672
    Top = 216
  end
  inherited tmrRelogio: TTimer
    Left = 576
    Top = 216
  end
  inherited tmrLabel: TTimer
    Left = 840
    Top = 216
  end
  inherited menuGrade: TPopupMenu
    Left = 840
    Top = 272
  end
  inherited tmrFocus2: TTimer
    Left = 672
    Top = 328
  end
  inherited memDataEntre: TdxMemData
    Left = 944
    Top = 216
  end
  inherited dsrDataEntre: TDataSource
    Left = 944
    Top = 272
  end
  inherited tmrSemDireito: TTimer
    Left = 752
    Top = 328
  end
  inherited tmrSel: TTimer
    Left = 1032
    Top = 216
  end
  inherited memCampos: TdxMemData
    Left = 944
    Top = 336
  end
  inherited dsrCampos: TDataSource
    Left = 944
    Top = 392
  end
  inherited tmrMove: TTimer
    Left = 1032
    Top = 272
  end
  inherited memDataGraph: TdxMemData
    Left = 1032
    Top = 336
  end
  inherited SaveDialog: TSaveDialog
    Left = 752
    Top = 216
  end
  object cdsPlanContas: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT PLANCONTAS.*, UDF_TRIM(PLANCONTAS.CODPLANO) || '#39' '#39' || PLA' +
      'NCONTAS.DESCRICAO AS SINTETICO FROM PLANCONTAS WHERE PLANCONTAS.' +
      'CODIGO = :CODPLANCONTA'
    Params = <
      item
        DataType = ftInteger
        Name = 'CODPLANCONTA'
        ParamType = ptInput
      end>
    ProviderName = 'provPlancontas'
    Left = 576
    Top = 128
    object cdsPlanContasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPlanContasCODPAI: TIntegerField
      FieldName = 'CODPAI'
      Required = True
    end
    object cdsPlanContasCODPLANO: TStringField
      FieldName = 'CODPLANO'
      Required = True
      FixedChar = True
    end
    object cdsPlanContasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsPlanContasTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPlanContasOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 254
    end
    object cdsPlanContasSINTETICO: TStringField
      FieldName = 'SINTETICO'
      ProviderFlags = []
      Size = 295
    end
    object cdsPlanContasFINAL: TStringField
      FieldName = 'FINAL'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
