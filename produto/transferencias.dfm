inherited formTransferencias: TformTransferencias
  Left = 343
  Top = 206
  Caption = 'Transfer'#234'ncias'
  ClientHeight = 493
  ClientWidth = 712
  ExplicitWidth = 720
  ExplicitHeight = 527
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 712
    Height = 473
    ExplicitWidth = 712
    ExplicitHeight = 473
    ClientRectBottom = 472
    ClientRectRight = 711
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 710
      ExplicitHeight = 471
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 710
        ExplicitWidth = 710
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 442
        Width = 710
        ExplicitTop = 442
        ExplicitWidth = 710
      end
      inherited pnlFundoGrade: TPanel
        Width = 710
        Height = 365
        ExplicitWidth = 710
        ExplicitHeight = 365
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 362
          Width = 710
          Height = 3
          ExplicitTop = 362
          ExplicitWidth = 710
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 710
          ExplicitWidth = 710
        end
        inherited grdDados: TcxGrid
          Width = 710
          Height = 340
          ExplicitWidth = 710
          ExplicitHeight = 344
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1DATADIA: TcxGridDBColumn
              Caption = 'Data'
              DataBinding.FieldName = 'DATADIA'
              SortIndex = 0
              SortOrder = soDescending
            end
            object cxGrid1DBTableView1DATAHORA: TcxGridDBColumn
              Caption = 'Hora'
              DataBinding.FieldName = 'DATAHORA'
            end
            object cxGrid1DBTableView1CODBARRA: TcxGridDBColumn
              Caption = 'C'#243'd.Barras'
              DataBinding.FieldName = 'CODBARRA'
            end
            object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'DESCRICAO'
            end
            object cxGrid1DBTableView1QUANTIDADE: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QUANTIDADE'
            end
            object cxGrid1DBTableView1ICMS: TcxGridDBColumn
              DataBinding.FieldName = 'ICMS'
            end
            object cxGrid1DBTableView1CODEMPRESA2: TcxGridDBColumn
              Caption = 'C'#243'd.Empresa'
              DataBinding.FieldName = 'CODEMPRESA2'
            end
            object cxGrid1DBTableView1NOME: TcxGridDBColumn
              Caption = 'Empresa'
              DataBinding.FieldName = 'NOME'
            end
            object cxGrid1DBTableView1USUARIO: TcxGridDBColumn
              Caption = 'Usu'#225'rio'
              DataBinding.FieldName = 'USUARIO'
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 710
      ExplicitHeight = 471
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 710
        ExplicitWidth = 710
      end
      inherited pnlEdicao: TPanel
        Width = 710
        Height = 394
        ExplicitWidth = 710
        ExplicitHeight = 396
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 27
          Height = 13
          Caption = 'Data'
          FocusControl = cxDBTextEdit1
        end
        object Label2: TLabel
          Left = 8
          Top = 48
          Width = 43
          Height = 13
          Caption = 'Usu'#225'rio'
          FocusControl = cxDBTextEdit2
        end
        object Label3: TLabel
          Left = 8
          Top = 88
          Width = 65
          Height = 13
          Caption = 'C'#243'd.Barras'
          FocusControl = cxDBTextEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = Label3Click
        end
        object Label4: TLabel
          Left = 8
          Top = 128
          Width = 56
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = cxDBTextEdit4
        end
        object Label5: TLabel
          Left = 8
          Top = 168
          Width = 65
          Height = 13
          Caption = 'Quantidade'
          FocusControl = cxDBTextEdit5
        end
        object Label6: TLabel
          Left = 7
          Top = 250
          Width = 31
          Height = 13
          Caption = 'ICMS'
          FocusControl = cxDBTextEdit6
        end
        object Label7: TLabel
          Left = 7
          Top = 208
          Width = 97
          Height = 13
          Caption = 'Empresa Destino'
          FocusControl = cxDBTextEdit7
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = Label7Click
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 7
          Top = 23
          DataBinding.DataField = 'DATA'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 7
          Top = 63
          DataBinding.DataField = 'USUARIO'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 7
          Top = 103
          DataBinding.DataField = 'CODBARRA'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 2
          Width = 138
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 7
          Top = 143
          DataBinding.DataField = 'DESCRICAO'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 3
          Width = 442
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 7
          Top = 183
          DataBinding.DataField = 'QUANTIDADE'
          DataBinding.DataSource = dsrDados
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 6
          Top = 265
          DataBinding.DataField = 'ICMS'
          DataBinding.DataSource = dsrDados
          TabOrder = 5
          Width = 121
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 6
          Top = 223
          DataBinding.DataField = 'NOME'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 6
          Width = 442
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 473
    Width = 712
    ExplicitTop = 473
    ExplicitWidth = 712
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 560
    Top = 295
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
      FloatClientHeight = 280
    end
    inherited dxBarManagerCadBar3: TdxBar
      FloatClientWidth = 157
      FloatClientHeight = 49
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnEmpresas'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnOcultos'
        end>
      OldName = 'Links'
      Visible = False
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
      Visible = ivNever
    end
    inherited cmbSelecionar: TdxBarCombo
      Tag = 3
    end
    inherited btnAjuda: TdxBarLargeButton
      SyncImageIndex = False
      ImageIndex = 0
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 
      'SELECT '#39'N'#39' AS SEL, TRANSFERENCIAS.*, CAST(TRANSFERENCIAS.DATA AS' +
      ' DATE) AS DATADIA, CAST(TRANSFERENCIAS.DATA AS TIME) AS DATAHORA' +
      ', CLIENTES.NOME FROM TRANSFERENCIAS JOIN SISCONFIG ON (SISCONFIG' +
      '.CODIGO = TRANSFERENCIAS.CODEMPRESA2) JOIN CLIENTES ON (CLIENTES' +
      '.CODIGO = SISCONFIG.CODCLIENTE)'
    ProviderName = 'pvTransferencias'
    Left = 640
    Top = 344
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosCODBARRA: TStringField
      FieldName = 'CODBARRA'
      FixedChar = True
      Size = 14
    end
    object cdsDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 60
    end
    object cdsDadosQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object cdsDadosCODEMPRESA1: TIntegerField
      FieldName = 'CODEMPRESA1'
    end
    object cdsDadosCODEMPRESA2: TIntegerField
      FieldName = 'CODEMPRESA2'
    end
    object cdsDadosUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
      Size = 30
    end
    object cdsDadosICMS: TFloatField
      FieldName = 'ICMS'
      DisplayFormat = '##0.0000%'
    end
    object cdsDadosDATADIA: TDateField
      FieldName = 'DATADIA'
      ProviderFlags = []
    end
    object cdsDadosDATAHORA: TTimeField
      FieldName = 'DATAHORA'
      ProviderFlags = []
    end
    object cdsDadosNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
  end
  inherited dsrDados: TDataSource
    Left = 640
    Top = 392
  end
  inherited tmrFocus: TTimer
    Left = 640
    Top = 296
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 736
    Top = 296
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39485.646614456020000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 816
    Top = 296
  end
  inherited actDetalhes: TActionList
    Left = 736
    Top = 240
  end
  inherited tmrRelogio: TTimer
    Left = 640
    Top = 240
  end
  inherited tmrLabel: TTimer
    Left = 904
    Top = 240
  end
  inherited menuGrade: TPopupMenu
    Left = 896
    Top = 296
  end
  inherited tmrFocus2: TTimer
    Left = 736
    Top = 352
  end
  inherited SaveDialog: TSaveDialog
    Left = 816
    Top = 240
  end
  object cdsTransf: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFixedChar
        Precision = 14
        Name = 'BARRA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 9
        NumericScale = 2
        Name = 'QUANTIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 9
        NumericScale = 4
        Name = 'ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODEMPRESA1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODEMPRESA2'
        ParamType = ptInput
      end>
    ProviderName = 'pmTransf'
    RemoteServer = formPrincipal.SocketConnection
    Left = 408
    Top = 280
  end
end
