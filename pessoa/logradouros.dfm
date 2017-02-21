inherited formLogradouros: TformLogradouros
  Left = 440
  Top = 208
  Caption = 'Logradouros'
  ClientHeight = 556
  ClientWidth = 724
  ExplicitWidth = 732
  ExplicitHeight = 590
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 724
    Height = 536
    ExplicitWidth = 724
    ExplicitHeight = 536
    ClientRectBottom = 535
    ClientRectRight = 723
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 722
      ExplicitHeight = 534
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 722
        ExplicitWidth = 722
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 505
        Width = 722
        ExplicitTop = 505
        ExplicitWidth = 722
      end
      inherited pnlFundoGrade: TPanel
        Width = 722
        Height = 428
        ExplicitWidth = 722
        ExplicitHeight = 428
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 425
          Width = 722
          Height = 3
          ExplicitTop = 425
          ExplicitWidth = 722
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 722
          ExplicitWidth = 722
        end
        inherited grdDados: TcxGrid
          Width = 722
          Height = 403
          ExplicitWidth = 722
          ExplicitHeight = 415
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
              Width = 69
            end
            object cxGrid1DBTableView1LOGRADOURO: TcxGridDBColumn
              Caption = 'Logradouro'
              DataBinding.FieldName = 'LOGRADOURO'
              SortIndex = 0
              SortOrder = soAscending
              Width = 377
            end
            object cxGrid1DBTableView1CEP: TcxGridDBColumn
              DataBinding.FieldName = 'CEP'
              Width = 81
            end
            object cxGrid1DBTableView1NOMEBAIRRO: TcxGridDBColumn
              Caption = 'Bairro'
              DataBinding.FieldName = 'NOMEBAIRRO'
            end
            object cxGrid1DBTableView1NOMECIDADE: TcxGridDBColumn
              Caption = 'Cidade'
              DataBinding.FieldName = 'NOMECIDADE'
              Width = 349
            end
            object cxGrid1DBTableView1ESTADO: TcxGridDBColumn
              Caption = 'UF'
              DataBinding.FieldName = 'ESTADO'
              Width = 45
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 722
      ExplicitHeight = 534
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 722
        ExplicitWidth = 722
      end
      inherited pnlEdicao: TPanel
        Width = 722
        Height = 457
        ExplicitWidth = 722
        ExplicitHeight = 463
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 40
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = dedCODIGO
        end
        object Label2: TLabel
          Left = 8
          Top = 48
          Width = 65
          Height = 13
          Caption = 'Logradouro'
          FocusControl = dedLOGRADOURO
        end
        object Label3: TLabel
          Left = 8
          Top = 88
          Width = 35
          Height = 13
          Caption = 'Bairro'
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
          Width = 23
          Height = 13
          Caption = 'CEP'
          FocusControl = dedCEP
        end
        object Label5: TLabel
          Left = 8
          Top = 168
          Width = 40
          Height = 13
          Caption = 'Cidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = Label5Click
        end
        object Label6: TLabel
          Left = 8
          Top = 208
          Width = 14
          Height = 13
          Caption = 'UF'
          FocusControl = dedESTADO
        end
        object Label7: TLabel
          Left = 8
          Top = 248
          Width = 45
          Height = 13
          Caption = 'Extenso'
          FocusControl = dedEXTENSO
        end
        object dedCODIGO: TcxDBTextEdit
          Left = 7
          Top = 23
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = dsrDados
          TabOrder = 0
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 81
        end
        object dedLOGRADOURO: TcxDBTextEdit
          Left = 7
          Top = 63
          DataBinding.DataField = 'LOGRADOURO'
          DataBinding.DataSource = dsrDados
          TabOrder = 1
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 401
        end
        object dedCEP: TcxDBTextEdit
          Left = 7
          Top = 143
          DataBinding.DataField = 'CEP'
          DataBinding.DataSource = dsrDados
          TabOrder = 2
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 121
        end
        object dedESTADO: TcxDBTextEdit
          Left = 7
          Top = 223
          DataBinding.DataField = 'ESTADO'
          DataBinding.DataSource = dsrDados
          TabOrder = 3
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 81
        end
        object dedEXTENSO: TcxDBTextEdit
          Left = 7
          Top = 263
          DataBinding.DataField = 'EXTENSO'
          DataBinding.DataSource = dsrDados
          TabOrder = 4
          OnEnter = edtPesquisar2Enter
          OnExit = edtPesquisar2Exit
          Width = 401
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 7
          Top = 103
          TabStop = False
          DataBinding.DataField = 'NOMEBAIRRO'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          TabOrder = 5
          Width = 402
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 7
          Top = 183
          TabStop = False
          DataBinding.DataField = 'NOMECIDADE'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          TabOrder = 6
          Width = 402
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 536
    Width = 724
    ExplicitTop = 536
    ExplicitWidth = 724
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 360
    Top = 239
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManagerCadBar1: TdxBar
      FloatClientWidth = 233
      FloatClientHeight = 45
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmbSelecionar'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 172
          Visible = True
          ItemName = 'edtSelecionar'
        end>
    end
    inherited dxBarManagerCadBar2: TdxBar
      FloatClientHeight = 280
    end
    inherited dxBarManagerCadBar3: TdxBar
      FloatClientWidth = 23
      FloatClientHeight = 22
      OldName = 'Links'
      Visible = False
    end
    inherited dxBarManagerCadBar4: TdxBar
      FloatClientWidth = 51
      FloatClientHeight = 16
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
      'SELECT '#39'N'#39' AS SEL, LO.CODIGO, LO.LOGRADOURO, LO.BAIRRO, BA.BAIRR' +
      'O AS NOMEBAIRRO, LO.CEP, LO.CIDADE, CI.CIDADE AS NOMECIDADE, LO.' +
      'ESTADO, LO.EXTENSO FROM LOGRADOUROS LO LEFT JOIN BAIRROS BA ON (' +
      'BA.CODIGO = LO.BAIRRO AND BA.CIDADE = LO.CIDADE AND BA.ESTADO = ' +
      'LO.ESTADO) LEFT JOIN CIDADES CI ON (CI.CODIGO = LO.CIDADE AND CI' +
      '.ESTADO = LO.ESTADO)'
    PacketRecords = 40
    ProviderName = 'pvLogradouros'
    Left = 440
    Top = 288
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Required = True
      FixedChar = True
      Size = 60
    end
    object cdsDadosBAIRRO: TIntegerField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosNOMEBAIRRO: TStringField
      FieldName = 'NOMEBAIRRO'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object cdsDadosCIDADE: TIntegerField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object cdsDadosESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsDadosCEP: TStringField
      FieldName = 'CEP'
      Required = True
      FixedChar = True
      Size = 9
    end
    object cdsDadosEXTENSO: TStringField
      FieldName = 'EXTENSO'
      FixedChar = True
      Size = 60
    end
  end
  inherited dsrDados: TDataSource
    Left = 440
    Top = 336
  end
  inherited tmrFocus: TTimer
    Left = 440
    Top = 240
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 536
    Top = 240
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.759103912040000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 616
    Top = 240
  end
  inherited actDetalhes: TActionList
    Left = 536
    Top = 184
  end
  inherited tmrRelogio: TTimer
    Left = 440
    Top = 184
  end
  inherited tmrLabel: TTimer
    Left = 704
    Top = 192
  end
  inherited menuGrade: TPopupMenu
    Left = 696
    Top = 248
  end
  inherited tmrFocus2: TTimer
    Left = 536
    Top = 304
  end
  inherited SaveDialog: TSaveDialog
    Left = 616
    Top = 184
  end
  object cdsNovaLocalidade: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Precision = 50
        Name = 'LOGRADOURO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 40
        Name = 'BAIRRO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 9
        Name = 'CEP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODCIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 2
        Name = 'CODESTADO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODLOGRADOURO'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODBAIRRO'
        ParamType = ptOutput
        Size = 4
      end>
    ProviderName = 'ppNovaloc'
    RemoteServer = formPrincipal.SocketConnection
    Left = 672
    Top = 160
  end
end
